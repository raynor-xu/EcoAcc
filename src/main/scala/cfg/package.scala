import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba3.apb._

package object cfg {

  trait Config {
    val ramDepth = 32768
    val ramWidth = 64
    val ramAW = log2Up(ramDepth)
    val ramDW = ramWidth
    val fMaxSizeW = 5
    val fMaxChW = 10
    val kMaxSizeW = 3
    val pMaxW = 3
    val sMaxW = 3
    val busConfig: Axi4Config = Axi4Config(
      addressWidth = 32,
      dataWidth = 64,
      idWidth = 4,
      useId = true,
      useRegion = false,
      useBurst = true,
      useLock = false,
      useCache = false,
      useSize = true,
      useQos = false,
      useLen = true,
      useLast = true,
      useResp = true,
      useProt = false,
      useStrb = false,
      useAllStrb = false
    )
    val apb3Cfg = Apb3Config(
      addressWidth = 16,
      dataWidth = 32,
      selWidth = 1,
      useSlaveError = true
    )
  }


  case class ConvCfg() extends Config {
    val kAutomic = 8
    val cAutomic = 8
    val inputWidth = 8
    val accWidth = 32
    val spLenMax = 1024
    val lwbDepth = 49
    val spLenMaxW = log2Up(spLenMax)
  }

  case class CtrlCfg() extends Config {

    val instrWidth = 128
    val instrQueenDepth = 16
  }


  case class DmaCfg() extends Config {

    val periAddrWidth = ramAW
    val axi4Id = 0
    val chNum = 2
  }


  case class MemCfg() extends Config {

    // 总 bank 数
    val numBanks = 8
    val bankDepth = ramDepth / numBanks
    val totalDepth = ramDepth // 131072
    val dataWidth = 64
    val rdPortsNum = 2
    val wrPortsNum = 1
    val rwPortsNum = 2

  }

  case class EcoAccCfg() extends Config {

    // 总 bank 数
    val convCfg = ConvCfg()
    val memCfg = MemCfg()
    val dmaCfg = DmaCfg()
    val ctrlCfg = CtrlCfg()

  }

}
