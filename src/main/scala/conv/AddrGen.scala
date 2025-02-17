package conv

import spinal.core._
import spinal.lib._
import cfg.ConvCfg

case class AddrGen(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
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
  val kerChDim = convParm.kSize * convParm.kSize
  val kerDim = convParm.kSize * convParm.kSize * chInBlock
  val foutHeight = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
  val foutWidth = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1

  val wAddrGenArea = new Area {
    val wBaseAddr = convParm.wBaseAddr
    val wAddrDone = Reg(Bool()) init (False)

    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init 0
    val cCounter = Reg(UInt(fMaxChW - log2Up(cAutomic) bits)) init 0
    val kaCounter = Reg(UInt(log2Up(kAutomic) bits)) init 0
    val rsCounter = Reg(UInt(kMaxSizeW * kMaxSizeW bits)) init 0

    val nCounterReload = chOutBlock
    val cCounterReload = chInBlock
    val kaCounterReload = kAutomic
    val rsCounterReload = convParm.kSize * convParm.kSize

    val valid = Reg(Bool()) init (False)

    io.wAddr.valid := valid

    io.wAddr.payload := (wBaseAddr + cCounter +
      rsCounter * cCounterReload +
      (nCounter * kAutomic + kaCounter) * rsCounterReload * cCounterReload).resized

    when(io.convParm.fire) {
      nCounter := 0
      cCounter := 0
      kaCounter := 0
      rsCounter := 0
      valid := True
    } otherwise {
      when(io.wAddr.fire) {
        when(rsCounter < rsCounterReload - 1) {
          rsCounter := rsCounter + 1
        } otherwise {
          rsCounter := 0
          when(kaCounter < kaCounterReload - 1) {
            kaCounter := kaCounter + 1
          } otherwise {
            kaCounter := 0
            when(cCounter < cCounterReload - 1) {
              cCounter := cCounter + 1
            } otherwise {
              cCounter := 0
              when(nCounter < nCounterReload - 1) {
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


  val finAddrArea = new Area {
    val finBaseAddr = RegNextWhen(io.convParm.finBaseAddr, io.convParm.fire)
    val finAddrDone = Reg(Bool()) init (False)


    val nCounter = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init 0
    val hCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val wCounter = Reg(UInt(fMaxSizeW bits)) init 0
    val cCounter = Reg(UInt(fMaxChW bits)) init 0
    val sCounter = Reg(UInt(kMaxSizeW bits)) init 0
    val rCounter = Reg(UInt(kMaxSizeW bits)) init 0

    val nCounterReload = chOutBlock
    val hCounterReload = foutHeight
    val wCounterReload = foutWidth
    val cCounterReload = chInBlock
    val rCounterReload = convParm.kSize
    val sCounterReload = convParm.kSize

    val valid = Reg(Bool()) init (False)

    val padFlag = False

    io.finAddr.valid := valid

    when(padFlag) {
      io.finAddr.payload := 0
    } otherwise {
      io.finAddr.payload := (finBaseAddr + cCounter +
        (wCounter * convParm.stride + rCounter) * cCounterReload +
        (hCounter * convParm.stride + sCounter) * cCounterReload * wCounterReload).resized
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
        when(rCounter < rCounterReload - 1) {
          rCounter := rCounter + 1
        } otherwise {
          rCounter := 0
          when(sCounter < sCounterReload - 1) {
            sCounter := sCounter + 1
          } otherwise {
            sCounter := 0
            when(cCounter < cCounterReload - 1) {
              cCounter := cCounter + 1
            } otherwise {
              cCounter := 0
              when(wCounter < wCounterReload - 1) {
                wCounter := wCounter + 1
              } otherwise {
                wCounter := 0
                when(hCounter < hCounterReload - 1) {
                  hCounter := hCounter + convParm.stride
                } otherwise {
                  hCounter := 0
                  when(nCounter < nCounterReload - 1) {
                    nCounter := nCounter + 1
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


  val foutAddrArea = new Area {
    val foutBaseAddr = RegNextWhen(io.convParm.foutBaseAddr, io.convParm.fire)

    val foutAddrDone = Reg(Bool()) init (False)


    val hwcCounter = Reg(UInt(fMaxSizeW + fMaxSizeW + fMaxChW bits)) init 0

    val hwcCounterReload = convParm.fHeight * convParm.fWidth * chOutBlock

    val valid = Reg(Bool()) init (False)


    io.foutAddr.valid := valid
    io.foutAddr.payload := (foutBaseAddr + hwcCounter).resized

    when(io.convParm.fire) {
      hwcCounter := 0
      valid := True
      foutAddrDone := False
    } otherwise {
      when(io.foutAddr.ready & io.foutAddr.valid) {
        when(hwcCounter < hwcCounterReload - 1) {
          hwcCounter := hwcCounter + 1
        } otherwise {
          hwcCounter := 0
          foutAddrDone := True
          valid := False
        }
      }
    }
  }


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