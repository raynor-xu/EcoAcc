package mac

import spinal.core._
import spinal.lib._
import spinal.lib.fsm._
import cfg._
import mac.MacMode._

case class MacCell(cfg: MacCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val parm = in(MacCellParm(cfg))
    val weight = in Vec(SInt(inputWidth bits), cAutomic)
    val feature = slave Flow Vec(SInt(inputWidth bits), cAutomic)
    val result = master Flow SInt(inputWidth bits)

  }

  noIoPrefix()

  val lfBuffer = Mem(SInt(accWidth bits), lfbDepth)


  val mulArea = new Area {

    import io.parm._
    import MacMode._


    val mulEn = Bool()

    val mulVaild = Bool()

    val mulReg = Vec(Reg(SInt(2 * inputWidth bits)) init (0), cAutomic)

    //    switch(macMode) {
    //      is(CONV2D, DWCONV, FC, AVERAGPOOL, MAXPOOL) {
    //        mulEn := io.feature.fire
    //      }
    //      default {
    //        mulEn := False
    //      }
    //    }
    mulEn := io.feature.fire
    mulVaild := RegNext(mulEn) init False

    //
    //    io.feature.ready := True

    when(io.clear) {
      mulReg := Vec(S(0, 2 * inputWidth bits), cAutomic)
    } otherwise {
      when(mulEn) {
        switch(macMode) {
          is(CONV2D, FC) {
            mulReg.zipWithIndex.foreach { case (reg, idex) => reg := io.weight(idex) * io.feature.payload(idex) }
          }
          is(DWCONV, AVERAGPOOL) {
            mulReg(0) := io.weight(0) * io.feature.payload(0)
          }
          is(MAXPOOL) {
            mulReg(0) := io.feature.payload(0).resized
          }
          default {

          }
        }
      }
    }
  }


  val pSumArea = new Area {

    import io.parm._
    import MacMode._

    val pSumEn = Bool()

    val pSumValid = Bool()

    val adderTree = AdderTree(2 * inputWidth, cAutomic)

    val pSumReg = Reg(SInt(accWidth bits)) init 0

    val lfBReg = SInt(accWidth bits)

    val spLenCnt = Reg(UInt(spLenW bits)) init (0)


    //    switch(macMode) {
    //      is(CONV2D, FC, MAXPOOL, DWCONV, AVERAGPOOL) {
    //        pSumEn := mulArea.mulVaild
    //      }
    //      default {
    //        pSumEn := False
    //      }
    //    }
    pSumEn := mulArea.mulVaild
    pSumValid := RegNext(pSumEn) init False

    lfBReg := lfBuffer.readSync(spLenCnt, pSumEn)

    adderTree.io.dataIn := Vec(S(0, 2 * inputWidth bits), cAutomic)

    when(io.clear) {
      pSumReg := 0
      spLenCnt := 0
    } otherwise {
      when(pSumEn) {
        when(spLenCnt < spLen - 1) {
          spLenCnt := spLenCnt + 1
        } otherwise {
          spLenCnt := 0
        }
        switch(macMode) {
          is(CONV2D, FC) {
            adderTree.io.dataIn := mulArea.mulReg
            pSumReg := adderTree.io.dataOut.resized
          }
          is(AVERAGPOOL, DWCONV) {
            pSumReg := mulArea.mulReg(0).resized
          }
          default {
            pSumReg := 0
          }
        }
      }
    }
  }

  val accArea = new Area {

    import io.parm._
    import MacMode._

    val accEn = Bool()

    val accValid = Bool()

    val accReg = Reg(SInt(accWidth bits)) init (0)

    val last = Bool()

    val spLenCnt = Reg(UInt(spLenW bits)) init (0)
    val loopLenCnt = Reg(UInt(loopLenW bits)) init (0)

    //    switch(macMode) {
    //      is(CONV2D, FC, AVERAGPOOL, DWCONV) {
    //        accEn := pSumArea.pSumValid
    //      }
    //      default {
    //        accEn := False
    //      }
    //    }
    accEn := pSumArea.pSumValid

    accValid := RegNext(accEn && last) init False

    last := loopLenCnt === loopLen - 1

    when(io.clear) {
      spLenCnt := 0
      loopLenCnt := 0
      accReg := 0
    } otherwise {


      when(accEn) {

        when(spLenCnt < spLen - 1) {
          spLenCnt := spLenCnt + 1
        } otherwise {
          spLenCnt := 0
          when(loopLenCnt < loopLen - 1) {
            loopLenCnt := loopLenCnt + 1
          } otherwise {
            loopLenCnt := 0
          }
        }
        switch(macMode) {
          is(CONV2D, FC, AVERAGPOOL, DWCONV) {
            when(loopLenCnt === 0) {
              lfBuffer(spLenCnt) := pSumArea.pSumReg
              accReg := pSumArea.pSumReg
            } otherwise {
              lfBuffer(spLenCnt) := pSumArea.lfBReg + pSumArea.pSumReg
              accReg := pSumArea.lfBReg + pSumArea.pSumReg
            }
          }
          is(MAXPOOL) {
            when(loopLenCnt === 0) {
              lfBuffer(spLenCnt) := pSumArea.pSumReg
              accReg := pSumArea.pSumReg
            } otherwise {
              when(pSumArea.pSumReg > pSumArea.lfBReg) {
                lfBuffer(spLenCnt) := pSumArea.pSumReg
                accReg := pSumArea.pSumReg
              } otherwise {
                accReg := pSumArea.lfBReg
              }
            }
          }
          default {
          }
        }
      }
    }
  }


  val quantArea = new Area {

    import io.parm._
    import MacMode._

    val quantEn = Bool()

    val quantValid = Bool()

    val quantReg = Reg(SInt(inputWidth bits)) init (0)

    val rawData = SInt(accWidth bits)

    //    switch(macMode) {
    //      is(CONV2D, FC, AVERAGPOOL, DWCONV) {
    //        quantEn := accArea.accValid
    //        rawData := accArea.accReg
    //      }
    //      default {
    //        quantEn := False
    //        rawData := 0
    //      }
    //    }

    quantEn := accArea.accValid
    rawData := accArea.accReg


    quantValid := RegNext(quantEn) init (False)

    when(quantEn) {
      // 1. 乘法
      val multResult = rawData * scaleParm.multiplier
      // 2. 舍入偏置
      val oneLiteral = S(1, multResult.getWidth bits)
      val oneBits = oneLiteral.asBits
      val shiftedBits = oneBits << (scaleParm.shift - 1)
      val offset = Mux(scaleParm.shift === 0,
        S(0, multResult.getWidth bits),
        shiftedBits.asSInt
      )
      offset.setName("offset")
      // 3. 加上舍入偏置
      val adjusted = multResult + offset
      adjusted.setName("adjusted")
      // 4. 右移：执行算术右移
      val shifted = adjusted >> scaleParm.shift
      shifted.setName("shifted")
      // 5. 加上零点
      val withZero = shifted + scaleParm.zeroPoint.resize(shifted.getWidth)
      withZero.setName("withZero")
      // 6. 饱和截断到 int8 范围 [-128, 127]
      val minVal = SInt(inputWidth bits)
      val maxVal = SInt(inputWidth bits)

      minVal := minVal.minValue
      maxVal := maxVal.maxValue

      val saturated = SInt(inputWidth bits)
      saturated.setName("saturated")
      when(withZero > maxVal) {
        saturated := maxVal
      } elsewhen (withZero < minVal) {
        saturated := minVal
      } otherwise {
        saturated := withZero.resized
      }
      quantReg := saturated
    }
  }

  val actArea = new Area {

    import io.parm._
    import ActMode._

    val actEn = Bool()

    val actValid = Bool()

    val actReg = Reg(SInt(inputWidth bits)) init (0)

    //    switch(macMode) {
    //      is(CONV2D, FC, AVERAGPOOL, DWCONV) {
    //        actEn := quantArea.quantValid
    //      }
    //      is(MAXPOOL) {
    //        actEn := accArea.accValid
    //      }
    //    }

    actEn := quantArea.quantValid

    actValid := RegNext(actEn) init (False)

    when(actEn) {

      switch(actMode) {
        is(NONE) {
          actReg := quantArea.quantReg
        }
        is(RELU) {
          when(quantArea.quantReg < S"0") {
            actReg := 0
          } otherwise {
            actReg := quantArea.quantReg
          }
        }
        is(RELU6) {
          actReg := quantArea.quantReg
        }
        is(SIGMOID) {
          actReg := quantArea.quantReg
        }
      }
    }
  }
  io.result.payload := actArea.actReg
  io.result.valid := actArea.actValid

}


object MacCell extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "" // 移除匿名信号的前缀
  ).generateVerilog(new MacCell(MacCfg()))
}

