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
  //  val memBanks = Array.fill(numBanks) {
  //    Mem(Bits(dataWidth bits), wordCount = bankDepth)
  //  }
  val memBanks = Array.fill(numBanks)(SignalPortRam(dataWidth, bankDepth))

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


  val bankSel = ports.map(_.addr(bankAddrWidth + bankSelWidth - 1 downto bankAddrWidth))
  val portEn = ports.map(_.en)

  val requestsPerBank = for (i <- 0 until numBanks) yield new Area {

    val hitVec = portEn.zipWithIndex.map { case (en, index) => en && (bankSel(index) === i) }
    val grantIndex = UInt(log2Up(ports.size) bits)

    grantIndex := PriorityMux(hitVec, (0 until ports.size).map(i => U(i, log2Up(ports.size) bits)))


    val bankHit = hitVec.orR

    val chosen = ports(grantIndex)

    memBanks(i).io.port.en := bankHit
    memBanks(i).io.port.addr := chosen.addr(bankAddrWidth - 1 downto 0)
    memBanks(i).io.port.wr := chosen.wr && chosen.en
    memBanks(i).io.port.wData := chosen.wData
  }

  for ((port, idx) <- ports.zipWithIndex) {
    val rdEn = RegNext(port.en && (~port.wr)) init (False)
    val sel = bankSel(idx)
    port.rData := 0
    for (i <- 0 until numBanks) {
      when(sel === i && rdEn) {
        port.rData := memBanks(i).io.port.rData
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