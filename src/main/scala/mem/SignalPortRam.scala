package mem


import spinal.core._
import spinal.lib._


case class SignalPortRam(width: Int, depth: Int, useWe: Boolean = false) extends Component {
  val io = new Bundle {
    val port = slave(Memport(width, depth, useWe))
  }

  noIoPrefix()

  // 定义内存
  val ram = Mem(Bits(width bits), wordCount = depth)

  // 写操作
  when(io.port.en && io.port.wr) {
    if (useWe) {
      ram.write(
        address = io.port.addr,
        data = io.port.wData,
        mask = io.port.we.asBits
      )
    } else {
      ram.write(
        address = io.port.addr,
        data = io.port.wData
      )
    }
  }

  // 读取操作
  io.port.rData := ram.readSync(address = io.port.addr, enable = io.port.en)
}


object SignalPortRam extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(new SignalPortRam(12, 64))

}