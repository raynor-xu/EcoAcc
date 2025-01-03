package conv

import spinal.core._


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
