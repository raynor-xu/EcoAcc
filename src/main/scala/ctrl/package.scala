

import spinal.core._
import cfg._
import mac._
import dma._

package object ctrl {


  //1.卷积类指令
  case class MTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // 操作码
    val opcode = Opcode()
    // 参数字段
    val macPram = MacParm(MacCfg())
    // 保留字段
    val usedWdith = opcode.getBitsWidth + macPram.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }

  // 2. 配置类指令
  case class PTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // Header
    val opcode = Opcode()

    // 配置信息字段
    val mode = Bits(1 bits) // 适用于全部PPE
    val configData = Vec(UInt(32 bits), 3)

    // 保留字段
    val usedWdith = opcode.getBitsWidth + mode.getBitsWidth + configData.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)
  }

  case class DTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._


    // Header
    val opcode = Opcode()

    // 地址字段
    val dmaPram = DmaParm(DmaCfg())

    // 保留字段

    val usedWdith = opcode.getBitsWidth + dmaPram.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }

  case class CTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._


    // Header
    val opcode = Opcode()


    val usedWdith = opcode.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }


  object MTypeInstr {
    def default(): MTypeInstr = {
      val macInstr = new MTypeInstr(CtrlCfg())
      macInstr.opcode := Opcode.CONV_OP
      macInstr.macPram := MacParm.default
      macInstr.reserved := 0
      macInstr
    }
  }

  object PTypeInstr {
    def default(): PTypeInstr = {
      val cfgInstr = new PTypeInstr(CtrlCfg())
      cfgInstr.opcode := Opcode.PARM_SCALE_OP
      cfgInstr.mode := 0
      cfgInstr.configData.map(_ := 0)
      cfgInstr.reserved := 0
      cfgInstr
    }
  }

  object DTypeInstr {
    def default(): DTypeInstr = {
      val dmaInstr = new DTypeInstr(CtrlCfg())
      dmaInstr.opcode := Opcode.DMA_OP
      dmaInstr.dmaPram := DmaParm.default
      dmaInstr.reserved := 0
      dmaInstr
    }
  }

  object CTypeInstr {
    def default(): CTypeInstr = {
      val dmaInstr = new CTypeInstr(CtrlCfg())
      dmaInstr.opcode := Opcode.STOP_OP
      dmaInstr.reserved := 0
      dmaInstr
    }
  }


  object Opcode extends SpinalEnum(binarySequential) {
    val CONV_OP, FC_OP, POOL_OP, PARM_SCALE_OP, DMA_OP, STOP_OP = newElement()
  }


}
