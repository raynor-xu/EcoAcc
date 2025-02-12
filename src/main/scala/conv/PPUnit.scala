package conv

import spinal.core._
import spinal.lib._

case class PPUnit(cfg: ConvCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val reluEn = in Bool()
    val lastEn = in Bool()
    val mode = in Bits (2 bits)
    val biasIn = slave Stream SInt(accWidth bits)
    val pSumIn = slave Stream SInt(accWidth bits)
    val macIn = Vec(slave Flow SInt(accWidth bits), cAutomic)
    val pSumOut = master Flow SInt(accWidth bits)
    val resultOut = master Flow SInt(inputWidth bits)
  }

  noIoPrefix()

  val macSumArea = new Area {

    val macSumReg = Reg(SInt(accWidth bits)) init (0)

    val adderTree = AdderTree(accWidth, cAutomic)

    val macValid = io.macIn.map(_.valid).reduce(_ || _)

    val macSumValid = RegNext(macValid) init (False)

    adderTree.io.dataIn := Vec(io.macIn.map(_.payload))

    when(macValid) {
      macSumReg := adderTree.io.dataOut.resized
    }


  }

  val pSumArea = new Area {

    val pAddData = SInt(accWidth bits)

    val pSumReg = Reg(SInt(accWidth bits)) init (0)

    when(macSumArea.macSumValid) {
      switch(io.mode) {
        is(B"2'b00") {
          pAddData := 0
          io.pSumIn.ready := False
          io.biasIn.ready := False
        }
        is(B"2'b01") {
          pAddData := io.pSumIn.payload
          io.pSumIn.ready := True
          io.biasIn.ready := False
        }
        is(B"2'b10") {
          pAddData := io.biasIn.payload
          io.pSumIn.ready := False
          io.biasIn.ready := True
        }
        is(B"2'b11") {
          pAddData := io.pSumIn.payload + io.biasIn.payload
          io.pSumIn.ready := True
          io.biasIn.ready := True
        }
      }
      pSumReg := macSumArea.macSumReg + pAddData
      io.pSumOut.valid := True
    } otherwise {
      pAddData := 0
      io.pSumIn.ready := False
      io.biasIn.ready := False
      io.pSumOut.valid := False
    }

    io.pSumOut.payload := pSumReg
  }


  val quantArea = new Area {

    val quantReg = Reg(SInt(inputWidth bits)) init (0)

    val quantValid = RegNext(io.pSumOut.valid && io.lastEn) init (False)

    when(io.pSumOut.valid && io.lastEn) {
      quantReg := (pSumArea.pSumReg >> inputWidth).resized
    }
  }

  val reluArea = new Area {

    val reluReg = Reg(SInt(inputWidth bits)) init (0)

    val reluValid = RegNext(quantArea.quantValid) init (False)


    when(quantArea.quantReg < 0 && io.reluEn) {
      reluReg := 0
    } otherwise {
      reluReg := quantArea.quantReg
    }

  }

  io.resultOut.payload := reluArea.reluReg
  io.resultOut.valid := reluArea.reluValid

}

object PPUnit extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new PPUnit(ConvCfg.default))
}