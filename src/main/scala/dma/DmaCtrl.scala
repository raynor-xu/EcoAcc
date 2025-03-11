package dma

import spinal.core._
import spinal.lib._
import spinal.lib.fsm._
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


  dmaParmPorts <> StreamDemux(io.dmaParm, io.dmaParm.payload.sel.asUInt, chNum)


  for (i <- 0 until chNum) yield {

    // 用于保存任务参数的寄存器

    val dmaParmReg = Reg(DmaParm(cfg))


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

    io.dmaBusy(i) := True

    // 状态机实现
    val fsm = new StateMachine {
      val idle = new State with EntryPoint
      val mem2glbAddr = new State
      val mem2glbData = new State
      val glb2memAddr = new State
      val glb2memData = new State

      idle.whenIsActive {
        io.dmaBusy(i) := False
        dmaParmPort.ready := True
        // 空闲状态：等待接收 dmaParm 任务
        when(dmaParmPort.fire) {
          // 任务到来时，锁存任务参数
          dmaParmReg := dmaParmPort.payload
          ramAddr := 0
          // 根据传输方向进入不同状态
          switch(dmaParmPort.mode) {
            is(DmaTaskMode.mem2glb) {
              goto(mem2glbAddr)
            }
            is(DmaTaskMode.glb2mem) {
              goto(glb2memAddr)
            }
            default {
              goto(idle)
            }
          }
        }
      }
      // ===== mem2glb: 内存到外设 =====
      mem2glbAddr.whenIsActive {
        dmaPort.dmaRTask.valid := True
        dmaPort.dmaRTask.len := dmaParmReg.len
        dmaPort.dmaRTask.addr := dmaParmReg.busAddr
        taskLen := dmaParmReg.len
        ramAddr := dmaParmReg.periAddr
        when(dmaPort.dmaRTask.fire) {
          goto(mem2glbData)
        }
      }
      mem2glbData.whenIsActive {
        dmaPort.dmaRDate.ready := True
        ramPort.en := dmaPort.dmaRDate.fire
        ramPort.addr := ramAddr
        ramPort.wr := True
        ramPort.wData := dmaPort.dmaRDate.payload
        when(dmaPort.dmaRDate.fire) {
          taskLen := taskLen - 1
          ramAddr := ramAddr + 1
          when(taskLen === 1) {
            goto(idle)
          }
        }
      }
      // ===== glb2mem: 内存到外设 =====
      glb2memAddr.whenIsActive {
        dmaPort.dmaWTask.valid := True
        dmaPort.dmaWTask.len := dmaParmReg.len
        dmaPort.dmaWTask.addr := dmaParmReg.busAddr
        taskLen := dmaParmReg.len
        ramAddr := dmaParmReg.periAddr
        when(dmaPort.dmaWTask.fire) {
          ramPort.en := True
          ramPort.addr := ramAddr
          ramPort.wr := False
          ramAddr := dmaParmReg.periAddr + 1
          goto(glb2memData)
        }
      }
      glb2memData.whenIsActive {
        dmaPort.dmaWDate.valid := True
        dmaPort.dmaWDate.payload := ramPort.rData
        ramPort.en := dmaPort.dmaWDate.fire
        ramPort.addr := ramAddr
        ramPort.wr := False
        when(dmaPort.dmaWDate.fire) {
          taskLen := taskLen - 1
          ramAddr := ramAddr + 1
          when(taskLen === 1) {
            goto(idle)
          }
        }
      }
    }.setName(s"fsm_$i")
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

