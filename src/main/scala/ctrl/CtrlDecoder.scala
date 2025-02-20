package ctrl

import spinal.core._
import spinal.lib._
import cfg.CtrlCfg


case class CtrlDecoder(cfg: CtrlCfg) extends Component {

  import cfg._

  val io = new Bundle {
    // 输入整个指令（128 bit），通过 Stream 接口接收
    val instr = slave Stream Bits(instrWidth bits)

    // 解码后的各种指令（在同一周期内只有一种类型有效）
    val convInstr = master Stream ConvInstr(cfg) // 运算类指令CONV, FC, AVERPOOL, MAXPOOL
    val cfgInstr = master Stream CfgInstr(cfg) // 配置类指令 CONFIG_BIAS, CONFIG_SCALE
    val mvInstr = master Stream MvInstr(cfg) // 数据搬移指令 MOVE
    val dmaInstr = master Stream DmaInstr(cfg) // 访存类指令 DMA_TRANS
  }


  val InstrData = io.instr.payload
  val InstrValid = io.instr.valid

  // 1. 解码 opcode 字段
  val opcodeDecoded = Opcode() // 默认实例
  val opcodeField = io.instr.payload(opcodeDecoded.getBitsWidth - 1 downto 0)
  opcodeDecoded.assignFromBits(opcodeField)

  // 2. 判断指令类型
  val isConv = (opcodeDecoded === Opcode.CONV) ||
    (opcodeDecoded === Opcode.FC) ||
    (opcodeDecoded === Opcode.AVERPOOL) ||
    (opcodeDecoded === Opcode.MAXPOOL)

  val isCfg = (opcodeDecoded === Opcode.CONFIG_BIAS) ||
    (opcodeDecoded === Opcode.CONFIG_SCALE)

  val isMv = opcodeDecoded === Opcode.MOVE
  val isDma = opcodeDecoded === Opcode.DMA_TRANS

  // 3. 指令路由与流控  instrQueen.io.pop.ready := (isConv && io.convInstr.ready) ||

  // FIFO 数据仅在对应的输出端 ready 时消费
  io.instr.ready := (isConv && io.convInstr.ready) ||
    (isCfg && io.cfgInstr.ready) ||
    (isMv && io.mvInstr.ready) ||
    (isDma && io.dmaInstr.ready)

  // 采用 assignFromBits 将整条指令映射到各指令 Bundle（要求字段顺序一致）

  // 运算类指令
  val convInstrDecoded = ConvInstr(cfg)
  convInstrDecoded.assignFromBits(InstrData)
  io.convInstr.payload := convInstrDecoded
  io.convInstr.valid := InstrValid && isConv

  // 配置类指令
  val cfgInstrDecoded = CfgInstr(cfg)
  cfgInstrDecoded.assignFromBits(InstrData)
  io.cfgInstr.payload := cfgInstrDecoded
  io.cfgInstr.valid := InstrValid && isCfg

  // 数据搬移指令
  val mvInstrDecoded = MvInstr(cfg)
  mvInstrDecoded.assignFromBits(InstrData)
  io.mvInstr.payload := mvInstrDecoded
  io.mvInstr.valid := InstrValid && isMv

  // 访存类指令
  val dmaInstrDecoded = DmaInstr(cfg)
  dmaInstrDecoded.assignFromBits(InstrData)
  io.dmaInstr.payload := dmaInstrDecoded
  io.dmaInstr.valid := InstrValid && isDma
}

