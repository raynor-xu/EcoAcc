package dma

import spinal.core._
import spinal.lib._
import cfg.DmaCfg
import mem._

case class DmaCtrl(cfg: DmaCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val dmaTask = slave(Stream(DmaTask(cfg)))
    val ramPort = Vec(master(Memport(ramWidth, ramDepth)), chNum)
    val dmaPort = Vec(master(DmaPort(cfg)), chNum)
    val dmaBusy = out Bits (chNum bits)
  }
  noIoPrefix()
  val dmaTaskPorts = Vec(Stream(DmaTask(cfg)), chNum)

  import State._

  //  val dmaTaskQueens = Array.fill(chNum)(StreamFifo(
  //    dataType = DmaTask(cfg),
  //    depth = taskQueenDepth
  //  ))

  object State extends SpinalEnum {
    val idle,
    mem2glbAddr, mem2glbData,
    glb2memAddr, glb2memData = newElement()
  }

  dmaTaskPorts <> StreamDemux(io.dmaTask, io.dmaTask.payload.sel.asUInt, chNum)


  for (i <- 0 until chNum) yield {

    // 用于保存任务参数的寄存器

    val dmaTaskReg = Reg(DmaTask(cfg))

    val state = RegInit(idle)

    val dmaTaskPort = dmaTaskPorts(i)

    val dmaPort = io.dmaPort(i)

    val ramPort = io.ramPort(i)

    val ramAddr = Reg(UInt(periAddrWidth bits))

    val taskLen = Reg(UInt(periAddrWidth bits))



    // 清除 RAM 接口信号
    ramPort.en := False
    ramPort.addr := 0
    ramPort.wr := False
    ramPort.wData := 0


    dmaTaskPort.ready := False
    dmaPort.dmaRTask.valid := False
    dmaPort.dmaRTask.payload.len := 0
    dmaPort.dmaRTask.payload.addr := 0
    dmaPort.dmaWTask.valid := False
    dmaPort.dmaWTask.payload.len := 0
    dmaPort.dmaWTask.payload.addr := 0
    dmaPort.dmaRDate.ready := False
    dmaPort.dmaWDate.valid := False
    dmaPort.dmaWDate.payload := 0

    io.dmaBusy(i) := ~(state === idle && (dmaTaskPort.valid && False))

    // 状态机实现
    switch(state) {
      is(idle) {
        dmaTaskPort.ready := True
        // 空闲状态：等待接收 dmaTask 任务
        when(dmaTaskPort.fire) {
          // 任务到来时，锁存任务参数
          dmaTaskReg := dmaTaskPort.payload
          ramAddr := 0
          // 根据传输方向进入不同状态
          switch(dmaTaskPort.mode) {
            is(DmaTaskMode.mem2glb) {
              state := mem2glbAddr
            }
            is(DmaTaskMode.glb2mem) {
              state := glb2memAddr
            }
            default {
              state := idle
            }
          }
        }
      }
      // ===== mem2glb: 内存到外设 =====
      is(mem2glbAddr) {
        dmaPort.dmaRTask.valid := True
        dmaPort.dmaRTask.len := dmaTaskReg.len
        dmaPort.dmaRTask.addr := dmaTaskReg.busAddr
        taskLen := dmaTaskReg.len
        ramAddr := dmaTaskReg.periAddr
        when(dmaPort.dmaRTask.fire) {
          state := mem2glbData
        }
      }
      is(mem2glbData) {
        dmaPort.dmaRDate.ready := True
        ramPort.en := dmaPort.dmaRDate.fire
        ramPort.addr := ramAddr
        ramPort.wr := True
        ramPort.wData := dmaPort.dmaRDate.payload
        when(dmaPort.dmaRDate.fire) {
          taskLen := taskLen - 1
          ramAddr := ramAddr + 1
          when(taskLen === 1) {
            state := idle
          }
        }
      }
      // ===== glb2mem: 内存到外设 =====
      is(glb2memAddr) {
        dmaPort.dmaWTask.valid := True
        dmaPort.dmaWTask.len := dmaTaskReg.len
        dmaPort.dmaWTask.addr := dmaTaskReg.busAddr
        taskLen := dmaTaskReg.len
        ramAddr := dmaTaskReg.periAddr
        when(dmaPort.dmaWTask.fire) {
          state := glb2memData
        }
      }
      is(glb2memData) {
        dmaPort.dmaWDate.valid := RegNext(ramPort.en)
        dmaPort.dmaWDate.fire
        dmaPort.dmaWDate.payload := ramPort.rData
        ramPort.en := dmaPort.dmaWDate.ready
        ramPort.addr := ramAddr
        ramPort.wr := False
        when(dmaPort.dmaWDate.fire) {
          taskLen := taskLen - 1
          ramAddr := ramAddr + 1
          when(taskLen === 1) {
            state := idle
          }
        }
      }
    }
  }

}


object DmaCtrl extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new DmaCtrl(DmaCfg()))
}

