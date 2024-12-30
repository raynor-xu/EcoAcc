package mem

import spinal.core._
import spinal.lib._

case class DualPortRam(width: Int, depth: Int) extends Component {
  val io = new Bundle {
    val rdPort = slave(RdPort(width, depth))
    val wrPort = slave(WrPort(width, depth))
  }

  noIoPrefix()

  val ram = Mem(Bits(width bits), wordCount = depth)

  ram.write(io.wrPort.addr, io.wrPort.wData, io.wrPort.en)

  io.rdPort.rData := ram.readSync(io.rdPort.addr, io.rdPort.en)
}


object DualPortRam extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(new DualPortRam(20, 64))

}