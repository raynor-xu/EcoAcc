//package mac
//
//import spinal.core._
//import spinal.core.sim._
//import scala.util.Random
//
//import cfg._ // 假设这里能访问到 MacCfg, MacMode, ActMode, ScaleParm 等定义
//import mac.MacMode._
//import mac.ActMode._
//import common._
//
//// MacCell 的参考模型
//object MacCellRefModel {
//  def macCellModel(
//                    macMode: MacMode.E,
//                    actMode: ActMode.E,
//                    scaleParm: ScaleParm,
//                    featureVec: Seq[Int],
//                    weightVec: Seq[Int],
//                    oldAcc: Int
//                  ): (Int, Int) = {
//    // 1) 乘法 / 池化
//    val mulResult = macMode match {
//      case CONV2D | FC =>
//        featureVec.zip(weightVec).map { case (f, w) => f * w }.sum
//      case DWCONV | AVERAGPOOL =>
//        featureVec.head * weightVec.head
//      case MAXPOOL =>
//        featureVec.head
//    }
//    // 2) 累加 or 池化
//    val pSum = macMode match {
//      case CONV2D | FC | DWCONV | AVERAGPOOL =>
//        oldAcc + mulResult
//      case MAXPOOL =>
//        math.max(oldAcc, mulResult)
//    }
//    // 3) 量化
//    val multFull = pSum * scaleParm.multiplier.toInt
//    val roundBias = if (scaleParm.shift.toInt > 0) (1 << (scaleParm.shift.toInt - 1)) else 0
//    val added = multFull + roundBias
//    val shifted = if (scaleParm.shift.toInt > 0) (added >> scaleParm.shift.toInt) else added
//    val withZero = shifted + scaleParm.zeroPoint.toInt
//
//    val saturateMin = -128
//    val saturateMax = 127
//    val satVal =
//      if (withZero < saturateMin) saturateMin
//      else if (withZero > saturateMax) saturateMax
//      else withZero
//
//    // 4) 激活函数
//    val actOut = actMode match {
//      case NONE => satVal
//      case RELU => if (satVal < 0) 0 else satVal
//      case RELU6 => satVal // 仅演示
//      case SIGMOID => satVal // 仅演示
//    }
//
//    //    println(s"\n[SW-Model] featureVec=$featureVec, weightVec=$weightVec," +
//    //      s" mulResult=$mulResult, pSum=$pSum, satVal=$satVal, actOut=$actOut")
//
//    // 返回 (pSum, actOut) 方便在下次累加时用 pSum 做 oldAcc
//    (pSum, actOut)
//  }
//}
//
//// 主测试对象
//object MacCellSim {
//  def main(args: Array[String]): Unit = {
//
//    // 1) 编译 DUT
//    val compiled = UserSimConfig().compile(MacCell(MacCfg()))
//
//    // 2) 运行仿真
//    compiled.doSim("MacCellTest") { dut =>
//      // 建立时钟
//      dut.clockDomain.forkStimulus(period = 10)
//
//      // 先复位 5 个周期
//      dut.io.clear #= false
//      dut.clockDomain.waitSampling(5)
//
//      // 做一次 clear
//      dut.io.clear #= true
//      dut.clockDomain.waitSampling()
//      dut.io.clear #= false
//      dut.clockDomain.waitSampling()
//
//      // 先给所有输入端口赋默认值
//      for (i <- 0 until dut.cfg.cAutomic) {
//        dut.io.weight(i) #= 0
//      }
//      dut.io.feature.valid #= false
//      dut.io.feature.payload.foreach(_ #= 0)
//
//      // 要测试的 spLen 列表
//      val spLenList = Seq(1, 2, 4)
//
//      // 各种模式、激活的组合
//      val allModes = Seq(CONV2D, DWCONV, FC, MAXPOOL, AVERAGPOOL)
//      val allActs = Seq(NONE, RELU)
//
//      // 遍历 spLen
//      for (sp <- spLenList) {
//        println(s"\n======== Test spLen = $sp ========")
//
//        // 再遍历所有 (macMode, actMode) 组合
//        for (m <- allModes; a <- allActs) {
//          println(s"\n[TEST] macMode=$m, actMode=$a")
//
//          // 设置 MacCellParm
//          // 假设我们只测 loopLen=4，spLen=sp
//          dut.io.parm.macMode #= m
//          dut.io.parm.actMode #= a
//          dut.io.parm.loopLen #= 4
//          dut.io.parm.spLen #= sp
//
//          // 量化参数随便给个值(这里固定 multiplier=1, shift=7, zeroPoint=0)
//          dut.io.parm.scaleParm.multiplier #= 1
//          dut.io.parm.scaleParm.shift #= 7
//          dut.io.parm.scaleParm.zeroPoint #= 0
//
//
//          // 软件端累加器、激活输出
//          var oldAcc = 0 // 记录 pSum
//          var accumSW = 0 // 记录 actOut
//
//          // loopLen=4 需要输入4次
//          for (roundId <- 0 until 4) {
//            // 准备随机的 weight/feature
//            val weightData = Array.fill(dut.cfg.cAutomic)(Random.nextInt(128) - 64)
//            val featureData = Array.fill(dut.cfg.cAutomic)(Random.nextInt(128) - 64)
//
//            // 硬件赋值
//            for (i <- 0 until dut.cfg.cAutomic) {
//              dut.io.weight(i) #= weightData(i)
//            }
//            dut.io.feature.valid #= true
//            dut.io.feature.payload.zipWithIndex.foreach { case (sig, idx) =>
//              sig #= featureData(idx)
//            }
//
//            // 等 1 拍
//            dut.clockDomain.waitSampling()
//
//            // 拉低 feature.valid
//            dut.io.feature.valid #= false
//
//            // 软件模型更新
//            val (newAcc, actOut) = MacCellRefModel.macCellModel(
//              macMode = m,
//              actMode = a,
//              scaleParm = dut.io.parm.scaleParm, // multiplier=1, shift=7, zeroPoint=0
//              featureVec = weightData.indices.map(featureData),
//              weightVec = weightData.indices.map(weightData),
//              oldAcc = oldAcc
//            )
//            oldAcc = newAcc
//            accumSW = actOut
//
//            // 当 roundId=3 (最后一次累加) 后若干拍再检查硬件输出
//            if (roundId == 3) {
//              // 多等几拍
//              dut.clockDomain.waitSampling(5)
//              if (dut.io.result.valid.toBoolean) {
//                val hwVal = dut.io.result.payload.toInt
//                println(s"  => spLen=$sp, HW=$hwVal, SW=$accumSW")
//                assert(
//                  hwVal == accumSW,
//                  s"[ERROR] time=${simTime()} ps, Mode=$m, Act=$a, spLen=$sp: mismatch hardware=$hwVal, software=$accumSW"
//                )
//              } else {
//                println(s"[ERROR] Mode=$m, Act=$a, spLen=$sp: 最后一次累加后 io.result.valid 仍为false！")
//              }
//            } else {
//              // 不是最后一次，就略等几拍后继续
//              dut.clockDomain.waitSampling(3)
//            }
//          } // end for roundId
//
//
//
//          // 测试结束，等几拍，进入下一个 (m,a)
//          dut.clockDomain.waitSampling(5)
//        } // end for (m,a)
//
//
//      } // end for sp
//
//      println("\n====== All Tests Done ======")
//      simSuccess()
//    }
//  }
//}
