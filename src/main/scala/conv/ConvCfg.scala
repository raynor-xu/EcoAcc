package conv

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._


object ConvCfg {


  def default: ConvCfg = {

    // Create a default PWMConfig instance
    val config = new ConvCfg(
      kAutomic = 128,
      cAutomic = 128,
      inputWidth = 8,
      accWidth = 32,
      lwbDepth = 2048,
      maxSpLen = 64
    )

    // Return the default configuration
    config
  }
}

case class ConvCfg(
                    kAutomic: Int,
                    cAutomic: Int,
                    inputWidth: Int,
                    accWidth: Int,
                    lwbDepth: Int,
                    maxSpLen: Int

                  ) {
  val lwbWidth = inputWidth
}