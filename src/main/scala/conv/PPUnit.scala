package conv

import spinal.core._
import spinal.lib._
import cfg.ConvCfg

case class PPUnit(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val clear = in Bool()
    val relu = in Bool()
    val mode = in Bits (2 bits)
    val spLen = in UInt (spLenMaxW bits)
    val loopLen = in UInt (fMaxChW - log2Up(kAutomic) bits)
    //val biasIn = slave Stream SInt(accWidth bits)
    val macIn = Vec(slave Flow SInt(accWidth bits), cAutomic)
    val featureOut = master Flow SInt(inputWidth bits)
  }

  noIoPrefix()

  val lfBuffer = Reg(Vec(SInt(accWidth bits), spLenMax))

  val macSumArea = new Area {

    val macSumReg = Reg(SInt(accWidth bits)) init (0)

    val adderTree = AdderTree(accWidth, cAutomic)

    val macSumEn = io.macIn.map(_.valid).reduce(_ || _) && ~io.clear

    val macSumValid = RegNext(macSumEn) init (False)

    adderTree.io.dataIn := Vec(io.macIn.map(_.payload))

    when(macSumEn) {
      macSumReg := adderTree.io.dataOut.resized
    }

  }

  val pSumArea = new Area {

    val pAddData = SInt(accWidth bits)

    val pSumReg = Reg(SInt(accWidth bits)) init (0)

    val pSumEn = macSumArea.macSumValid && ~io.clear

    val pSumValid = RegNext(pSumEn) init (False)

    val spLenCnt = Reg(UInt(spLenMaxW bits)) init (0)

    val loopCnt = Reg(UInt(fMaxChW - log2Up(kAutomic) bits)) init (0)

    val last = loopCnt === io.loopLen - 1

    pAddData := 0
    // io.biasIn.ready := False

    when(io.clear) {
      spLenCnt := 0
      loopCnt := 0
      lfBuffer.map(_ := 0)
    } otherwise {
      when(pSumEn) {
        // spLen increase
        when(spLenCnt < io.spLen - 1) {
          spLenCnt := spLenCnt + 1
        } otherwise {
          spLenCnt := 0
          when(loopCnt < io.loopLen - 1) {
            loopCnt := loopCnt + 1
          } otherwise {
            loopCnt := 0
          }
        }
        // pAddData switch
        switch(io.mode) {
          is(B"2'b00") {
            pAddData := 0
            //io.biasIn.ready := False
          }
          is(B"2'b01") {
            pAddData := lfBuffer(spLenCnt)
            //io.biasIn.ready := False
          }
          is(B"2'b10") {
            //pAddData := io.biasIn.payload
            //io.biasIn.ready := True
          }
          is(B"2'b11") {
            //pAddData := lfBuffer(spLenCnt) + io.biasIn.payload
            //io.biasIn.ready := True
          }
        }
        pSumReg := macSumArea.macSumReg + pAddData

      }
    }
  }


  val quantArea = new Area {

    val quantReg = Reg(SInt(inputWidth bits)) init (0)

    val quantEn = pSumArea.pSumValid && pSumArea.last && ~io.clear

    val quantValid = RegNext(quantEn) init (False)

    when(quantEn) {
      quantReg := (pSumArea.pSumReg >> inputWidth).resized
    }
  }

  val reluArea = new Area {

    val reluReg = Reg(SInt(inputWidth bits)) init (0)

    val reluEn = quantArea.quantValid && ~io.clear

    val reluValid = RegNext(reluEn) init (False)


    when(reluEn) {
      when(quantArea.quantReg < 0 && io.relu) {
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