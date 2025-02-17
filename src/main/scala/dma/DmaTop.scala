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
    val axi4 = master(Axi4(busConfig))
    // RAM 接口（连接内部 RAM 模块）
    val ramPort = master(Memport(ramWidth, ramDepth))
  }
  noIoPrefix()

  // 实例化 DMA 控制器
  val dmaCtrl = DmaCtrl(cfg)

  // 直接连接各个接口
  dmaCtrl.io.dmaTask <> io.dmaTask
  dmaCtrl.io.axi4Port <> io.axi4
  dmaCtrl.io.ramPort <> io.ramPort
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
