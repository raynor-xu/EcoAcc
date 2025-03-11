package dma

import cfg._
import mem._
import spinal.core._
import spinal.lib._

case class DmaTestInst(cfg: DmaCfg) extends Component {

  import cfg._

  // 顶层 IO 定义：将 DMA 控制器的接口暴露为顶层端口
  val io = new Bundle {
    // 接收外部下发的 DMA 任务
    val dmaParm = slave(Stream(DmaParm(cfg)))

    val dmaBusy = out Bits (chNum bits)
  }

  noIoPrefix()

  val dma = DmaTop(cfg)
  val axiMem = Axi4Mem(MemCfg())
  val glBuffer = SignalPortRam(64, 65535)


  io.dmaBusy := dma.io.dmaBusy
  dma.io.dmaParm <> io.dmaParm
  dma.io.axi4(0) <> axiMem.io.axi
  dma.io.ramPort(0) <> glBuffer.io.port

}
