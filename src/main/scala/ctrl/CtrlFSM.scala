package ctrl

import spinal.core._
import spinal.lib._
import cfg._
import conv._
import dma._

case class CtrlFSM(cfg: CtrlCfg) extends Component {

  import cfg._

  val io = new Bundle {

    val dmaBusy = in Bits (DmaCfg().chNum bits)

    // 已解码的各类指令输入
    val convInstr = slave Stream (ConvInstr(cfg)) // 运算类指令（CONV, FC, AVERPOOL, MAXPOOL）
    val cfgInstr = slave Stream (CfgInstr(cfg)) // 配置类指令（CONFIG_BIAS, CONFIG_SCALE）
    val mvInstr = slave Stream (MvInstr(cfg)) // 数据搬移指令（MOVE）
    val dmaInstr = slave Stream (DmaInstr(cfg)) // 访存类指令（DMA_TRANS）

    // 输出端口：操作参数或任务（示例中仅给出占位转换逻辑）
    val dmaParm = master Stream DmaParm(DmaCfg())
    val convParm = master Stream ConvParm(ConvCfg())

  }
  noIoPrefix()
  // 状态机当前状态寄存器，复位后进入 idle 状态
  val state = RegInit(idle)

  import State._

  val convInstrReg = Reg(ConvInstr(cfg))

  // 默认信号赋值
  io.convParm.valid := False
  io.dmaParm.valid := False

  // 默认各输入指令流的 ready 信号为 false
  io.convInstr.ready := False
  io.cfgInstr.ready := False
  io.mvInstr.ready := False
  io.dmaInstr.ready := False

  io.dmaParm.payload := DmaParm.default
  io.convParm.payload := ConvParm.default
  val cfgInstrReg = Reg(CfgInstr(cfg))
  val mvInstrReg = Reg(MvInstr(cfg))
  val dmaInstrReg = RegInit(DmaInstr.default).allowUnsetRegToAvoidLatch

  // 定义状态机状态：idle、execute、finish
  object State extends SpinalEnum {
    val idle, convInit, convExecute, cfgExecute, mvExecute, dmaInit, dmaExecute, finish = newElement()
  }


  switch(state) {
    is(idle) {
      // 检测是否有任一已解码指令到来，进入 execute 状态
      when(io.convInstr.valid) {
        io.convInstr.ready := True
        convInstrReg := io.convInstr.payload
        state := convInit
      } elsewhen (io.cfgInstr.valid) {
        io.cfgInstr.ready := True
        cfgInstrReg := io.cfgInstr.payload
        state := cfgExecute
      } elsewhen (io.mvInstr.valid) {
        io.mvInstr.ready := True
        mvInstrReg := io.mvInstr.payload
        state := mvExecute
      } otherwise (io.dmaInstr.valid) {
        io.dmaInstr.ready := True
        dmaInstrReg := io.dmaInstr.payload
        state := dmaInit
      }
    }
    is(cfgExecute) {
      state := idle

    }
    is(mvExecute) {
      state := idle
    }

    is(convInit) {
      io.convParm.payload := convInstrReg.convPram
      io.convParm.valid := True
      when(io.convParm.fire) {
        state := convExecute
      }
    }
    is(convExecute) {
      when(io.convParm.ready === True) {
        state := idle
      }
    }
    is(dmaInit) {
      io.dmaParm.payload := dmaInstrReg.dmaPram
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
