package cfg

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._

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
    useRegion = false
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

  val periAddrWidth = ramWidth
  val axi4Id = 0
  val taskQueenDepth = 16

}


case class MemCfg() extends Config {

  // 非 DMA 端口可访问的 bank 数
  val numWeightBanks = 2
  val numIfmapBanks = 3
  val numOfmapBanks = 3

  // 总 bank 数
  val numBanks = numWeightBanks + numIfmapBanks + numOfmapBanks
  val bankDepth = ramDepth / numBanks
  val totalDepth = ramDepth // 131072
  val dataWidth = 64
  val addrWidth = log2Up(totalDepth) // 17

}

case class EcoAccCfg() extends Config {
  val convCfg = ConvCfg()
  val ctrlCfg = CtrlCfg()
  val memCfg = MemCfg()
  val dmaCfg = DmaCfg()
}