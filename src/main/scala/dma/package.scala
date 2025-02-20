import spinal.core._
import spinal.core._
import spinal.lib._
import cfg._
import conv.ConvParm

package object dma {

  // mode 2'b00: mem2glb 2'b01 glb2mem 2'b10:mem2instr


  case class DmaParm(cfg: DmaCfg) extends Bundle {
    val busAddr = UInt(cfg.busConfig.addressWidth bits)
    val periAddr = UInt(cfg.periAddrWidth bits)
    val len = UInt(cfg.periAddrWidth bits)
    val sel = Bits(log2Up(cfg.chNum) bits)
    val mode = DmaTaskMode()


  }

  case class DmaTask(cfg: DmaCfg) extends Bundle {
    val addr = UInt(cfg.busConfig.addressWidth bits)
    val len = UInt(cfg.periAddrWidth bits)
  }

  case class DmaPort(cfg: DmaCfg) extends Bundle with IMasterSlave {
    val dmaWTask = Stream(DmaTask(cfg))
    val dmaWDate = Stream(Bits(cfg.busConfig.dataWidth bits))
    val dmaRTask = Stream(DmaTask(cfg))
    val dmaRDate = Stream(Bits(cfg.busConfig.dataWidth bits))

    override def asMaster(): Unit = {
      master(dmaWTask, dmaWDate, dmaRTask)
      slave(dmaRDate)
    }

    override def asSlave(): Unit = {
      slave(dmaWTask, dmaWDate, dmaRTask)
      master(dmaRDate)
    }

  }

  object DmaParm {
    def default: DmaParm = {

      // Create a default PWMConfig instance
      val dmaParm = new DmaParm(DmaCfg())
      dmaParm.busAddr := 0
      dmaParm.periAddr := 0
      dmaParm.len := 0
      dmaParm.sel := 0
      dmaParm.mode := DmaTaskMode.mem2glb
      // Return the default configuration
      dmaParm
    }
  }

  object DmaTaskMode extends SpinalEnum {
    val mem2glb, glb2mem, mem2instr = newElement()
  }

}
