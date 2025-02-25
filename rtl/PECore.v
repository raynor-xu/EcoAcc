// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PECore
// Git hash  : 02491fef150ddb695e806a8318f17cf1104f38a0

`timescale 1ns/1ps

module PECore (
  input  wire          clear,
  input  wire [1:0]    mode,
  input  wire          featureIn_valid,
  output wire          featureIn_ready,
  input  wire [7:0]    featureIn_payload,
  input  wire          weight_valid,
  output wire          weight_ready,
  input  wire [7:0]    weight_payload,
  output wire          macOut_valid,
  output reg  [31:0]   macOut_payload,
  input  wire          clk,
  input  wire          reset
);
  localparam MAC = 2'd0;
  localparam MUL = 2'd1;
  localparam BYPASS = 2'd2;

  wire       [31:0]   tmp_macData;
  wire       [31:0]   tmp_macData_1;
  wire       [15:0]   tmp_macData_2;
  reg        [31:0]   macReg;
  reg        [15:0]   macData;
  wire                weight_fire;
  wire                featureIn_fire;
  wire                macEn;
  reg                 macEn_regNext;
  `ifndef SYNTHESIS
  reg [47:0] mode_string;
  `endif


  assign tmp_macData = ($signed(macReg) + $signed(tmp_macData_1));
  assign tmp_macData_2 = ($signed(featureIn_payload) * $signed(weight_payload));
  assign tmp_macData_1 = {{16{tmp_macData_2[15]}}, tmp_macData_2};
  `ifndef SYNTHESIS
  always @(*) begin
    case(mode)
      MAC : mode_string = "MAC   ";
      MUL : mode_string = "MUL   ";
      BYPASS : mode_string = "BYPASS";
      default : mode_string = "??????";
    endcase
  end
  `endif

  assign weight_fire = (weight_valid && weight_ready);
  assign featureIn_fire = (featureIn_valid && featureIn_ready);
  assign macEn = (weight_fire && featureIn_fire);
  always @(*) begin
    macData = 16'h0;
    if(!clear) begin
      if(macEn) begin
        case(mode)
          MAC : begin
            macData = tmp_macData[15:0];
          end
          MUL : begin
            macData = ($signed(featureIn_payload) * $signed(weight_payload));
          end
          default : begin
            macData = {{8{featureIn_payload[7]}}, featureIn_payload};
          end
        endcase
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

  assign weight_ready = featureIn_valid;
  assign featureIn_ready = weight_valid;
  assign macOut_valid = macEn_regNext;
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
          macReg <= {{16{macData[15]}}, macData};
        end
      end
    end
  end


endmodule
