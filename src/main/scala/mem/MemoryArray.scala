package mem

import spinal.core._
import spinal.lib._

case class MemoryArray(
                        numberOfPorts: Int,
                        numberOfRams: Int, // RAM 块的数量
                        width: Int,
                        depth: Int,
                        useWe: Boolean = false
                      ) extends Component {
  val io = new Bundle {
    val ports = Vec(slave(Memport(width, depth, useWe)), numberOfPorts)
  }

  noIoPrefix()

  // 确保 depth 能被 numberOfRams 整除
  require(depth % numberOfRams == 0, "depth must be divisible by numberOfRams")
  val ramDepth = depth / numberOfRams

  // 创建多个 RAM 块，使用 Vec
  val rams = Array.fill(numberOfRams)(SignalPortRam(width, ramDepth, useWe))
  // 计算总地址位数
  val totalAddrBits = log2Up(depth)
  val ramSelectorBits = log2Up(numberOfRams)
  val localAddrBits = totalAddrBits - ramSelectorBits

  // 将每个端口的地址分配到相应的 RAM 块
  val portRamIndices = io.ports.map(port => port.addr(totalAddrBits - 1 downto localAddrBits))
  val portLocalAddr = io.ports.map(port => port.addr(localAddrBits - 1 downto 0))


  // 读取数据的中间信号
  val readDataMuxes = Vec(Bits(width bits), numberOfPorts)


  // 每个端口对应一个读数据的多路选择器
  for (portIdx <- 0 until numberOfPorts) {
    val port = io.ports(portIdx)
    // 连接到对应的 RAM 块
    val ramIdx = portRamIndices(portIdx)

    readDataMuxes(portIdx) := 0
    for (i <- 0 until numberOfRams) {
      when(i === ramIdx) {
        readDataMuxes(portIdx) := rams(i).io.port.rData
      }
    }

  }

  // 写操作优先级处理
  for (ramIdx <- 0 until numberOfRams) {
    val ram = rams(ramIdx)

    // 初始化写操作信号为默认值（不写入）
    ram.io.port.addr := 0
    ram.io.port.en := False
    ram.io.port.wr := False
    ram.io.port.wData := 0
    if (useWe) ram.io.port.we := 0

    // 按照端口编号从低到高（优先级从高到低）处理写操作
    var isFirst = true
    for (portIdx <- 0 until numberOfPorts) {
      val port = io.ports(portIdx)
      val isThisRam = (port.addr(totalAddrBits - 1 downto localAddrBits) === U(ramIdx, ramSelectorBits bits))

      if (isFirst) {
        when(port.en && port.wr && isThisRam) {
          ram.io.port.addr := portLocalAddr(portIdx)
          ram.io.port.en := True
          ram.io.port.wr := True
          ram.io.port.wData := port.wData
          if (useWe) {
            ram.io.port.we := port.we
          }
        }
        isFirst = false
      } else {
        when(port.en && port.wr && isThisRam) {
          ram.io.port.addr := portLocalAddr(portIdx)
          ram.io.port.en := True
          ram.io.port.wr := True
          ram.io.port.wData := port.wData
          if (useWe) {
            ram.io.port.we := port.we
          }
        }
      }
    }
  }

  // 将读取的数据分配给各个端口的 rData 信号
  for (portIdx <- 0 until numberOfPorts) {
    io.ports(portIdx).rData := readDataMuxes(portIdx)
  }
}

// 生成 Verilog 的对象
object MemoryArray extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(new MemoryArray(numberOfPorts = 4, numberOfRams = 16, width = 64, depth = 8192, useWe = false))
}