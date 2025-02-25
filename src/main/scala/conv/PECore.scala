package conv

import spinal.core._
import spinal.lib._
import cfg._

case class PECore(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val mode = in(PEMode())
    val featureIn = slave Stream SInt(inputWidth bits)
    val weight = slave Stream SInt(inputWidth bits)
    val macOut = master Flow SInt(accWidth bits)
  }

  noIoPrefix()

  import PEMode._

  val macReg = Reg(SInt(accWidth bits)) init 0


  val macData = SInt(inputWidth * 2 bits)

  val macEn = io.weight.fire && io.featureIn.fire

  macData := 0
  io.macOut.payload := 0

  io.weight.ready := io.featureIn.valid

  io.featureIn.ready := io.weight.valid


  io.macOut.valid := RegNext(macEn) init (False)

  when(io.clear) {
    macReg := 0
  } otherwise {
    when(macEn) {
      switch(io.mode) {
        is(MAC) {
          macData := (macReg + io.featureIn.payload * io.weight.payload).resized
        }
        is(MUL) {
          macData := io.featureIn.payload * io.weight.payload
        }
        is(BYPASS) {
          macData := io.featureIn.payload.resized
        }
        macReg := macData.resized
        io.macOut.payload := macReg
      }
    }
  }

}

object PECore extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PECore(ConvCfg()))
}