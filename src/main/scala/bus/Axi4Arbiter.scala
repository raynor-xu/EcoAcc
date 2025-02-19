package bus

import spinal.core._
import spinal.lib._
import spinal.lib.bus.amba4.axi._

/** Axi4Arbiter
 *
 * 将多个 AXI4 master（作为 arbiter 的 axiMasterPort 端口）仲裁后连接到一个 AXI4 axiMasterPort 上（作为 arbiter 的 master 端口）。
 *
 * @param masterCount 仲裁的 master 数量（假设为 2 的幂）
 * @param config      AXI4 接口配置
 */
case class Axi4Arbiter(masterCount: Int, config: Axi4Config) extends Component {
  val io = new Bundle {
    // 多个 master 作为 arbiter 的 axiMasterPort 端口
    val axiSlavePorts = Vec(slave(Axi4(config)), masterCount)
    // arbiter 的 master 端口连接实际的 axiMasterPort
    val axiMasterPort = master(Axi4(config))
  }

  noIoPrefix()

  // ------------------------------
  // 读通道仲裁 (AR / R)
  // ------------------------------

  // 状态寄存器：记录当前正在处理的读事务是否处于激活状态
  val readActive = Reg(Bool()) init (False)
  // 记录当前获选的 master 编号
  val readSelected = Reg(UInt(log2Up(masterCount) bits)) init (0)
  // 轮询指针，下一次仲裁从该索引开始
  val readPointer = Reg(UInt(log2Up(masterCount) bits)) init (0)

  // 构造候选向量：从 readPointer 开始轮询，检查各个 master 的 ar.valid 信号
  val candidateValid = Vec(Bool(), masterCount)
  for (i <- 0 until masterCount) {
    // 计算索引： (readPointer + i) mod masterCount
    // 这里假设 masterCount 为 2 的幂，因此可用位与运算实现 modulo
    val idx = (readPointer + i) & (masterCount - 1)
    candidateValid(i) := io.axiSlavePorts(idx).ar.valid
  }
  // 如果有任一候选有效
  val candidateFound = candidateValid.asBits.orR
  // PriorityEncoder 会返回候选向量中第一个为 true 的位置（从 0 开始）
  val candidateIndex = PriorityEncoder(candidateValid.asBits)
  // 计算最终获选 master 编号： (readPointer + candidateIndex) mod masterCount
  val winningMaster = (readPointer + candidateIndex) & (masterCount - 1)

  // 当当前没有激活的读事务时，若存在有效请求则选择一个 master
  when(!readActive && candidateFound) {
    readActive := True
    readSelected := winningMaster
    // 更新轮询指针，下次从获选 master 的下一个开始
    readPointer := (winningMaster + 1) & (masterCount - 1)
  }

  // 默认将所有 master 的 ar.ready 置为 false
  for (i <- 0 until masterCount) {
    io.axiSlavePorts(i).ar.ready := False
  }
  // 只有获选 master 才能获得 ar.ready 信号，其值由 axiMasterPort.ar.ready 决定
  io.axiSlavePorts(readSelected).ar.ready := io.axiMasterPort.ar.ready && readActive
  // 将获选 master 的 AR payload 转发到 axiMasterPort
  io.axiMasterPort.ar.payload := io.axiSlavePorts(readSelected).ar.payload
  // 仅在激活状态下，axiMasterPort 的 ar.valid 来自获选 master
  io.axiMasterPort.ar.valid := readActive ? io.axiSlavePorts(readSelected).ar.valid | False

  // R 通道：将 axiMasterPort 返回的读响应送回获选 master
  for (i <- 0 until masterCount) {
    io.axiSlavePorts(i).r.payload := io.axiMasterPort.r.payload
    io.axiSlavePorts(i).r.valid := (readActive && (readSelected === i)) ? io.axiMasterPort.r.valid | False
  }
  // axiMasterPort 的 r.ready 由获选 master 提供
  io.axiMasterPort.r.ready := io.axiSlavePorts(readSelected).r.ready

  // 当 axiMasterPort 返回的读数据的 last 位被握手后，结束本次读事务
  when(readActive && io.axiMasterPort.r.valid && io.axiMasterPort.r.ready && io.axiMasterPort.r.payload.last) {
    readActive := False
  }

  // ------------------------------
  // 写通道仲裁 (AW / W / B)
  // ------------------------------

  val writeActive = Reg(Bool()) init (False)
  val writeSelected = Reg(UInt(log2Up(masterCount) bits)) init (0)
  val writePointer = Reg(UInt(log2Up(masterCount) bits)) init (0)

  val writeCandidateValid = Vec(Bool(), masterCount)
  for (i <- 0 until masterCount) {
    val idx = writePointer + i & (masterCount - 1)
    writeCandidateValid(i) := io.axiSlavePorts(idx).aw.valid
  }
  val writeCandidateFound = writeCandidateValid.asBits.orR
  val writeCandidateIndex = PriorityEncoder(writeCandidateValid.asBits)
  val winningWriteMaster = (writePointer + writeCandidateIndex) & (masterCount - 1)

  when(!writeActive && writeCandidateFound) {
    writeActive := True
    writeSelected := winningWriteMaster
    writePointer := (winningWriteMaster + 1) & (masterCount - 1)
  }

  // AW 通道：仅转发获选 master 的 AW 请求
  for (i <- 0 until masterCount) {
    io.axiSlavePorts(i).aw.ready := False
  }
  io.axiSlavePorts(writeSelected).aw.ready := io.axiMasterPort.aw.ready && writeActive
  io.axiMasterPort.aw.payload := io.axiSlavePorts(writeSelected).aw.payload
  io.axiMasterPort.aw.valid := writeActive ? io.axiSlavePorts(writeSelected).aw.valid | False

  // W 通道：同样只转发获选 master 的写数据
  for (i <- 0 until masterCount) {
    io.axiSlavePorts(i).w.ready := False
  }
  io.axiSlavePorts(writeSelected).w.ready := io.axiMasterPort.w.ready && writeActive
  io.axiMasterPort.w.payload := io.axiSlavePorts(writeSelected).w.payload
  io.axiMasterPort.w.valid := writeActive ? io.axiSlavePorts(writeSelected).w.valid | False

  // B 通道：将 axiMasterPort 的写响应送回获选 master
  for (i <- 0 until masterCount) {
    io.axiSlavePorts(i).b.payload := io.axiMasterPort.b.payload
    io.axiSlavePorts(i).b.valid := (writeActive && (writeSelected === i)) ? io.axiMasterPort.b.valid | False
  }
  io.axiMasterPort.b.ready := io.axiSlavePorts(writeSelected).b.ready

  // 当 axiMasterPort 的写响应握手完成后，结束写事务
  when(writeActive && io.axiMasterPort.b.valid && io.axiMasterPort.b.ready) {
    writeActive := False
  }
}


object Axi4Arbiter {
  def main(args: Array[String]): Unit = {
    // 请根据你的系统配置调整 Axi4Config 参数
    val config = Axi4Config(
      addressWidth = 32,
      dataWidth = 64,
      idWidth = 4
    )
    SpinalConfig(
      targetDirectory = "rtl",
      oneFilePerComponent = false
    ).generateVerilog(Axi4Arbiter(masterCount = 4, config))
  }
}
