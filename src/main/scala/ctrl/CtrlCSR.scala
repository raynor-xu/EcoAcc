package ctrl


import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._
import spinal.lib.bus.regif.AccessType._
import spinal.lib.bus.regif._
import cfg.CtrlCfg


case class CtrlCSR(cfg: CtrlCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val apb = slave(Apb3(apb3Cfg))
    val ifEn = out Bool()
    val instrBaseAddr = out UInt (busConfig.addressWidth bits)
  }.setName("")


  noIoPrefix()

  val busif = Apb3BusInterface(io.apb, (0x0000, 100 Byte))


  val INSTR_BASE_REG = busif.newReg(doc = "指令基地址寄存器")
  val CFG_BASE_REG = busif.newReg(doc = "控制寄存器")

  val instrBaseAddr = INSTR_BASE_REG.field(UInt(busConfig.addressWidth bit), RW, doc = "指令基地址")
  val ifEn = CFG_BASE_REG.field(Bool(), RW, doc = "取值使能")

  io.ifEn := ifEn
  io.instrBaseAddr := instrBaseAddr


  busif.accept(HtmlGenerator("regif", title = "CSReg register file"))
}

object CtrlCSR {

  val clk_cfg = ClockDomainConfig(resetKind = SYNC, resetActiveLevel = LOW)

  def main(args: Array[String]) {
    SpinalConfig(
      targetDirectory = "rtl", // 指定生成代码的目标目录
      oneFilePerComponent = false, // 每个组件单独生成一个文件
      enumPrefixEnable = false, // 不在枚举类型前面添加前缀
      headerWithDate = false, // 不在头文件中添加日期信息
      anonymSignalPrefix = "", // 移除匿名信号的前缀
      defaultConfigForClockDomains = clk_cfg
    ).generateVerilog(CtrlCSR(CtrlCfg()))
  }
}