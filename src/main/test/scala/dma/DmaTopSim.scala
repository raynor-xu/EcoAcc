package dma

import spinal.core._
import spinal.core.sim._
import spinal.lib._
import scala.util.Random

import cfg._
import common._

object DmaTopSim {
  def main(args: Array[String]): Unit = {
    // 使用 withWave 可以在仿真结束后生成波形文件
    val compiled = UserSimConfig().compile(DmaTestInst(DmaCfg()))

    compiled.doSim { dut =>
      // 时钟产生：周期 10 ns
      dut.clockDomain.forkStimulus(period = 10)

      for (i <- 0 until 1024) {
        dut.axiMem.mem.setBigInt(i, i)
      }
      // 初始化 dmaParm 信号
      dut.io.dmaParm.valid #= false
      dut.clockDomain.waitSampling()

      // 对 dmaParm 进行赋值，发起一次 mem2glb 类型的 DMA 命令
      dut.io.dmaParm.payload.busAddr #= 0
      dut.io.dmaParm.payload.periAddr #= 0
      dut.io.dmaParm.payload.len #= 1024
      dut.io.dmaParm.payload.sel #= 0
      dut.io.dmaParm.payload.mode #= DmaTaskMode.mem2glb

      // 将 dmaParm.valid 拉高，并等待 DUT 接受命令（ready 拉高）
      dut.io.dmaParm.valid #= true
      dut.clockDomain.waitSampling()
      while (!dut.io.dmaParm.ready.toBoolean) {
        dut.clockDomain.waitSampling()
      }
      dut.io.dmaParm.valid #= false

      // 仿真运行一段足够长的时间以观察 DMA 传输过程（可在波形中查看 dmaBusy 等信号）
      //      dut.clockDomain.waitSampling()
      //      while (dut.io.dmaBusy.toBooleans(0)) {
      //        dut.clockDomain.waitSampling()
      //      }
      dut.clockDomain.waitSampling(3000)

      for (i <- 0 until 1024) {
        println(dut.glBuffer.ram.getBigInt(i))
      }
      simSuccess()
    }
  }
}
