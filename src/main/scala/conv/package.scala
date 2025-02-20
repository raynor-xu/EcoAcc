import spinal.core._
import cfg.ConvCfg

package object conv {


  def CeilDiv(x: UInt, y: Int): UInt = {
    (x + y - 1) >> log2Up(y)
  }


  case class ConvParm(cfg: ConvCfg) extends Bundle {

    import cfg._

    val mode = Bits(2 bits)
    val finBaseAddr = UInt(ramAW bits)
    val foutBaseAddr = UInt(ramAW bits)
    val wBaseAddr = UInt(ramAW bits)
    val fHeight = UInt(fMaxSizeW bits)
    val fWidth = UInt(fMaxSizeW bits)
    val kSize = UInt(kMaxSizeW bits)
    val chIn = UInt(fMaxChW bits)
    val chOut = UInt(fMaxChW bits)
    val pad = UInt(pMaxW bits)
    val stride = UInt(sMaxW bits)
    val spLen = UInt(spLenMaxW bits)

  }


  object ConvParm {
    def default: ConvParm = {

      // Create a default PWMConfig instance
      val convParm = new ConvParm(ConvCfg())
      convParm.mode := 0
      convParm.finBaseAddr := 0
      convParm.foutBaseAddr := 0
      convParm.wBaseAddr := 0
      convParm.fHeight := 0
      convParm.fWidth := 0
      convParm.kSize := 0
      convParm.chIn := 0
      convParm.chOut := 0
      convParm.pad := 0
      convParm.stride := 0
      convParm.spLen := 0
      // Return the default configuration
      convParm
    }
  }


}
