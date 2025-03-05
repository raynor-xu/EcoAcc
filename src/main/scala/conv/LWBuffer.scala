//package conv
//
//import spinal.core._
//import spinal.lib._
//import cfg.ConvCfg
//
//case class LWBuffer(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//    val clear = in Bool()
//    val spLen = in UInt (log2Up(lfbDepth) bits)
//    val kChDim = in UInt (kMaxSizeW + kMaxSizeW bits)
//    val weightIn = slave Stream SInt(inputWidth bits)
//    val weightOut = master Stream SInt(inputWidth bits)
//  }
//
//
//  val Buffer = Vec(Reg(SInt(inputWidth bits)) init (0), lwbDepth)
//
//  val validWeight = Reg(UInt(log2Up(lwbDepth) bits)) init (0)
//
//  val rdPointer = Reg(UInt(log2Up(lwbDepth) bits)) init (0)
//
//  val wrPointer = Reg(UInt(log2Up(lwbDepth) bits)) init (0)
//
//  val spLenCnt = Reg(UInt(log2Up(lfbDepth) bits)) init (0)
//
//  val kChDimCnt = Reg(UInt(kMaxSizeW + kMaxSizeW bits)) init (0)
//
//  val spLenValid = spLenCnt === io.spLen - 1
//
//  val kChDimValid = kChDimCnt === io.spLen - 1
//
//
//  io.weightOut.valid := validWeight >= io.kChDim
//
//  io.weightIn.ready := lwbDepth - validWeight =/= 0
//
//  io.weightOut.payload := Buffer(rdPointer)
//
//  when(io.clear) {
//    validWeight := 0
//  } otherwise {
//    when(io.weightOut.fire) {
//      when(spLenValid && kChDimValid) {
//        when(io.weightIn.fire) {
//          validWeight := validWeight - io.kChDim + 1
//        } otherwise {
//          validWeight := validWeight - io.kChDim
//        }
//      }
//    } otherwise {
//      when(io.weightIn.fire) {
//        validWeight := validWeight + 1
//      }
//    }
//  }
//
//
//  when(io.clear) {
//    wrPointer := 0
//  } otherwise {
//    when(io.weightIn.fire) {
//      Buffer(wrPointer) := io.weightIn.payload
//      wrPointer := wrPointer + 1
//    }
//  }
//
//  when(io.clear) {
//    spLenCnt := 0
//    kChDimCnt := 0
//  } otherwise {
//    when(io.weightOut.fire) {
//      when(kChDimValid) {
//        kChDimCnt := 0
//        when(spLenValid) {
//          spLenCnt := 0
//        } otherwise {
//          spLenCnt := spLenCnt + 1
//        }
//      } otherwise {
//        kChDimCnt := kChDimCnt + 1
//      }
//    }
//  }
//
//  when(io.clear) {
//    rdPointer := 0
//  } otherwise {
//    when(io.weightOut.fire) {
//      when(kChDimValid && ~spLenValid) {
//        rdPointer := rdPointer - io.kChDim + 1
//      } otherwise {
//        rdPointer := rdPointer + 1
//      }
//    }
//  }
//
//
//}
//
//
//object LWBuffer extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new LWBuffer(ConvCfg()))
//}