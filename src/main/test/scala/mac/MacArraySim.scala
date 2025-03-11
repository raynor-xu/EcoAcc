package mac

import spinal.core._
import spinal.core.sim._
import scala.util.Random
import cfg._
import common._
import mac.MacMode._
import mac.ActMode._

object MacArraySim {

  def main(args: Array[String]): Unit = {
    // 1) 编译 MacArray
    Random.setSeed(12345L)
    val compiled = UserSimConfig().compile(MacArray(MacCfg()))

    // 2) 启动仿真
    compiled.doSim("MacArrayTest") { dut =>
      // 启动时钟
      dut.clockDomain.forkStimulus(period = 10)

      //---------------------------------------
      // 在仿真环境中，用Scala数组做“虚拟内存”
      //---------------------------------------
      val depth = dut.cfg.ramDepth

      val kAutomic = dut.cfg.kAutomic
      val cAutomic = dut.cfg.cAutomic
      val macMode = FC // SpinalEnum
      val actMode = NONE // SpinalEnum
      val fHeight = 4
      val fWidth = 4
      val chIn = 4
      val chOut = 4
      val kSize = 4
      val pad = 0
      val stride = 1
      val fBaseAddr = 0 // 读特征图的起始地址
      val wBaseAddr = 0 // 读权重的起始地址
      val rBaseAddr = 0 // 写结果的起始地址
      val multiplier = 1
      val shift = 10
      val zeroPoint = 0
      val chInBlock = chIn / cAutomic
      val chOutBlock = chOut / cAutomic

      // A) wMemory (存储权重)
      val wMemory = Array.fill(depth, cAutomic)(0.toLong)
      // B) fMemory (存储输入特征图)
      val fMemory = Array.fill(depth, cAutomic)(0.toLong)
      // C) rMemory (存储输出结果)
      val rMemory = Array.fill(depth, cAutomic)(0.toLong)

      val rMemoryExp = Array.fill(depth, cAutomic)(0.toLong)

      // 可以初始化一些随机数据，用于测试
      for (i <- 0 until fWidth * fHeight * chInBlock) {
        for (j <- 0 until cAutomic) {
          fMemory(i)(j) = Random.nextInt(256)
        }
      }


      // 可以初始化一些随机数据，用于测试
      for (i <- 0 until kSize * kSize * chInBlock * chOut) {
        for (j <- 0 until cAutomic) {
          wMemory(i)(j) = Random.nextInt(256)
          //wMemory(i)(j) = 1
        }
      }

      // 计算输出尺寸
      val outputHeight = (fHeight - kSize + 2 * pad) / stride + 1 // 例如 2
      val outputWidth = (fWidth - kSize + 2 * pad) / stride + 1 // 例如 2

      macMode match {

        case FC => {
          // 对于每个输出通道、每个输出位置及每个原子元素，计算卷积和：
          for (n <- 0 until chOut / kAutomic) {
            for (ka <- 0 until kAutomic) {
              val rAddr = rBaseAddr + n
              var sum: Long = 0L
              // 对所有输入通道及卷积核窗口内的点累加乘积
              for (c <- 0 until chIn / cAutomic) {
                for (kh <- 0 until kSize) {
                  for (kw <- 0 until kSize) {
                    val inH = kh
                    val inW = kw
                    for (ca <- 0 until cAutomic) {
                      // 根据 NCHWn，输入地址 = fBaseAddr + (i * fHeight * fWidth) + (inY * fWidth) + inX
                      val fAddr = fBaseAddr + c * (fHeight * fWidth) + inH * fWidth + inW
                      // 权重地址：按 NCHWn排列，假设权重内存排列为 [o, i, kSize, kSize, n]
                      val wAddr = wBaseAddr + (n * kAutomic + ka) * (chInBlock * kSize * kSize) + c * (kSize * kSize) + (kh * kSize + kw)
                      val fVal = fMemory(fAddr)(ca).toByte
                      val wVal = wMemory(wAddr)(ca).toByte
                      sum += fVal * wVal
                      println(s"inH:$inH,inW:$inW,chinB:$c,choutB:$n,ka:$ka,kh:$kh,kw:$kw,sum:$sum,fVal:$fVal,wVal:$wVal")
                    }
                    //println(s"inH:$inH,inW:$inW,chinB:$c,choutB:$n,ka:$ka,kh:$kh,kw:$kw,sum:$sum")
                    println(s"inH:$inH,inW:$inW,$ka,sum:$sum")
                  }
                }
              }
              // 将累加结果写入预期输出内存中，Vec 内部索引对应输出位置的 n 维
              println(s"rAddr:$rAddr,ka:$ka,sum:$sum")
              rMemoryExp(rAddr)(ka) = (sum + 512) >> shift
            }
          }
        }


        case CONV2D => {
          // 对于每个输出通道、每个输出位置及每个原子元素，计算卷积和：
          for (n <- 0 until chOut / kAutomic) {
            for (h <- 0 until outputHeight) {
              for (w <- 0 until outputWidth) {
                // 输出地址按 NCHWn 排列：N=1时，地址 = rBaseAddr + (o * outputHeight * outputWidth + y * outputWidth + x)
                val rAddr = rBaseAddr + n * (outputHeight * outputWidth) + h * outputWidth + w
                for (ka <- 0 until kAutomic) {
                  var sum: Long = 0L
                  // 对所有输入通道及卷积核窗口内的点累加乘积
                  for (c <- 0 until chIn / cAutomic) {
                    for (kh <- 0 until kSize) {
                      for (kw <- 0 until kSize) {
                        val inH = h + kh
                        val inW = w + kw
                        for (ca <- 0 until cAutomic) {
                          // 根据 NCHWn，输入地址 = fBaseAddr + (i * fHeight * fWidth) + (inY * fWidth) + inX
                          val fAddr = fBaseAddr + c * (fHeight * fWidth) + inH * fWidth + inW
                          // 权重地址：按 NCHWn排列，假设权重内存排列为 [o, i, kSize, kSize, n]
                          val wAddr = wBaseAddr + (n * kAutomic + ka) * (chInBlock * kSize * kSize) + c * (kSize * kSize) + (kh * kSize + kw)
                          val fVal = fMemory(fAddr)(ca).toByte
                          val wVal = wMemory(wAddr)(ca).toByte
                          sum += fVal * wVal
                          println(s"inH:$inH,inW:$inW,chinB:$c,choutB:$n,ka:$ka,kh:$kh,kw:$kw,sum:$sum,fVal:$fVal,wVal:$wVal")
                        }
                        //println(s"inH:$inH,inW:$inW,chinB:$c,choutB:$n,ka:$ka,kh:$kh,kw:$kw,sum:$sum")
                      }
                    }
                  }
                  // 将累加结果写入预期输出内存中，Vec 内部索引对应输出位置的 n 维
                  rMemoryExp(rAddr)(ka) = (sum + 512) >> shift

                }
              }
            }
          }
        }

        case DWCONV => {
          // 对于每个输出通道、每个输出位置及每个原子元素，计算卷积和：
          for (n <- 0 until chOut / kAutomic) {
            for (h <- 0 until outputHeight) {
              for (w <- 0 until outputWidth) {
                // 输出地址按 NCHWn 排列：N=1时，地址 = rBaseAddr + (o * outputHeight * outputWidth + y * outputWidth + x)
                val rAddr = rBaseAddr + n * (outputHeight * outputWidth) + h * outputWidth + w
                for (ka <- 0 until kAutomic) {
                  var sum: Long = 0L
                  for (kh <- 0 until kSize) {
                    for (kw <- 0 until kSize) {
                      val inH = h * stride + kh
                      val inW = w * stride + kw
                      val fAddr = fBaseAddr + n * (fHeight * fWidth) + inH * fWidth + inW
                      val wAddr = wBaseAddr + n * (kSize * kSize) + (kh * kSize + kw)
                      val fVal = fMemory(fAddr)(ka).toByte
                      val wVal = wMemory(wAddr)(ka).toByte
                      sum += fVal * wVal
                    }
                  }
                  // 将累加结果写入预期输出内存中，Vec 内部索引对应输出位置的 n 维
                  sum = sum * multiplier
                  rMemoryExp(rAddr)(ka) = (sum + 512) >> shift
                }
              }
            }
          }
        }


        case MAXPOOL => {
          // 对于每个输出通道、每个输出位置及每个原子元素，计算卷积和：
          for (n <- 0 until chOut / kAutomic) {
            for (h <- 0 until outputHeight) {
              for (w <- 0 until outputWidth) {
                // 输出地址按 NCHWn 排列：N=1时，地址 = rBaseAddr + (o * outputHeight * outputWidth + y * outputWidth + x)
                val rAddr = rBaseAddr + n * (outputHeight * outputWidth) + h * outputWidth + w
                for (ka <- 0 until kAutomic) {
                  var max: Long = 0L
                  for (kh <- 0 until kSize) {
                    for (kw <- 0 until kSize) {
                      val inH = h * stride + kh
                      val inW = w * stride + kw
                      val fAddr = fBaseAddr + n * (fHeight * fWidth) + inH * fWidth + inW
                      val fVal = fMemory(fAddr)(ka).toByte
                      if (kh == 0 && kw == 0) {
                        max = fVal
                      } else if (fVal > max) {
                        max = fVal
                      }
                      println(s"w:$w,h:$h,inH:$inH,inW:$inW,n:$n,fAddr:$fAddr,ka:$ka,kh:$kh,kw:$kw,max:$max,fVal:$fVal")
                    }
                  }
                  // 将累加结果写入预期输出内存中，Vec 内部索引对应输出位置的 n 维
                  rMemoryExp(rAddr)(ka) = max
                  println(s"rAddr:$rAddr,ka:$ka,max:$max")
                }
              }
            }
          }
        }

        case AVERAGPOOL => {
          // 对于每个输出通道、每个输出位置及每个原子元素，计算卷积和：
          for (n <- 0 until chOut / kAutomic) {
            for (h <- 0 until outputHeight) {
              for (w <- 0 until outputWidth) {
                // 输出地址按 NCHWn 排列：N=1时，地址 = rBaseAddr + (o * outputHeight * outputWidth + y * outputWidth + x)
                val rAddr = rBaseAddr + n * (outputHeight * outputWidth) + h * outputWidth + w
                for (ka <- 0 until kAutomic) {
                  var sum: Long = 0L
                  for (kh <- 0 until kSize) {
                    for (kw <- 0 until kSize) {
                      val inH = h * stride + kh
                      val inW = w * stride + kw
                      val fAddr = fBaseAddr + n * (fHeight * fWidth) + inH * fWidth + inW
                      val fVal = fMemory(fAddr)(ka).toByte
                      sum = sum + fVal
                    }
                  }
                  // 将累加结果写入预期输出内存中，Vec 内部索引对应输出位置的 n 维
                  sum = sum * multiplier
                  rMemoryExp(rAddr)(ka) = (sum + 2) >> shift
                }
              }
            }
          }
        }


      }
      //---------------------------------------
      // 建立三个线程来模拟三口读写
      //---------------------------------------

      // wPort 读端口 -> 先输出上一拍的数据
      fork {
        var wRdataReg = BigInt(0)
        while (true) {
          dut.clockDomain.waitSampling()

          if (dut.io.wPort.en.toBoolean) {
            val addr = dut.io.wPort.addr.toInt
            val data = wMemory(addr)
            dut.io.wPort.rData #=
              ((data(3) << 24) | (data(2) << 16) |
                (data(1) << 8) | data(0))
            println(s"[DEBUG] wMemory($addr)", data.map(_.toByte) mkString (","))
          } else {
            dut.io.wPort.rData #= 0
          }
        }
      }

      // fPort 读端口
      fork {
        var fRdataReg = BigInt(0)
        while (true) {
          dut.clockDomain.waitSampling()

          if (dut.io.fPort.en.toBoolean) {
            val addr = dut.io.fPort.addr.toInt
            val data = fMemory(addr)
            dut.io.fPort.rData #=
              ((data(3) << 24) | (data(2) << 16) |
                (data(1) << 8) | data(0))
            println(s"[DEBUG] fMemory($addr)", data.map(_.toByte).mkString(","))
          } else {
            dut.io.fPort.rData #= 0
          }
        }
      }

      // rPort 写端口
      fork {
        while (true) {
          dut.clockDomain.waitSampling()

          if (dut.io.rPort.en.toBoolean) {
            val addr = dut.io.rPort.addr.toInt
            val data = dut.io.rPort.wData.toBigInt
            rMemory(addr)(0) = ((data >> 0) & 0xff).toByte
            rMemory(addr)(1) = ((data >> 8) & 0xff).toByte
            rMemory(addr)(2) = ((data >> 16) & 0xff).toByte
            rMemory(addr)(3) = ((data >> 24) & 0xff).toByte
            println(s"[DEBUG] rMemory($addr)", rMemory(addr).map(_.toByte).mkString(","))
          }
        }
      }

      //---------------------------------------
      // 初始化 DUT 端口
      //---------------------------------------
      // Stream 信号
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
      dut.clockDomain.waitSampling(5)
      //---------------------------------------
      // 准备一次 scaleParm 事务
      //---------------------------------------
      dut.io.scaleParm.valid #= true
      dut.io.scaleParm.payload.multiplier #= multiplier
      dut.io.scaleParm.payload.shift #= shift
      dut.io.scaleParm.payload.zeroPoint #= zeroPoint
      dut.clockDomain.waitSampling()
      while (!dut.io.scaleParm.ready.toBoolean) {
        dut.clockDomain.waitSampling()
      }
      dut.io.scaleParm.valid #= false
      //---------------------------------------
      // 准备一次 macParm 事务
      //---------------------------------------
      // 不要使用 .default 或对 MacParm.xxx := ... 进行硬件赋值
      // 这里直接用仿真 #= 对各字段赋值

      dut.io.macParm.valid #= true
      dut.io.macParm.payload.macMode #= macMode // SpinalEnum
      dut.io.macParm.payload.actMode #= actMode // SpinalEnum
      dut.io.macParm.payload.fHeight #= fHeight
      dut.io.macParm.payload.fWidth #= fWidth
      dut.io.macParm.payload.chIn #= chIn
      dut.io.macParm.payload.chOut #= chOut
      dut.io.macParm.payload.kSize #= kSize
      dut.io.macParm.payload.pad #= pad
      dut.io.macParm.payload.stride #= stride
      dut.io.macParm.payload.fBaseAddr #= fBaseAddr // 读特征图的起始地址
      dut.io.macParm.payload.wBaseAddr #= wBaseAddr // 读权重的起始地址
      dut.io.macParm.payload.rBaseAddr #= rBaseAddr // 写结果的起始地址
      dut.clockDomain.waitSampling()
      // 等待握手
      while (!dut.io.macParm.ready.toBoolean) {
        dut.clockDomain.waitSampling()
      }
      // 交握完成
      dut.io.macParm.valid #= false
      dut.clockDomain.waitSampling(10000)
      //      while (!dut.io.macParm.ready.toBoolean) {
      //        dut.clockDomain.waitSampling()
      //      }
      //---------------------------------------
      // 让系统自动跑一段时间
      //---------------------------------------
      dut.clockDomain.waitSampling(10)


      var errCnt = 0
      println("\nSimulation done.")
      // 检查结果
      println(s"macMode: ${macMode.toString()}")
      println(s"actMode: ${actMode.toString()}")
      println(s"fHeight: $fHeight")
      println(s"fWidth: $fWidth")
      println(s"kSize: $kSize")
      println(s"chIn: $chIn")
      println(s"chOut: $chOut")
      println(s"pad: $pad")
      println(s"stride: $stride")
      println(s"[INFO] Dump rMemory from address :")
      for (addr <- rBaseAddr until rBaseAddr + outputHeight * outputWidth * chOut / kAutomic) {
        println(s"  rMemory($addr) = ${rMemory(addr).map(_.toByte).mkString(",")}")
        println(s"  rMemoryExp($addr) = ${rMemoryExp(addr).map(_.toByte).mkString(",")}")
        for (i <- 0 until cAutomic) {
          if (rMemory(addr)(i) != rMemoryExp(addr)(i)) {
            errCnt = errCnt + 1
          }
        }
      }
      println(s"errCnt: $errCnt")
      dut.clockDomain.waitSampling(10)
      simSuccess()
    }
  }
}
