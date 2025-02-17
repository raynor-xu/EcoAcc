package conv

import spinal.core._
import spinal.lib._
import cfg.ConvCfg

case class PEArray(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val relu = in Bool()
    val peMode = in Bits (3 bits)
    val ppuMode = in Bits (2 bits)
    val spLen = in UInt (spLenMaxW bits)
    val loopLen = in UInt (fMaxChW - log2Up(kAutomic) bits)
    val kChDim = in UInt (kMaxSizeW + kMaxSizeW bits)
    val featureIn = Vec(slave Stream SInt(inputWidth bits), cAutomic)
    val weight = Vec(Vec(slave Stream SInt(inputWidth bits), cAutomic), kAutomic)
    val featureOut = Vec(master Flow SInt(inputWidth bits), kAutomic)
  }

  noIoPrefix()

  val peCores = Array.fill(kAutomic, cAutomic)(PECore(cfg))
  val ppUnit = Array.fill(kAutomic)(PPUnit(cfg))

  val lwBuffer = Array.fill(kAutomic, cAutomic)(LWBuffer(cfg))

  for (k <- 0 until kAutomic) {
    ppUnit(k).io.clear := io.clear
    ppUnit(k).io.relu := io.relu
    ppUnit(k).io.mode := io.ppuMode
    ppUnit(k).io.spLen := io.spLen
    ppUnit(k).io.loopLen := io.loopLen
    //ppUnit(k).io.biasIn <> io.biasIn(k)
    ppUnit(k).io.featureOut <> io.featureOut(k)

    for (c <- 0 until cAutomic) {
      lwBuffer(k)(c).io.weightIn <> io.weight(k)(c)
      lwBuffer(k)(c).io.clear := io.clear
      lwBuffer(k)(c).io.spLen := io.spLen
      lwBuffer(k)(c).io.kChDim := io.kChDim

      peCores(k)(c).io.mode := io.peMode
      peCores(k)(c).io.clear := io.clear
      peCores(c)(k).io.featureIn.payload := io.featureIn(c).payload
      peCores(c)(k).io.featureIn.valid := io.featureIn(c).valid
      peCores(k)(c).io.weight <> lwBuffer(k)(c).io.weightOut
      peCores(k)(c).io.macOut <> ppUnit(k).io.macIn(c)
    }
  }

  for (c <- 0 until cAutomic) {
    io.featureIn(c).ready := peCores(c).map(_.io.featureIn.ready).reduce(_ && _)
  }
}

object PEArray extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PEArray(ConvCfg()))
}