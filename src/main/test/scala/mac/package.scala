//package object mac {
//
//  import scala.util.Random
//
//
//  object MyMatrixData {
//    // 这几个参数表示：4个通道，输入矩阵4×4
//    val channel = 4
//    val height = 4
//    val width = 4
//
//    // 4 个 3×3 卷积核
//    val kernelCount = 4
//    val kernelSize = 3
//
//    // 1) 生成 4×4×4 输入矩阵 (int8)，在 Scala 里先用 Seq[Int] 表示
//    val inputData: Seq[Int] = for {
//      ch <- 0 until channel
//      r <- 0 until height
//      c <- 0 until width
//    } yield {
//      // 这里随机 int8: [-128,127]
//      Random.nextInt(256) - 128
//    }
//
//    // 2) 生成 4 个 3×3 卷积核 (int8)
//    val kernelData: Seq[Int] = for {
//      k <- 0 until kernelCount
//      rr <- 0 until kernelSize
//      cc <- 0 until kernelSize
//    } yield {
//      Random.nextInt(256) - 128
//    }
//
//    // 3) 合并成一个一维数组(Seq)，并把[-128,127] 转为 [0..255] 区间
//    //    方便之后用 Mem.initBigInt(...) 初始化。
//    val allData: Seq[Int] = (inputData ++ kernelData).map { v =>
//      (v + 256) & 0xFF // 统一变成无符号
//    }
//  }
//
//
//}
