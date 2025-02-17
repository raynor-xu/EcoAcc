package ctrl


import spinal.core._
import spinal.lib._


case class CtrlCSReg() extends Component {
  val io = new Bundle {
    // 对外提供DMA配置参数
    val dmaSrcAddr = out(UInt(32 bits))
    val dmaTransferLen = out(UInt(32 bits))
    // 实际设计中还需实现AXI4-Lite读写逻辑
  }

  // 定义内部寄存器
  val reg_dmaSrcAddr = Reg(UInt(32 bits)) init (0)
  val reg_dmaTransferLen = Reg(UInt(32 bits)) init (0)

  // 连接到输出端口
  io.dmaSrcAddr := reg_dmaSrcAddr
  io.dmaTransferLen := reg_dmaTransferLen
}
