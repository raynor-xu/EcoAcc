

import spinal.core._
import cfg._
import conv._
import dma._

package object ctrl {


  //1.卷积类指令
  case class MTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // 操作码
    val opcode = Opcode()
    // 参数字段
    val convPram = ConvParm(ConvCfg())
    // 保留字段
    val usedWdith = opcode.getBitsWidth +
      convPram.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }

  // 2. 配置类指令
  case class CTypeInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // Header
    val opcode = Opcode()

    // 配置信息字段
    val mode = Bits(1 bits) // 适用于全部PPE
    val configData0 = UInt(32 bits)
    val configData1 = UInt(32 bits)


    // 保留字段（50 bit）
    val usedWdith = opcode.getBitsWidth + configData0.getBitsWidth + configData1.getBitsWidth

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

  object MTypeInstr {
    def default(): MTypeInstr = {
      val convInstr = new MTypeInstr(CtrlCfg())
      convInstr.opcode := Opcode.CONV
      convInstr.convPram := ConvParm.default
      convInstr.reserved := 0
      convInstr
    }
  }

  object CTypeInstr {
    def default(): CTypeInstr = {
      val cfgInstr = new CTypeInstr(CtrlCfg())
      cfgInstr.opcode := Opcode.CONFIG
      cfgInstr.mode := 0
      cfgInstr.configData0 := 0
      cfgInstr.configData1 := 0
      cfgInstr.reserved := 0
      cfgInstr
    }
  }

  object DTypeInstr {
    def default(): DTypeInstr = {
      val dmaInstr = new DTypeInstr(CtrlCfg())
      dmaInstr.opcode := Opcode.DMA
      dmaInstr.dmaPram := DmaParm.default
      dmaInstr.reserved := 0
      dmaInstr
    }
  }


  object Opcode extends SpinalEnum(binarySequential) {
    val CONV, FC, POOL, CONFIG, DMA = newElement()
  }


}
