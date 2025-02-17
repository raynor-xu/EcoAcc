package conv

import spinal.core._
import spinal.lib._
import mem._
import cfg.ConvCfg

case class PETop(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {

    // Core Signal
    val convParm = slave(Stream(ConvParm(cfg)))

    // MemArray Signal
    val wPort0 = master(RdPort(ramWidth, ramDepth))
    val fPort0 = master(RdPort(ramWidth, ramDepth))
    val fPort1 = master(WrPort(ramWidth, ramDepth))

  }

  noIoPrefix()

  val peArray = PEArray(cfg)

  val peCtrl = PECtrl(cfg)

  val addrGen = AddrGen(cfg)

  peArray.io.clear := peCtrl.io.clear
  peArray.io.relu := peCtrl.io.relu
  peArray.io.peMode := peCtrl.io.peMode
  peArray.io.ppuMode := peCtrl.io.ppuMode
  peArray.io.spLen := peCtrl.io.spLen
  peArray.io.loopLen := peCtrl.io.loopLen
  peArray.io.kChDim := peCtrl.io.kChDim
  peArray.io.featureIn <> peCtrl.io.featureIn
  peArray.io.weight <> peCtrl.io.weight
  peArray.io.featureOut <> peCtrl.io.featureOut

  peCtrl.io.convParm <> io.convParm

  peCtrl.io.wAddr <> addrGen.io.wAddr
  peCtrl.io.finAddr <> addrGen.io.finAddr
  peCtrl.io.foutAddr <> addrGen.io.foutAddr

  peCtrl.io.wPort0 <> io.wPort0
  peCtrl.io.fPort0 <> io.fPort0
  peCtrl.io.fPort1 <> io.fPort1

  addrGen.io.convParm := io.convParm.asFlow

}

object PETop extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PETop(ConvCfg()))
}