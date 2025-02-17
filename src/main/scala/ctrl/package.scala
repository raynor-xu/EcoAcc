

import spinal.core._
import cfg.CtrlCfg


package object ctrl {
  /** 1. 运算类指令（适用于 CONV / FC / AVERPOOL / MAXPOOL）
   * 总宽度：128 bit
   * 布局：
   * - Header（5 bit）：
   * opcode：5 bit
   * 配置信息字段（x bit）：
   * finBaseAddr   : ramAW bits
   * foutBaseAddr  : ramAW bits
   * wBaseAddr     : ramAW bits
   * fHeight       : fMaxSizeW bits
   * fWidth        : fMaxSizeW bits
   * kSize         : kMaxSizeW bits
   * chIn          : fMaxChW bits
   * chOut         : fMaxChW bits
   * pad           : pMaxW bits
   * stride        : sMaxW bits
   * - 控制字段（5 bit）：
   * computeMode   : UInt(3 bit)
   * convFunc      : UInt(2 bit) // 卷积功能（如常规、空洞、逐通道、逐点）
   * - 保留字段（16 bit）：reserved
   */
  case class ConvInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // 操作码
    val opcode = Opcode()

    // 参数字段
    val finBaseAddr = UInt(ramAW bits)
    val foutBaseAddr = UInt(ramAW bits)
    val wBaseAddr = UInt(ramAW bits)
    val fHeight = UInt(fMaxSizeW bits)
    val fWidth = UInt(fMaxSizeW bits)
    val kSize = UInt(kMaxSizeW bits)
    val chIn = UInt(fMaxChW bits)
    val chOut = UInt(fMaxChW bits)
    val pad = UInt(pMaxW bits)
    val stride = UInt(sMaxW bits)

    // 控制字段
    val computeMode = UInt(3 bits) // 计算模式
    val convFunc = UInt(2 bits) // 卷积功能

    // 保留字段
    val usedWdith = opcode.getBitsWidth +
      finBaseAddr.getBitsWidth + foutBaseAddr.getBitsWidth + wBaseAddr.getBitsWidth +
      fHeight.getBitsWidth + fWidth.getBitsWidth + kSize.getBitsWidth +
      chIn.getBitsWidth + chOut.getBitsWidth + pad.getBitsWidth + stride.getBitsWidth +
      computeMode.getBitsWidth + convFunc.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }

  /** 2. 配置类指令（适用于 CONFIG_BIAS / CONFIG_SCALE）
   * 总宽度：128 bit
   * 布局：
   * - Header（5 bit）：
   * opcode：3 bit（CONFIG_BIAS 或 CONFIG_SCALE）
   * mode  ：2 bit
   * - 配置信息字段（64 bit）：
   * configData0 : UInt(32 bits)
   * configData1 : UInt(32 bits)
   * - 控制字段（9 bit）：
   * configMode  : Bool()      // 配置模式（广播或单独配置）
   * configPE    : UInt(2 bits) // 配置 PE 阵列
   * sequence    : UInt(6 bits) // 配置顺序
   * - 保留字段（50 bit）：reserved
   */
  case class CfgInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // Header
    val opcode = Opcode() // 3 bit（CONFIG_BIAS 或 CONFIG_SCALE）

    // 配置信息字段
    val configData0 = UInt(32 bits)
    val configData1 = UInt(32 bits)

    // 控制字段（9 bit）
    val configMode = Bool() // 配置模式
    val configPE = UInt(2 bits) // 配置 PE 阵列
    val sequence = UInt(6 bits) // 配置顺序

    // 保留字段（50 bit）
    val usedWdith = opcode.getBitsWidth + configData0.getBitsWidth + configData1.getBitsWidth +
      configMode.getBitsWidth + configPE.getBitsWidth + sequence.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)
  }

  /** 3. 数据搬移类指令（MOVE）
   * 总宽度：128 bit
   * 布局：
   * - Header
   * opcode：5 bit（MOVE）
   * - 参数字段
   * dataLen  : ramAW bits
   * srcAddr  : ramAW bits
   * dstAddr  : ramAW bits
   * - 保留字段
   */
  case class MvInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._

    // Header
    val opcode = Opcode()

    // 参数字段（32 bit）
    val dataLen = UInt(ramAW bits)
    val srcAddr = UInt(ramAW bits)
    val dstAddr = UInt(ramAW bits)

    // 保留字段
    val usedWdith = opcode.getBitsWidth +
      dataLen.getBitsWidth + srcAddr.getBitsWidth + dstAddr.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }

  /** 4. 访存类指令（DMA_TRANS）
   * 总宽度：128 bit
   * 布局：
   * - Header：
   * opcode：5 bit
   * - 地址字段（48 bit）：
   * gbBaseAddr : UInt(8 bits)
   * memAddr    : UInt(16 bits)
   * offset     : UInt(24 bits)
   * - 控制字段（32 bit）：
   * channel    : UInt(8 bits)
   * peSelect   : UInt(2 bits)
   * dataLength : UInt(16 bits)
   * wbFlag     : Bool()       // 权重缓冲标志
   * ctrlReserved : UInt(5 bits)
   * - 保留字段（43 bit）
   */
  case class DmaInstr(cfg: CtrlCfg) extends Bundle {

    import cfg._


    // Header
    val opcode = Opcode() // 3 bit（DMA_TRANS）
    val mode = Bits(1 bits) // 1 bit  //load:0 store:1

    // 地址字段
    val dataLen = UInt(ramAW bits)
    val accAddr = UInt(ramAW bits)
    val memAddr = UInt(32 bits)

    // 保留字段（43 bit）

    val usedWdith = opcode.getBitsWidth + mode.getBitsWidth +
      dataLen.getBitsWidth + accAddr.getBitsWidth + memAddr.getBitsWidth

    val reserved = UInt(instrWidth - usedWdith bits)

  }


  object Opcode extends SpinalEnum(binarySequential) {
    val CONV, FC, AVERPOOL, MAXPOOL,
    CONFIG_BIAS, CONFIG_SCALE, MOVE, DMA_TRANS = newElement()

  }


}
