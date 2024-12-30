//package conv
//
//import spinal.core._
//import spinal.lib._
//
//case class PECore(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//    val en = in Bool()
//    val clear = in Bool()
//    val mode = in Bits (2 bits)
//    val featureIn = slave Flow SInt(inputWidth bits)
//    val weightIn = slave Flow SInt(inputWidth bits)
//    val pSumIn = in SInt (accWidth bits)
//    val pSumOut = out SInt (accWidth bits)
//  }
//  noIoPrefix()
//
//  val weight = Stream(SInt(inputWidth bits))
//  val feature = SInt(inputWidth bits)
//
//  val lwBuffer = StreamFifo(
//    dataType = SInt(lwbWidth bits),
//    depth = lwbDepth
//  )
//
//  val pSumReg = Reg(SInt(accWidth bits)) init (0)
//  val pSumRegEn = Bool()
//
//  val fwMul = feature * weight.payload
//
//  lwBuffer.io.push << io.weightIn.toStream
//  lwBuffer.io.pop >> weight
//  feature := io.featureIn.payload
//
//  weight.ready := io.featureIn.valid && io.mode(0) === True
//
//  switch(io.mode) {
//    is(B"2'b00") {
//      pSumRegEn := pSumReg + fwMul
//    }
//    is(B"2'b01") {
//      pSumReg := fwMul.resized
//    }
//    is(B"2'b10") {
//      pSumReg := io.featureIn
//    }
//    is(B"2'b11") {
//      pSumReg := io.pSumIn
//    }
//
//    when(io.clear) {
//      pSumReg := 0
//    } otherwise {
//      when(pSumRegEn) {
//        switch(io.mode) {
//          is(B"2'b00") {
//            pSumReg := pSumReg + fwMul
//          }
//          is(B"2'b01") {
//            pSumReg := fwMul.resized
//          }
//          is(B"2'b10") {
//            pSumReg := io.featureIn
//          }
//          is(B"2'b11") {
//            pSumReg := io.pSumIn
//          }
//          default {
//            pSumReg := 0
//          }
//        }
//      }
//
//      io.pSumOut := pSumReg
//
//    }
//  }
//}
//
//object PECore extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new PECore(ConvCfg.default))
//}