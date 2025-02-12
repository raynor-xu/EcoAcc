package conv

import spinal.core._
import spinal.lib._

case class PECore(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val en = in Bool()
    val mode = in Bits (3 bits)
    val featureIn = in SInt (inputWidth bits)
    val weightIn = in SInt (inputWidth bits)
    val macOut = master Flow SInt(accWidth bits)
  }

  noIoPrefix()

  val macReg = Reg(SInt(accWidth bits)) init 0

  val mulData = SInt(inputWidth * 2 bits)

  val macData = SInt(inputWidth * 2 bits)


  when(io.en) {
    when(io.mode(0)) {
      mulData := io.featureIn * io.weightIn
    } otherwise {
      mulData := 0
    }
    when(io.mode(1)) {
      macData := io.featureIn.resized
    } otherwise {
      macData := mulData
    }
    when(io.mode(2)) {
      macReg := macData + macReg
    } otherwise {
      macReg := macData.resized
    }
    io.macOut.payload := macReg
  } otherwise {

    mulData := 0
    macData := 0
    io.macOut.payload := 0
  }

  io.macOut.valid := RegNext(io.en)

}

object PECore extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PECore(ConvCfg.default))
}