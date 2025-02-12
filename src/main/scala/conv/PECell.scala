//package conv
//
//import spinal.core._
//import spinal.lib._
//
//case class PECell(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//    val en = in Bool()
//    val mode = in Bits (2 bits)
//    val featureIn = in SInt (inputWidth bits)
//    val weightIn = in Vec(SInt(inputWidth bits), cAutomic)
//    val macOut = out Vec(SInt(inputWidth * 2 bits), cAutomic)
//  }
//
//  noIoPrefix()
//
//  val macReg = Vec(Reg(SInt(inputWidth * 2 bits)) init 0, cAutomic)
//
//  when(io.en) {
//    for (i ++++++++++++++++++++ 99 <- 0 until kAutomic) {
//      switch(io.mode) {
//        is(B"2'00") {
//          macReg(i) := macReg(i) + io.weightIn(i) * io.featureIn
//        }
//        is(B"2'01") {
//          macReg(i) := io.weightIn(i) * io.featureIn
//        }
//        is(B"2'10") {
//          macReg(i) := io.weightIn(i).resized
//        }
//        is(B"2'11") {
//          macReg(i) := io.featureIn.resized
//        }
//      }
//    }
//  }
//
//  io.macOut := macReg
//
//}
//
//object PECell extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new PECell(ConvCfg.default))
//}