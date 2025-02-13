// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PECtrl
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module PECtrl (
  input  wire          convParm_valid,
  output reg           convParm_ready,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [7:0]    convParm_payload_fHeight,
  input  wire [7:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [5:0]    convParm_payload_chIn,
  input  wire [5:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [3:0]    convParm_payload_stride,
  input  wire [5:0]    convParm_payload_spLen,
  output wire          clear,
  output wire          relu,
  output wire [2:0]    peMode,
  output wire [1:0]    ppuMode,
  output wire [5:0]    spLen,
  output wire [2:0]    loopLen,
  output wire [5:0]    kChDim,
  output wire          featureIn_0_valid,
  input  wire          featureIn_0_ready,
  output wire [7:0]    featureIn_0_payload,
  output wire          featureIn_1_valid,
  input  wire          featureIn_1_ready,
  output wire [7:0]    featureIn_1_payload,
  output wire          featureIn_2_valid,
  input  wire          featureIn_2_ready,
  output wire [7:0]    featureIn_2_payload,
  output wire          featureIn_3_valid,
  input  wire          featureIn_3_ready,
  output wire [7:0]    featureIn_3_payload,
  output wire          featureIn_4_valid,
  input  wire          featureIn_4_ready,
  output wire [7:0]    featureIn_4_payload,
  output wire          featureIn_5_valid,
  input  wire          featureIn_5_ready,
  output wire [7:0]    featureIn_5_payload,
  output wire          featureIn_6_valid,
  input  wire          featureIn_6_ready,
  output wire [7:0]    featureIn_6_payload,
  output wire          featureIn_7_valid,
  input  wire          featureIn_7_ready,
  output wire [7:0]    featureIn_7_payload,
  output wire          weight_0_0_valid,
  input  wire          weight_0_0_ready,
  output wire [7:0]    weight_0_0_payload,
  output wire          weight_0_1_valid,
  input  wire          weight_0_1_ready,
  output wire [7:0]    weight_0_1_payload,
  output wire          weight_0_2_valid,
  input  wire          weight_0_2_ready,
  output wire [7:0]    weight_0_2_payload,
  output wire          weight_0_3_valid,
  input  wire          weight_0_3_ready,
  output wire [7:0]    weight_0_3_payload,
  output wire          weight_0_4_valid,
  input  wire          weight_0_4_ready,
  output wire [7:0]    weight_0_4_payload,
  output wire          weight_0_5_valid,
  input  wire          weight_0_5_ready,
  output wire [7:0]    weight_0_5_payload,
  output wire          weight_0_6_valid,
  input  wire          weight_0_6_ready,
  output wire [7:0]    weight_0_6_payload,
  output wire          weight_0_7_valid,
  input  wire          weight_0_7_ready,
  output wire [7:0]    weight_0_7_payload,
  output wire          weight_1_0_valid,
  input  wire          weight_1_0_ready,
  output wire [7:0]    weight_1_0_payload,
  output wire          weight_1_1_valid,
  input  wire          weight_1_1_ready,
  output wire [7:0]    weight_1_1_payload,
  output wire          weight_1_2_valid,
  input  wire          weight_1_2_ready,
  output wire [7:0]    weight_1_2_payload,
  output wire          weight_1_3_valid,
  input  wire          weight_1_3_ready,
  output wire [7:0]    weight_1_3_payload,
  output wire          weight_1_4_valid,
  input  wire          weight_1_4_ready,
  output wire [7:0]    weight_1_4_payload,
  output wire          weight_1_5_valid,
  input  wire          weight_1_5_ready,
  output wire [7:0]    weight_1_5_payload,
  output wire          weight_1_6_valid,
  input  wire          weight_1_6_ready,
  output wire [7:0]    weight_1_6_payload,
  output wire          weight_1_7_valid,
  input  wire          weight_1_7_ready,
  output wire [7:0]    weight_1_7_payload,
  output wire          weight_2_0_valid,
  input  wire          weight_2_0_ready,
  output wire [7:0]    weight_2_0_payload,
  output wire          weight_2_1_valid,
  input  wire          weight_2_1_ready,
  output wire [7:0]    weight_2_1_payload,
  output wire          weight_2_2_valid,
  input  wire          weight_2_2_ready,
  output wire [7:0]    weight_2_2_payload,
  output wire          weight_2_3_valid,
  input  wire          weight_2_3_ready,
  output wire [7:0]    weight_2_3_payload,
  output wire          weight_2_4_valid,
  input  wire          weight_2_4_ready,
  output wire [7:0]    weight_2_4_payload,
  output wire          weight_2_5_valid,
  input  wire          weight_2_5_ready,
  output wire [7:0]    weight_2_5_payload,
  output wire          weight_2_6_valid,
  input  wire          weight_2_6_ready,
  output wire [7:0]    weight_2_6_payload,
  output wire          weight_2_7_valid,
  input  wire          weight_2_7_ready,
  output wire [7:0]    weight_2_7_payload,
  output wire          weight_3_0_valid,
  input  wire          weight_3_0_ready,
  output wire [7:0]    weight_3_0_payload,
  output wire          weight_3_1_valid,
  input  wire          weight_3_1_ready,
  output wire [7:0]    weight_3_1_payload,
  output wire          weight_3_2_valid,
  input  wire          weight_3_2_ready,
  output wire [7:0]    weight_3_2_payload,
  output wire          weight_3_3_valid,
  input  wire          weight_3_3_ready,
  output wire [7:0]    weight_3_3_payload,
  output wire          weight_3_4_valid,
  input  wire          weight_3_4_ready,
  output wire [7:0]    weight_3_4_payload,
  output wire          weight_3_5_valid,
  input  wire          weight_3_5_ready,
  output wire [7:0]    weight_3_5_payload,
  output wire          weight_3_6_valid,
  input  wire          weight_3_6_ready,
  output wire [7:0]    weight_3_6_payload,
  output wire          weight_3_7_valid,
  input  wire          weight_3_7_ready,
  output wire [7:0]    weight_3_7_payload,
  output wire          weight_4_0_valid,
  input  wire          weight_4_0_ready,
  output wire [7:0]    weight_4_0_payload,
  output wire          weight_4_1_valid,
  input  wire          weight_4_1_ready,
  output wire [7:0]    weight_4_1_payload,
  output wire          weight_4_2_valid,
  input  wire          weight_4_2_ready,
  output wire [7:0]    weight_4_2_payload,
  output wire          weight_4_3_valid,
  input  wire          weight_4_3_ready,
  output wire [7:0]    weight_4_3_payload,
  output wire          weight_4_4_valid,
  input  wire          weight_4_4_ready,
  output wire [7:0]    weight_4_4_payload,
  output wire          weight_4_5_valid,
  input  wire          weight_4_5_ready,
  output wire [7:0]    weight_4_5_payload,
  output wire          weight_4_6_valid,
  input  wire          weight_4_6_ready,
  output wire [7:0]    weight_4_6_payload,
  output wire          weight_4_7_valid,
  input  wire          weight_4_7_ready,
  output wire [7:0]    weight_4_7_payload,
  output wire          weight_5_0_valid,
  input  wire          weight_5_0_ready,
  output wire [7:0]    weight_5_0_payload,
  output wire          weight_5_1_valid,
  input  wire          weight_5_1_ready,
  output wire [7:0]    weight_5_1_payload,
  output wire          weight_5_2_valid,
  input  wire          weight_5_2_ready,
  output wire [7:0]    weight_5_2_payload,
  output wire          weight_5_3_valid,
  input  wire          weight_5_3_ready,
  output wire [7:0]    weight_5_3_payload,
  output wire          weight_5_4_valid,
  input  wire          weight_5_4_ready,
  output wire [7:0]    weight_5_4_payload,
  output wire          weight_5_5_valid,
  input  wire          weight_5_5_ready,
  output wire [7:0]    weight_5_5_payload,
  output wire          weight_5_6_valid,
  input  wire          weight_5_6_ready,
  output wire [7:0]    weight_5_6_payload,
  output wire          weight_5_7_valid,
  input  wire          weight_5_7_ready,
  output wire [7:0]    weight_5_7_payload,
  output wire          weight_6_0_valid,
  input  wire          weight_6_0_ready,
  output wire [7:0]    weight_6_0_payload,
  output wire          weight_6_1_valid,
  input  wire          weight_6_1_ready,
  output wire [7:0]    weight_6_1_payload,
  output wire          weight_6_2_valid,
  input  wire          weight_6_2_ready,
  output wire [7:0]    weight_6_2_payload,
  output wire          weight_6_3_valid,
  input  wire          weight_6_3_ready,
  output wire [7:0]    weight_6_3_payload,
  output wire          weight_6_4_valid,
  input  wire          weight_6_4_ready,
  output wire [7:0]    weight_6_4_payload,
  output wire          weight_6_5_valid,
  input  wire          weight_6_5_ready,
  output wire [7:0]    weight_6_5_payload,
  output wire          weight_6_6_valid,
  input  wire          weight_6_6_ready,
  output wire [7:0]    weight_6_6_payload,
  output wire          weight_6_7_valid,
  input  wire          weight_6_7_ready,
  output wire [7:0]    weight_6_7_payload,
  output wire          weight_7_0_valid,
  input  wire          weight_7_0_ready,
  output wire [7:0]    weight_7_0_payload,
  output wire          weight_7_1_valid,
  input  wire          weight_7_1_ready,
  output wire [7:0]    weight_7_1_payload,
  output wire          weight_7_2_valid,
  input  wire          weight_7_2_ready,
  output wire [7:0]    weight_7_2_payload,
  output wire          weight_7_3_valid,
  input  wire          weight_7_3_ready,
  output wire [7:0]    weight_7_3_payload,
  output wire          weight_7_4_valid,
  input  wire          weight_7_4_ready,
  output wire [7:0]    weight_7_4_payload,
  output wire          weight_7_5_valid,
  input  wire          weight_7_5_ready,
  output wire [7:0]    weight_7_5_payload,
  output wire          weight_7_6_valid,
  input  wire          weight_7_6_ready,
  output wire [7:0]    weight_7_6_payload,
  output wire          weight_7_7_valid,
  input  wire          weight_7_7_ready,
  output wire [7:0]    weight_7_7_payload,
  input  wire          featureOut_0_valid,
  input  wire [7:0]    featureOut_0_payload,
  input  wire          featureOut_1_valid,
  input  wire [7:0]    featureOut_1_payload,
  input  wire          featureOut_2_valid,
  input  wire [7:0]    featureOut_2_payload,
  input  wire          featureOut_3_valid,
  input  wire [7:0]    featureOut_3_payload,
  input  wire          featureOut_4_valid,
  input  wire [7:0]    featureOut_4_payload,
  input  wire          featureOut_5_valid,
  input  wire [7:0]    featureOut_5_payload,
  input  wire          featureOut_6_valid,
  input  wire [7:0]    featureOut_6_payload,
  input  wire          featureOut_7_valid,
  input  wire [7:0]    featureOut_7_payload,
  input  wire          wAddr_valid,
  output reg           wAddr_ready,
  input  wire [14:0]   wAddr_payload,
  input  wire          finAddr_valid,
  output reg           finAddr_ready,
  input  wire [14:0]   finAddr_payload,
  input  wire          foutAddr_valid,
  output reg           foutAddr_ready,
  input  wire [14:0]   foutAddr_payload,
  output reg  [14:0]   wPort0_addr,
  input  wire [63:0]   wPort0_rData,
  output reg           wPort0_en,
  output reg  [14:0]   fPort0_addr,
  input  wire [63:0]   fPort0_rData,
  output reg           fPort0_en,
  output reg  [14:0]   fPort1_addr,
  output wire [63:0]   fPort1_wData,
  output reg           fPort1_en,
  input  wire          clk,
  input  wire          reset
);

  wire       [5:0]    tmp_loopLen;
  wire       [5:0]    tmp_loopLen_1;
  reg                 tmp_wCtrl_lwbReady;
  reg                 tmp_wCtrl_lwbReady_1;
  reg                 tmp_wCtrl_lwbReady_2;
  reg                 tmp_wCtrl_lwbReady_3;
  reg                 tmp_wCtrl_lwbReady_4;
  reg                 tmp_wCtrl_lwbReady_5;
  reg                 tmp_wCtrl_lwbReady_6;
  reg                 tmp_wCtrl_lwbReady_7;
  wire       [2:0]    tmp_when_PECtrl_l85;
  wire                convParm_fire;
  reg        [1:0]    convParm_mode;
  reg        [14:0]   convParm_finBaseAddr;
  reg        [14:0]   convParm_foutBaseAddr;
  reg        [14:0]   convParm_wBaseAddr;
  reg        [7:0]    convParm_fHeight;
  reg        [7:0]    convParm_fWidth;
  reg        [2:0]    convParm_kSize;
  reg        [5:0]    convParm_chIn;
  reg        [5:0]    convParm_chOut;
  reg        [2:0]    convParm_pad;
  reg        [3:0]    convParm_stride;
  reg        [5:0]    convParm_spLen;
  reg                 wCtrl_wCtrlState;
  reg        [2:0]    wCtrl_kAutomicCnt;
  wire                wCtrl_lwbReady;
  wire                wAddr_fire;
  reg                 wCtrl_lwbValid;
  wire                wCtrl_lwbFire;
  wire                when_PECtrl_l71;
  wire                when_PECtrl_l85;
  wire                when_PECtrl_l91;
  reg                 finCtrl_finCtrlState;
  wire                finAddr_fire;
  reg                 finCtrl_finValid;
  wire                finCtrl_finReady;
  wire       [7:0]    finCtrl_feature_0;
  wire       [7:0]    finCtrl_feature_1;
  wire       [7:0]    finCtrl_feature_2;
  wire       [7:0]    finCtrl_feature_3;
  wire       [7:0]    finCtrl_feature_4;
  wire       [7:0]    finCtrl_feature_5;
  wire       [7:0]    finCtrl_feature_6;
  wire       [7:0]    finCtrl_feature_7;
  wire                when_PECtrl_l111;
  wire                when_PECtrl_l122;
  reg                 foutCtrl_foutCtrlState;
  wire                foutCtrl_foutValid;
  wire                when_PECtrl_l136;
  wire                when_PECtrl_l149;

  assign tmp_loopLen = (tmp_loopLen_1 - 6'h01);
  assign tmp_loopLen_1 = (convParm_chIn + 6'h08);
  assign tmp_when_PECtrl_l85 = (wCtrl_kAutomicCnt - 3'b001);
  always @(*) begin
    case(wCtrl_kAutomicCnt)
      3'b000 : begin
        tmp_wCtrl_lwbReady = weight_0_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_0_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_0_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_0_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_0_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_0_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_0_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_0_7_ready;
      end
      3'b001 : begin
        tmp_wCtrl_lwbReady = weight_1_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_1_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_1_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_1_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_1_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_1_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_1_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_1_7_ready;
      end
      3'b010 : begin
        tmp_wCtrl_lwbReady = weight_2_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_2_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_2_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_2_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_2_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_2_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_2_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_2_7_ready;
      end
      3'b011 : begin
        tmp_wCtrl_lwbReady = weight_3_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_3_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_3_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_3_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_3_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_3_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_3_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_3_7_ready;
      end
      3'b100 : begin
        tmp_wCtrl_lwbReady = weight_4_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_4_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_4_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_4_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_4_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_4_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_4_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_4_7_ready;
      end
      3'b101 : begin
        tmp_wCtrl_lwbReady = weight_5_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_5_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_5_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_5_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_5_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_5_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_5_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_5_7_ready;
      end
      3'b110 : begin
        tmp_wCtrl_lwbReady = weight_6_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_6_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_6_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_6_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_6_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_6_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_6_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_6_7_ready;
      end
      default : begin
        tmp_wCtrl_lwbReady = weight_7_0_ready;
        tmp_wCtrl_lwbReady_1 = weight_7_1_ready;
        tmp_wCtrl_lwbReady_2 = weight_7_2_ready;
        tmp_wCtrl_lwbReady_3 = weight_7_3_ready;
        tmp_wCtrl_lwbReady_4 = weight_7_4_ready;
        tmp_wCtrl_lwbReady_5 = weight_7_5_ready;
        tmp_wCtrl_lwbReady_6 = weight_7_6_ready;
        tmp_wCtrl_lwbReady_7 = weight_7_7_ready;
      end
    endcase
  end

  assign convParm_fire = (convParm_valid && convParm_ready);
  assign spLen = (convParm_kSize * convParm_kSize);
  assign loopLen = (tmp_loopLen >>> 2'd3);
  assign kChDim = (convParm_kSize * convParm_kSize);
  assign relu = 1'b0;
  assign peMode = 3'b000;
  assign ppuMode = 2'b00;
  assign clear = convParm_fire;
  assign wCtrl_lwbReady = (((((((tmp_wCtrl_lwbReady && tmp_wCtrl_lwbReady_1) && tmp_wCtrl_lwbReady_2) && tmp_wCtrl_lwbReady_3) && tmp_wCtrl_lwbReady_4) && tmp_wCtrl_lwbReady_5) && tmp_wCtrl_lwbReady_6) && tmp_wCtrl_lwbReady_7);
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign wCtrl_lwbFire = (wCtrl_lwbReady && wCtrl_lwbValid);
  assign weight_0_0_payload = wPort0_rData[7 : 0];
  assign weight_0_0_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_1_payload = wPort0_rData[15 : 8];
  assign weight_0_1_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_2_payload = wPort0_rData[23 : 16];
  assign weight_0_2_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_3_payload = wPort0_rData[31 : 24];
  assign weight_0_3_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_4_payload = wPort0_rData[39 : 32];
  assign weight_0_4_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_5_payload = wPort0_rData[47 : 40];
  assign weight_0_5_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_6_payload = wPort0_rData[55 : 48];
  assign weight_0_6_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_0_7_payload = wPort0_rData[63 : 56];
  assign weight_0_7_valid = (wCtrl_lwbValid && (3'b000 == wCtrl_kAutomicCnt));
  assign weight_1_0_payload = wPort0_rData[7 : 0];
  assign weight_1_0_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_1_payload = wPort0_rData[15 : 8];
  assign weight_1_1_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_2_payload = wPort0_rData[23 : 16];
  assign weight_1_2_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_3_payload = wPort0_rData[31 : 24];
  assign weight_1_3_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_4_payload = wPort0_rData[39 : 32];
  assign weight_1_4_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_5_payload = wPort0_rData[47 : 40];
  assign weight_1_5_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_6_payload = wPort0_rData[55 : 48];
  assign weight_1_6_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_1_7_payload = wPort0_rData[63 : 56];
  assign weight_1_7_valid = (wCtrl_lwbValid && (3'b001 == wCtrl_kAutomicCnt));
  assign weight_2_0_payload = wPort0_rData[7 : 0];
  assign weight_2_0_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_1_payload = wPort0_rData[15 : 8];
  assign weight_2_1_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_2_payload = wPort0_rData[23 : 16];
  assign weight_2_2_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_3_payload = wPort0_rData[31 : 24];
  assign weight_2_3_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_4_payload = wPort0_rData[39 : 32];
  assign weight_2_4_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_5_payload = wPort0_rData[47 : 40];
  assign weight_2_5_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_6_payload = wPort0_rData[55 : 48];
  assign weight_2_6_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_2_7_payload = wPort0_rData[63 : 56];
  assign weight_2_7_valid = (wCtrl_lwbValid && (3'b010 == wCtrl_kAutomicCnt));
  assign weight_3_0_payload = wPort0_rData[7 : 0];
  assign weight_3_0_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_1_payload = wPort0_rData[15 : 8];
  assign weight_3_1_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_2_payload = wPort0_rData[23 : 16];
  assign weight_3_2_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_3_payload = wPort0_rData[31 : 24];
  assign weight_3_3_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_4_payload = wPort0_rData[39 : 32];
  assign weight_3_4_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_5_payload = wPort0_rData[47 : 40];
  assign weight_3_5_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_6_payload = wPort0_rData[55 : 48];
  assign weight_3_6_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_3_7_payload = wPort0_rData[63 : 56];
  assign weight_3_7_valid = (wCtrl_lwbValid && (3'b011 == wCtrl_kAutomicCnt));
  assign weight_4_0_payload = wPort0_rData[7 : 0];
  assign weight_4_0_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_1_payload = wPort0_rData[15 : 8];
  assign weight_4_1_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_2_payload = wPort0_rData[23 : 16];
  assign weight_4_2_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_3_payload = wPort0_rData[31 : 24];
  assign weight_4_3_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_4_payload = wPort0_rData[39 : 32];
  assign weight_4_4_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_5_payload = wPort0_rData[47 : 40];
  assign weight_4_5_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_6_payload = wPort0_rData[55 : 48];
  assign weight_4_6_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_4_7_payload = wPort0_rData[63 : 56];
  assign weight_4_7_valid = (wCtrl_lwbValid && (3'b100 == wCtrl_kAutomicCnt));
  assign weight_5_0_payload = wPort0_rData[7 : 0];
  assign weight_5_0_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_1_payload = wPort0_rData[15 : 8];
  assign weight_5_1_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_2_payload = wPort0_rData[23 : 16];
  assign weight_5_2_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_3_payload = wPort0_rData[31 : 24];
  assign weight_5_3_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_4_payload = wPort0_rData[39 : 32];
  assign weight_5_4_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_5_payload = wPort0_rData[47 : 40];
  assign weight_5_5_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_6_payload = wPort0_rData[55 : 48];
  assign weight_5_6_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_5_7_payload = wPort0_rData[63 : 56];
  assign weight_5_7_valid = (wCtrl_lwbValid && (3'b101 == wCtrl_kAutomicCnt));
  assign weight_6_0_payload = wPort0_rData[7 : 0];
  assign weight_6_0_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_1_payload = wPort0_rData[15 : 8];
  assign weight_6_1_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_2_payload = wPort0_rData[23 : 16];
  assign weight_6_2_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_3_payload = wPort0_rData[31 : 24];
  assign weight_6_3_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_4_payload = wPort0_rData[39 : 32];
  assign weight_6_4_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_5_payload = wPort0_rData[47 : 40];
  assign weight_6_5_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_6_payload = wPort0_rData[55 : 48];
  assign weight_6_6_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_6_7_payload = wPort0_rData[63 : 56];
  assign weight_6_7_valid = (wCtrl_lwbValid && (3'b110 == wCtrl_kAutomicCnt));
  assign weight_7_0_payload = wPort0_rData[7 : 0];
  assign weight_7_0_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_1_payload = wPort0_rData[15 : 8];
  assign weight_7_1_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_2_payload = wPort0_rData[23 : 16];
  assign weight_7_2_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_3_payload = wPort0_rData[31 : 24];
  assign weight_7_3_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_4_payload = wPort0_rData[39 : 32];
  assign weight_7_4_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_5_payload = wPort0_rData[47 : 40];
  assign weight_7_5_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_6_payload = wPort0_rData[55 : 48];
  assign weight_7_6_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign weight_7_7_payload = wPort0_rData[63 : 56];
  assign weight_7_7_valid = (wCtrl_lwbValid && (3'b111 == wCtrl_kAutomicCnt));
  assign when_PECtrl_l71 = (! wCtrl_wCtrlState);
  always @(*) begin
    if(when_PECtrl_l71) begin
      wPort0_en = 1'b0;
    end else begin
      wPort0_en = wAddr_fire;
    end
  end

  always @(*) begin
    if(when_PECtrl_l71) begin
      wAddr_ready = 1'b0;
    end else begin
      wAddr_ready = wCtrl_lwbReady;
    end
  end

  always @(*) begin
    if(when_PECtrl_l71) begin
      wPort0_addr = 15'h0;
    end else begin
      wPort0_addr = wAddr_payload;
    end
  end

  assign when_PECtrl_l85 = (wCtrl_kAutomicCnt < tmp_when_PECtrl_l85);
  assign when_PECtrl_l91 = (! wAddr_valid);
  assign finAddr_fire = (finAddr_valid && finAddr_ready);
  assign finCtrl_finReady = (((((((featureIn_0_ready && featureIn_1_ready) && featureIn_2_ready) && featureIn_3_ready) && featureIn_4_ready) && featureIn_5_ready) && featureIn_6_ready) && featureIn_7_ready);
  assign finCtrl_feature_0 = fPort0_rData[7 : 0];
  assign finCtrl_feature_1 = fPort0_rData[15 : 8];
  assign finCtrl_feature_2 = fPort0_rData[23 : 16];
  assign finCtrl_feature_3 = fPort0_rData[31 : 24];
  assign finCtrl_feature_4 = fPort0_rData[39 : 32];
  assign finCtrl_feature_5 = fPort0_rData[47 : 40];
  assign finCtrl_feature_6 = fPort0_rData[55 : 48];
  assign finCtrl_feature_7 = fPort0_rData[63 : 56];
  assign featureIn_0_payload = finCtrl_feature_0;
  assign featureIn_0_valid = finCtrl_finValid;
  assign featureIn_1_payload = finCtrl_feature_1;
  assign featureIn_1_valid = finCtrl_finValid;
  assign featureIn_2_payload = finCtrl_feature_2;
  assign featureIn_2_valid = finCtrl_finValid;
  assign featureIn_3_payload = finCtrl_feature_3;
  assign featureIn_3_valid = finCtrl_finValid;
  assign featureIn_4_payload = finCtrl_feature_4;
  assign featureIn_4_valid = finCtrl_finValid;
  assign featureIn_5_payload = finCtrl_feature_5;
  assign featureIn_5_valid = finCtrl_finValid;
  assign featureIn_6_payload = finCtrl_feature_6;
  assign featureIn_6_valid = finCtrl_finValid;
  assign featureIn_7_payload = finCtrl_feature_7;
  assign featureIn_7_valid = finCtrl_finValid;
  assign when_PECtrl_l111 = (! finCtrl_finCtrlState);
  always @(*) begin
    if(when_PECtrl_l111) begin
      fPort0_en = 1'b0;
    end else begin
      fPort0_en = finAddr_fire;
    end
  end

  always @(*) begin
    if(when_PECtrl_l111) begin
      finAddr_ready = 1'b0;
    end else begin
      finAddr_ready = finCtrl_finReady;
    end
  end

  always @(*) begin
    if(when_PECtrl_l111) begin
      fPort0_addr = 15'h0;
    end else begin
      fPort0_addr = finAddr_payload;
    end
  end

  assign when_PECtrl_l122 = (! wAddr_valid);
  assign foutCtrl_foutValid = (((((((featureOut_0_valid || featureOut_1_valid) || featureOut_2_valid) || featureOut_3_valid) || featureOut_4_valid) || featureOut_5_valid) || featureOut_6_valid) || featureOut_7_valid);
  assign fPort1_wData = {featureOut_0_payload,{featureOut_1_payload,{featureOut_2_payload,{featureOut_3_payload,{featureOut_4_payload,{featureOut_5_payload,{featureOut_6_payload,featureOut_7_payload}}}}}}};
  assign when_PECtrl_l136 = (! foutCtrl_foutCtrlState);
  always @(*) begin
    if(when_PECtrl_l136) begin
      fPort1_en = 1'b0;
    end else begin
      fPort1_en = foutCtrl_foutValid;
    end
  end

  always @(*) begin
    if(when_PECtrl_l136) begin
      foutAddr_ready = 1'b0;
    end else begin
      foutAddr_ready = foutCtrl_foutValid;
    end
  end

  always @(*) begin
    if(when_PECtrl_l136) begin
      fPort1_addr = 15'h0;
    end else begin
      fPort1_addr = foutAddr_payload;
    end
  end

  always @(*) begin
    if(when_PECtrl_l136) begin
      convParm_ready = 1'b1;
    end else begin
      convParm_ready = 1'b0;
    end
  end

  assign when_PECtrl_l149 = (! wAddr_valid);
  always @(posedge clk) begin
    if(convParm_fire) begin
      convParm_mode <= convParm_payload_mode;
      convParm_finBaseAddr <= convParm_payload_finBaseAddr;
      convParm_foutBaseAddr <= convParm_payload_foutBaseAddr;
      convParm_wBaseAddr <= convParm_payload_wBaseAddr;
      convParm_fHeight <= convParm_payload_fHeight;
      convParm_fWidth <= convParm_payload_fWidth;
      convParm_kSize <= convParm_payload_kSize;
      convParm_chIn <= convParm_payload_chIn;
      convParm_chOut <= convParm_payload_chOut;
      convParm_pad <= convParm_payload_pad;
      convParm_stride <= convParm_payload_stride;
      convParm_spLen <= convParm_payload_spLen;
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      wCtrl_wCtrlState <= 1'b0;
      wCtrl_kAutomicCnt <= 3'b000;
      wCtrl_lwbValid <= 1'b0;
      finCtrl_finCtrlState <= 1'b0;
      finCtrl_finValid <= 1'b0;
      foutCtrl_foutCtrlState <= 1'b0;
    end else begin
      wCtrl_lwbValid <= wAddr_fire;
      if(when_PECtrl_l71) begin
        if(convParm_fire) begin
          wCtrl_wCtrlState <= 1'b1;
          wCtrl_kAutomicCnt <= 3'b000;
        end
      end else begin
        if(wCtrl_lwbFire) begin
          if(when_PECtrl_l85) begin
            wCtrl_kAutomicCnt <= (wCtrl_kAutomicCnt + 3'b001);
          end else begin
            wCtrl_kAutomicCnt <= 3'b000;
          end
        end
        if(when_PECtrl_l91) begin
          wCtrl_wCtrlState <= 1'b0;
        end
      end
      finCtrl_finValid <= finAddr_fire;
      if(when_PECtrl_l111) begin
        if(convParm_fire) begin
          finCtrl_finCtrlState <= 1'b1;
        end
      end else begin
        if(when_PECtrl_l122) begin
          finCtrl_finCtrlState <= 1'b0;
        end
      end
      if(when_PECtrl_l136) begin
        if(convParm_fire) begin
          foutCtrl_foutCtrlState <= 1'b1;
        end
      end else begin
        if(when_PECtrl_l149) begin
          foutCtrl_foutCtrlState <= 1'b0;
        end
      end
    end
  end


endmodule
