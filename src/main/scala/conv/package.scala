import spinal.core._

package object conv {


  def CeilDiv(x: UInt, y: Int): UInt = {
    (x + y - 1) >> log2Up(y)
  }


}
