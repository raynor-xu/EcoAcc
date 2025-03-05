//package conv
//
//import spinal.core._
//import spinal.lib._
//import mem._
//import cfg.ConvCfg
//
//case class PECtrl(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//
//    // Core Signal
//    val convParm = slave(Stream(ConvParm(cfg)))
//    val scaleParm = slave(Stream(ScaleParm(cfg)))
//    // PEArray Signal
//
//    val peMode = out(PEMode())
//    val ppuParm = out(PPUParm(cfg))
//
//
//    val featureIn = Vec(master Stream SInt(inputWidth bits), cAutomic)
//    val weight = Vec(Vec(master Stream SInt(inputWidth bits), cAutomic), kAutomic)
//    val featureOut = Vec(slave Flow SInt(inputWidth bits), kAutomic)
//
//    //AddrGen Signal
//    val wAddr = slave(Stream(UInt(ramAW bits)))
//    val finAddr = slave(Stream(UInt(ramAW bits)))
//    val foutAddr = slave(Stream(UInt(ramAW bits)))
//
//    // MemArray Signal
//    val wPort0 = master(RdPort(ramDW, ramDepth))
//    val fPort0 = master(RdPort(ramDW, ramDepth))
//    val fPort1 = master(WrPort(ramDW, ramDepth))
//
//  }
//
//  noIoPrefix()
//
//
//  val convParm = RegNextWhen(io.convParm.payload, io.convParm.fire)
//
//  io.ppuParm.scaleParm := RegNextWhen(io.scaleParm.payload, io.scaleParm.fire)
//  io.ppuParm.reluEn := convParm.reluEn
//  io.ppuParm.spLen :=
//
//
//  val wCtrl = new Area {
//    val wCtrlState = RegInit(False)
//    val kAutomicCnt = Reg(UInt(log2Up(kAutomic) bits)) init 0
//
//    val lwbReady = io.weight(kAutomicCnt).map(_.ready).reduce(_ && _)
//    val lwbValid = RegNext(io.wAddr.fire) init (False)
//    val lwbFire = lwbReady && lwbValid
//
//
//    for (k <- 0 until kAutomic) {
//      val weight = Vec(io.wPort0.rData.subdivideIn(inputWidth bits).map(_.asSInt))
//      for (c <- 0 until cAutomic) {
//        io.weight(k)(c).payload := weight(c)
//        io.weight(k)(c).valid := lwbValid && k === kAutomicCnt
//      }
//    }
//
//    when(!wCtrlState) {
//      io.wPort0.en := False
//      io.wAddr.ready := False
//      io.wPort0.addr := 0
//
//      when(io.convParm.fire) {
//        wCtrlState := True
//        kAutomicCnt := 0
//      }
//    } otherwise {
//      io.wPort0.en := io.wAddr.fire
//      io.wPort0.addr := io.wAddr.payload
//      io.wAddr.ready := lwbReady
//      when(lwbFire) {
//        when(kAutomicCnt < kAutomicCnt - 1) {
//          kAutomicCnt := kAutomicCnt + 1
//        } otherwise {
//          kAutomicCnt := 0
//        }
//      }
//      when(!io.wAddr.valid) {
//        wCtrlState := False
//      }
//    }
//  }
//
//
//  val finCtrl = new Area {
//    val finCtrlState = RegInit(False)
//
//    val finValid = RegNext(io.finAddr.fire) init (False)
//    val finReady = io.featureIn.map(_.ready).reduce(_ && _)
//    //val finFire = finValid && finReady
//
//    val feature = Vec(io.fPort0.rData.subdivideIn(inputWidth bits).map(_.asSInt))
//    for (c <- 0 until cAutomic) {
//      io.featureIn(c).payload := feature(c)
//      io.featureIn(c).valid := finValid
//    }
//
//    when(!finCtrlState) {
//      io.fPort0.en := False
//      io.finAddr.ready := False
//      io.fPort0.addr := 0
//      when(io.convParm.fire) {
//        finCtrlState := True
//      }
//    } otherwise {
//      io.fPort0.en := io.finAddr.fire
//      io.fPort0.addr := io.finAddr.payload
//      io.finAddr.ready := finReady
//      when(!io.wAddr.valid) {
//        finCtrlState := False
//      }
//    }
//  }
//
//  val foutCtrl = new Area {
//    val foutCtrlState = RegInit(False)
//
//    val foutValid = io.featureOut.map(_.valid).reduce(_ || _)
//
//    io.fPort1.wData := Cat(io.featureOut.reverse.map(_.payload.asBits))
//
//
//    when(!foutCtrlState) {
//      io.fPort1.en := False
//      io.foutAddr.ready := False
//      io.fPort1.addr := 0
//      io.convParm.ready := True
//      when(io.convParm.fire) {
//        foutCtrlState := True
//      }
//    } otherwise {
//      io.convParm.ready := False
//      io.fPort1.en := foutValid
//      io.fPort1.addr := io.foutAddr.payload
//      io.foutAddr.ready := foutValid
//      when(!io.wAddr.valid) {
//        foutCtrlState := False
//      }
//    }
//  }
//}
//
//object PECtrl extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new PECtrl(ConvCfg()))
//}