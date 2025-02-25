//import spinal.core._
//import spinal.lib._
//import spinal.lib.bus.amba4.axi._
//import spinal.lib.bus.amba3.apb._
//import mux._
//import cfg._
//import mem._
//import dma._
//import conv._
//import ctrl._
//
//
//case class EcoAccTop(cfg: EcoAccCfg) extends Component {
//
//  import cfg._
//
//
//  val io = new Bundle {
//    val axi4 = master(Axi4(busConfig))
//    val apb = slave(Apb3(apb3Cfg))
//  }
//
//
//  noIoPrefix()
//
//  val dma = DmaTop(cfg.dmaCfg)
//  val axiMux = Axi4Arbiter(3, busConfig)
//  val glb = GLBuffer(cfg.memCfg)
//  val ctrl = CtrlTop(cfg.ctrlCfg)
//  val conv = PETop(cfg.convCfg)
//
//  dma.io.dmaParm <> ctrl.io.dmaParm
//  dma.io.axi4(0) <> axiMux.io.axiSlavePorts(0)
//  dma.io.axi4(1) <> axiMux.io.axiSlavePorts(1)
//
//  axiMux.io.axiMasterPort <> io.axi4
//
//  glb.io.rdPorts(0) <> conv.io.wPort0
//  glb.io.rdPorts(1) <> conv.io.fPort0
//  glb.io.wrPorts(0) <> conv.io.fPort1
//  glb.io.rwPorts <> dma.io.ramPort
//
//  ctrl.io.dmaBusy := dma.io.dmaBusy
//  ctrl.io.axi4 <> axiMux.io.axiSlavePorts(2)
//  ctrl.io.apb <> io.apb
//
//  conv.io.convParm <> ctrl.io.convParm
//
//
//}
//
//
//object EcoAccTop extends App {
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "" // 移除匿名信号的前缀
//  ).generateVerilog(EcoAccTop(EcoAccCfg()))
//
//}
