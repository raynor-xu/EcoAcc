package conv

import spinal.core._
import spinal.lib._

case class PPUnit(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val mode = in Bits (2 bits)
    val spLen = in UInt (log2Up(spLenMax) bits)
    val mulIn = slave Flow Vec(SInt(inputWidth * 2 bits), cAutomic)
    val sumOut = master Flow SInt(inputWidth * 2 + log2Up(cAutomic) bits)
  }

  noIoPrefix()

  val sumReg = Reg(SInt(inputWidth * 2 + log2Up(cAutomic) bits)) init (0)

  val adderTree = AdderTree(inputWidth * 2, cAutomic)

  val spCounter = Counter(spLenMax) init (0)

  val pSumBuffer = Vec(Reg(SInt(inputWidth * 2 + log2Up(cAutomic) bits)) init (0), spLenMax)

  adderTree.io.dataIn := io.mulIn.payload

  io.sumOut.payload := sumReg
  io.sumOut.valid := RegNext(io.mode === B"2'b10" && io.mulIn.valid, False)

  when(io.mulIn.valid) {
    when(spCounter === io.spLen - 1) {
      spCounter.clear()
    } otherwise {
      spCounter.increment()
    }
    switch(io.mode) {
      is(B"2'b00") {
        pSumBuffer(spCounter) := adderTree.io.dataOut
      }
      is(B"2'b01") {
        pSumBuffer(spCounter) := pSumBuffer(spCounter) + adderTree.io.dataOut
      }
      is(B"2'b10") {
        sumReg := pSumBuffer(spCounter) + adderTree.io.dataOut
      }
      default {
        pSumBuffer.clearAll()
      }
    }
  }

}

object PPUnit extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PPUnit(ConvCfg.default))
}