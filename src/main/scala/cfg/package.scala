import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import spinal.lib.bus.amba3.apb._

package object cfg {

  trait Config {
    val ramDepth = 65536
    val ramWidth = 64
    val ramAW = log2Up(ramDepth)
    val ramDW = ramWidth
    val fMaxSize = 256
    val fMaxCh = 256
    val kMaxSize = 7
    val pMax = 3
    val sMax = 3


    val fMaxSizeW = log2Up(fMaxSize)
    val fMaxChW = log2Up(fMaxCh)
    val kMaxSizeW = log2Up(kMaxSize)
    val pMaxW = log2Up(pMax)
    val sMaxW = log2Up(sMax)


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
    val kAutomic = 2
    val cAutomic = 2
    val inputWidth = 8
    val accWidth = 32
    val lfbDepth = 1024
    val lwbDepth = 49
    val multWidth = 10
    val shiftWidth = 4
  }

  case class MacCfg() extends Config {
    val kAutomic = 8
    val cAutomic = 8
    val inputWidth = 8
    val accWidth = 32
    val lfbDepth = 1024
    val multWidth = 10
    val shiftWidth = 4
    val kLenW = kMaxSizeW * 2
    val spLenW = log2Up(lfbDepth)
    val loopLenW = kMaxSizeW * 2 + fMaxChW - log2Up(kAutomic)
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
    val macCfg = MacCfg()
    val memCfg = MemCfg()
    val dmaCfg = DmaCfg()
    val ctrlCfg = CtrlCfg()

  }

}
