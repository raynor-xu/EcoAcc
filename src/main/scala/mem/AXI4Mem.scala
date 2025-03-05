package mem

import cfg._
import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._


/** AXI4内存模块参数 */
case class Axi4Mem(cfg: MemCfg) extends Component {

  import cfg._

  // 定义AXI4 Slave接口
  val io = new Bundle {
    val axi = slave(Axi4(busConfig))
  }

  noIoPrefix()

  // 根据内存大小计算存储深度（内存每个单元存放 dataWidth bit 数据，即 dataWidth/8 字节）
  val memDepth = 656536
  val mem = Mem(Bits(busConfig.dataWidth bits), memDepth)

  // ========================================================
  // 写操作处理（写地址通道 aw、写数据通道 w 和写响应通道 b）
  // ========================================================
  // 保存写地址和ID
  val awPending = RegInit(False)
  val storedAw = Reg(UInt(busConfig.addressWidth bits))
  val storedWid = Reg(UInt(busConfig.idWidth bits))
  // 接收写地址：仅当之前没有待处理写地址时才接收
  io.axi.aw.ready := !awPending
  when(io.axi.aw.valid && !awPending) {
    storedAw := io.axi.aw.addr
    storedWid := io.axi.aw.id
    awPending := True
  }

  // 写数据通道：简单假设单个 beat 写操作，总是就绪接收数据
  io.axi.w.ready := True

  // 写响应产生寄存器
  val writeRespPending = RegInit(False)
  // 当写数据有效且已有写地址存储时进行写操作
  when(io.axi.w.valid && awPending) {
    // 计算内存索引：地址除以每个单元字节数
    val writeIndex = (storedAw >> log2Up(busConfig.dataWidth / 8))
    mem.write(writeIndex, io.axi.w.data)
    awPending := False
    writeRespPending := True
  }

  // 写响应通道 b
  io.axi.b.valid := writeRespPending
  io.axi.b.id := storedWid
  io.axi.b.resp := Axi4.resp.OKAY
  when(io.axi.b.ready && writeRespPending) {
    writeRespPending := False
  }

  // ========================================================
  // 读操作处理（读地址通道 ar 和读数据通道 r）
  // ========================================================
  // 保存读地址和ID
  val arPending = RegInit(False)
  val storedAr = Reg(UInt(busConfig.addressWidth bits))
  val storedRid = Reg(UInt(busConfig.idWidth bits))
  io.axi.ar.ready := !arPending
  when(io.axi.ar.valid && !arPending) {
    storedAr := io.axi.ar.addr
    storedRid := io.axi.ar.id
    arPending := True
  }

  // 根据保存的地址计算内存索引
  val readIndex = (storedAr >> log2Up(busConfig.dataWidth / 8))
  // 使用同步读：当 arPending 有效时读出数据
  val readData = mem.readSync(readIndex, arPending)
  io.axi.r.valid := arPending
  io.axi.r.data := readData
  io.axi.r.resp := Axi4.resp.OKAY
  io.axi.r.last := True
  io.axi.r.id := storedRid
  when(io.axi.r.ready && arPending) {
    arPending := False
  }
}

/** 生成Verilog代码 */
object Axi4Mem {
  def main(args: Array[String]): Unit = {
    SpinalVerilog(Axi4Mem(MemCfg()))
  }
}