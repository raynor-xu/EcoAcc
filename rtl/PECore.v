// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PECore
// Git hash  : e35bdecefc87ce5144043b767ddb0a1d0eee2a79

`timescale 1ns/1ps

module PECore (
  input  wire          en,
  input  wire [2:0]    mode,
  input  wire [7:0]    featureIn,
  input  wire [7:0]    weightIn,
  output wire [31:0]   macOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   tmp_macReg;
  reg        [31:0]   macReg;
  reg        [15:0]   mulData;
  reg        [15:0]   macData;
  wire                when_PECore_l30;
  wire                when_PECore_l35;
  wire                when_PECore_l40;

  assign tmp_macReg = {{16{macData[15]}}, macData};
  always @(*) begin
    mulData = 16'h0;
    if(en) begin
      if(when_PECore_l30) begin
        mulData = ($signed(featureIn) * $signed(weightIn));
      end else begin
        mulData = 16'h0;
      end
    end
  end

  always @(*) begin
    macData = 16'h0;
    if(en) begin
      if(when_PECore_l35) begin
        macData = {{8{featureIn[7]}}, featureIn};
      end else begin
        macData = mulData;
      end
    end
  end

  assign when_PECore_l30 = mode[0];
  assign when_PECore_l35 = mode[1];
  assign when_PECore_l40 = mode[2];
  assign macOut = macReg;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macReg <= 32'h0;
    end else begin
      if(en) begin
        if(when_PECore_l40) begin
          macReg <= ($signed(tmp_macReg) + $signed(macReg));
        end else begin
          macReg <= {{16{macData[15]}}, macData};
        end
      end
    end
  end


endmodule
