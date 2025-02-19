
import spinal.core._
import spinal.lib._

package object bus {


  // 优先编码器函数，返回第一个高电平的索引
  def PriorityEncoder(valid: Bits): UInt = {
    val width = valid.getWidth
    // 生成一个 one-hot 向量，只保留最高优先级的那个高电平
    val oneHot = Bits(width bits)

    oneHot := OHMasking.lastV2(valid)
    // 将 one-hot 向量转换为二进制编码
    OHToUInt(oneHot)
  }


}
