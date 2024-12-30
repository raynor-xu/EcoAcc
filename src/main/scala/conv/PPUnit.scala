package conv

import spinal.core._
import spinal.lib._

case class PPUnit(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val en = in Bool()
    val mode = in Bits (2 bits)
    val clear = in Bool()
    val pSumIn = slave Flow Vec(SInt(accWidth bits), peRows)
    val pSumOut = master Flow Vec(SInt(accWidth bits), peRows)
  }


}