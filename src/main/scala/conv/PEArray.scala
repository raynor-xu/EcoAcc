package conv

import spinal.core._
import spinal.lib._

case class PEArray(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val mode = in Bits (2 bits)
    val spLen = in UInt (log2Up(spLenMax) bits)
    val featureIn = slave Flow Vec(SInt(inputWidth bits), kAutomic)
    val weightIn = slave Flow Vec(SInt(inputWidth bits), cAutomic)
    val weightSel = in Bits (log2Up(kAutomic) bits)
    val sumOut = master Flow Vec(SInt(inputWidth * 2 + log2Up(cAutomic) bits), kAutomic)
  }

  noIoPrefix()
  val peCells = Array.fill(kAutomic)(PECell(cfg))
  val ppUnits = Array.fill(kAutomic)(PPUnit(cfg))

  for (k <- 0 until kAutomic) {
    ppUnits(k).io.mode := io.mode
    ppUnits(k).io.spLen := io.spLen
    ppUnits(k).io.mulIn := peCells(k).io.mulOut
    peCells(k).io.spLen := io.spLen
    peCells(k).io.featureIn.payload := io.featureIn.payload(k)
    peCells(k).io.featureIn.valid := io.featureIn.valid
    peCells(k).io.weightIn.payload := io.weightIn.payload
    peCells(k).io.weightIn.valid := io.weightIn.valid && io.weightSel === k
    io.sumOut.payload(k) := ppUnits(k).io.sumOut.payload
  }
  io.sumOut.valid := ppUnits(0).io.sumOut.valid

}

object PEArray extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PEArray(ConvCfg.default))
}