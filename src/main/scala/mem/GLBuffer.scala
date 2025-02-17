package mem

import spinal.core._
import spinal.lib._
import cfg.MemCfg

/** GLB 本地缓存阵列（简化版）
 *
 * 内部 RAM 划分为 numBanks 个 bank（每个 bank 为双口 RAM）：
 *   - 非 DMA 接口（wPort0、fPort0、fPort1）各自只能访问预先分配的 bank 区域，
 *     分别对应权重、输入 ifmap、输出 ofmap，有效地址由外部总地址经过偏移得到。
 *   - DMA 接口可访问全部 bank，其低位直接解码为 bank 号。
 *
 * 注：各接口地址宽度均为 totalDepth（= numBanks × bankDepth），
 * 当外部地址不落在各自有效区域时，本设计使能信号为 False（即不访问）。
 */
case class GLBuffer(cfg: MemCfg) extends Component {

  import cfg._

  // 各区域外部地址偏移（单位：地址数）
  val weightOffset = 0
  val ifmapOffset = numWeightBanks * bankDepth
  val ofmapOffset = (numWeightBanks + numIfmapBanks) * bankDepth

  // IO 定义：所有端口地址宽度均为 log2Up(totalDepth)
  val io = new Bundle {
    val wPort0 = slave(RdPort(dataWidth, totalDepth)) // 权重读取（只读）
    val fPort0 = slave(RdPort(dataWidth, totalDepth)) // ifmap 读取（只读）
    val fPort1 = slave(WrPort(dataWidth, totalDepth)) // ofmap 写入（只写）
    val dmaPort = slave(Memport(dataWidth, totalDepth)) // DMA 端口（读/写）
  }
  noIoPrefix()

  // 地址位宽定义
  val addrWidth = log2Up(totalDepth)
  val bankWidth = log2Up(numBanks) // 高位 bank 选择宽度
  val localAddrWidth = addrWidth - bankWidth // 低位为块内地址

  // 计算各接口“有效地址”
  val weightEffAddr = io.wPort0.addr - U(weightOffset, addrWidth bits)
  val ifmapEffAddr = io.fPort0.addr - U(ifmapOffset, addrWidth bits)
  val ofmapEffAddr = io.fPort1.addr - U(ofmapOffset, addrWidth bits)
  val dmaEffAddr = io.dmaPort.addr

  // 按要求：高 bankWidth 位为 bank 选择，低位为块内地址
  val weightBank = weightEffAddr(addrWidth - 1 downto localAddrWidth)
  val weightLocal = weightEffAddr(localAddrWidth - 1 downto 0)
  val ifmapBank = ifmapEffAddr(addrWidth - 1 downto localAddrWidth)
  val ifmapLocal = ifmapEffAddr(localAddrWidth - 1 downto 0)
  val ofmapBank = ofmapEffAddr(addrWidth - 1 downto localAddrWidth)
  val ofmapLocal = ofmapEffAddr(localAddrWidth - 1 downto 0)
  val dmaBank = dmaEffAddr(addrWidth - 1 downto localAddrWidth)
  val dmaLocal = dmaEffAddr(localAddrWidth - 1 downto 0)

  // 用 Vec 保存所有 bank 的 DualPortRam 实例
  val banks = for (bank <- 0 until numBanks) yield {
    val ram = DualPortRam(dataWidth, bankDepth)

    // 非 DMA 端口（port0）直接使用对应接口信号
    if (bank < numWeightBanks) {
      // 权重区域：有效当 weightBank 与当前 bank 匹配
      ram.io.port0.addr := weightLocal
      ram.io.port0.wData := B(0, dataWidth bits)
      ram.io.port0.en := io.wPort0.en && (weightBank === U(bank, bankWidth bits))
      ram.io.port0.wr := False
    } else if (bank < numWeightBanks + numIfmapBanks) {
      // ifmap 区域：比较时减去区域偏移（物理 bank 对应相对编号）
      ram.io.port0.addr := ifmapLocal
      ram.io.port0.wData := B(0, dataWidth bits)
      ram.io.port0.en := io.fPort0.en && (ifmapBank === U(bank - numWeightBanks, bankWidth bits))
      ram.io.port0.wr := False
    } else {
      // ofmap 区域
      ram.io.port0.addr := ofmapLocal
      ram.io.port0.wData := io.fPort1.wData
      ram.io.port0.en := io.fPort1.en && (ofmapBank === U(bank - (numWeightBanks + numIfmapBanks), bankWidth bits))
      ram.io.port0.wr := True
    }

    // DMA 端口（port1）：直接连接 DMA 信号，当 dmaBank 与当前 bank 匹配时使能
    ram.io.port1.addr := dmaLocal
    ram.io.port1.wData := io.dmaPort.wData
    ram.io.port1.en := io.dmaPort.en && (dmaBank === U(bank, bankWidth bits))
    ram.io.port1.wr := io.dmaPort.wr

    ram
  }

  // 读数据解复用：对各 bank 的 DualPortRam 进行条件选择
  val weightOut = Bits(dataWidth bits)
  val ifmapOut = Bits(dataWidth bits)
  val dmaOut = Bits(dataWidth bits)

  weightOut := 0
  ifmapOut := 0
  dmaOut := 0


  for (bank <- 0 until numBanks) {
    if (bank < numWeightBanks) { // Scala 静态判断
      when(weightBank === U(bank, bankWidth bits)) {
        weightOut := banks(bank).io.port0.rData
      }
    }
    if (bank >= numWeightBanks && bank < numWeightBanks + numIfmapBanks) { // 静态判断
      when(ifmapBank === U(bank - numWeightBanks, bankWidth bits)) {
        ifmapOut := banks(bank).io.port0.rData
      }
    }
    // DMA 部分没有静态条件，直接使用硬件条件
    when((dmaBank === U(bank, bankWidth bits)) && (!io.dmaPort.wr)) {
      dmaOut := banks(bank).io.port1.rData
    }
  }


  // 输出结果
  io.wPort0.rData := weightOut
  io.fPort0.rData := ifmapOut
  io.dmaPort.rData := dmaOut
}

object GLBuffer extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(GLBuffer(MemCfg()))
}