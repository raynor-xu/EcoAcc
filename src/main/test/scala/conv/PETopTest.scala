//mux conv
//
//import spinal.core._
//import spinal.core.sim._
//import scala.collection.mutable
//
//object PETopTest {
//  def main(args: Array[String]): Unit = {
//    // 生成仿真模型，并自动生成波形文件 (*.vcd)
//    SimConfig.withWave.compile(new PETop(ConvCfg())).doSim { dut =>
//      // 时钟：周期10ns
//      dut.clockDomain.forkStimulus(period = 10)
//
//      // 初始化 convParm 接口
//      dut.io.convParm.valid #= false
//
//      // --------------------------------------------------
//      // 模拟“内存模型”
//      // --------------------------------------------------
//      // 我们分别为权重、输入特征以及输出特征建立一个简单的内存模型。
//      val memSize = 1024
//      // 权重内存：假设从地址0开始
//      val weightMem = Array.fill(memSize)(BigInt(0))
//      // 输入特征内存：假设从地址100开始
//      val featureMem = Array.fill(memSize)(BigInt(0))
//      // 输出捕获：写入 fPort1 的数据，我们用一个 mutable Map 来存储
//      val outputMem = mutable.Map[Int, BigInt]()
//
//      // 填充权重内存：对于 3×3 卷积核，地址 0~8，全部取1
//      for (i <- 0 until 9) {
//        weightMem(i) = 1
//      }
//      // 填充输入特征内存：5×5 矩阵，从地址100开始，按行依次填入1~25
//      for (r <- 0 until 5; c <- 0 until 5) {
//        featureMem(100 + r * 5 + c) = BigInt(r * 5 + c + 1)
//      }
//
//      // -------------------------------
//      // 模拟权重内存响应（wPort0，读端口）
//      // -------------------------------
//      fork {
//        while (true) {
//          dut.clockDomain.waitSampling() // 等待1个时钟周期
//          if (dut.io.wPort0.valid.toBoolean) {
//            val addr = dut.io.wPort0.addr.toBigInt.toInt
//            // 模拟 1 个周期的读延时
//            val data = weightMem(addr)
//            dut.clockDomain.waitSampling()
//            dut.io.wPort0.data #= data
//          } else {
//            dut.io.wPort0.data #= 0
//          }
//        }
//      }
//
//      // -------------------------------
//      // 模拟输入特征内存响应（fPort0，读端口）
//      // -------------------------------
//      fork {
//        while (true) {
//          dut.clockDomain.waitSampling()
//          if (dut.io.fPort0.valid.toBoolean) {
//            val addr = dut.io.fPort0.addr.toBigInt.toInt
//            val data = featureMem(addr)
//            dut.clockDomain.waitSampling()
//            dut.io.fPort0.data #= data
//          } else {
//            dut.io.fPort0.data #= 0
//          }
//        }
//      }
//
//      // -------------------------------
//      // 捕获 fPort1 写操作（输出端口）
//      // -------------------------------
//      fork {
//        while (true) {
//          dut.clockDomain.waitSampling()
//          // 假定写使能信号为 we
//          if (dut.io.fPort1.we.toBoolean) {
//            val addr = dut.io.fPort1.addr.toBigInt.toInt
//            val data = dut.io.fPort1.data.toBigInt
//            outputMem(addr) = data
//            println(s"@${simTime()} fPort1 write: addr = $addr, data = $data")
//          }
//        }
//      }
//
//      // 等待若干周期，确保内存模型已稳定
//      sleep(20)
//
//      // --------------------------------------------------
//      // 驱动 convParm 接口，启动一次完整的卷积运算
//      // --------------------------------------------------
//      fork {
//        // 为 convParm 赋值
//        dut.io.convParm.payload.mode #= B"01" // 假设 "01" 表示卷积运算
//        dut.io.convParm.payload.finBaseAddr #= 100 // 输入特征基地址
//        dut.io.convParm.payload.foutBaseAddr #= 200 // 输出特征基地址
//        dut.io.convParm.payload.wBaseAddr #= 0 // 权重基地址
//        dut.io.convParm.payload.fHeight #= 5 // 输入高度
//        dut.io.convParm.payload.fWidth #= 5 // 输入宽度
//        dut.io.convParm.payload.kSize #= 3 // 卷积核尺寸3×3
//        dut.io.convParm.payload.chIn #= 1 // 输入通道数
//        dut.io.convParm.payload.chOut #= 1 // 输出通道数
//        dut.io.convParm.payload.pad #= 0 // 无填充
//        dut.io.convParm.payload.stride #= 1 // 步长1
//        dut.io.convParm.payload.spLen #= 5 // 其它参数（根据设计用途）
//        // 开始 handshake
//        dut.io.convParm.valid #= true
//        // 等待 DUT 拉高 ready
//        while (!dut.io.convParm.ready.toBoolean) {
//          dut.clockDomain.waitSampling()
//        }
//        dut.io.convParm.valid #= false
//        println(s"@${simTime()} convParm transaction sent")
//      }
//
//      // 等待足够周期，确保卷积运算完成（此处视具体设计而定）
//      sleep(300)
//
//      // --------------------------------------------------
//      // 软件计算期望的卷积结果
//      // --------------------------------------------------
//      // 对于无填充、步长1的 5×5 输入和 3×3 卷积核，输出尺寸为 3×3
//      val expectedOutputs = mutable.Map[Int, BigInt]()
//      val fHeight = 5
//      val fWidth = 5
//      val kSize = 3
//      val outHeight = fHeight - kSize + 1
//      val outWidth = fWidth - kSize + 1
//
//      for (i <- 0 until outHeight) {
//        for (j <- 0 until outWidth) {
//          var sum = BigInt(0)
//          for (u <- 0 until kSize) {
//            for (v <- 0 until kSize) {
//              // 计算输入特征内存中对应像素的地址
//              val featAddr = 100 + (i + u) * fWidth + (j + v)
//              // 卷积：输入值乘以对应权重（本例中均为1）
//              sum += featureMem(featAddr) * weightMem(0 + u * kSize + v)
//            }
//          }
//          // 输出写入 fPort1 时，其地址为 foutBaseAddr + (i * outWidth + j)
//          val outAddr = 200 + i * outWidth + j
//          expectedOutputs(outAddr) = sum
//        }
//      }
//
//      println("Expected Outputs:")
//      expectedOutputs.toSeq.sortBy(_._1).foreach { case (addr, data) =>
//        println(s"  Addr $addr -> $data")
//      }
//
//      // --------------------------------------------------
//      // 比对捕获到的 fPort1 写入数据与预期结果
//      // --------------------------------------------------
//      var error = false
//      for ((addr, expected) <- expectedOutputs) {
//        val captured = outputMem.getOrElse(addr, BigInt(-1))
//        if (captured != expected) {
//          println(s"Mismatch at addr $addr: expected $expected, got $captured")
//          error = true
//        } else {
//          println(s"Match at addr $addr: $captured")
//        }
//      }
//
//      if (error) {
//        simFailure("Output mismatch!")
//      } else {
//        println("Convolution result is correct!")
//        simSuccess()
//      }
//    }
//  }
//}
