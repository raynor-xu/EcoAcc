//package ctrl
//
//import spinal.core._
//import spinal.sim._
//import spinal.core.sim._
//import spinal.lib.bus.amba4.axi._
//import spinal.lib.bus.amba3.apb._
//
//import cfg._
//import common._
//
//
//object CtrlTopTestSim {
//
//
//  def main(args: Array[String]): Unit = {
//    SimConfig.withWave.compile {
//      // 实例化 DUT，注意这里的 CtrlCfg 需与你工程中的配置一致
//      val dut = CtrlTop(CtrlCfg())
//      dut
//    }.doSim { dut =>
//      // 时钟驱动：周期 10 ns
//      dut.clockDomain.forkStimulus(period = 10)
//
//      // 初始化 APB 总线信号（作为 DUT 的 APB 主机侧驱动寄存器写操作）
//      dut.io.apb.paddr #= 0
//      dut.io.apb.pwrite #= false
//      dut.io.apb.psel #= false
//      dut.io.apb.penable #= false
//      dut.io.apb.pwdata #= 0
//
//      // 因为 DUT 为 AXI4 总线的 master，所以在 testbench 中模拟从属端响应
//      dut.io.axi4.ar.ready #= false
//      dut.io.axi4.r.valid #= false
//      dut.io.axi4.r.payload.data #= 0
//      dut.io.axi4.r.payload.last #= false
//
//      // 模拟 dmaBusy 信号为0（对 mac 类型指令测试无影响）
//      dut.io.dmaBusy #= 0
//
//      // 等待复位结束
//      dut.clockDomain.waitSampling(5)
//
//      // 通过 APB 写操作设置 ifEn = true，使得 CtrlIFU 开始取指
//      // 注意：此处假设 CFG 寄存器位于地址 0x04（第 2 个寄存器）
//      dut.io.apb.paddr #= 4
//      dut.io.apb.pwrite #= true
//      dut.io.apb.psel #= true
//      dut.io.apb.pwdata #= 1 // 写 1 使能取指
//      dut.clockDomain.waitSampling()
//      dut.io.apb.penable #= true
//      dut.clockDomain.waitSampling()
//      // 结束 APB 事务
//      dut.io.apb.psel #= false
//      dut.io.apb.pwrite #= false
//      dut.io.apb.penable #= false
//      dut.clockDomain.waitSampling(5)
//
//      // fork 一个进程模拟 AXI4 从属响应（仅对 AR 读请求响应）
//      fork {
//        while (true) {
//          if (dut.io.axi4.ar.valid.toBoolean) {
//            // 从属端始终准备好接收 AR 请求
//            dut.io.axi4.ar.ready #= true
//            dut.clockDomain.waitSampling() // 等待握手完成
//            // 记录请求参数
//            val reqAddr = dut.io.axi4.ar.payload.addr.toBigInt
//            val reqLen = dut.io.axi4.ar.payload.len.toInt
//            println(s"[AXI4 Slave] Received AR request: addr = $reqAddr, len = $reqLen")
//            // 仿真中我们只需响应两拍数据来构成一条 128 位指令
//            // 下面构造一条 mac 类型指令数据（例如：opcode 为 CONV，其他字段可用默认值）
//            // 此处硬编码一个 128 位数据，实际工程中可以使用 MTypeInstr.default().asBits.toBigInt
//            val macInstrValue = BigInt("0123456789ABCDEF0123456789ABCDEF", 16)
//            val lower64 = macInstrValue & ((BigInt(1) << 64) - 1)
//            val upper64 = macInstrValue >> 64
//
//            // 第一拍数据：低 64 位
//            dut.io.axi4.r.payload.data #= lower64
//            dut.io.axi4.r.payload.last #= false
//            dut.io.axi4.r.valid #= true
//            dut.clockDomain.waitSampling()
//            dut.io.axi4.r.valid #= false
//            dut.clockDomain.waitSampling()
//
//            // 第二拍数据：高 64 位，并标记为最后一拍
//            dut.io.axi4.r.payload.data #= upper64
//            dut.io.axi4.r.payload.last #= true
//            dut.io.axi4.r.valid #= true
//            dut.clockDomain.waitSampling()
//            dut.io.axi4.r.valid #= false
//
//            // 完成响应后关闭 ar.ready
//            dut.io.axi4.ar.ready #= false
//          } else {
//            dut.clockDomain.waitSampling()
//          }
//        }
//      }
//
//      // fork 一个进程监控 DUT 输出的 macParm 流，验证 mac 指令是否被正确处理
//      fork {
//        while (true) {
//          if (dut.io.macParm.valid.toBoolean) {
//            // 此处打印 macParm 参数（你可以根据 MacParm 的字段进行更细致检查）
//            println(s"[Testbench] macParm received: ${dut.io.macParm.payload.toBigInt}")
//            // 发送握手应答
//            dut.io.macParm.ready #= true
//            dut.clockDomain.waitSampling()
//            dut.io.macParm.ready #= false
//          }
//          dut.clockDomain.waitSampling()
//        }
//      }
//
//      // 运行足够的周期以完成整个测试流程
//      dut.clockDomain.waitSampling(200)
//      simSuccess()
//    }
//  }
//
//
//}
