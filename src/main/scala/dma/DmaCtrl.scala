package dma

import spinal.core._
import spinal.lib._
import cfg.DmaCfg
import mem._

case class DmaCtrl(cfg: DmaCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val dmaParm = slave(Stream(DmaParm(cfg)))
    val ramPort = Vec(master(Memport(ramWidth, ramDepth)), chNum)
    val dmaPort = Vec(master(DmaPort(cfg)), chNum)
    val dmaBusy = out Bits (chNum bits)
  }
  noIoPrefix()
  val dmaParmPorts = Vec(Stream(DmaParm(cfg)), chNum)


  object State extends SpinalEnum {
    val idle,
    mem2glbAddr, mem2glbData,
    glb2memAddr, glb2memData = newElement()
  }

  import State._

  dmaParmPorts <> StreamDemux(io.dmaParm, io.dmaParm.payload.sel.asUInt, chNum)


  for (i <- 0 until chNum) yield {

    // 用于保存任务参数的寄存器

    val dmaParmReg = Reg(DmaParm(cfg))

    val state = RegInit(idle)

    val dmaParmPort = dmaParmPorts(i)

    val dmaPort = io.dmaPort(i)

    val ramPort = io.ramPort(i)

    val ramAddr = Reg(UInt(periAddrWidth bits))

    val taskLen = Reg(UInt(periAddrWidth bits))



    // 清除 RAM 接口信号
    ramPort.en := False
    ramPort.addr := 0
    ramPort.wr := False
    ramPort.wData := 0


    dmaParmPort.ready := False
    dmaPort.dmaRTask.valid := False
    dmaPort.dmaRTask.payload.len := 0
    dmaPort.dmaRTask.payload.addr := 0
    dmaPort.dmaWTask.valid := False
    dmaPort.dmaWTask.payload.len := 0
    dmaPort.dmaWTask.payload.addr := 0
    dmaPort.dmaRDate.ready := False
    dmaPort.dmaWDate.valid := False
    dmaPort.dmaWDate.payload := 0

    io.dmaBusy(i) := ~(state === idle && (dmaParmPort.valid && False))

    // 状态机实现
    switch(state) {
      is(idle) {
        dmaParmPort.ready := True
        // 空闲状态：等待接收 dmaParm 任务
        when(dmaParmPort.fire) {
          // 任务到来时，锁存任务参数
          dmaParmReg := dmaParmPort.payload
          ramAddr := 0
          // 根据传输方向进入不同状态
          switch(dmaParmPort.mode) {
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
        dmaPort.dmaRTask.len := dmaParmReg.len
        dmaPort.dmaRTask.addr := dmaParmReg.busAddr
        taskLen := dmaParmReg.len
        ramAddr := dmaParmReg.periAddr
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
        dmaPort.dmaWTask.len := dmaParmReg.len
        dmaPort.dmaWTask.addr := dmaParmReg.busAddr
        taskLen := dmaParmReg.len
        ramAddr := dmaParmReg.periAddr
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

