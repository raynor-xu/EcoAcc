import spinal.core._
import cfg.ConvCfg

package object conv {


  def CeilDiv(x: UInt, y: Int): UInt = {
    (x + y - 1) >> log2Up(y)
  }


  case class ConvParm(cfg: ConvCfg) extends Bundle {

    import cfg._

    val mode = ConvMode()
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

  case class ScaleParm(cfg: ConvCfg) extends Bundle {

    import cfg._

    val multiplier = SInt(multWidth bits)
    val shift = UInt(shiftWidth bits)
    val zeroPoint = SInt(inputWidth bits)
  }

  case class PPUParm(cfg: ConvCfg) extends Bundle {

    import cfg._

    val mode = ConvMode()
    val reluEn = Bool()

    val spLen = UInt(log2Up(lwbDepth) bits)
    val loopLen = UInt(fMaxChW - log2Up(kAutomic) bits)

    val scaleParm = ScaleParm(cfg)
  }

  object ConvMode extends SpinalEnum {
    val CONV2D, DEEPCONV, POINTCONV, FC, MAXPOOL, AVERAGPOOL = newElement()
  }

  object PEMode extends SpinalEnum {
    val MAC, MUL, BYPASS = newElement()
  }

  object ConvParm {
    def default: ConvParm = {

      // Create a default PWMConfig instance
      val convParm = new ConvParm(ConvCfg())
      convParm.mode := ConvMode.CONV2D
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
      convParm.bnEn := False
      convParm.actEn := False
      // Return the default configuration
      convParm
    }
  }

  object ScaleParm {
    def default: ScaleParm = {

      // Create a default PWMConfig instance
      val scaleParm = new ScaleParm(ConvCfg())
      scaleParm.multiplier := 0
      scaleParm.shift := 0
      scaleParm.zeroPoint := 0

      scaleParm
    }
  }

  object PPUParm {
    def default: PPUParm = {

      // Create a default PWMConfig instance
      val ppuParm = new PPUParm(ConvCfg())
      ppuParm.mode := ConvMode.CONV2D
      ppuParm.reluEn := False
      ppuParm.spLen := 0
      ppuParm.loopLen := 0
      ppuParm.scaleParm := ScaleParm.default

      ppuParm
    }
  }


}
