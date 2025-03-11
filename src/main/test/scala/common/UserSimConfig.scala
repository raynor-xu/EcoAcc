
package common

import spinal.core._
import spinal.core.sim._
import spinal.sim._


object UserSimConfig {

  val flags = VCSFlags(
    runFlags = List("+fsdbfile+../verdi/tb.fsdb"),
    compileFlags = List("-sverilog"),
    elaborateFlags = List("-sverilog")
  )

  def apply() =
    SimConfig
      .withVCS(flags)
      .withFSDBWave
      //.withVcdWave
      .withConfig(SpinalConfig(targetDirectory = "rtl"))
      .workspacePath("waves")
}
