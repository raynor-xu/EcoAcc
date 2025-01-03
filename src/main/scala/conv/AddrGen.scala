package conv

import spinal.core._
import spinal.lib._

case class AddrGen(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val convParm = slave(Stream(ConvParm(cfg)))
    val wAddr = master(Stream(UInt(ramAW bits)))
    val finAddr = master(Stream(UInt(ramAW bits)))
    val foutAddr = master(Stream(UInt(ramAW bits)))

  }.setName("")

  noIoPrefix()

  val convParm = RegNextWhen(io.convParm.payload, io.convParm.fire)
  val busy = Reg(Bool()) init False
  val wAddrGenArea = new Area {
    val wBaseAddr = RegNextWhen(io.convParm.wBaseAddr, io.convParm.fire)
    val wAddrDone = Reg(Bool()) init (False)
    val baseCounter = Reg(UInt(ramAW bits)) init 0
    val valid = Reg(Bool()) init (False)

    val baseCounterReload = RegNextWhen(
      io.convParm.kSize * io.convParm.kSize
        * io.convParm.chIn * io.convParm.chOut / cAutomic
      , io.convParm.fire)

    io.wAddr.valid := valid

    io.wAddr.payload := wBaseAddr + baseCounter

    when(io.convParm.fire) {
      baseCounter := 0
      valid := True
    } otherwise {
      when(io.wAddr.fire) {
        when(baseCounter < baseCounterReload - 1) {
          baseCounter := baseCounter + 1
        } otherwise {
          baseCounter := 0
          wAddrDone := True
          valid := False
        }
      }
    }

  }
  val finAddrArea = new Area {
    val finBaseAddr = RegNextWhen(io.convParm.finBaseAddr, io.convParm.fire)
    val finAddrDone = Reg(Bool()) init (False)


    val kCounter = Reg(UInt(log2Up(fMaxSize / kAutomic) bits)) init 0
    val wCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val hCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val cCounter = Reg(UInt(fMaxChW bits)) init 0
    val rCounter = Reg(UInt(kMaxSizeW bits)) init 0
    val sCounter = Reg(UInt(kMaxSizeW bits)) init 0
    val spLenCounter = Reg(UInt(log2Up(spLenMax) bits)) init 0

    val kCounterReload = CeilDiv(convParm.chOut, kAutomic)
    val wCounterReload = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
    val hCounterReload = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
    val cCounterReload = CeilDiv(convParm.chIn, cAutomic)
    val rCounterReload = convParm.kSize
    val sCounterReload = convParm.kSize

    val spLenCounterReload = UInt(spLenCounter.getBitsWidth bits)

    when(wCounterReload - wCounter >= convParm.spLen) {
      spLenCounterReload := convParm.spLen
    } otherwise {
      spLenCounterReload := (wCounterReload - wCounter).resized
    }

    val valid = Reg(Bool()) init (False)

    val wBias = (spLenCounter + wCounter) * convParm.stride + sCounter

    val hBias = hCounter * convParm.stride + rCounter

    val wMap = wBias - convParm.pad

    val hMap = hBias - convParm.pad

    val wPadFlag = wBias < convParm.pad | wBias >= convParm.pad + convParm.fWidth
    val hPadFlag = hBias < convParm.pad | hBias >= convParm.pad + convParm.fHeight

    val padFlag = wPadFlag | hPadFlag

    io.finAddr.valid := valid

    when(padFlag) {
      io.finAddr.payload := 0
    } otherwise {
      io.finAddr.payload := (finBaseAddr + wMap +
        convParm.fWidth * hMap +
        convParm.fWidth * convParm.fHeight * kCounterReload).resized
    }

    when(io.convParm.fire) {
      kCounter := 0
      wCounter := 0
      hCounter := 0
      cCounter := 0
      rCounter := 0
      sCounter := 0
      spLenCounter := 0
      valid := True
    } otherwise {
      when(io.finAddr.fire) {
        when(spLenCounter < spLenCounterReload - 1) {
          spLenCounter := spLenCounter + 1
        } otherwise {
          spLenCounter := 0
          when(sCounter < sCounterReload - 1) {
            sCounter := sCounter + 1
          } otherwise {
            sCounter := 0
            when(rCounter < rCounterReload - 1) {
              rCounter := rCounter + 1
            } otherwise {
              rCounter := 0
              when(cCounter < cCounterReload - 1) {
                cCounter := cCounter + 1
              } otherwise {
                cCounter := 0
                when(hCounter < hCounterReload - 1) {
                  hCounter := hCounter + convParm.stride
                } otherwise {
                  hCounter := 0
                  when(wCounter < wCounterReload - 1) {
                    wCounter := wCounter + convParm.stride * convParm.spLen
                  } otherwise {
                    wCounter := 0
                    when(kCounter < kCounterReload - 1) {
                      kCounter := kCounter + 1
                    } otherwise {
                      kCounter := 0
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


    val wCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val hCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val chOCounter = Reg(UInt(fMaxChW bits)) init 0

    val wCounterReload = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
    val hCounterReload = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
    val chOCounterReload = CeilDiv(convParm.chOut, kAutomic)

    val valid = Reg(Bool()) init (False)


    io.foutAddr.valid := valid
    io.foutAddr.payload :=
      (foutBaseAddr + wCounter +
        (hCounter * wCounterReload).resize(ramAW) +
        (wCounterReload * hCounterReload * chOCounterReload).resize(ramAW)).resize(ramAW)

    when(io.convParm.fire) {
      wCounter := 0
      hCounter := 0
      chOCounter := 0
      valid := True
      foutAddrDone := False
    } otherwise {
      when(io.foutAddr.ready & io.foutAddr.valid) {
        when(wCounter < wCounterReload - 1) {
          wCounter := wCounter + 1
        } otherwise {
          wCounter := 0
          when(hCounter < hCounterReload - 1) {
            hCounter := hCounter + 1
          } otherwise {
            hCounter := 0
            when(chOCounter < chOCounterReload - 1) {
              chOCounter := chOCounter + 1
            } otherwise {
              chOCounter := 0
              foutAddrDone := True
              valid := False
            }
          }
        }
      }
    }
  }

  def CeilDiv(x: UInt, y: Int): UInt = {
    (x + y - 1) >> log2Up(y)
  }

  io.convParm.ready := ~busy

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
  ).generateVerilog(new AddrGen(ConvCfg.default))
}