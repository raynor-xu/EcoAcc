package ctrl


import spinal.core._
import spinal.lib._
import cfg._
import conv._
import dma._
import spinal.lib.bus.amba3.apb.Apb3
import spinal.lib.bus.amba4.axi.Axi4


case class CtrlTop(cfg: CtrlCfg) extends Component {


  import cfg._

  val io = new Bundle {

    val dmaBusy = in Bits (DmaCfg().chNum bits)

    val axi4 = master(Axi4(busConfig))
    val apb = slave(Apb3(apb3Cfg))
    val convParm = master(Stream(ConvParm(ConvCfg())))
    val dmaParm = master(Stream(DmaParm(DmaCfg())))

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
  ctrlFSM.io.convInstr <> ctrlDecoder.io.convInstr
  ctrlFSM.io.cfgInstr <> ctrlDecoder.io.cfgInstr
  ctrlFSM.io.mvInstr <> ctrlDecoder.io.mvInstr
  ctrlFSM.io.dmaInstr <> ctrlDecoder.io.dmaInstr
  ctrlCSR.io.apb <> io.apb


  io.convParm <> ctrlFSM.io.convParm
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

