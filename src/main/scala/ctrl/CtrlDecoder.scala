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
    val mTypeInstr = master Stream MTypeInstr(cfg) // 运算类指令CONV, FC, AVERPOOL, MAXPOOL
    val pTypeInstr = master Stream PTypeInstr(cfg) // 配置类指令 CONFIG_BIAS, CONFIG_SCALE
    val dTypeInstr = master Stream DTypeInstr(cfg) // 访存类指令 DMA_TRANS
    val cTypeInstr = master Stream CTypeInstr(cfg) // 控制类指令 STOP
  }

  noIoPrefix()

  val InstrData = io.instr.payload
  val InstrValid = io.instr.valid

  // 1. 解码 opcode 字段
  val opcodeDecoded = Opcode() // 默认实例
  val opcodeField = io.instr.payload(opcodeDecoded.getBitsWidth - 1 downto 0)
  opcodeDecoded.assignFromBits(opcodeField)

  // 2. 判断指令类型
  val isConv = (opcodeDecoded === Opcode.CONV) ||
    (opcodeDecoded === Opcode.FC) ||
    (opcodeDecoded === Opcode.POOL)

  val isParm = opcodeDecoded === Opcode.PARM_SCALE

  val isDma = opcodeDecoded === Opcode.DMA

  val isCtrl = opcodeDecoded === Opcode.STOP

  // 3. 指令路由与流控  instrQueen.io.pop.ready := (isConv && io.convInstr.ready) ||

  // FIFO 数据仅在对应的输出端 ready 时消费
  io.instr.ready := (isConv && io.mTypeInstr.ready) ||
    (isCtrl && io.cTypeInstr.ready) ||
    (isDma && io.dTypeInstr.ready) ||
    (isParm && io.pTypeInstr.ready)

  // 采用 assignFromBits 将整条指令映射到各指令 Bundle（要求字段顺序一致）

  // 运算类指令
  val macInstrDecoded = MTypeInstr(cfg)
  macInstrDecoded.assignFromBits(InstrData)
  io.mTypeInstr.payload := macInstrDecoded
  io.mTypeInstr.valid := InstrValid && isConv

  // 配置类指令
  val parmInstrDecoded = PTypeInstr(cfg)
  parmInstrDecoded.assignFromBits(InstrData)
  io.pTypeInstr.payload := parmInstrDecoded
  io.pTypeInstr.valid := InstrValid && isParm

  // 访存类指令
  val dmaInstrDecoded = DTypeInstr(cfg)
  dmaInstrDecoded.assignFromBits(InstrData)
  io.dTypeInstr.payload := dmaInstrDecoded
  io.dTypeInstr.valid := InstrValid && isDma


  // 控制类指令
  val ctrlInstrDecoded = CTypeInstr(cfg)
  ctrlInstrDecoded.assignFromBits(InstrData)
  io.cTypeInstr.payload := ctrlInstrDecoded
  io.cTypeInstr.valid := InstrValid && isDma


}

