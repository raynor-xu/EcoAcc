package mac

import spinal.core._
import spinal.core.sim._
import spinal.lib._
import scala.util.Random

import cfg._
import common._
import mem._
import mac.MacMode._
import mac.ActMode._

object MacCtrlSim {

  def main(args: Array[String]): Unit = {

    val compiled = UserSimConfig().compile(MacCtrl(MacCfg()))


    // 2) 运行仿真
    compiled.doSim { dut =>
      // 启动时钟
      dut.clockDomain.forkStimulus(period = 10)

      val fBaseAddr = 0
      val rBaseAddr = 0
      val wBaseAddr = 0
      val fHeight = 4
      val fWidth = 4
      val kSize = 3
      val chIn = 8
      val chOut = 8
      val pad = 0
      val stride = 1

      // --- 在仿真里，用三个数组来模拟 3 个端口的内存 ---

      // 由于 cfg.ramDepth = 65536，实际可以很大；这里只是演示，使用一个小数组即可
      val wMemory = Array.fill(dut.cfg.ramDepth)(BigInt(0)) // 权重存储
      val fMemory = Array.fill(dut.cfg.ramDepth)(BigInt(0)) // 特征图存储
      val rMemory = Array.fill(dut.cfg.ramDepth)(BigInt(0)) // 结果存储

      // 你也可以在这里给 wMemory、fMemory 填充一些随机值或固定值做测试
      // 例如：
      for (i <- 0 until 32) {
        wMemory(i) = BigInt(Random.nextInt(256))
        fMemory(i) = BigInt(Random.nextInt(256))
      }

      // --- 建立读写“总线模拟”线程 ---

      // A) wPort (读端口，用来读权重)
      fork {
        var wPortRdataReg = BigInt(0) // 用于存储上一拍读到的数据(同步读延迟1周期)
        while (true) {
          // 等待下一个时钟上升沿
          dut.clockDomain.waitSampling()

          // 先把上一拍读出的数据驱动到 wPort.rData
          dut.io.wPort.rData #= wPortRdataReg

          // 再去决定这一拍要不要读新的
          if (dut.io.wPort.en.toBoolean) {
            // 同步读 => 在下一拍再输出
            val addr = dut.io.wPort.addr.toInt
            wPortRdataReg = wMemory(addr)
          } else {
            // 如果 en 不拉高，通常可以把下拍读出的值置为 0 或保持不变
            wPortRdataReg = 0
          }
        }
      }

      // B) fPort (读端口，用来读特征图)
      fork {
        var fPortRdataReg = BigInt(0)
        while (true) {
          dut.clockDomain.waitSampling()
          dut.io.fPort.rData #= fPortRdataReg
          if (dut.io.fPort.en.toBoolean) {
            val addr = dut.io.fPort.addr.toInt
            fPortRdataReg = fMemory(addr)
          } else {
            fPortRdataReg = 0
          }
        }
      }

      // C) rPort (写端口，用来写结果)
      fork {
        while (true) {
          dut.clockDomain.waitSampling()
          if (dut.io.rPort.en.toBoolean) {
            val addr = dut.io.rPort.addr.toInt
            val data = dut.io.rPort.wData.toBigInt
            rMemory(addr) = data
            // 你也可以 println(s"Write to rMemory($addr) = $data")
          }
        }
      }

      // --- 初始化端口 ---
      dut.io.macParm.valid #= false
      // 直接通过 #= 来设置枚举、UInt、SInt 等硬件字段
      dut.io.macParm.payload.macMode #= MacMode.CONV2D
      dut.io.macParm.payload.actMode #= ActMode.RELU
      dut.io.macParm.payload.fHeight #= 0
      dut.io.macParm.payload.fWidth #= 0
      dut.io.macParm.payload.kSize #= 0
      dut.io.macParm.payload.chIn #= 0
      dut.io.macParm.payload.chOut #= 0
      dut.io.macParm.payload.pad #= 0
      dut.io.macParm.payload.stride #= 0

      // 其它 UInt 字段
      dut.io.macParm.payload.fBaseAddr #= 0
      dut.io.macParm.payload.wBaseAddr #= 0
      dut.io.macParm.payload.rBaseAddr #= 0

      dut.io.scaleParm.valid #= false
      dut.io.scaleParm.payload.multiplier #= 0
      dut.io.scaleParm.payload.shift #= 0
      dut.io.scaleParm.payload.zeroPoint #= 0


      dut.io.result.foreach(_.payload #= 0)
      dut.io.result.foreach(_.valid #= false)

      dut.clockDomain.waitSampling(5)

      // --- 发送一个 macParm (Stream 形式) ---
      // 假设做一次 CONV2D: fHeight=4, fWidth=4, chIn=4, chOut=4, kSize=3, stride=1, pad=0
      // 拉高 valid，等待 ready
      dut.io.macParm.valid #= true
      // 直接通过 #= 来设置枚举、UInt、SInt 等硬件字段
      dut.io.macParm.payload.macMode #= MacMode.CONV2D
      dut.io.macParm.payload.actMode #= ActMode.RELU
      dut.io.macParm.payload.fHeight #= fHeight
      dut.io.macParm.payload.fWidth #= fWidth
      dut.io.macParm.payload.kSize #= kSize
      dut.io.macParm.payload.chIn #= chIn
      dut.io.macParm.payload.chOut #= chOut
      dut.io.macParm.payload.pad #= pad
      dut.io.macParm.payload.stride #= stride

      // 其它 UInt 字段
      dut.io.macParm.payload.fBaseAddr #= 0
      dut.io.macParm.payload.wBaseAddr #= 0
      dut.io.macParm.payload.rBaseAddr #= 0
      dut.clockDomain.waitSampling()
      while (!dut.io.macParm.ready.toBoolean) {
        dut.clockDomain.waitSampling()
      }
      // 交握完成
      dut.io.macParm.valid #= false

      // --- 发送一次 scaleParm (Stream 形式) ---
      // multiplier=1, shift=0, zeroPoint=0
      dut.io.scaleParm.payload.multiplier #= 1
      dut.io.scaleParm.payload.shift #= 7
      dut.io.scaleParm.payload.zeroPoint #= 0
      dut.io.scaleParm.valid #= true

      while (!dut.io.scaleParm.ready.toBoolean) {
        dut.clockDomain.waitSampling()
      }
      dut.io.scaleParm.valid #= false

      // --- 等待硬件自己跑 ---
      // MacCtrl 内部会根据 macParm 取 wMemory、fMemory，然后写入 rMemory
      // 这里我们只演示让它跑一段时间
      dut.clockDomain.waitSampling(200)

      // --- 检查 rMemory 中的数据 ---
      println("\n[INFO] rMemory dump around address=100 :")
      for (addr <- 100 until 110) {
        println(s"  rMemory($addr) = ${rMemory(addr)}")
      }

      // 测试结束
      println("\nAll done.")
      dut.clockDomain.waitSampling(200)
      simSuccess()
    }
  }
}
