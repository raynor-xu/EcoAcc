package dma

import spinal.core._
import spinal.lib._
import cfg.DmaCfg

case class DmaTask(cfg: DmaCfg) extends Bundle {
  val addr = UInt(cfg.busConfig.addressWidth bits)
  val len = UInt(cfg.periAddrWidth bits)
  val mem2peri = in Bool()
}

case class DmaWTask(cfg: DmaCfg) extends Bundle {
  val addr = UInt(cfg.busConfig.addressWidth bits)
  val len = UInt(cfg.periAddrWidth bits)
}

case class DmaRTask(cfg: DmaCfg) extends Bundle {
  val addr = UInt(cfg.busConfig.addressWidth bits)
  val len = UInt(cfg.periAddrWidth bits)
}

case class DmaPort(cfg: DmaCfg) extends Bundle with IMasterSlave {
  val dmaWTask = Stream(DmaWTask(cfg))
  val dmaWDate = Stream(Bits(cfg.busConfig.dataWidth bits))
  val dmaRTask = Stream(DmaRTask(cfg))
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
