package dma

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._
import cfg.DmaCfg


case class Dma(cfg: DmaCfg) extends Component {

  import cfg._

  val io = new Bundle {
    val dmaPort = slave(DmaPort(cfg))
    val axi4 = master(Axi4(busConfig))
  }
  noIoPrefix()

  val axiWriteArea = new Area {

    import Axi4._
    import io.axi4._
    import io.dmaPort._

    // 写通道相关寄存器与信号
    val axi4AwAddr = Reg(UInt(busConfig.addressWidth bits)) init (0)
    val axi4AwValid = Reg(Bool()) init (False)
    val axi4WData = Bits(busConfig.dataWidth bits)
    val axi4WLast = Bool()
    val axi4WValid = Bool()
    val wNext = w.fire
    val wBurstLen = Reg(UInt(9 bits)) init (1) // 每次Burst的长度
    val wBurstCounter = Counter(256)
    val wDmaCounter = Counter(65535)
    val axi4WStartLocked = Reg(Bool()) init (False)
    val axi4WBurstSize = (wBurstLen * busConfig.bytePerWord).resized
    val dmaWLen = RegNextWhen(dmaWTask.payload.len, dmaWTask.fire)

    aw.id := axi4Id
    aw.addr := axi4AwAddr
    aw.len := (wBurstLen - 1).resized
    aw.size := log2Up(busConfig.bytePerWord)
    aw.burst := burst.INCR
    aw.valid := axi4AwValid
    //    aw.lock := lock.NORMAL
    //    aw.cache := awcache.MODIFIABLE
    //    aw.prot := prot.NON_SECURE
    //    aw.qos := B"0000"

    w.data := axi4WData
    //    w.strb.setAllTo(True)
    w.last := axi4WLast
    w.valid := axi4WValid

    b.ready := True

    // DMA 写数据通道
    axi4WData := dmaWDate.payload
    axi4WValid := dmaWDate.valid
    dmaWDate.ready := wNext

    val dmaWstartLocked = Reg(Bool()) init (False)
    val dmaWEnd = Bool()
    val dmaWStart = Bool()

    dmaWTask.ready := ~dmaWstartLocked

    // DMA写过程：在一次完整DMA写传输期间 dmaWstartLocked 保持高电平
    when(dmaWEnd) {
      dmaWstartLocked := False
    }.otherwise {
      when(dmaWStart) {
        dmaWstartLocked := True
      }
    }

    dmaWStart := dmaWTask.fire

    when(dmaWStart) {
      // 启动一次DMA写任务时锁存起始地址
      axi4AwAddr := dmaWTask.addr
    }.otherwise {
      // 当一次Burst结束时更新地址
      when(axi4WLast) {
        axi4AwAddr := axi4AwAddr + axi4WBurstSize
      }
    }

    // axi4WStartLocked 在一次axi写 burst期间为高
    when(dmaWstartLocked && !axi4WStartLocked) {
      axi4WStartLocked := True
    }.otherwise {
      when(axi4WLast || dmaWStart) {
        axi4WStartLocked := False
      }
    }

    // 当 axi4WStartLocked pos沿时，发起一次新的 aw 有效信号
    when(axi4WStartLocked.rise) {
      axi4AwValid := True
    }.otherwise {
      when((axi4WStartLocked && aw.ready) || !axi4WStartLocked) {
        axi4AwValid := False
      }
    }

    // 计数w数据发送个数
    when(!axi4WStartLocked) {
      wBurstCounter.clear()
    }.otherwise {
      when(wNext) {
        wBurstCounter.increment()
      }
    }

    // 当wBurstCounter计满（wBurstLen个数据）时，w最后一个数据标志置位
    axi4WLast := wNext && (wBurstCounter.value === (wBurstLen - 1))

    val wBurstLenReq = Reg(Bool()) init (False)
    val dmaWLeftCounter = Reg(UInt(16 bits)) init (0)

    // wBurstLenReq 用于决定下一个burst的长度
    wBurstLenReq := dmaWStart || axi4WLast

    // 记录还剩余多少数据需要DMA写传输
    when(dmaWStart) {
      wDmaCounter.clear()
      dmaWLeftCounter := dmaWTask.len.resized
    }.otherwise {
      when(wNext) {
        wDmaCounter.increment()
        dmaWLeftCounter := (dmaWLen - 1 - wDmaCounter.value).resized
      }
    }

    // 当剩余数据计数为1并发送出最后一个数据时，本次DMA写结束
    dmaWEnd := wNext && (dmaWLeftCounter === 1)

    // 根据剩余数据决定burst长度(最多256)
    when(wBurstLenReq) {
      when(dmaWLeftCounter > 256) {
        wBurstLen := 256
      } otherwise {
        wBurstLen := dmaWLeftCounter.resized
      }
    }
  }


  val axiReadArea = new Area {

    import Axi4._
    import io.axi4._
    import io.dmaPort._

    val axi4ArAddr = Reg(UInt(busConfig.addressWidth bits)) init (0)
    val axi4ArValid = Reg(Bool()) init (False)
    val axi4RLast = Bool()
    val axi4RReady = Bool()
    val rNext = r.fire
    val rBurstLen = Reg(UInt(9 bits)) init (1)
    val rBurstCounter = Counter(256)
    val rDmaCounter = Counter(65535)
    val axi4RStartLocked = Reg(Bool()) init (False)
    val axi4RBurstSize = (rBurstLen * busConfig.bytePerWord).resized

    val dmaRLen = RegNextWhen(dmaRTask.payload.len, dmaRTask.fire)

    ar.id := axi4Id
    ar.addr := axi4ArAddr
    ar.len := (rBurstLen - 1).resized
    ar.size := log2Up(busConfig.bytePerWord)
    ar.burst := burst.INCR
    //    ar.lock := lock.NORMAL
    //    ar.cache := awcache.MODIFIABLE
    //    ar.prot := prot.NON_SECURE
    //    ar.qos := B"0000"
    ar.valid := axi4ArValid

    r.ready := axi4RReady
    dmaRDate.payload := r.data
    dmaRDate.valid := rNext

    val dmaRstartLocked = Reg(Bool()) init (False)
    val dmaREnd = Bool()
    val dmaRStart = Bool()

    dmaRTask.ready := ~dmaRstartLocked
    axi4RReady := dmaRDate.ready

    // DMA读过程标志
    when(dmaREnd) {
      dmaRstartLocked := False
    }.otherwise {
      when(dmaRStart) {
        dmaRstartLocked := True
      }
    }

    dmaRStart := dmaRTask.fire

    when(dmaRStart) {
      axi4ArAddr := dmaRTask.addr
    }.otherwise {
      when(axi4RLast) {
        axi4ArAddr := axi4ArAddr + axi4RBurstSize
      }
    }

    // axi4RStartLocked 表示一次axi读burst进行中
    when(dmaRstartLocked && !axi4RStartLocked) {
      axi4RStartLocked := True
    }.otherwise {
      when(axi4RLast || dmaRStart) {
        axi4RStartLocked := False
      }
    }

    // 当 axi4RStartLocked pos产生时，发起ar有效信号
    when(axi4RStartLocked.rise) {
      axi4ArValid := True
    }.otherwise {
      when((axi4RStartLocked && ar.ready) || !axi4RStartLocked) {
        axi4ArValid := False
      }
    }

    // 数据计数
    when(!axi4RStartLocked) {
      rBurstCounter.clear()
    }.otherwise {
      when(rNext) {
        rBurstCounter.increment()
      }
    }

    // last条件判断：当读取到rBurstLen个数据时标记last
    axi4RLast := rNext && (rBurstCounter.value === (rBurstLen - 1))

    val rBurstLenReq = Reg(Bool()) init (False)
    val dmaRLeftCounter = Reg(UInt(16 bits)) init (0)

    rBurstLenReq := dmaRStart || axi4RLast

    // 记录还剩余多少数据需要DMA读传输
    when(dmaRStart) {
      rDmaCounter.clear()
      dmaRLeftCounter := dmaRTask.len.resized
    }.otherwise {
      when(rNext) {
        rDmaCounter.increment()
        dmaRLeftCounter := (dmaRLen - 1 - rDmaCounter.value).resized
      }
    }

    // 当最后数据发送完时，DMA读结束
    dmaREnd := rNext && (dmaRLeftCounter === 1)

    // 根据剩余数据决定burst长度(最多256)
    when(rBurstLenReq) {
      when(dmaRLeftCounter > 256) {
        rBurstLen := 256
      } otherwise {
        rBurstLen := dmaRLeftCounter.resized
      }
    }
  }
}


object Dma extends App {

  SpinalConfig(
    targetDirectory = "rtl", // 指定生成代码的目标目录
    oneFilePerComponent = false, // 每个组件单独生成一个文件
    enumPrefixEnable = false, // 不在枚举类型前面添加前缀
    headerWithDate = false, // 不在头文件中添加日期信息
    anonymSignalPrefix = "tmp" // 移除匿名信号的前缀
  ).generateVerilog(new Dma(DmaCfg()))
}

