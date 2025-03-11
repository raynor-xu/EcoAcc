package mem

import common._
import spinal.core.sim._
import cfg.MemCfg
import mem.GLBuffer

object GLBufferSim {


  def main(args: Array[String]): Unit = {

    val compiled = UserSimConfig().compile(GLBuffer(MemCfg()))
    // 2) 运行仿真
    compiled.doSim { dut =>
      // 使用 withWave 打开波形，便于调试
      // 时钟周期设为10个时间单位
      dut.clockDomain.forkStimulus(10)

      // 初始化各个端口的默认值
      dut.io.rdPorts.foreach { port =>
        port.addr #= 0
        port.en #= false
      }
      dut.io.wrPorts.foreach { port =>
        port.addr #= 0
        port.en #= false
        port.wData #= 0
      }
      dut.io.rwPorts.foreach { port =>
        port.addr #= 0
        port.en #= false
        port.wr #= false
        port.wData #= 0
      }

      // 等待几个周期，确保初始化完成
      dut.clockDomain.waitSampling(5)

      // -------------------------------------------------------------------
      // 1. 写操作测试：使用 wrPorts(0)在地址 100 写入数据 12345
      println("开始测试写入操作 (wrPorts)")
      sleep(1)
      dut.io.wrPorts(0).addr #= 100
      dut.io.wrPorts(0).wData #= BigInt(12345)
      dut.io.wrPorts(0).en #= true
      dut.clockDomain.waitSampling(1)
      sleep(1)
      dut.io.wrPorts(0).en #= false
      println("写入完成：地址 100 写入 12345")

      // 等待几周期
      dut.clockDomain.waitSampling(2)

      // -------------------------------------------------------------------
      // 2. 读操作测试：使用 rdPorts(0)读取地址 100 的数据
      println("开始测试读取操作 (rdPorts)")
      dut.io.rdPorts(0).addr #= 100
      dut.io.rdPorts(0).en #= true
      dut.clockDomain.waitSampling(1)
      dut.io.rdPorts(0).en #= false
      // 注意：由于读操作在下周期才能得到数据，所以需要等待一个周期
      dut.clockDomain.waitSampling(1)
      println(s"rdPorts(0) 读取数据：${dut.io.rdPorts(0).rData.toBigInt} (期望 12345)")

      // -------------------------------------------------------------------
      // 3. 读写操作测试：使用 rwPorts(0)
      // 先写入数据，然后再读出来
      println("开始测试读写操作 (rwPorts)")
      // 写操作：地址 200 写入数据 54321
      dut.io.rwPorts(0).addr #= 200
      dut.io.rwPorts(0).wData #= BigInt(54321)
      dut.io.rwPorts(0).wr #= true
      dut.io.rwPorts(0).en #= true
      dut.clockDomain.waitSampling(1)
      dut.io.rwPorts(0).en #= false
      dut.io.rwPorts(0).wr #= false
      println("rwPorts(0) 写入完成：地址 200 写入 54321")

      // 等待几周期确保数据写入完成
      dut.clockDomain.waitSampling(2)

      // 读操作：同一端口读取地址 200
      dut.io.rwPorts(0).addr #= 200
      dut.io.rwPorts(0).en #= true
      dut.clockDomain.waitSampling(1)
      dut.io.rwPorts(0).en #= false
      // 同样需要等待一个周期获得读数据
      dut.clockDomain.waitSampling(1)
      println(s"rwPorts(0) 读取数据：${dut.io.rwPorts(0).rData.toBigInt} (期望 54321)")

      // 结束前再等待几周期
      dut.clockDomain.waitSampling(5)
      simSuccess()
    }
  }
}
