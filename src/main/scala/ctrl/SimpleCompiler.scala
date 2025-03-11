//import spinal.core.sim._
//import cfg._
//import ctrl._
//import mac._
//import dma._
//
//import scala.io.Source
//import ujson._
//
//object JsonCompiler {
//  def main(args: Array[String]): Unit = {
//    if (args.isEmpty) {
//      println("请提供 JSON 配置文件路径，例如 instructions.json")
//      return
//    }
//    val fileName = args(0)
//    val jsonStr = Source.fromFile(fileName).getLines().mkString
//    val json = ujson.read(jsonStr)
//
//    // 遍历 JSON 数组中的每条指令
//    json.arr.foreach { instrJson =>
//      val instrType = instrJson("type").str.toLowerCase
//      val hexStr = instrType match {
//        case "conv" =>
//          // 创建默认的卷积类指令
//          val mInstr = MTypeInstr.default()
//          // 若有参数，则覆盖默认值（这里只是示例，假设 macPram 内部有对应字段）
//          if (instrJson.obj.contains("params")) {
//            val params = instrJson("params").obj
//            // 示例：设置 macPram 的 kAutomic 参数
//            params.get("kAutomic").foreach { v =>
//              // 此处假设 kAutomic 为 Int 类型且 macPram 内对应字段也支持赋值操作
//              mInstr.macPram.kAutomic := v.num.toInt
//            }
//            // 可按此方式增加其他参数赋值……
//          }
//          mInstr.asBits.toBigInt.toString(16)
//
//        case "parm" =>
//          val pInstr = PTypeInstr.default()
//          if (instrJson.obj.contains("params")) {
//            val params = instrJson("params").obj
//            params.get("mode").foreach { v =>
//              pInstr.mode := v.num.toInt
//            }
//            params.get("configData").foreach { arr =>
//              // 假设 configData 为长度为 3 的 Vec，依次设置每个配置项
//              val dataArr = arr.arr.map(_.num.toInt)
//              for(i <- 0 until 3) {
//                pInstr.configData(i) := if(i < dataArr.size) dataArr(i) else 0
//              }
//            }
//          }
//          pInstr.asBits.toBigInt.toString(16)
//
//        case "dma" =>
//          val dInstr = DTypeInstr.default()
//          if (instrJson.obj.contains("params")) {
//            val params = instrJson("params").obj
//            params.get("periAddr").foreach { v =>
//              dInstr.dmaPram.periAddr := v.num.toInt
//            }
//            params.get("axi4Id").foreach { v =>
//              dInstr.dmaPram.axi4Id := v.num.toInt
//            }
//            params.get("chNum").foreach { v =>
//              dInstr.dmaPram.chNum := v.num.toInt
//            }
//          }
//          dInstr.asBits.toBigInt.toString(16)
//
//        case "stop" =>
//          val cInstr = CTypeInstr.default()
//          cInstr.asBits.toBigInt.toString(16)
//
//        case other =>
//          s"错误：未知指令类型 $other"
//      }
//      println(s"生成指令 [$instrType] 的二进制（十六进制）表示： $hexStr")
//    }
//  }
//}
