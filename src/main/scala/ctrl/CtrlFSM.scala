package ctrl


import spinal.core._
import spinal.lib._
import cfg._
import conv._
import dma._
import spinal.lib.bus.amba3.apb.Apb3
import spinal.lib.bus.amba4.axi.Axi4


case class CtrlFSM(cfg: CtrlCfg) {


  import cfg._

  val io = new Bundle {

    val convInstr = slave Stream ConvInstr(cfg) // 运算类指令（CONV, FC, AVERPOOL, MAXPOOL）
    val cfgInstr = slave Stream CfgInstr(cfg) // 配置类指令（CONFIG_BIAS, CONFIG_SCALE）
    val mvInstr = slave Stream MvInstr(cfg) // 数据搬移指令（MOVE）
    val dmaInstr = slave Stream DmaInstr(cfg) // 访存类指令（DMA_TRANS）

    val convParm = master(Stream(ConvParm(ConvCfg())))
    val dmaTask = master(Stream(DmaTask(DmaCfg())))

  }

}