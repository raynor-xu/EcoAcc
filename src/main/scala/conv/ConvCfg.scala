package conv

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba3.apb._


object ConvCfg {


  def default: ConvCfg = {

    // Create a default PWMConfig instance
    val config = new ConvCfg(
      peCols = 8,
      peRows = 8,
      inputWidth = 8,
      accWidth = 32,
      lwbDepth = 2048
    )

    // Return the default configuration
    config
  }
}

case class ConvCfg(
                    peCols: Int,
                    peRows: Int,
                    inputWidth: Int,
                    accWidth: Int,
                    lwbDepth: Int

                  ) {
  val lwbWidth = inputWidth
}