import cfg._
import spinal.core._

package object mac {

  def CeilDiv(x: UInt, y: Int): UInt = {
    (x + y - 1) >> log2Up(y)
  }

  case class ScaleParm(cfg: MacCfg) extends Bundle {

    import cfg._

    val multiplier = SInt(multWidth bits)
    val shift = UInt(shiftWidth bits)
    val zeroPoint = SInt(inputWidth bits)
  }

  case class MacCellParm(cfg: MacCfg) extends Bundle {

    import cfg._

    //    val kLen = UInt(kLenW bits) //卷积核大小 kW * kH
    val loopLen = UInt(loopLenW bits) //得到一个输出点需要累加的次数
    val spLen = UInt(spLenW bits) //权重复用次数/中间特征图暂存数量
    val macMode = MacMode()
    val actMode = ActMode()
    val scaleParm = ScaleParm(cfg)

  }

  case class MacParm(cfg: MacCfg) extends Bundle {

    import cfg._

    val macMode = MacMode()
    val actMode = ActMode()

    val fHeight = UInt(fMaxSizeW bits)
    val fWidth = UInt(fMaxSizeW bits)
    val chIn = UInt(fMaxChW bits)
    val chOut = UInt(fMaxChW bits)
    val kSize = UInt(kMaxSizeW bits)
    val stride = UInt(sMaxW bits)
    val pad = UInt(pMaxW bits)
    val fBaseAddr = UInt(ramAW bits)
    val rBaseAddr = UInt(ramAW bits)
    val wBaseAddr = UInt(ramAW bits)

  }

  object MacMode extends SpinalEnum {
    val CONV2D, DWCONV, PWCONV, FC, MAXPOOL, AVERAGPOOL = newElement()
  }

  object ActMode extends SpinalEnum {
    val NONE, RELU, RELU6, SIGMOID = newElement()
  }

  object ScaleParm {
    def default: ScaleParm = {

      // Create a default PWMConfig instance
      val scaleParm = new ScaleParm(MacCfg())
      scaleParm.multiplier := 0
      scaleParm.shift := 0
      scaleParm.zeroPoint := 0
      // Return the default configuration
      scaleParm
    }
  }

  object MacParm {
    def default: MacParm = {

      // Create a default PWMConfig instance
      val macParm = new MacParm(MacCfg())
      macParm.macMode := MacMode.CONV2D
      macParm.actMode := ActMode.NONE
      macParm.fBaseAddr := 0
      macParm.rBaseAddr := 0
      macParm.wBaseAddr := 0
      macParm.fHeight := 0
      macParm.fWidth := 0
      macParm.kSize := 0
      macParm.chIn := 0
      macParm.chOut := 0
      macParm.pad := 0
      macParm.stride := 0
      // Return the default configuration
      macParm
    }
  }


}
