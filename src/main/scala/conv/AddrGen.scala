//package conv
//
//import spinal.core._
//import spinal.lib._
//
//case class AddrGen(cfg: Config) extends Component {
//
//  val io = new Bundle {
//    val convParm = in(ConvParm(cfg))
//    val start = in Bool()
//
//    val wAddr = master(Stream(UInt(addrW bits)))
//    val finAddr = master(Stream(UInt(addrW bits)))
//    val foutAddr = master(Stream(UInt(addrW bits)))
//    val done = out Bool()
//  }.setName("")
//
//  noIoPrefix()
//
//  val convParm = RegNextWhen(io.convParm, io.start)
//
//  val wAddrGen = new Area {
//    val wBaseAddr = RegNextWhen(io.convParm.wBaseAddr, io.start)
//    val wAddrDone = Reg(Bool()) init (False)
//    val baseCounter = Counter(0 to dByte)
//    val kCounter = Counter(0 to kMaxSize * kMaxSize * fMaxCh / dByte)
//    val chOutCounter = Counter(0 to fMaxCh / dByte)
//    val baseCounterReload = dByte
//    val kCounterReload = convParm.kSize * convParm.kSize * CeilDiv(convParm.chIn, dByte)
//    val chOutCounterReload = CeilDiv(convParm.chOut, dByte)
//
//    val valid = Reg(Bool()) init (False)
//
//    io.wAddr.valid := valid
//    io.wAddr.payload := wBaseAddr + (baseCounter.value * kCounterReload + kCounter.value + chOutCounter.value * kCounterReload * baseCounterReload).resized
//
//    when(io.start) {
//      baseCounter.clear()
//      kCounter.clear()
//      chOutCounter.clear()
//      valid := True
//      wAddrDone := False
//    } otherwise {
//      when(io.wAddr.ready & io.wAddr.valid) {
//        when(baseCounter < baseCounterReload - 1) {
//          baseCounter.increment()
//        } otherwise {
//          baseCounter.clear()
//          when(kCounter < kCounterReload - 1) {
//            kCounter.increment()
//          } otherwise {
//            kCounter.clear()
//            when(chOutCounter < chOutCounterReload - 1) {
//              chOutCounter.increment()
//            } otherwise {
//              chOutCounter.clear()
//              wAddrDone := True
//              valid := False
//            }
//          }
//        }
//      }
//    }
//  }
//
//  val finAddr = new Area {
//    val finBaseAddr = RegNextWhen(io.convParm.finBaseAddr, io.start)
//    val finAddrDone = Reg(Bool()) init (False)
//
//    val baseCounter = Counter(0 to dByte)
//    val kWCounter = Counter(0 to kMaxSize)
//    val kHCounter = Counter(0 to kMaxSize)
//    val whCounter = Counter(0 to fMaxSize / dByte)
//    val chICounter = Counter(0 to fMaxCh / dByte)
//
//    val baseCounterReload = dByte
//    val kWCounterReload = convParm.kSize
//    val kHCounterReload = convParm.kSize
//    val wCounterReload = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
//    val hCounterReload = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
//    val whCounterReload = CeilDiv(wCounterReload * hCounterReload, dByte)
//    val chICounterReload = CeilDiv(convParm.chIn, dByte)
//
//    val finWidth = convParm.fWidth + 2 * convParm.pad
//
//    val valid = Reg(Bool()) init (False)
//
//    val wBias = (whCounter * dByte + baseCounter) % wCounterReload * convParm.stride + kWCounter
//
//    val hBias = (whCounter * dByte + baseCounter) / wCounterReload * convParm.stride + kHCounter
//
//    io.finAddr.valid := valid
//
//    io.finAddr.payload :=
//      finBaseAddr + chICounter.value +
//        (wBias.resize(addrW) * chICounterReload).resize(addrW) +
//        (hBias.resize(addrW) * chICounterReload * finWidth.resize(addrW)).resize(addrW)
//
//
//    when(io.start) {
//
//      baseCounter.clear()
//      kWCounter.clear()
//      kHCounter.clear()
//      whCounter.clear()
//      chICounter.clear()
//      finAddrDone := False
//      valid := True
//    } otherwise {
//      when(io.finAddr.ready & io.finAddr.valid) {
//        when(baseCounter < baseCounterReload - 1) {
//          baseCounter.increment()
//        } otherwise {
//          baseCounter.clear()
//          when(chICounter < chICounterReload - 1) {
//            chICounter.increment()
//          } otherwise {
//            chICounter.clear()
//            when(kWCounter < kWCounterReload - 1) {
//              kWCounter.increment()
//            } otherwise {
//              kWCounter.clear()
//              when(kHCounter < kHCounterReload - 1) {
//                kHCounter.increment()
//              } otherwise {
//                kHCounter.clear()
//                when(whCounter < whCounterReload - 1) {
//                  whCounter.increment()
//                } otherwise {
//                  whCounter.clear()
//                  finAddrDone := True
//                  valid := False
//                }
//
//              }
//
//            }
//          }
//        }
//      }
//    }
//  }
//
//  val foutAddr = new Area {
//    val foutBaseAddr = RegNextWhen(io.convParm.foutBaseAddr, io.start)
//
//    val foutAddrDone = Reg(Bool()) init (False)
//
//    val wCounter = Counter(0 to fMaxSize)
//    val hCounter = Counter(0 to fMaxSize)
//    val chOCounter = Counter(0 to fMaxCh / dByte)
//    val wCounterReload = (convParm.fWidth - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
//    val hCounterReload = (convParm.fHeight - convParm.kSize + 2 * convParm.pad) / convParm.stride + 1
//    val chOCounterReload = CeilDiv(convParm.chOut, dByte)
//
//    val valid = Reg(Bool()) init (False)
//
//
//    io.foutAddr.valid := valid
//    io.foutAddr.payload :=
//      (foutBaseAddr + chOCounter.value +
//        (wCounter.value * chOCounterReload).resize(addrW) +
//        (hCounter.value * chOCounterReload * wCounterReload).resize(addrW)).resize(addrW)
//
//    when(io.start) {
//      wCounter.clear()
//      hCounter.clear()
//      chOCounter.clear()
//      valid := True
//      foutAddrDone := False
//    } otherwise {
//      when(io.foutAddr.ready & io.foutAddr.valid) {
//        when(wCounter < wCounterReload - 1) {
//          wCounter.increment()
//        } otherwise {
//          wCounter.clear()
//          when(hCounter < hCounterReload - 1) {
//            hCounter.increment()
//          } otherwise {
//            hCounter.clear()
//            when(chOCounter < chOCounterReload - 1) {
//              chOCounter.increment()
//            } otherwise {
//              chOCounter.clear()
//              foutAddrDone := True
//              valid := False
//            }
//          }
//        }
//      }
//    }
//  }
//
//  io.done := wAddrGen.wAddrDone & foutAddr.foutAddrDone & finAddr.finAddrDone
//
//  def CeilDiv(x: UInt, y: Int): UInt = {
//    (x + y - 1) >> log2Up(y)
//  }
//
//}
//
//
//object AddrGen extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "" // 移除匿名信号的前缀
//  ).generateVerilog(new AddrGen(Config.default))
//}