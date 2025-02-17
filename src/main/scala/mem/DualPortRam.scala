package mem

import spinal.core._
import spinal.lib._

case class DualPortRam(width: Int, depth: Int) extends Component {
  val io = new Bundle {
    val port0 = slave(Memport(width, depth))
    val port1 = slave(Memport(width, depth))
  }

  noIoPrefix()
  val ram = Mem(Bits(width bits), wordCount = depth.toInt)

  ram.write(io.port0.addr, io.port0.wData, io.port0.en & io.port0.wr)

  io.port0.rData := ram.readSync(io.port0.addr, io.port0.en & (~io.port0.wr))
  //io.port0.rData := ram.readAsync(io.port0.addr)
  ram.write(io.port1.addr, io.port1.wData, io.port1.en & io.port1.wr)

  io.port1.rData := ram.readSync(io.port1.addr, io.port1.en & (~io.port1.wr))
  //io.port1.rData := ram.readAsync(io.port1.addr)
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