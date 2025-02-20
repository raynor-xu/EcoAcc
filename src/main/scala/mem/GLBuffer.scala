package mem

import spinal.core._
import spinal.lib._

import cfg.MemCfg

case class GLBuffer(cfg: MemCfg) extends Component {

  import cfg._

  // IO 定义：2 读、1 写、2 读写
  val io = new Bundle {
    val rdPorts = Vec(slave(RdPort(dataWidth, totalDepth)), rdPortsNum)
    val wrPorts = Vec(slave(WrPort(dataWidth, totalDepth)), wrPortsNum)
    val rwPorts = Vec(slave(Memport(dataWidth, totalDepth)), rwPortsNum)
  }

  noIoPrefix()

  // 创建每个 Bank 的存储单元
  // 这里用单口同步 RAM（Mem），写时组合写使能，读在下个周期输出
  // 实际也可换成 multi-port RAM（取决于 FPGA/ASIC 资源）
  val memBanks = Array.fill(numBanks) {
    Mem(Bits(dataWidth bits), wordCount = bankDepth)
  }

  // bankSelWidth & bankAddrWidth
  val bankSelWidth = log2Up(numBanks)
  val bankAddrWidth = log2Up(bankDepth)

  // ---------------------
  // 统一把所有端口转成 Memport 形式，便于处理
  // ---------------------
  val ports = Seq() ++
    io.rdPorts.map(_.asMemport()) ++
    io.wrPorts.map(_.asMemport()) ++
    io.rwPorts

  // 每个 Bank 的访问请求信息
  // requestsPerBank(i) 存放所有端口对 bank i 的访问请求
  val requestsPerBank = for (i <- 0 until numBanks) yield new Area {
    // 找出所有访问 bank i 的端口
    // 并把它们的一些控制信号暂存
    case class RequestInfo() extends Bundle {
      val en = Bool()
      val wr = Bool()
      val wData = Bits(dataWidth bits)
      val rData = Bits(dataWidth bits)
      val portIdx = UInt(log2Up(ports.length) bits)
      val bankSel = UInt(bankSelWidth bits)
      val bankAddr = UInt(bankAddrWidth bits)
    }

    val reqVec = for ((p, idx) <- ports.zipWithIndex) yield {
      val req = RequestInfo()
      req.bankSel := p.addr(bankAddrWidth + bankSelWidth - 1 downto bankAddrWidth)
      req.bankAddr := p.addr(bankAddrWidth - 1 downto 0)
      req.en := p.en && (req.bankSel === i)
      req.wr := p.wr
      req.wData := p.wData
      req.rData := 0
      req.portIdx := U(idx, log2Up(ports.size) bits)
      req
    }

    // 后续在本 bank 里仲裁：只有一个请求可以命中
    // 这里示例做一个简单优先级仲裁 (index小的端口优先)
    val hitVec = reqVec.map(_.en)
    val grantIndex = UInt(log2Up(ports.size) bits)

    // 生成一个优先级编码
    // 若你想要 round-robin、平滑仲裁等，需要自行扩展
    grantIndex := PriorityMux(hitVec, (0 until reqVec.size).map(U(_)))

    // 是否有任意一个端口访问这个 bank
    val bankHit = hitVec.orR

    // 输出: 根据 grantIndex 选择要访问的端口
    val chosen = reqVec(grantIndex)

    // 使用 Spinal 提供的 readWriteSync (单口 RAM 的“伪双口”方法)
    // 读在下个周期得到
    val memReadData = memBanks(i).readWriteSync(
      enable = bankHit, // 只要有访问就使能
      address = chosen.bankAddr, // 写和读用同一个地址
      write = chosen.wr && chosen.en, // 写信号
      data = chosen.wData
    )


    // 将读到的数据回传给被选中的端口
    // 注意是下周期才能得到有效读数据
    val rDataReg = RegNext(memReadData)

    // 然后要把这个结果真正送到端口的 rData 上
    // 这里做法：在此 Area 仅保存在 chosen.rData 里
    // 之后在外部再统一写回端口
    for (r <- reqVec) {
      when(r.en && (grantIndex === r.portIdx) && !r.wr) {
        // 当前周期申请且被仲裁到，而且是读操作 -> 下周期得到读数据
        r.rData := rDataReg
      }
    }
  }

  for ((port, idx) <- ports.zipWithIndex) {
    // 先置默认值
    port.rData := 0
    // 在所有 bank 中找到满足 (r.portIdx == idx) 的 r.rData
    for (bank <- requestsPerBank) {
      val r = bank.reqVec(idx)
      when(r.en && !r.wr) {
        port.rData := r.rData
      }
    }
  }
}


object GLBuffer extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(GLBuffer(MemCfg()))

}