package conv

import spinal.core._
import spinal.lib._
import cfg.ConvCfg

case class PPUnit(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val parm = in(PPUParm(cfg))

    val macIn = Vec(slave Flow SInt(accWidth bits), cAutomic)
    val featureOut = master Flow SInt(inputWidth bits)
  }

  noIoPrefix()

  import io.parm._
  import ConvMode._

  val lfBuffer = Reg(Vec(SInt(accWidth bits), lwbDepth))

  val macSumArea = new Area {

    val macSumReg = Reg(SInt(accWidth bits)) init (0)

    val adderTree = AdderTree(accWidth, cAutomic)

    val macSumEn = io.macIn.map(_.valid).reduce(_ || _) && ~io.clear && mode === CONV2D

    val macSumValid = RegNext(macSumEn) init (False)


    adderTree.io.dataIn := Vec(S(0, accWidth bits), cAutomic)


    when(macSumEn) {
      adderTree.io.dataIn := Vec(io.macIn.map(_.payload))
      macSumReg := adderTree.io.dataOut.resized

    }

  }


  val pSumArea = new Area {

    val pAddData = SInt(accWidth bits)

    val pSumReg = Reg(SInt(accWidth bits)) init (0)

    val pSumEn = macSumArea.macSumValid && ~io.clear

    val pSumValid = RegNext(pSumEn) init (False)

    val spLenCnt = Reg(UInt(log2Up(lwbDepth) bits)) init (0)

    val loopCnt = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init (0)

    val last = loopCnt === loopLen - 1

    pAddData := 0
    // io.biasIn.ready := False

    when(io.clear) {
      spLenCnt := 0
      loopCnt := 0
      lfBuffer.map(_ := 0)
    } otherwise {
      when(pSumEn) {
        // spLen increase
        when(spLenCnt < spLen - 1) {
          spLenCnt := spLenCnt + 1
        } otherwise {
          spLenCnt := 0
          when(loopCnt < loopLen - 1) {
            loopCnt := loopCnt + 1
          } otherwise {
            loopCnt := 0
          }
        }
        // pAddData switch
        switch(mode) {
          is(FC) {
            pAddData := 0
            //io.biasIn.ready := False
          }
          is(CONV2D) {
            pAddData := lfBuffer(spLenCnt)
            //io.biasIn.ready := False
          }
          default {
            pAddData := 0
          }
        }
        pSumReg := macSumArea.macSumReg + pAddData

      }
    }
  }

  val bufArea = new Area {

    val bufEn = mode =/= CONV2D && io.macIn.map(_.valid).reduce(_ || _) && ~io.clear


    val macInReg = RegNextWhen(Vec(io.macIn.map(_.payload)), bufEn)

    val cnt = Reg(UInt(log2Up(cAutomic) bits)) init (cAutomic - 1)

    val bufReg = macInReg(cnt)

    val bufValid = cnt =/= cAutomic - 1


    when(bufEn) {
      cnt := 0
    } otherwise {
      when(cnt =/= cAutomic - 1) {
        cnt := cnt + 1
      }
    }


  }


  val quantArea = new Area {

    val quantReg = Reg(SInt(inputWidth bits)) init (0)

    val quantEn = Bool()

    val rawData = SInt(accWidth bits)

    switch(mode) {
      is(CONV2D) {
        quantEn := pSumArea.pSumValid && pSumArea.last && ~io.clear
        rawData := pSumArea.pSumReg
      }
      default {
        quantEn := bufArea.bufValid && ~io.clear
        rawData := bufArea.bufReg
      }
    }


    val quantValid = RegNext(quantEn) init (False)

    when(quantEn) {
      // 1. 乘法
      val multResult = rawData * multiplier
      // 2. 舍入偏置
      val offset = Mux(shift === 0, S(0, multResult.getWidth bits),
        S(1, multResult.getWidth bits) << (shift - 1))
      // 3. 加上舍入偏置
      val adjusted = multResult + offset
      // 4. 右移：执行算术右移
      val shifted = adjusted >> shift
      // 5. 加上零点
      val withZero = shifted + zeroPoint.resize(shifted.getWidth)
      // 6. 饱和截断到 int8 范围 [-128, 127]
      val minVal = io.featureOut.payload.maxValue
      val maxVal = io.featureOut.payload.minValue

      val saturated = SInt(inputWidth bits)
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

  val reluArea = new Area {

    val reluReg = Reg(SInt(inputWidth bits)) init (0)

    val reluEn = quantArea.quantValid && ~io.clear

    val reluValid = RegNext(reluEn) init (False)


    when(reluEn) {
      when(quantArea.quantReg < 0 && reluEn) {
        reluReg := 0
      } otherwise {
        reluReg := quantArea.quantReg
      }
    }
  }

  io.featureOut.payload := reluArea.reluReg
  io.featureOut.valid := reluArea.reluValid

}

object PPUnit extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PPUnit(ConvCfg()))
}