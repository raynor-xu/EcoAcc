// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : DualPortRam

`timescale 1ns/1ps

module DualPortRam (
  input  wire [5:0]    rwPort_addr,
  output wire [19:0]   rwPort_rData,
  input  wire          rwPort_en,
  input  wire [5:0]    wrPort_addr,
  input  wire [19:0]   wrPort_wData,
  input  wire          wrPort_en,
  input  wire          clk,
  input  wire          reset
);

  reg        [19:0]   ram_spinal_port1;
  reg [19:0] ram [0:63];

  always @(posedge clk) begin
    if(wrPort_en) begin
      ram[wrPort_addr] <= wrPort_wData;
    end
  end

  always @(posedge clk) begin
    if(rwPort_en) begin
      ram_spinal_port1 <= ram[rwPort_addr];
    end
  end

  assign rwPort_rData = ram_spinal_port1;

endmodule
