package mac

import spinal.core._
import spinal.lib._
import cfg._
import mem._

case class MacArray(cfg: MacCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val macParm = slave(Stream(MacParm(cfg)))

    val wPort0 = master(RdPort(ramWidth, ramDepth))
    val fPort0 = master(RdPort(ramWidth, ramDepth))
    val fPort1 = master(WrPort(ramWidth, ramDepth))
  }

  noIoPrefix()

  val wReg = Reg(Vec(Vec(Vec(SInt(2 * inputWidth bits), cAutomic), kAutomic), 2))
  val finReg = Reg(Vec(SInt(2 * inputWidth bits), kAutomic))

  val wGroupSel = Bool()
  val weightIdexSel = Bits(log2Up(kAutomic) bits)

  val weightGroupSel = Bool()


  val macCells = Array.fill(kAutomic)(MacCell(cfg))

  for (k <- 0 until kAutomic) {
    macCells(k).io.weight := wReg(wGroupSel.asUInt)(k)
    macCells(k).io.featureIn := finReg
  }

}


object MacArray extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new MacCell(MacCfg()))
}

