package conv

import spinal.core._
import spinal.lib._

case class PECell(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {

    val spLen = in UInt (log2Up(maxSpLen) bits)
    val featureIn = slave Flow SInt(inputWidth bits)
    val weightIn = slave Flow Vec(SInt(inputWidth bits), cAutomic)
    val mulOut = master Flow Vec(SInt(inputWidth * 2 bits), cAutomic)
  }
  noIoPrefix()

  val mulReg = Vec(Reg(SInt(inputWidth * 2 bits)) init 0, cAutomic)

  val weight = Vec(Vec(Reg(SInt(inputWidth bits)) init 0, cAutomic), 2)

  val weightWp = Reg(UInt(1 bits)) init 0

  val weightRp = Reg(UInt(1 bits)) init 0

  val spCounter = Counter(maxSpLen) init (0)

  when(io.weightIn.valid) {
    weight(weightWp) := io.weightIn.payload
    weightWp := ~weightWp
  }

  when(io.featureIn.valid) {
    for (i <- 0 until kAutomic) {
      mulReg(i) := weight(weightRp)(i) * io.featureIn.payload
    }
    when(spCounter === io.spLen - 1) {
      spCounter.clear()
      weightRp := ~weightRp
    } otherwise {
      spCounter.increment()
    }
  }

  io.mulOut.payload := mulReg
  io.mulOut.valid := RegNext(io.featureIn.valid, False)
}

object PECell extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PECell(ConvCfg.default))
}