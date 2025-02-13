// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PECore
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module PECore (
  input  wire          clear,
  input  wire [2:0]    mode,
  input  wire          featureIn_valid,
  input  wire [7:0]    featureIn_payload,
  input  wire          weightIn_valid,
  input  wire [7:0]    weightIn_payload,
  output wire          macOut_valid,
  output reg  [31:0]   macOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [31:0]   tmp_macReg;
  reg        [31:0]   macReg;
  reg        [15:0]   mulData;
  reg        [15:0]   macData;
  wire                macEn;
  reg                 macEn_regNext;
  wire                when_PECore_l53;
  wire                when_PECore_l58;
  wire                when_PECore_l63;

  assign tmp_macReg = {{16{macData[15]}}, macData};
  assign macEn = (weightIn_valid && featureIn_valid);
  always @(*) begin
    mulData = 16'h0;
    if(!clear) begin
      if(macEn) begin
        if(when_PECore_l53) begin
          mulData = ($signed(featureIn_payload) * $signed(weightIn_payload));
        end else begin
          mulData = 16'h0;
        end
      end
    end
  end

  always @(*) begin
    macData = 16'h0;
    if(!clear) begin
      if(macEn) begin
        if(when_PECore_l58) begin
          macData = {{8{featureIn_payload[7]}}, featureIn_payload};
        end else begin
          macData = mulData;
        end
      end
    end
  end

  always @(*) begin
    macOut_payload = 32'h0;
    if(!clear) begin
      if(macEn) begin
        macOut_payload = macReg;
      end
    end
  end

  assign macOut_valid = macEn_regNext;
  assign when_PECore_l53 = mode[0];
  assign when_PECore_l58 = mode[1];
  assign when_PECore_l63 = mode[2];
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macReg <= 32'h0;
      macEn_regNext <= 1'b0;
    end else begin
      macEn_regNext <= macEn;
      if(clear) begin
        macReg <= 32'h0;
      end else begin
        if(macEn) begin
          if(when_PECore_l63) begin
            macReg <= ($signed(tmp_macReg) + $signed(macReg));
          end else begin
            macReg <= {{16{macData[15]}}, macData};
          end
        end
      end
    end
  end


endmodule
