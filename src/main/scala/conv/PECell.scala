package conv

import spinal.core._
import spinal.lib._

case class PECell(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val en = in Bool()
    val mode = in Bits (2 bits)
    val featureIn = in SInt (inputWidth bits)
    val weightIn = in Vec(SInt(inputWidth bits), cAutomic)
    val mulOut = out Vec(SInt(inputWidth * 2 bits), cAutomic)
  }
  noIoPrefix()

  val mulReg = Vec(Reg(SInt(inputWidth * 2 bits)) init 0, cAutomic)

  when(io.en) {
    for (i <- 0 until kAutomic) {
      switch(io.mode) {
        is(B"2'00") {
          mulReg(i) := mulReg(i) + io.weightIn(i) * io.featureIn
        }
        is(B"2'01") {
          mulReg(i) := io.weightIn(i) * io.featureIn
        }
        is(B"2'10") {
          mulReg(i) := io.weightIn(i).resized
        }
        is(B"2'11") {
          mulReg(i) := io.featureIn.resized
        }
      }
    }
  }

  io.mulOut := mulReg

}


//case class PECell(cfg: ConvCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//
//    val spLen = in UInt (log2Up(spLenMax) bits)
//    val featureIn = slave Flow SInt(inputWidth bits)
//    val weightIn = slave Flow Vec(SInt(inputWidth bits), cAutomic)
//    val mulOut = master Flow Vec(SInt(inputWidth * 2 bits), cAutomic)
//  }
//  noIoPrefix()
//
//  val mulReg = Vec(Reg(SInt(inputWidth * 2 bits)) init 0, cAutomic)
//
//  val weight = Vec(Vec(Reg(SInt(inputWidth bits)) init 0, cAutomic), 2)
//
//  val weightWp = Reg(UInt(1 bits)) init 0
//
//  val weightRp = Reg(UInt(1 bits)) init 0
//
//  val spCounter = Counter(spLenMax) init (0)
//
//  when(io.weightIn.valid) {
//    weight(weightWp) := io.weightIn.payload
//    weightWp := ~weightWp
//  }
//
//  when(io.featureIn.valid) {
//    for (i <- 0 until kAutomic) {
//      mulReg(i) := weight(weightRp)(i) * io.featureIn.payload
//    }
//    when(spCounter === io.spLen - 1) {
//      spCounter.clear()
//      weightRp := ~weightRp
//    } otherwise {
//      spCounter.increment()
//    }
//  }
//
//  io.mulOut.payload := mulReg
//  io.mulOut.valid := RegNext(io.featureIn.valid, False)
//}

object PECell extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PECell(ConvCfg.default))
}