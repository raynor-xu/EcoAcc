import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import cfg.EcoAccCfg
import mem._
import dma._
import conv._
import ctrl._


case class EcoAccTop(cfg: EcoAccCfg) extends Component {

  import cfg._


  val io = new Bundle {
    val axi4Port = master(Axi4(busConfig))

  }


  noIoPrefix()

  val dma = DmaTop(cfg.dmaCfg)
  val glb = GLBuffer(cfg.memCfg)
  val ctrl = CtrlTop(cfg.ctrlCfg)
  val conv = PETop(cfg.convCfg)


}
