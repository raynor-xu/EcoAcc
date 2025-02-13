package conv

import spinal.core._
import spinal.lib._

/**
 * AdderTree
 *
 * @param bitWidth  输入数据的位宽
 * @param inputSize 输入向量的大小
 *
 *                  示例：
 *                  val adderTree = AdderTree(bitWidth = 8, inputSize = 16)
 */
case class AdderTree(bitWidth: Int, inputSize: Int) extends Component {
  val io = new Bundle {
    val dataIn = in Vec(SInt(bitWidth bits), inputSize)
    val dataOut = out SInt ((bitWidth + log2Up(inputSize)) bits)
  }

  noIoPrefix()

  def adderTreeRecursive(inputs: Vec[SInt]): SInt = {
    // 若只有一个元素，则直接返回
    if (inputs.size == 1) {
      inputs.head
    } else {
      // 计算该层下一层向量大小
      val halfSize = (inputs.size + 1) / 2
      // 声明下一层输出向量，位宽可适当加大以避免溢出
      val nextInputs = Vec(SInt((inputs.head.getWidth + 1) bits), halfSize)

      for (i <- 0 until halfSize) {
        // 若还存在配对元素，则相加，否则保持原值
        if (2 * i + 1 < inputs.size) {
          nextInputs(i) := (inputs(2 * i) + inputs(2 * i + 1)).resized
        } else {
          nextInputs(i) := inputs(2 * i)
        }
      }

      // 递归调用
      adderTreeRecursive(nextInputs)
    }
  }

  // 顶层输出
  io.dataOut := adderTreeRecursive(io.dataIn)
}


object AdderTree extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new AdderTree(bitWidth = 8, inputSize = 16))
}