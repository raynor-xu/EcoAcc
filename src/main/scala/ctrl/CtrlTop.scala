package ctrl


import spinal.core._
import spinal.lib._
import cfg._
import dma._
import mac._

import spinal.lib.bus.amba3.apb.Apb3
import spinal.lib.bus.amba4.axi.Axi4


case class CtrlTop(cfg: CtrlCfg) extends Component {


  import cfg._

  val io = new Bundle {

    val dmaBusy = in Bits (DmaCfg().chNum bits)

    val axi4 = master(Axi4(busConfig))
    val apb = slave(Apb3(apb3Cfg))

    val dmaParm = master Stream DmaParm(DmaCfg())
    val macParm = master(Stream(MacParm(MacCfg())))
    val scaleParm = master(Stream(ScaleParm(MacCfg())))

  }

  noIoPrefix()

  val ctrlIFU = CtrlIFU(cfg)
  val ctrlCSR = CtrlCSR(cfg)
  val ctrlDecoder = CtrlDecoder(cfg)
  val ctrlFSM = CtrlFSM(cfg)

  ctrlIFU.io.ifEn := ctrlCSR.io.ifEn
  ctrlIFU.io.axi4 <> io.axi4
  ctrlIFU.io.instrBaseAddr := ctrlCSR.io.instrBaseAddr
  ctrlDecoder.io.instr <> ctrlIFU.io.instr
  ctrlFSM.io.dmaBusy := io.dmaBusy
  ctrlFSM.io.cTypeInstr <> ctrlDecoder.io.cTypeInstr
  ctrlFSM.io.mTypeInstr <> ctrlDecoder.io.mTypeInstr
  ctrlFSM.io.dTypeInstr <> ctrlDecoder.io.dTypeInstr
  ctrlFSM.io.pTypeInstr <> ctrlDecoder.io.pTypeInstr
  ctrlCSR.io.apb <> io.apb


  io.macParm <> ctrlFSM.io.macParm
  io.scaleParm <> ctrlFSM.io.scaleParm
  io.dmaParm <> ctrlFSM.io.dmaParm

}

object CtrlTop extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(CtrlTop(CtrlCfg()))
}

