package mac

import spinal.core._
import spinal.lib._
import cfg._

case class MacCell(cfg: MacCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val en = in Bool()
    val featureIn = in Vec(SInt(inputWidth bits), cAutomic)
    val weight = in Vec(SInt(inputWidth bits), cAutomic)
    val mulOut = out Vec(SInt(2 * inputWidth bits), cAutomic)
    val pSumOut = out SInt (accWidth bits)
  }

  noIoPrefix()

  val mulReg = Reg(Vec(SInt(2 * inputWidth bits), cAutomic))

  val pSumReg = Reg(SInt(accWidth bits))

  val adderTree = AdderTree(2 * inputWidth, cAutomic)

  io.pSumOut := pSumReg
  io.mulOut := mulReg
  adderTree.io.dataIn := mulReg

  when(io.en) {
    mulReg.zipWithIndex.foreach { case (reg, idex) => reg := io.weight(idex) * io.featureIn(idex) }
    pSumReg := adderTree.io.dataOut.resized
  } otherwise {
    mulReg := Vec(S(0, 2 * inputWidth bits), cAutomic)
    pSumReg := 0
  }

}


object MacCell extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new MacCell(MacCfg()))
}

