//package mac
//
//import spinal.core._
//import spinal.lib._
//import spinal.lib.fsm._
//import cfg._
//import mem._
//import spinal.lib
//
//
//case class MacCtrl(cfg: MacCfg) extends Component {
//
//  import cfg._
//
//  val io = new Bundle {
//
//    val macParm = slave(Stream(MacParm(cfg)))
//
//    val featureIn = slave Stream Vec(slave Stream SInt(inputWidth bits), cAutomic)
//    val weight =  slave Stream  (Vec(slave Stream SInt(inputWidth bits), cAutomic), kAutomic)
//
//    val wPort0 = master(RdPort(ramWidth, ramDepth))
//    val fPort0 = master(RdPort(ramWidth, ramDepth))
//    val fPort1 = master(WrPort(ramWidth, ramDepth))
//  }
//
//  noIoPrefix()
//
//
//  val wReg = Reg(Vec(Vec(Vec(SInt(2 * inputWidth bits), cAutomic), kAutomic), 2))
//  val finReg = Reg(Vec(SInt(2 * inputWidth bits), kAutomic))
//
//  val cycleCounter = Reg(UInt(6 bits)) init(0)
//
//
//
//
//  // ----- 状态机：划分预加载阶段与正常运算阶段（内部又细分为多个子阶段） -----
//  val fsm = new StateMachine {
//    // 状态定义：
//    val preload  = new State with EntryPoint
//    val normalOp = new State
//    val op0      = new State
//    val op1      = new State
//    val op45     = new State
//    val op7      = new State
//
//    // 默认将各个输入 ready 信号拉低
//    preload.whenIsActive  {
//      when(cycleCounter === 0) {
//        when(io.weight) {
//          // 简单示例：假设一次只读入一个数据，对所有乘法器进行更新
//          for(i <- 0 until atomicK) {
//            weightRWA(i) := io.weightIn.payload
//          }
//          io.weightIn.ready := True
//          cycleCounter := cycleCounter + 1
//        }
//      } elsewhen(cycleCounter === 1) {
//        when(io.weightIn.valid) {
//          for(i <- 0 until atomicK) {
//            weightRWB(i) := io.weightIn.payload
//          }
//          io.weightIn.ready := True
//          cycleCounter := cycleCounter + 1
//        }
//      } elsewhen(cycleCounter < 31) {
//        // 此处仅做示例，可以根据实际需求细化：部分周期可能同时读特征数据或重复加载权重
//        when(io.weightIn.valid) {
//          // 根据当前的 pingFlag 选择更新目标寄存器
//          if (pingFlag) {
//            for(i <- 0 until atomicK) {
//              weightRWA(i) := io.weightIn.payload
//            }
//          } else {
//            for(i <- 0 until atomicK) {
//              weightRWB(i) := io.weightIn.payload
//            }
//          }
//          io.weightIn.ready := True
//          cycleCounter := cycleCounter + 1
//        }
//      } otherwise {
//        // cycleCounter == 31：预加载结束，复位计数器并切换 ping-pong 标志
//        cycleCounter := 0
//        pingFlag := ~pingFlag
//        goto(normalOp)
//      }
//    }
//
//    // ----- 正常运算阶段 -----
//    normalOp.whenIsActive {
//      // 进入正常运算阶段后，先执行 OP0 子阶段
//      goto(op0)
//    }
//
//    // 子阶段 OP0：一个周期内从 featureIn 读取 32B 特征数据，
//    // 并使用当前活跃的权重（这里选用 RWA 或 RWB，根据 pingFlag）进行初步乘法运算
//    op0.whenIsActive {
//      when(io.featureIn.valid) {
//        // 对于所有乘法器，将特征数据与对应权重相乘
//        for(i <- 0 until atomicK) {
//          val weight = Mux(pingFlag, weightRWA(i), weightRWB(i))
//          macResult(i) := weight.asUInt * io.featureIn.payload.asUInt
//        }
//        io.featureIn.ready := True
//        cycleCounter := 0
//        goto(op1)
//      }
//    }
//
//    // 子阶段 OP1：持续 spLen 个周期累加运算，
//    // 每个周期可能同时从 featureIn 和 weightIn 读取数据，进行乘加运算
//    op1.whenIsActive {
//      when(io.featureIn.valid && io.weightIn.valid) {
//        for(i <- 0 until atomicK) {
//          // 示例中使用另一组权重进行乘加（实际设计中需根据卷积算法确定）
//          val weight = Mux(pingFlag, weightRWB(i), weightRWA(i))
//          macResult(i) := macResult(i) + (weight.asUInt * io.featureIn.payload.asUInt)
//        }
//        io.featureIn.ready := True
//        io.weightIn.ready  := True
//        cycleCounter := cycleCounter + 1
//        when(cycleCounter === (spLen - 1)) {
//          cycleCounter := 0
//          goto(op45)
//        }
//      }
//    }
//
//    // 子阶段 OP5+OP6：对卷积输出的 W'/H' 维度进行处理，
//    // 此处示例直接将累加结果写出，并清零后进入下一子阶段
//    op45.whenIsActive {
//      io.resultOut.valid   := True
//      io.resultOut.payload := macResult
//      // 写出后清零累加结果（或将其传递到下一级模块）
//      for(i <- 0 until atomicK) {
//        macResult(i) := 0
//      }
//      goto(op7)
//    }
//
//    // 子阶段 OP7：针对输出通道维度的剩余运算（例如，多个 OP7 循环完成整个卷积），
//    // 示例中简单将状态返回 OP0，实现循环计算下一个输出块
//    op7.whenIsActive {
//      goto(op0)
//    }
//  }
//}
//
//
//
//
//}
//
//
//object MacCtrl extends App {
//
//  SpinalConfig(
//    targetDirectory = "rtl", // 指定生成代码的目标目录
//    oneFilePerComponent = false, // 每个组件单独生成一个文件
//    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
//    headerWithDate = false, // 不在头文件中添加日期信息
//    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
//  ).generateVerilog(new MacCtrl(MacCfg()))
//}
//
