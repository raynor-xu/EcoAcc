
package conv

import spinal.core._
import spinal.lib._
import cfg.ConvCfg

case class AddrGen(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {

    val spLen = out UInt (log2Up(lfbDepth) bits)
    val kChDim = out UInt (kMaxSizeW + kMaxSizeW bits)

    val convParm = slave(Flow(ConvParm(cfg)))
    val wAddr = master(Stream(UInt(ramAW bits)))
    val finAddr = master(Stream(UInt(ramAW bits)))
    val foutAddr = master(Stream(UInt(ramAW bits)))

  }.setName("")

  noIoPrefix()

  val convParm = RegNextWhen(io.convParm.payload, io.convParm.fire)
  val busy = Reg(Bool()) init False

  val chInBlock = CeilDiv(convParm.chIn, kAutomic)
  val chOutBlock = CeilDiv(convParm.chOut, kAutomic)

  val kChDim = convParm.kSize * convParm.kSize

  val foutHeight = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
  val foutWidth = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
  val hLen = (lfbDepth / foutWidth).resize(fMaxSizeW) //每次处理输出特征图高度

  io.kChDim := kChDim

  val wAddrGenArea = new Area {
    val wBaseAddr = convParm.wBaseAddr
    val wAddrDone = Reg(Bool()) init (False)

    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init 0
    val pCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val cCounter = Reg(UInt(fMaxChW - log2Up(cAutomic) bits)) init 0
    val rsCounter = Reg(UInt(kMaxSizeW * kMaxSizeW bits)) init 0
    val kaCounter = Reg(UInt(log2Up(kAutomic) bits)) init 0

    val nCounterReload = UInt(fMaxChW - log2Up(kAutomic) bits)
    val pCounterReload = UInt(fMaxSizeW bits)
    val cCounterReload = UInt(fMaxChW - log2Up(cAutomic) bits)
    val rsCounterReload = UInt(kMaxSizeW + kMaxSizeW bits)
    val kaCounterReload = UInt(log2Up(kAutomic) bits)


    switch(convParm.mode) {
      is(ConvMode.CONV2D) {
        pCounterReload := foutHeight - 1
      }
      default {
        pCounterReload := 0
      }
    }

    nCounterReload := chOutBlock - 1
    cCounterReload := chInBlock - 1
    rsCounterReload := convParm.kSize * convParm.kSize - 1
    kaCounterReload := kAutomic - 1

    val valid = Reg(Bool()) init (False)

    io.wAddr.valid := valid

    val wNIdex = ((nCounter * kAutomic + kaCounter) * rsCounterReload * cCounterReload).resize(fMaxSizeW)

    val wWHIdex = (rsCounter * cCounterReload).resize(fMaxSizeW)

    val wCIdex = cCounter.resize(fMaxChW)


    io.wAddr.payload := (wBaseAddr + wCIdex +
      (wWHIdex * wCIdex) +
      (wCIdex * wNIdex * wNIdex)).resized

    when(io.convParm.fire) {
      nCounter := 0
      cCounter := 0
      kaCounter := 0
      rsCounter := 0
      valid := True
    } otherwise {
      when(io.wAddr.fire) {
        when(kaCounter < kaCounterReload) {
          kaCounter := kaCounter + 1
        } otherwise {
          kaCounter := 0
          when(rsCounter < rsCounterReload) {
            rsCounter := rsCounter + 1
          } otherwise {
            rsCounter := 0
            when(cCounter < cCounterReload) {
              cCounter := cCounter + 1
            } otherwise {
              cCounter := 0
              when(pCounter < pCounterReload) {
                pCounter := pCounter + hLen
              } otherwise {
                pCounter := 0
                when(nCounter < nCounterReload) {
                  nCounter := nCounter + 1
                } otherwise {
                  nCounter := 0
                  wAddrDone := True
                  valid := False
                }
              }
            }
          }
        }
      }
    }
  }


  val finAddrArea = new Area {
    val finBaseAddr = RegNextWhen(io.convParm.finBaseAddr, io.convParm.fire)
    val finAddrDone = Reg(Bool()) init (False)


    val pCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init 0
    val hCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val wCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val cCounter = Reg(UInt(fMaxChW bits)) init 0
    val sCounter = Reg(UInt(kMaxSizeW bits)) init 0
    val rCounter = Reg(UInt(kMaxSizeW bits)) init 0

    val hRemain = foutHeight - pCounter

    val pCounterReload = UInt(fMaxSizeW bits)
    val nCounterReload = UInt(fMaxChW - log2Up(kAutomic) bits)
    val hCounterReload = UInt(fMaxSizeW bits)
    val wCounterReload = UInt(fMaxSizeW bits)
    val cCounterReload = UInt(fMaxChW - log2Up(cAutomic) bits)
    val rCounterReload = UInt(kMaxSizeW bits)
    val sCounterReload = UInt(kMaxSizeW bits)

    switch(convParm.mode) {
      is(ConvMode.CONV2D) {
        pCounterReload := foutHeight - hLen
        hCounterReload := (hLen < hRemain) ? hLen | hRemain
      }
      default {
        hCounterReload := foutHeight - 1
        pCounterReload := 0
      }
    }

    nCounterReload := chOutBlock - 1
    wCounterReload := foutWidth - 1
    cCounterReload := chInBlock - 1
    rCounterReload := convParm.kSize - 1
    sCounterReload := convParm.kSize - 1


    val valid = Reg(Bool()) init (False)

    val padFlag = Bool()

    io.finAddr.valid := valid

    val finHIdex = ((hCounter + pCounter) * convParm.stride + sCounter).resize(fMaxSizeW)

    val finWIdex = (wCounter * convParm.stride + rCounter).resize(fMaxSizeW)

    val finCIdex = cCounter

    when(finHIdex < convParm.pad || finHIdex >= convParm.fHeight + convParm.pad ||
      finWIdex < convParm.pad || finWIdex >= convParm.fWidth + convParm.pad) {
      padFlag := True
    } otherwise {
      padFlag := False
    }


    when(padFlag) {
      io.finAddr.payload := 0
    } otherwise {
      io.finAddr.payload := (finBaseAddr + finCIdex +
        finWIdex * finCIdex +
        finHIdex * finWIdex * finCIdex).resized
    }

    when(io.convParm.fire) {
      nCounter := 0
      hCounter := 0
      wCounter := 0
      cCounter := 0
      sCounter := 0
      rCounter := 0
      valid := True
    } otherwise {
      when(io.finAddr.fire) {
        when(rCounter < rCounterReload) {
          rCounter := rCounter + 1
        } otherwise {
          rCounter := 0
          when(sCounter < sCounterReload) {
            sCounter := sCounter + 1
          } otherwise {
            sCounter := 0
            when(cCounter < cCounterReload) {
              cCounter := cCounter + 1
            } otherwise {
              cCounter := 0
              when(wCounter < wCounterReload) {
                wCounter := wCounter + 1
              } otherwise {
                wCounter := 0
                when(hCounter < hCounterReload) {
                  hCounter := hCounter + convParm.stride
                } otherwise {
                  hCounter := 0
                  when(nCounter < nCounterReload) {
                    nCounter := nCounter + 1
                  } otherwise {
                    nCounter := 0
                    when(pCounter < pCounterReload) {
                      pCounter := pCounter + hLen
                    } otherwise {
                      nCounter := 0
                      finAddrDone := True
                      valid := False
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }


  val foutAddrArea = new Area {
    val foutBaseAddr = RegNextWhen(io.convParm.foutBaseAddr, io.convParm.fire)

    val foutAddrDone = Reg(Bool()) init (False)

    val pCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val hwcCounter = Reg(UInt(fMaxSizeW + fMaxSizeW + fMaxChW bits)) init 0

    val hRemain = foutHeight - pCounter

    val pCounterReload = UInt(fMaxSizeW bits)
    val hCounterReload = UInt(fMaxSizeW bits)
    val hwcCounterReload = UInt(fMaxSizeW * 2 + fMaxChW bits)

    switch(convParm.mode) {
      is(ConvMode.CONV2D) {
        pCounterReload := foutHeight - hLen
        hCounterReload := (hLen < hRemain) ? (hLen - 1) | (hRemain - 1)
      }
      default {
        hCounterReload := foutHeight - 1
        pCounterReload := 0
      }
    }

    hwcCounterReload := (hCounterReload * foutWidth * chOutBlock - 1).resized

    val valid = Reg(Bool()) init (False)


    io.foutAddr.valid := valid


    io.foutAddr.payload := (foutBaseAddr + hwcCounter + pCounter * foutHeight * chOutBlock).resized

    when(io.convParm.fire) {
      hwcCounter := 0
      valid := True
      foutAddrDone := False
    } otherwise {
      when(io.foutAddr.ready & io.foutAddr.valid) {
        when(hwcCounter < hwcCounterReload) {
          hwcCounter := hwcCounter + 1
        } otherwise {
          hwcCounter := 0
          when(pCounter < pCounterReload) {
            pCounter := pCounter + hLen
          } otherwise {
            pCounter := 0
            foutAddrDone := True
            valid := False
          }
        }
      }
    }
  }

  io.spLen := (foutAddrArea.hCounterReload * foutWidth).resized

  when(io.convParm.fire) {
    busy := True
  } otherwise {
    when(wAddrGenArea.wAddrDone & finAddrArea.finAddrDone & foutAddrArea.foutAddrDone) {
      busy := False
    }
  }

}


object AddrGen extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(new AddrGen(ConvCfg()))
}