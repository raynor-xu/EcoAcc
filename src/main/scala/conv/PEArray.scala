//package conv
//
//import spinal.core._
//import spinal.lib._
//
//case class PEArray(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//    val clear = in Bool()
//    val shift = in Bool()
//    val mode = in Bits (2 bits)
//    val featureIn = Vec(slave Flow SInt(inputWidth bits), peCols)
//    val weightIn = Vec(slave Flow SInt(inputWidth bits), peCols)
//    val weightSel = in Bits (log2Up(peRows) bits)
//    val pSumOut = out Vec(SInt(accWidth bits), peRows)
//  }
//
//  noIoPrefix()
//  val peCores = Array.fill(peRows, peCols)(PECore(cfg))
//
//  for (row <- 0 until peRows) {
//    for (col <- 0 until peCols) {
//      peCores(row)(col).io.shift := io.shift
//      peCores(row)(col).io.clear := io.clear
//      peCores(row)(col).io.mode := io.mode
//      peCores(row)(col).io.featureIn := io.featureIn(col)
//      peCores(row)(col).io.weightIn.payload := io.weightIn(row).payload
//      peCores(row)(col).io.weightIn.valid := io.weightIn(row).valid & (io.weightSel === row)
//    }
//  }
//
//  for (row <- 0 until peRows) {
//    for (col <- 1 until peCols) {
//      peCores(row)(col).io.pSumIn := peCores(row)(col - 1).io.pSumOut
//    }
//  }
//
//  for (row <- 0 until peRows) {
//    peCores(row)(0).io.pSumIn := 0
//    io.pSumOut(row) := peCores(row)(peCols - 1).io.pSumOut
//  }
//
//}
//
//object PEArray extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new PEArray(ConvCfg.default))
//}