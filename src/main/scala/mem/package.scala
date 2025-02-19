
import spinal.core._
import spinal.lib._

package object mem {

  case class Memport(width: Int, depth: Int, useWe: Boolean = false) extends Bundle with IMasterSlave {
    val addr = UInt(log2Up(depth) bits)
    val wData = Bits(width bits)
    val rData = Bits(width bits)
    val wr = Bool()
    val en = Bool()
    val we = if (useWe) Bits(width / 8 bits) else null

    override def asMaster(): Unit = {
      out(addr, wData, wr, en, we)
      in(rData)
    }


    override def asSlave(): Unit = {
      in(addr, wData, wr, en, we)
      out(rData)
    }

  }

  case class RdPort(width: Int, depth: Int, useWe: Boolean = false) extends Bundle with IMasterSlave {
    val addr = UInt(log2Up(depth) bits)
    val rData = Bits(width bits)
    val we = if (useWe) Bits(width / 8 bits) else null
    val en = Bool()

    override def asMaster(): Unit = {
      out(addr, we, en)
      in(rData)
    }

    override def asSlave(): Unit = {
      in(addr, we, en)
      out(rData)
    }

    def asMemport(): Memport = {
      val memport = Memport(width, depth, useWe)
      memport.addr := this.addr
      memport.rData := this.rData
      memport.we := this.we
      memport.en := this.en
      memport.wr := False
      memport.wData := 0
      memport
    }

  }

  case class WrPort(width: Int, depth: Int, useWe: Boolean = false) extends Bundle with IMasterSlave {
    val addr = UInt(log2Up(depth) bits)
    val wData = Bits(width bits)
    val we = if (useWe) Bits(width / 8 bits) else null
    val en = Bool()

    override def asMaster(): Unit = {
      out(addr, we, en, wData)
    }

    override def asSlave(): Unit = {
      in(addr, we, en, wData)
    }

    def asMemport(): Memport = {
      val memport = Memport(width, depth, useWe)
      memport.addr := this.addr
      memport.wData := this.wData
      memport.we := this.we
      memport.en := this.en
      memport.wr := True
      memport
    }
  }
}
