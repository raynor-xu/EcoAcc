package ctrl

import spinal.core._
import spinal.lib._
import cfg.CtrlCfg
import spinal.lib.bus.amba4.axi.Axi4

case class CtrlIFU(cfg: CtrlCfg) extends Component {

  import cfg._

  val io = new Bundle {
    // IFU 使能信号
    val ifEn = in Bool()
    // 指令起始地址
    val instrBaseAddr = in UInt (busConfig.addressWidth bits)
    // AXI4 接口（作为 master 发起读请求）
    val axi4 = master(Axi4(busConfig))
    // 读出的指令，通过流接口输出
    val instr = master Stream Bits(instrWidth bits)
  }

  noIoPrefix()

  // 1. FIFO 暂存指令数据
  val instrQueen = StreamFifo(
    dataType = Bits(instrWidth bits),
    depth = instrQueenDepth
  )
  // FIFO 的 pop 端口驱动输出
  io.instr << instrQueen.io.pop

  // 2. 使用 FIFO 内部的 occupancy 信号计算空闲空间
  // freeSpace = FIFO深度 - 当前存储条数
  val freeSpace = instrQueenDepth - instrQueen.io.occupancy

  // 3. 记录当前读地址，ifEn为低时重置为起始地址
  val currentAddr = Reg(UInt(busConfig.addressWidth bits)) init (io.instrBaseAddr)
  val burstState = Reg(BurstState()) init (BurstState.IDLE)
  // 5. AXI4 读数据通道：将 r 通道数据直接推入 FIFO
  val instr = Reg(Bits(instrWidth bits)) init 0

  // AW 通道（写地址）默认赋值
  io.axi4.aw.valid := False
  io.axi4.aw.payload.addr := 0
  io.axi4.aw.payload.id := 0
  io.axi4.aw.payload.len := 0
  io.axi4.aw.payload.size := 0
  io.axi4.aw.payload.burst := Axi4.burst.INCR

  // W 通道（写数据）默认赋值
  io.axi4.w.valid := False
  io.axi4.w.payload.data := 0
  io.axi4.w.payload.last := False

  // B 通道（写响应）默认赋值
  io.axi4.b.ready := False

  // AR 通道的 id 信号默认赋值
  io.axi4.ar.payload.id := 0
  io.axi4.ar.valid := False
  io.axi4.ar.payload.addr := 0
  io.axi4.ar.payload.len := 0
  // AXI 数据通道宽度为 64-bit，即 8 字节，所以 size = log2(8) = 3
  io.axi4.ar.payload.size := 0
  io.axi4.ar.payload.burst := Axi4.burst.INCR


  when(!io.ifEn) {
    currentAddr := io.instrBaseAddr
  } otherwise {
    switch(burstState) {
      is(BurstState.IDLE) {
        // 当 ifEn 有效且 FIFO 空闲 >= 8 条时，发起 burst 读请求
        when(freeSpace >= 8) {
          io.axi4.ar.valid := True
          io.axi4.ar.payload.addr := currentAddr
          io.axi4.ar.payload.len := 7 // 8拍 burst (len = 8-1)
          io.axi4.ar.payload.size := log2Up(instrWidth / 8)
          io.axi4.ar.payload.burst := Axi4.burst.INCR
          when(io.axi4.ar.fire) {
            burstState := BurstState.BURST
            // 发起 burst 后，更新地址：增加 4 条指令对应的字节数
            currentAddr := currentAddr + 4 * (instrWidth / 8)
          }
        }
      }
      is(BurstState.BURST) {
        // burst 状态下不发 ar 请求，等待 burst 完整传输完成
        io.axi4.ar.valid := False
        // 利用 axi4.r.last 判断 burst 最后一拍到达后返回 IDLE 状态
        when(io.axi4.r.fire && io.axi4.r.last) {
          burstState := BurstState.IDLE
        }
      }
    }
  }
  val fragCnt = Reg(Bool()) init (False)

  // 4. 状态机控制 burst 读请求
  object BurstState extends SpinalEnum {
    val IDLE, BURST = newElement()
  }

  io.axi4.r.ready := instrQueen.io.push.ready

  instrQueen.io.push.valid := False

  instrQueen.io.push.payload := instr

  when(io.axi4.r.fire) {
    when(fragCnt) {
      instrQueen.io.push.valid := True
      instr(busConfig.dataWidth - 1 downto 0) := io.axi4.r.payload.data
      fragCnt := False
    } otherwise {
      instr(instrWidth - 1 downto busConfig.dataWidth) := io.axi4.r.payload.data
      fragCnt := True
    }
  }

}


object CtrlIFU extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(CtrlIFU(CtrlCfg()))
}