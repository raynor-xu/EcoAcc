package mem

import cfg._
import spinal.core._
import spinal.lib._
import spinal.core.sim._
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
  val memDepth = 65536
  val mem = Mem(Bits(busConfig.dataWidth bits), memDepth).simPublic()

  // ---------- 修正：提前定义写响应寄存器 ----------
  val writeRespPending = RegInit(False)

  //====================================
  // 写操作处理（支持突发写）
  //====================================
  // 写地址、ID、突发长度和写节拍计数器
  val storedAw = Reg(UInt(busConfig.addressWidth bits))
  val storedWid = Reg(UInt(busConfig.idWidth bits))
  val writeBurstLen = Reg(UInt(io.axi.aw.len.getWidth bits))
  val writeBeatCount = Reg(UInt(io.axi.aw.len.getWidth bits))
  val burstWriteActive = RegInit(False)
  val wReady = Reg(Bool()) init (False)

  io.axi.w.ready := wReady


  // 接收写地址：当没有突发写正在进行时才接收
  io.axi.aw.ready := !burstWriteActive
  when(io.axi.aw.valid && !burstWriteActive) {
    storedAw := io.axi.aw.addr
    storedWid := io.axi.aw.id
    writeBurstLen := io.axi.aw.len
    writeBeatCount := 0
    burstWriteActive := True
  }

  // 计算一个beat的字节数所对应的移位位数
  val beatByteShift = log2Up(busConfig.dataWidth / 8)
  when(io.axi.w.valid && burstWriteActive) {
    // 当前写操作地址 = 基地址 + (写节拍计数器 * 每beat字节数)
    val effectiveAddress = storedAw + (writeBeatCount << beatByteShift)
    // 内存索引：每个内存单元存放一个dataWidth位数据
    val writeIndex = effectiveAddress >> beatByteShift
    mem.write(writeIndex.resized, io.axi.w.data)
    // 检查是否为最后一个beat：AXI协议中，w.last信号应在最后一个beat时置高，
    // 同时为了保险也可检查计数器是否达到突发长度（注意：AW.len表示burst总beat数-1）
    when(io.axi.w.last || (writeBeatCount === writeBurstLen)) {
      burstWriteActive := False
      writeRespPending := True
    } otherwise {
      writeBeatCount := writeBeatCount + 1
    }

  }


  when(io.axi.aw.fire) {
    wReady := True
  } otherwise {
    when(io.axi.w.last) {
      wReady := False
    }
  }





  // 写响应通道 b
  io.axi.b.valid := writeRespPending
  io.axi.b.id := storedWid
  io.axi.b.resp := Axi4.resp.OKAY
  when(io.axi.b.ready && writeRespPending) {
    writeRespPending := False
  }

  //====================================
  // 读操作处理（支持突发读）
  //====================================
  // 读地址、ID、突发长度和读节拍计数器
  val storedAr = Reg(UInt(busConfig.addressWidth bits))
  val storedRid = Reg(UInt(busConfig.idWidth bits))
  val readBurstLen = Reg(UInt(io.axi.ar.len.getWidth bits))
  val readBeatCount = Reg(UInt(io.axi.ar.len.getWidth bits))
  val readActive = RegInit(False)

  // 接收读地址：当没有突发读正在进行时接收
  io.axi.ar.ready := !readActive
  when(io.axi.ar.valid && !readActive) {
    storedAr := io.axi.ar.addr
    storedRid := io.axi.ar.id
    readBurstLen := io.axi.ar.len
    readBeatCount := 0
    readActive := True
  }

  // 当前读操作地址计算
  val effectiveReadAddress = storedAr + (readBeatCount << beatByteShift)
  val readIndex = effectiveReadAddress >> beatByteShift

  // 同步读：注意这里存在1个时钟周期延迟
  val readData = mem.readSync(readIndex.resized, readActive)

  // 延迟 readActive 一拍，作为读通道的 valid 输出
  val readValidReg = RegNext(readActive, init = False)
  io.axi.r.valid := readValidReg
  io.axi.r.data := readData
  io.axi.r.resp := Axi4.resp.OKAY
  io.axi.r.last := RegNext(readBeatCount === readBurstLen) init False
  io.axi.r.id := storedRid


  when(io.axi.r.ready && readActive) {
    when(readBeatCount === readBurstLen) {
      readActive := False
    } otherwise {
      readBeatCount := readBeatCount + 1
    }
  }
}

/** 生成Verilog代码 */
object Axi4Mem {
  def main(args: Array[String]): Unit = {
    SpinalVerilog(Axi4Mem(MemCfg()))
  }
}
