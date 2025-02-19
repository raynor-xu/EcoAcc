package ctrl


import spinal.core._
import spinal.lib._
import cfg._
import conv._
import dma._
import spinal.lib.bus.amba3.apb.Apb3
import spinal.lib.bus.amba4.axi.Axi4


case class CtrlTop(cfg: CtrlCfg) {


  import cfg._

  val io = new Bundle {

    val axi4 = master(Axi4(busConfig))
    val apb = slave(Apb3(apb3Cfg))
    val convParm = master(Stream(ConvParm(ConvCfg())))
    val dmaTask = master(Stream(DmaTask(DmaCfg())))

  }

  val ctrlIFU = CtrlIFU(cfg)
  val ctrlCSR = CtrlCSR(cfg)
  val ctrlDecoder = CtrlDecoder(cfg)
  val ctrlFSM = CtrlFSM(cfg)

  ctrlIFU.io.axi4 <> io.axi4
  ctrlIFU.io.instrBaseAddr := ctrlCSR.io.instrBaseAddr
  ctrlDecoder.io.instr <> ctrlIFU.io.instr
  ctrlFSM.io.convInstr <> ctrlDecoder.io.convInstr
  ctrlFSM.io.cfgInstr <> ctrlDecoder.io.cfgInstr
  ctrlFSM.io.mvInstr <> ctrlDecoder.io.mvInstr
  ctrlFSM.io.dmaInstr <> ctrlDecoder.io.dmaInstr
  ctrlCSR.io.apb <> io.apb

  io.convParm <> ctrlFSM.io.convParm
  io.dmaTask <> ctrlFSM.io.dmaTask
}
