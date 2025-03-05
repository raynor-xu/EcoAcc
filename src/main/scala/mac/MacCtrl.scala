package mac

import spinal.core._
import spinal.lib._
import spinal.lib.fsm._
import cfg._
import mem._

case class MacCtrl(cfg: MacCfg) extends Component {

  import cfg._
  import MacMode._

  val io = new Bundle {
    val clear = out Bool()
    val macCellparm = out(MacCellParm(cfg))

    val macParm = slave(Stream(MacParm(cfg)))
    val scaleParm = slave(Stream(ScaleParm(cfg)))

    val result = Vec(slave Flow SInt(inputWidth bits), kAutomic)

    val feature = master Flow Vec(SInt(inputWidth bits), cAutomic)

    val weight = out Vec(Vec(SInt(inputWidth bits), cAutomic), kAutomic)

    val wPort = master(RdPort(ramWidth, ramDepth))
    val fPort = master(RdPort(ramWidth, ramDepth))
    val rPort = master(WrPort(ramWidth, ramDepth))
  }
  noIoPrefix()

  // 参数寄存器
  val macParmReg = RegNextWhen(io.macParm.payload, io.macParm.fire) init (MacParm.default)
  val scaleParmReg = RegNextWhen(io.scaleParm.payload, io.scaleParm.fire) init (ScaleParm.default)

  val frameDone = Bool() //权重复用的一帧结束
  val wValid = Bool() //权重有效

  val chInBlock = CeilDiv(macParmReg.chIn, kAutomic)
  val chOutBlock = CeilDiv(macParmReg.chOut, kAutomic)
  val kChDim = macParmReg.kSize * macParmReg.kSize

  val rHeight = (macParmReg.fHeight - macParmReg.kSize + 2 * macParmReg.pad) / macParmReg.stride + 1
  val rWidth = (macParmReg.fWidth - macParmReg.kSize + 2 * macParmReg.pad) / macParmReg.stride + 1
  val hLen = UInt(fMaxSizeW bits) // 每次处理输出特征图高度

  val busy = Reg(Bool()) init (False) //卷积进行

  // 输出信号赋值
  io.clear := io.macParm.fire
  io.macCellparm.scaleParm := scaleParmReg
  io.macCellparm.macMode := macParmReg.macMode
  io.macCellparm.actMode := macParmReg.actMode
  io.macParm.ready := ~busy


  io.scaleParm.ready := True

  when(lfbDepth / rWidth > hLen.maxValue) {
    hLen := hLen.maxValue
  } otherwise {
    hLen := (lfbDepth / rWidth).resized
  }


  // ----------------------------
  // Weight Address Generation Area
  // ----------------------------
  val wAddrGenArea = new Area {
    val spLenH = Reg(UInt(fMaxSizeW bits)) init (0)
    val wBaseAddr = macParmReg.wBaseAddr
    val wAddrDone = Reg(Bool()) init (True)

    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init (0)
    val hCounter = Reg(UInt(fMaxSizeW bits)) init (0)
    val csrCounter = Reg(UInt(kMaxSizeW * 2 + fMaxChW - log2Up(cAutomic) bits)) init (0)
    val kaCounter = Reg(UInt(log2Up(kAutomic) bits)) init (0)

    val nCounterReload = UInt(fMaxChW - log2Up(kAutomic) bits)
    val hCounterReload = UInt(fMaxSizeW bits)
    val csrCounterReload = UInt(kMaxSizeW * 2 + fMaxChW - log2Up(cAutomic) bits)
    val kaCounterReload = UInt(log2Up(kAutomic) bits)

    //    val wAddrReg = Reg(UInt(ramAW bits))
    val wAddrReg = UInt(ramAW bits)
    // 根据不同工作模式设置重载参数
    switch(macParmReg.macMode) {
      is(CONV2D) {
        nCounterReload := chOutBlock - 1
        spLenH := (rHeight - hCounter < hLen) ? (rHeight - hCounter) | hLen
      }
      is(FC) {
        nCounterReload := chOutBlock - 1
        spLenH := rHeight
      }
      is(DWCONV, PWCONV, AVERAGPOOL) {
        nCounterReload := 0
        spLenH := (rHeight - hCounter < hLen) ? (rHeight - hCounter) | hLen
      }
      default {
        nCounterReload := 0
        spLenH := 0
      }
    }
    hCounterReload := rHeight - spLenH
    csrCounterReload := chInBlock * macParmReg.kSize * macParmReg.kSize - 1
    kaCounterReload := kAutomic - 1

    wAddrReg := (wBaseAddr + csrCounter +
      (nCounter * kAutomic + kaCounter) * chInBlock * macParmReg.kSize * macParmReg.kSize).resized

    // 计数器更新逻辑采用 elsewhen 链式结构
    when(io.macParm.fire) {
      nCounter := 0
      csrCounter := 0
      kaCounter := 0
      wAddrDone := False
    } elsewhen (io.wPort.en) {
      when(kaCounter < kaCounterReload) {
        kaCounter := kaCounter + 1
      } elsewhen (csrCounter < csrCounterReload) {
        kaCounter := 0
        csrCounter := csrCounter + 1
      } elsewhen (hCounter < hCounterReload) {
        kaCounter := 0
        csrCounter := 0
        hCounter := hCounter + 1
      } elsewhen (nCounter < nCounterReload) {
        kaCounter := 0
        csrCounter := 0
        hCounter := 0
        nCounter := nCounter + 1
      } otherwise {
        nCounter := 0
        wAddrDone := True
      }
    }
  }

  // ----------------------------
  // Weight Control Area
  // ----------------------------
  val wCtrl = new Area {
    val weightReg = Vec(Vec(Vec(Reg(SInt(inputWidth bits)) init (0), cAutomic), kAutomic), 2) // 权重寄存器
    val wCalGrop = Reg(Bool()) init (False) // 当前计算组
    val wLoadGrop = Reg(Bool()) init (False) // 当前更新组
    val wReadIdex = Reg(UInt(log2Up(kAutomic) bits)) init (0)
    val wLoadIdex = RegNext(wReadIdex) init (0)
    val wGropValidNum = Reg(UInt(2 bits)) // 有效的权重块数
    val wReadDone = wReadIdex === kAutomic - 1 // 一帧权重加载完成
    val wLoadDone = RegNext(wReadDone) init (False)
    val wPortEn = Reg(Bool()) init (False)
    val wPortEnD1 = RegNext(wPortEn) init (False)

    io.wPort.en := wPortEn
    io.wPort.addr := wAddrGenArea.wAddrReg
    io.weight := weightReg(wCalGrop.asUInt)

    wValid := wGropValidNum > 0

    when(io.macParm.fire) {
      wGropValidNum := 0
    } elsewhen (frameDone && wLoadDone) {
      wGropValidNum := wGropValidNum
    } elsewhen (frameDone) {
      wGropValidNum := wGropValidNum - 1
    } elsewhen (wLoadDone) {
      wGropValidNum := wGropValidNum + 1
    }

    // 当更新组满时，切换更新组并清零写入计数
    when(wLoadDone) {
      wLoadGrop := ~wLoadGrop
    }
    // frameDone 信号有效时，切换计算组
    when(RegNext(RegNext(frameDone))) {
      wCalGrop := ~wCalGrop
    }

    val fsm = new StateMachine {
      val idle = new State with EntryPoint
      val read = new State
      val update = new State

      idle.whenIsActive {
        when(io.macParm.fire) {
          wPortEn := False
          wCalGrop := False
          wLoadGrop := False
          wReadIdex := 0
          goto(read)
        }
      }

      read.whenIsActive {
        when(wGropValidNum < 2) {
          wPortEn := True
          goto(update)
        }
      }

      update.whenIsActive {
        when(wPortEn) {
          when(~wReadDone) {
            wReadIdex := wReadIdex + 1
          } otherwise {
            wPortEn := False
            wReadIdex := 0
          }
        }
        // 更新写入权重寄存器
        when(wPortEnD1) {
          weightReg(wLoadGrop.asUInt)(wLoadIdex) := io.wPort.rData.asSInt.subdivideIn(inputWidth bits)
          when(wLoadDone) {
            when(wAddrGenArea.wAddrDone) {
              goto(idle)
            } otherwise {
              goto(read)
            }
          }
        }
      }
    }
  }

  // ----------------------------
  // Feature Address Area
  // ----------------------------
  val fAddrArea = new Area {
    val spLenH = Reg(UInt(fMaxSizeW bits)) init (0)
    val fBaseAddr = macParmReg.fBaseAddr
    val fAddrDone = Reg(Bool()) init (True)

    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init (0)
    val pCounter = Reg(UInt(fMaxSizeW bits)) init (0)
    val cCounter = Reg(UInt(fMaxChW bits)) init (0)
    val sCounter = Reg(UInt(kMaxSizeW bits)) init (0)
    val rCounter = Reg(UInt(kMaxSizeW bits)) init (0)
    val hCounter = Reg(UInt(fMaxSizeW bits)) init (0)
    val wCounter = Reg(UInt(fMaxSizeW bits)) init (0)

    val nCounterReload = UInt(fMaxChW - log2Up(kAutomic) bits)
    val pCounterReload = UInt(fMaxSizeW bits)
    val cCounterReload = UInt(fMaxChW - log2Up(cAutomic) bits)
    val sCounterReload = UInt(kMaxSizeW bits)
    val rCounterReload = UInt(kMaxSizeW bits)
    val hCounterReload = UInt(fMaxSizeW bits)
    val wCounterReload = UInt(fMaxSizeW bits)

    //    val fAddrReg = Reg(UInt(ramAW bits))
    val fAddrReg = UInt(ramAW bits)
    switch(macParmReg.macMode) {
      is(CONV2D) {
        nCounterReload := chOutBlock - 1
        spLenH := (rHeight - pCounter < hLen) ? (rHeight - pCounter) | hLen
        wCounterReload := rWidth - 1
      }
      is(FC) {
        nCounterReload := chOutBlock - 1
        spLenH := rHeight
        wCounterReload := 0
      }
      is(DWCONV, PWCONV, AVERAGPOOL) {
        nCounterReload := 0
        spLenH := (rHeight - hCounter < hLen) ? (rHeight - hCounter) | hLen
        wCounterReload := rWidth - 1
      }
      default {
        nCounterReload := 0
        spLenH := 0
        wCounterReload := 0
      }
    }
    pCounterReload := rHeight - spLenH
    cCounterReload := chInBlock - 1
    sCounterReload := macParmReg.kSize - 1
    rCounterReload := macParmReg.kSize - 1
    hCounterReload := spLenH - 1

    io.macCellparm.spLen := (spLenH * rWidth).resized
    io.macCellparm.loopLen := macParmReg.kSize * macParmReg.kSize * chInBlock

    frameDone := False

    val padFlag = Bool()
    val fHIdex = ((hCounter + pCounter) * macParmReg.stride + sCounter).resize(fMaxSizeW)
    val fWIdex = (wCounter * macParmReg.stride + rCounter).resize(fMaxSizeW)
    val fCIdex = cCounter

    when(fHIdex < macParmReg.pad || fHIdex >= macParmReg.fHeight + macParmReg.pad ||
      fWIdex < macParmReg.pad || fWIdex >= macParmReg.fWidth + macParmReg.pad) {
      padFlag := True
    } otherwise {
      padFlag := False
    }

    when(padFlag) {
      fAddrReg := 0
    } otherwise {
      fAddrReg := (fBaseAddr + fWIdex +
        macParmReg.fWidth * fHIdex +
        macParmReg.fWidth * macParmReg.fHeight * fCIdex).resized
    }

    // 计数器更新采用 elsewhen 链式结构
    when(io.macParm.fire) {
      nCounter := 0
      pCounter := 0
      cCounter := 0
      sCounter := 0
      rCounter := 0
      hCounter := 0
      wCounter := 0
      fAddrDone := False
    } elsewhen (io.fPort.en) {
      when(wCounter < wCounterReload) {
        wCounter := wCounter + 1
      } elsewhen (hCounter < hCounterReload) {
        wCounter := 0
        hCounter := hCounter + 1
      } elsewhen (rCounter < rCounterReload) {
        wCounter := 0
        hCounter := 0
        rCounter := rCounter + 1
        frameDone := True
      } elsewhen (sCounter < sCounterReload) {
        wCounter := 0
        hCounter := 0
        rCounter := 0
        sCounter := sCounter + 1
        frameDone := True
      } elsewhen (cCounter < cCounterReload) {
        wCounter := 0
        hCounter := 0
        rCounter := 0
        sCounter := 0
        cCounter := cCounter + 1
        frameDone := True
      } elsewhen (pCounter < pCounterReload) {
        wCounter := 0
        hCounter := 0
        rCounter := 0
        sCounter := 0
        cCounter := 0
        pCounter := pCounter + spLenH
        frameDone := True
      } elsewhen (nCounter < nCounterReload) {
        wCounter := 0
        hCounter := 0
        rCounter := 0
        sCounter := 0
        cCounter := 0
        pCounter := 0
        nCounter := nCounter + 1
        frameDone := True
      } otherwise {
        nCounter := 0
        frameDone := True
        fAddrDone := True
      }
    }
  }

  // ----------------------------
  // Feature Control Area
  // ----------------------------
  val fCtrl = new Area {
    val featureReg = Vec(Reg(SInt(inputWidth bits)) init (0), cAutomic) // 输入特征图寄存器

    val fPort0En = Reg(Bool()) init (False)
    val fPort0EnD1 = RegNext(fPort0En) init (False)

    io.fPort.en := fPort0En
    io.fPort.addr := fAddrArea.fAddrReg
    io.feature.payload := featureReg
    io.feature.valid := RegNext(fPort0EnD1)

    val fsm = new StateMachine {
      val idle = new State with EntryPoint
      val read = new State
      val update = new State

      idle.whenIsActive {
        when(io.macParm.fire) {
          fPort0En := False
          featureReg.foreach(_ := 0)
          goto(read)
        }
      }
      read.whenIsActive {
        when(wValid) {
          fPort0En := True
          goto(update)
        }
      }
      update.whenIsActive {
        when(fPort0En) {
          when(frameDone) {
            fPort0En := False
          }
        }
        when(fPort0EnD1) {
          featureReg := io.fPort.rData.asSInt.subdivideIn(inputWidth bits)
          when(fPort0En === False) {
            goto(read)
          }
        }
      }
    }
  }

  // ----------------------------
  // Result Address Area
  // ----------------------------
  val rAddrArea = new Area {
    val rBaseAddr = macParmReg.rBaseAddr
    val rAddrDone = Reg(Bool()) init (True)

    val nhwCounter = Reg(UInt(fMaxSizeW * 2 + fMaxChW - log2Up(kAutomic) bits)) init (0)
    val nhwCounterReload = UInt(fMaxSizeW * 2 + fMaxChW - log2Up(kAutomic) bits)

    //    val rAddrReg = Reg(UInt(ramAW bits))
    val rAddrReg = UInt(ramAW bits)
    nhwCounterReload := chOutBlock * rHeight * rWidth - 1

    rAddrReg := (rBaseAddr + nhwCounter).resized

    when(io.macParm.fire) {
      nhwCounter := 0
      rAddrDone := False
    } elsewhen (io.rPort.en) {
      when(nhwCounter < nhwCounterReload) {
        nhwCounter := nhwCounter + 1
      } otherwise {
        nhwCounter := 0
        rAddrDone := True
      }
    }
  }

  // ----------------------------
  // Result Control Area
  // ----------------------------
  val rCtrl = new Area {
    val resultReg = Vec(Reg(SInt(inputWidth bits)) init (0), cAutomic) // 输入特征图寄存器
    val rPortEn = Reg(Bool()) init (False)

    io.rPort.en := rPortEn
    io.rPort.addr := rAddrArea.rAddrReg
    io.rPort.wData := resultReg.asBits
    //    io.result.foreach(_.ready := True)

    val fsm = new StateMachine {
      val idle = new State with EntryPoint
      val update = new State

      idle.whenIsActive {
        when(io.macParm.fire) {
          rPortEn := False
          resultReg.foreach(_ := 0)
          busy := True
          goto(update)
        }
      }
      update.whenIsActive {
        when(io.result.map(_.valid).reduce(_ || _)) {
          resultReg := Vec(io.result.map(_.payload))
          rPortEn := True
        } otherwise {
          rPortEn := False
        }
        when(rAddrArea.rAddrDone) {
          goto(idle)
          busy := False
        }
      }
    }
  }

}

object MacCtrl extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new MacCtrl(MacCfg()))
}

