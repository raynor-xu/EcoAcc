import cfg._
import spinal.core._

package object mac {

  case class MacParm(cfg: MacCfg) extends Bundle {

    import cfg._

    val mode = MacMode()
    val actEn = Bool()
    val bnEn = Bool()

    val fHeight = UInt(fMaxSizeW bits)
    val fWidth = UInt(fMaxSizeW bits)
    val chIn = UInt(fMaxChW bits)
    val chOut = UInt(fMaxChW bits)
    val kSize = UInt(kMaxSizeW bits)
    val stride = UInt(sMaxW bits)
    val pad = UInt(pMaxW bits)
    val finBaseAddr = UInt(ramAW bits)
    val foutBaseAddr = UInt(ramAW bits)
    val wBaseAddr = UInt(ramAW bits)

  }

  object MacMode extends SpinalEnum {
    val CONV2D, DEEPCONV, POINTCONV, FC, MAXPOOL, AVERAGPOOL = newElement()
  }

  object MacParm {
    def default: MacParm = {

      // Create a default PWMConfig instance
      val macParm = new MacParm(MacCfg())
      macParm.mode := MacMode.CONV2D
      macParm.finBaseAddr := 0
      macParm.foutBaseAddr := 0
      macParm.wBaseAddr := 0
      macParm.fHeight := 0
      macParm.fWidth := 0
      macParm.kSize := 0
      macParm.chIn := 0
      macParm.chOut := 0
      macParm.pad := 0
      macParm.stride := 0
      macParm.bnEn := False
      macParm.actEn := False
      // Return the default configuration
      macParm
    }
  }

}
