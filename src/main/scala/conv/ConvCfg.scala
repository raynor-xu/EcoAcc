package conv

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._


object ConvCfg {


  def default: ConvCfg = {

    // Create a default PWMConfig instance
    val config = new ConvCfg(
      ramDepth = 32768,
      ramNum = 16,
      fMaxSize = 8192,
      fMaxCh = 512,
      kMaxSize = 9,
      pMax = 5,
      sMax = 9,
      kAutomic = 8,
      cAutomic = 8,
      inputWidth = 8,
      accWidth = 32,
      spLenMax = 64
    )
    // Return the default configuration
    config
  }
}

case class ConvCfg(
                    ramDepth: Int,
                    ramNum: Int,
                    fMaxSize: Int,
                    fMaxCh: Int,
                    kMaxSize: Int,
                    pMax: Int,
                    sMax: Int,
                    kAutomic: Int,
                    cAutomic: Int,
                    inputWidth: Int,
                    accWidth: Int,
                    spLenMax: Int
                  ) {
  val ramDW = inputWidth * cAutomic;
  val ramAW = log2Up(ramDepth)
  val fMaxSizeW = log2Up(fMaxSize);
  val fMaxChW = log2Up(fMaxCh);
  val kMaxSizeW = log2Up(kMaxSize);
  val pMaxW = log2Up(pMax);
  val sMaxW = log2Up(sMax);
  val spLenMaxW = log2Up(spLenMax);


}