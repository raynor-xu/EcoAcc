package dma

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import cfg.DmaCfg
import mem._

case class DmaCtrl(cfg: DmaCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val ramPort = master(Memport(ramWidth, ramDepth))
    val axi4Port = master(Axi4(busConfig))
    val dmaTask = slave(Stream(DmaTask(cfg)))
  }
  noIoPrefix()
  // 用于保存任务参数的寄存器
  val taskMem2Peri = Reg(Bool()) init (False)

  import State._

  val taskAxiAddr = Reg(UInt(busConfig.addressWidth bits)) init (0)
  val taskLen = Reg(UInt(periAddrWidth bits)) init (0)
  // 这里假设 DMA 的 RAM 存储区域从地址 0 开始
  val ramAddr = Reg(UInt(log2Up(ramDepth) bits)) init (0)
  val state = RegInit(idle)

  object State extends SpinalEnum {
    val idle,
    mem2periAddr, mem2periData, mem2periWait,
    peri2memAddr, peri2memData, peri2memWait = newElement()
  }

  // 默认信号赋值
  // 清除所有 AXI4 通道信号

  io.axi4Port.aw.payload.id := axi4Id
  io.axi4Port.aw.payload.lock := 0
  io.axi4Port.aw.payload.cache := 0
  io.axi4Port.aw.payload.qos := 0
  io.axi4Port.aw.payload.prot := 0
  io.axi4Port.aw.valid := False
  io.axi4Port.aw.addr := 0
  io.axi4Port.aw.len := 0
  io.axi4Port.aw.size := U(log2Up(busConfig.bytePerWord), 3 bits)
  io.axi4Port.aw.burst := Axi4.burst.INCR

  io.axi4Port.w.valid := False
  io.axi4Port.w.data := 0
  io.axi4Port.w.last := False
  io.axi4Port.w.payload.strb := 0

  io.axi4Port.b.ready := False

  io.axi4Port.ar.payload.id := axi4Id
  io.axi4Port.ar.payload.lock := 0
  io.axi4Port.ar.payload.cache := 0
  io.axi4Port.ar.payload.qos := 0
  io.axi4Port.ar.payload.prot := 0
  io.axi4Port.ar.valid := False
  io.axi4Port.ar.addr := 0
  io.axi4Port.ar.len := 0
  io.axi4Port.ar.size := U(log2Up(busConfig.bytePerWord), 3 bits)
  io.axi4Port.ar.burst := Axi4.burst.INCR

  io.axi4Port.r.ready := False

  // 清除 RAM 接口信号
  io.ramPort.en := False
  io.ramPort.addr := 0
  io.ramPort.wr := False
  io.ramPort.wData := 0

  // 默认 dmaTask.ready 为 false
  io.dmaTask.ready := False

  // 状态机实现
  switch(state) {
    is(idle) {
      // 空闲状态：等待接收 dmaTask 任务
      when(io.dmaTask.valid) {
        // 任务到来时，锁存任务参数
        taskMem2Peri := io.dmaTask.mem2peri
        taskAxiAddr := io.dmaTask.addr
        taskLen := io.dmaTask.len
        ramAddr := 0
        io.dmaTask.ready := True // 接受任务
        // 根据传输方向进入不同状态
        when(io.dmaTask.mem2peri) {
          state := mem2periAddr
        } otherwise {
          state := peri2memAddr
        }
      }
    }
    // ===== mem2peri: 内存到外设 =====
    is(mem2periAddr) {
      // 发起 AXI 写地址传输（单拍）
      io.axi4Port.aw.valid := True
      io.axi4Port.aw.addr := taskAxiAddr
      io.axi4Port.aw.len := 0 // 单拍传输
      when(io.axi4Port.aw.fire) {
        state := mem2periData
      }
    }
    is(mem2periData) {
      // 读出 RAM 数据，并发起 AXI 写数据传输
      io.ramPort.en := True
      io.ramPort.addr := ramAddr
      // 假定同步读：io.ramPort.rData 可在本周期使用
      io.axi4Port.w.valid := True
      io.axi4Port.w.data := io.ramPort.rData
      io.axi4Port.w.last := True
      when(io.axi4Port.w.fire) {
        state := mem2periWait
      }
    }
    is(mem2periWait) {
      // 等待 AXI 写响应
      io.axi4Port.b.ready := True
      when(io.axi4Port.b.fire) {
        // 更新计数和地址
        taskLen := taskLen - 1
        ramAddr := ramAddr + 1
        taskAxiAddr := taskAxiAddr + U(busConfig.bytePerWord)
        // 如果当前传输完毕，回到空闲状态；否则继续传输下一拍
        when(taskLen === 1) {
          state := idle
        } otherwise {
          state := mem2periAddr
        }
      }
    }
    // ===== peri2mem: 外设到内存 =====
    is(peri2memAddr) {
      // 发起 AXI 读地址传输（单拍）
      io.axi4Port.ar.valid := True
      io.axi4Port.ar.addr := taskAxiAddr
      io.axi4Port.ar.len := 0
      when(io.axi4Port.ar.fire) {
        state := peri2memData
      }
    }
    is(peri2memData) {
      // 等待 AXI 读数据传输
      io.axi4Port.r.ready := True
      when(io.axi4Port.r.fire) {
        // AXI 读数据写入 RAM
        io.ramPort.en := True
        io.ramPort.wr := True
        io.ramPort.addr := ramAddr
        io.ramPort.wData := io.axi4Port.r.data
        state := peri2memWait
      }
    }
    is(peri2memWait) {
      // 更新计数和地址
      taskLen := taskLen - 1
      ramAddr := ramAddr + 1
      taskAxiAddr := taskAxiAddr + U(busConfig.bytePerWord)
      when(taskLen === 1) {
        state := idle
      } otherwise {
        state := peri2memAddr
      }
    }
  }
}


