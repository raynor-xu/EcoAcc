/*
 * PECore 模块
 *
 * 功能简介：
 *   - 根据使能信号 en 和 3 位控制信号 mode，对输入数据进行乘法、直接传输或累加操作。
 *   - mode(0)=1 时执行乘法（featureIn * weight），否则结果为 0；
 *   - mode(1)=1 时直接传递 featureIn（尺寸调整后），否则使用乘法结果；
 *   - mode(2)=1 时将当前结果累加到寄存器 macReg，否则直接更新 macReg。
 *   - 当 en 为 false 时，所有输出均置 0。
 *
 * 本模块常用于卷积计算中的处理单元，通过 SpinalHDL 生成 Verilog 代码。
 */

package conv

import spinal.core._
import spinal.lib._

case class PECore(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val mode = in Bits (3 bits)
    val featureIn = slave Stream SInt(inputWidth bits)
    val weight = slave Stream SInt(inputWidth bits)
    val macOut = master Flow SInt(accWidth bits)
  }

  noIoPrefix()

  val macReg = Reg(SInt(accWidth bits)) init 0

  val mulData = SInt(inputWidth * 2 bits)

  val macData = SInt(inputWidth * 2 bits)

  val macEn = io.weight.fire && io.featureIn.fire


  mulData := 0
  macData := 0
  io.macOut.payload := 0

  io.weight.ready := io.featureIn.valid

  io.featureIn.ready := io.weight.valid


  io.macOut.valid := RegNext(macEn) init (False)

  when(io.clear) {
    macReg := 0
  } otherwise {

    when(macEn) {
      when(io.mode(0)) {
        mulData := io.featureIn.payload * io.weight.payload
      } otherwise {
        mulData := 0
      }
      when(io.mode(1)) {
        macData := io.featureIn.payload.resized
      } otherwise {
        macData := mulData
      }
      when(io.mode(2)) {
        macReg := macData + macReg
      } otherwise {
        macReg := macData.resized
      }
      io.macOut.payload := macReg
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
  ).generateVerilog(new PECore(ConvCfg.default))
}