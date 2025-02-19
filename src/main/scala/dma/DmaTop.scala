package dma

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import cfg.DmaCfg
import mem._

case class DmaTop(cfg: DmaCfg) extends Component {

  import cfg._

  // 顶层 IO 定义：将 DMA 控制器的接口暴露为顶层端口
  val io = new Bundle {
    // 接收外部下发的 DMA 任务
    val dmaTask = slave(Stream(DmaTask(cfg)))
    // AXI4 总线接口（例如连接外部外设）
    val axi4 = Vec(master(Axi4(busConfig)), chNum)
    // RAM 接口（连接内部 RAM 模块）
    val ramPort = Vec(master(Memport(ramWidth, ramDepth)), chNum)
    // Dma 是否空闲
    val dmaBusy = out Bits (chNum bits)
  }
  noIoPrefix()

  // 实例化 DMA 控制器
  val dmaCtrl = DmaCtrl(cfg)

  val dma = Array.fill(chNum)(Dma(cfg))

  dmaCtrl.io.ramPort <> io.ramPort
  dmaCtrl.io.dmaTask <> io.dmaTask
  io.dmaBusy := dmaCtrl.io.dmaBusy

  for (i <- 0 until chNum) {
    dma(i).io.axi4 <> io.axi4(i)
    dma(i).io.dmaPort <> dmaCtrl.io.dmaPort(i)
  }


}

object DmaTop {
  def main(args: Array[String]): Unit = {
    SpinalConfig(
      targetDirectory = "rtl",
      oneFilePerComponent = false,
      headerWithDate = false,
      anonymSignalPrefix = "tmp"
    ).generateVerilog(DmaTop(DmaCfg()))
  }
}
