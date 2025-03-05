package ctrl

import spinal.core._
import spinal.lib._
import cfg._
import mac._
import dma._


case class CtrlFSM(cfg: CtrlCfg) extends Component {

  import cfg._

  val io = new Bundle {

    val dmaBusy = in Bits (DmaCfg().chNum bits)

    // 已解码的各类指令输入
    val mTypeInstr = slave Stream MTypeInstr(cfg) // 运算类指令CONV, FC, AVERPOOL, MAXPOOL
    val pTypeInstr = slave Stream PTypeInstr(cfg) // 配置类指令 CONFIG_BIAS, CONFIG_SCALE
    val dTypeInstr = slave Stream DTypeInstr(cfg) // 访存类指令 DMA_TRANS
    val cTypeInstr = slave Stream CTypeInstr(cfg) // 控制类指令 STOP

    // 输出端口：操作参数或任务（示例中仅给出占位转换逻辑）
    val dmaParm = master Stream DmaParm(DmaCfg())
    val macParm = master(Stream(MacParm(MacCfg())))
    val scaleParm = master(Stream(ScaleParm(MacCfg())))

  }

  noIoPrefix()
  // 状态机当前状态寄存器，复位后进入 idle 状态
  val state = RegInit(idle)

  import State._

  val mTypeInstrReg = Reg(MTypeInstr(cfg)) init MTypeInstr.default()
  val pTypeInstrReg = Reg(PTypeInstr(cfg)) init PTypeInstr.default()
  val dTypeInstrReg = Reg(DTypeInstr(cfg)) init DTypeInstr.default()
  val cTypeInstrReg = Reg(CTypeInstr(cfg)) init CTypeInstr.default()

  // 定义状态机状态：idle、execute、finish
  object State extends SpinalEnum {
    val idle, macInit, macExecute, paraExecute, dmaInit, dmaExecute, ctrlExecute, finish = newElement()
  }

  io.dmaParm.payload := DmaParm.default
  io.macParm.payload := MacParm.default
  io.scaleParm.payload := ScaleParm.default


  io.dmaParm.valid := False
  io.macParm.valid := False
  io.scaleParm.valid := False


  // 默认各输入指令流的 ready 信号为 false
  io.mTypeInstr.ready := False
  io.pTypeInstr.ready := False
  io.dTypeInstr.ready := False
  io.cTypeInstr.ready := False


  switch(state) {
    is(idle) {
      // 检测是否有任一已解码指令到来，进入 execute 状态
      when(io.mTypeInstr.valid) {
        io.mTypeInstr.ready := True
        mTypeInstrReg := io.mTypeInstr.payload
        state := macInit
      } elsewhen (io.pTypeInstr.valid) {
        io.pTypeInstr.ready := True
        pTypeInstrReg := io.pTypeInstr.payload
        state := paraExecute
      } elsewhen (io.dTypeInstr.valid) {
        io.dTypeInstr.ready := True
        dTypeInstrReg := io.dTypeInstr.payload
        state := dmaInit
      } otherwise (io.cTypeInstr.valid) {
        io.cTypeInstr.ready := True
        cTypeInstrReg := io.cTypeInstr.payload
        state := ctrlExecute
      }
    }

    is(macInit) {
      io.macParm.payload := mTypeInstrReg.macPram
      io.macParm.valid := True
      when(io.macParm.fire) {
        state := macExecute
      }
    }

    is(macExecute) {
      when(io.macParm.valid) {
        state := idle
      }
    }


    is(paraExecute) {
      switch(pTypeInstrReg.opcode) {
        is(Opcode.PARM_SCALE) {
          io.scaleParm.payload.zeroPoint := pTypeInstrReg.configData(0).asSInt.resized
          io.scaleParm.payload.shift := pTypeInstrReg.configData(1).resized
          io.scaleParm.payload.multiplier := pTypeInstrReg.configData(2).asSInt.resized
          io.scaleParm.valid := True
          when(io.scaleParm.fire) {
            state := idle
          }
        }
      }
    }

    is(dmaInit) {
      io.dmaParm.payload := dTypeInstrReg.dmaPram
      io.dmaParm.valid := True
      when(io.dmaParm.fire) {
        state := dmaExecute
      }
    }
    is(dmaExecute) {
      when(io.dmaBusy.orR === False) {
        state := idle
      }
    }

    is(ctrlExecute) {
      state := idle
    }

    is(finish) {
      state := idle
    }
  }
}

object CtrlFSM extends App {
  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(CtrlFSM(CtrlCfg()))
}
