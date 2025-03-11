package mac

import spinal.core._
import spinal.lib._
import cfg._
import mem._

case class MacArray(cfg: MacCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val macParm = slave(Stream(MacParm(cfg)))
    val scaleParm = slave(Stream(ScaleParm(cfg)))


    val wPort = master(RdPort(ramWidth, ramDepth))
    val fPort = master(RdPort(ramWidth, ramDepth))
    val rPort = master(WrPort(ramWidth, ramDepth))
  }

  noIoPrefix()


  val macCells = Array.tabulate(kAutomic)(i => MacCell(cfg, i))
  val macCtrl = MacCtrl(cfg)

  macCtrl.io.macParm <> io.macParm
  macCtrl.io.scaleParm <> io.scaleParm
  macCtrl.io.wPort <> io.wPort
  macCtrl.io.fPort <> io.fPort
  macCtrl.io.rPort <> io.rPort


  for (k <- 0 until kAutomic) {
    macCells(k).io.clear := macCtrl.io.clear
    macCells(k).io.parm := macCtrl.io.macCellparm
    macCells(k).io.weight := macCtrl.io.weight(k)
    macCells(k).io.result <> macCtrl.io.result(k)
    macCells(k).io.feature := macCtrl.io.feature

  }

}


object MacArray extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new MacArray(MacCfg()))
}

