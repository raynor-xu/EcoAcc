// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PETop
// Git hash  : 0b0872149023716abb874c9b16502c6e19bc1f13

`timescale 1ns/1ps

module PETop (
  input  wire          convParm_valid,
  output wire          convParm_ready,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [4:0]    convParm_payload_fHeight,
  input  wire [4:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [9:0]    convParm_payload_chIn,
  input  wire [9:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [2:0]    convParm_payload_stride,
  input  wire [9:0]    convParm_payload_spLen,
  output wire [14:0]   wPort0_addr,
  input  wire [63:0]   wPort0_rData,
  output wire          wPort0_en,
  output wire [14:0]   fPort0_addr,
  input  wire [63:0]   fPort0_rData,
  output wire          fPort0_en,
  output wire [14:0]   fPort1_addr,
  output wire [63:0]   fPort1_wData,
  output wire          fPort1_en,
  input  wire          clk,
  input  wire          reset
);

  wire                peArray_1_featureIn_0_ready;
  wire                peArray_1_featureIn_1_ready;
  wire                peArray_1_featureIn_2_ready;
  wire                peArray_1_featureIn_3_ready;
  wire                peArray_1_featureIn_4_ready;
  wire                peArray_1_featureIn_5_ready;
  wire                peArray_1_featureIn_6_ready;
  wire                peArray_1_featureIn_7_ready;
  wire                peArray_1_weight_0_0_ready;
  wire                peArray_1_weight_0_1_ready;
  wire                peArray_1_weight_0_2_ready;
  wire                peArray_1_weight_0_3_ready;
  wire                peArray_1_weight_0_4_ready;
  wire                peArray_1_weight_0_5_ready;
  wire                peArray_1_weight_0_6_ready;
  wire                peArray_1_weight_0_7_ready;
  wire                peArray_1_weight_1_0_ready;
  wire                peArray_1_weight_1_1_ready;
  wire                peArray_1_weight_1_2_ready;
  wire                peArray_1_weight_1_3_ready;
  wire                peArray_1_weight_1_4_ready;
  wire                peArray_1_weight_1_5_ready;
  wire                peArray_1_weight_1_6_ready;
  wire                peArray_1_weight_1_7_ready;
  wire                peArray_1_weight_2_0_ready;
  wire                peArray_1_weight_2_1_ready;
  wire                peArray_1_weight_2_2_ready;
  wire                peArray_1_weight_2_3_ready;
  wire                peArray_1_weight_2_4_ready;
  wire                peArray_1_weight_2_5_ready;
  wire                peArray_1_weight_2_6_ready;
  wire                peArray_1_weight_2_7_ready;
  wire                peArray_1_weight_3_0_ready;
  wire                peArray_1_weight_3_1_ready;
  wire                peArray_1_weight_3_2_ready;
  wire                peArray_1_weight_3_3_ready;
  wire                peArray_1_weight_3_4_ready;
  wire                peArray_1_weight_3_5_ready;
  wire                peArray_1_weight_3_6_ready;
  wire                peArray_1_weight_3_7_ready;
  wire                peArray_1_weight_4_0_ready;
  wire                peArray_1_weight_4_1_ready;
  wire                peArray_1_weight_4_2_ready;
  wire                peArray_1_weight_4_3_ready;
  wire                peArray_1_weight_4_4_ready;
  wire                peArray_1_weight_4_5_ready;
  wire                peArray_1_weight_4_6_ready;
  wire                peArray_1_weight_4_7_ready;
  wire                peArray_1_weight_5_0_ready;
  wire                peArray_1_weight_5_1_ready;
  wire                peArray_1_weight_5_2_ready;
  wire                peArray_1_weight_5_3_ready;
  wire                peArray_1_weight_5_4_ready;
  wire                peArray_1_weight_5_5_ready;
  wire                peArray_1_weight_5_6_ready;
  wire                peArray_1_weight_5_7_ready;
  wire                peArray_1_weight_6_0_ready;
  wire                peArray_1_weight_6_1_ready;
  wire                peArray_1_weight_6_2_ready;
  wire                peArray_1_weight_6_3_ready;
  wire                peArray_1_weight_6_4_ready;
  wire                peArray_1_weight_6_5_ready;
  wire                peArray_1_weight_6_6_ready;
  wire                peArray_1_weight_6_7_ready;
  wire                peArray_1_weight_7_0_ready;
  wire                peArray_1_weight_7_1_ready;
  wire                peArray_1_weight_7_2_ready;
  wire                peArray_1_weight_7_3_ready;
  wire                peArray_1_weight_7_4_ready;
  wire                peArray_1_weight_7_5_ready;
  wire                peArray_1_weight_7_6_ready;
  wire                peArray_1_weight_7_7_ready;
  wire                peArray_1_featureOut_0_valid;
  wire       [7:0]    peArray_1_featureOut_0_payload;
  wire                peArray_1_featureOut_1_valid;
  wire       [7:0]    peArray_1_featureOut_1_payload;
  wire                peArray_1_featureOut_2_valid;
  wire       [7:0]    peArray_1_featureOut_2_payload;
  wire                peArray_1_featureOut_3_valid;
  wire       [7:0]    peArray_1_featureOut_3_payload;
  wire                peArray_1_featureOut_4_valid;
  wire       [7:0]    peArray_1_featureOut_4_payload;
  wire                peArray_1_featureOut_5_valid;
  wire       [7:0]    peArray_1_featureOut_5_payload;
  wire                peArray_1_featureOut_6_valid;
  wire       [7:0]    peArray_1_featureOut_6_payload;
  wire                peArray_1_featureOut_7_valid;
  wire       [7:0]    peArray_1_featureOut_7_payload;
  wire                peCtrl_1_convParm_ready;
  wire                peCtrl_1_clear;
  wire                peCtrl_1_relu;
  wire       [2:0]    peCtrl_1_peMode;
  wire       [1:0]    peCtrl_1_ppuMode;
  wire       [9:0]    peCtrl_1_spLen;
  wire       [6:0]    peCtrl_1_loopLen;
  wire       [5:0]    peCtrl_1_kChDim;
  wire                peCtrl_1_featureIn_0_valid;
  wire       [7:0]    peCtrl_1_featureIn_0_payload;
  wire                peCtrl_1_featureIn_1_valid;
  wire       [7:0]    peCtrl_1_featureIn_1_payload;
  wire                peCtrl_1_featureIn_2_valid;
  wire       [7:0]    peCtrl_1_featureIn_2_payload;
  wire                peCtrl_1_featureIn_3_valid;
  wire       [7:0]    peCtrl_1_featureIn_3_payload;
  wire                peCtrl_1_featureIn_4_valid;
  wire       [7:0]    peCtrl_1_featureIn_4_payload;
  wire                peCtrl_1_featureIn_5_valid;
  wire       [7:0]    peCtrl_1_featureIn_5_payload;
  wire                peCtrl_1_featureIn_6_valid;
  wire       [7:0]    peCtrl_1_featureIn_6_payload;
  wire                peCtrl_1_featureIn_7_valid;
  wire       [7:0]    peCtrl_1_featureIn_7_payload;
  wire                peCtrl_1_weight_0_0_valid;
  wire       [7:0]    peCtrl_1_weight_0_0_payload;
  wire                peCtrl_1_weight_0_1_valid;
  wire       [7:0]    peCtrl_1_weight_0_1_payload;
  wire                peCtrl_1_weight_0_2_valid;
  wire       [7:0]    peCtrl_1_weight_0_2_payload;
  wire                peCtrl_1_weight_0_3_valid;
  wire       [7:0]    peCtrl_1_weight_0_3_payload;
  wire                peCtrl_1_weight_0_4_valid;
  wire       [7:0]    peCtrl_1_weight_0_4_payload;
  wire                peCtrl_1_weight_0_5_valid;
  wire       [7:0]    peCtrl_1_weight_0_5_payload;
  wire                peCtrl_1_weight_0_6_valid;
  wire       [7:0]    peCtrl_1_weight_0_6_payload;
  wire                peCtrl_1_weight_0_7_valid;
  wire       [7:0]    peCtrl_1_weight_0_7_payload;
  wire                peCtrl_1_weight_1_0_valid;
  wire       [7:0]    peCtrl_1_weight_1_0_payload;
  wire                peCtrl_1_weight_1_1_valid;
  wire       [7:0]    peCtrl_1_weight_1_1_payload;
  wire                peCtrl_1_weight_1_2_valid;
  wire       [7:0]    peCtrl_1_weight_1_2_payload;
  wire                peCtrl_1_weight_1_3_valid;
  wire       [7:0]    peCtrl_1_weight_1_3_payload;
  wire                peCtrl_1_weight_1_4_valid;
  wire       [7:0]    peCtrl_1_weight_1_4_payload;
  wire                peCtrl_1_weight_1_5_valid;
  wire       [7:0]    peCtrl_1_weight_1_5_payload;
  wire                peCtrl_1_weight_1_6_valid;
  wire       [7:0]    peCtrl_1_weight_1_6_payload;
  wire                peCtrl_1_weight_1_7_valid;
  wire       [7:0]    peCtrl_1_weight_1_7_payload;
  wire                peCtrl_1_weight_2_0_valid;
  wire       [7:0]    peCtrl_1_weight_2_0_payload;
  wire                peCtrl_1_weight_2_1_valid;
  wire       [7:0]    peCtrl_1_weight_2_1_payload;
  wire                peCtrl_1_weight_2_2_valid;
  wire       [7:0]    peCtrl_1_weight_2_2_payload;
  wire                peCtrl_1_weight_2_3_valid;
  wire       [7:0]    peCtrl_1_weight_2_3_payload;
  wire                peCtrl_1_weight_2_4_valid;
  wire       [7:0]    peCtrl_1_weight_2_4_payload;
  wire                peCtrl_1_weight_2_5_valid;
  wire       [7:0]    peCtrl_1_weight_2_5_payload;
  wire                peCtrl_1_weight_2_6_valid;
  wire       [7:0]    peCtrl_1_weight_2_6_payload;
  wire                peCtrl_1_weight_2_7_valid;
  wire       [7:0]    peCtrl_1_weight_2_7_payload;
  wire                peCtrl_1_weight_3_0_valid;
  wire       [7:0]    peCtrl_1_weight_3_0_payload;
  wire                peCtrl_1_weight_3_1_valid;
  wire       [7:0]    peCtrl_1_weight_3_1_payload;
  wire                peCtrl_1_weight_3_2_valid;
  wire       [7:0]    peCtrl_1_weight_3_2_payload;
  wire                peCtrl_1_weight_3_3_valid;
  wire       [7:0]    peCtrl_1_weight_3_3_payload;
  wire                peCtrl_1_weight_3_4_valid;
  wire       [7:0]    peCtrl_1_weight_3_4_payload;
  wire                peCtrl_1_weight_3_5_valid;
  wire       [7:0]    peCtrl_1_weight_3_5_payload;
  wire                peCtrl_1_weight_3_6_valid;
  wire       [7:0]    peCtrl_1_weight_3_6_payload;
  wire                peCtrl_1_weight_3_7_valid;
  wire       [7:0]    peCtrl_1_weight_3_7_payload;
  wire                peCtrl_1_weight_4_0_valid;
  wire       [7:0]    peCtrl_1_weight_4_0_payload;
  wire                peCtrl_1_weight_4_1_valid;
  wire       [7:0]    peCtrl_1_weight_4_1_payload;
  wire                peCtrl_1_weight_4_2_valid;
  wire       [7:0]    peCtrl_1_weight_4_2_payload;
  wire                peCtrl_1_weight_4_3_valid;
  wire       [7:0]    peCtrl_1_weight_4_3_payload;
  wire                peCtrl_1_weight_4_4_valid;
  wire       [7:0]    peCtrl_1_weight_4_4_payload;
  wire                peCtrl_1_weight_4_5_valid;
  wire       [7:0]    peCtrl_1_weight_4_5_payload;
  wire                peCtrl_1_weight_4_6_valid;
  wire       [7:0]    peCtrl_1_weight_4_6_payload;
  wire                peCtrl_1_weight_4_7_valid;
  wire       [7:0]    peCtrl_1_weight_4_7_payload;
  wire                peCtrl_1_weight_5_0_valid;
  wire       [7:0]    peCtrl_1_weight_5_0_payload;
  wire                peCtrl_1_weight_5_1_valid;
  wire       [7:0]    peCtrl_1_weight_5_1_payload;
  wire                peCtrl_1_weight_5_2_valid;
  wire       [7:0]    peCtrl_1_weight_5_2_payload;
  wire                peCtrl_1_weight_5_3_valid;
  wire       [7:0]    peCtrl_1_weight_5_3_payload;
  wire                peCtrl_1_weight_5_4_valid;
  wire       [7:0]    peCtrl_1_weight_5_4_payload;
  wire                peCtrl_1_weight_5_5_valid;
  wire       [7:0]    peCtrl_1_weight_5_5_payload;
  wire                peCtrl_1_weight_5_6_valid;
  wire       [7:0]    peCtrl_1_weight_5_6_payload;
  wire                peCtrl_1_weight_5_7_valid;
  wire       [7:0]    peCtrl_1_weight_5_7_payload;
  wire                peCtrl_1_weight_6_0_valid;
  wire       [7:0]    peCtrl_1_weight_6_0_payload;
  wire                peCtrl_1_weight_6_1_valid;
  wire       [7:0]    peCtrl_1_weight_6_1_payload;
  wire                peCtrl_1_weight_6_2_valid;
  wire       [7:0]    peCtrl_1_weight_6_2_payload;
  wire                peCtrl_1_weight_6_3_valid;
  wire       [7:0]    peCtrl_1_weight_6_3_payload;
  wire                peCtrl_1_weight_6_4_valid;
  wire       [7:0]    peCtrl_1_weight_6_4_payload;
  wire                peCtrl_1_weight_6_5_valid;
  wire       [7:0]    peCtrl_1_weight_6_5_payload;
  wire                peCtrl_1_weight_6_6_valid;
  wire       [7:0]    peCtrl_1_weight_6_6_payload;
  wire                peCtrl_1_weight_6_7_valid;
  wire       [7:0]    peCtrl_1_weight_6_7_payload;
  wire                peCtrl_1_weight_7_0_valid;
  wire       [7:0]    peCtrl_1_weight_7_0_payload;
  wire                peCtrl_1_weight_7_1_valid;
  wire       [7:0]    peCtrl_1_weight_7_1_payload;
  wire                peCtrl_1_weight_7_2_valid;
  wire       [7:0]    peCtrl_1_weight_7_2_payload;
  wire                peCtrl_1_weight_7_3_valid;
  wire       [7:0]    peCtrl_1_weight_7_3_payload;
  wire                peCtrl_1_weight_7_4_valid;
  wire       [7:0]    peCtrl_1_weight_7_4_payload;
  wire                peCtrl_1_weight_7_5_valid;
  wire       [7:0]    peCtrl_1_weight_7_5_payload;
  wire                peCtrl_1_weight_7_6_valid;
  wire       [7:0]    peCtrl_1_weight_7_6_payload;
  wire                peCtrl_1_weight_7_7_valid;
  wire       [7:0]    peCtrl_1_weight_7_7_payload;
  wire                peCtrl_1_wAddr_ready;
  wire                peCtrl_1_finAddr_ready;
  wire                peCtrl_1_foutAddr_ready;
  wire       [14:0]   peCtrl_1_wPort0_addr;
  wire                peCtrl_1_wPort0_en;
  wire       [14:0]   peCtrl_1_fPort0_addr;
  wire                peCtrl_1_fPort0_en;
  wire       [14:0]   peCtrl_1_fPort1_addr;
  wire                peCtrl_1_fPort1_en;
  wire       [63:0]   peCtrl_1_fPort1_wData;
  wire                addrGen_1_wAddr_valid;
  wire       [14:0]   addrGen_1_wAddr_payload;
  wire                addrGen_1_finAddr_valid;
  wire       [14:0]   addrGen_1_finAddr_payload;
  wire                addrGen_1_foutAddr_valid;
  wire       [14:0]   addrGen_1_foutAddr_payload;

  PEArray peArray_1 (
    .clear                (peCtrl_1_clear                     ), //i
    .relu                 (peCtrl_1_relu                      ), //i
    .peMode               (peCtrl_1_peMode[2:0]               ), //i
    .ppuMode              (peCtrl_1_ppuMode[1:0]              ), //i
    .spLen                (peCtrl_1_spLen[9:0]                ), //i
    .loopLen              (peCtrl_1_loopLen[6:0]              ), //i
    .kChDim               (peCtrl_1_kChDim[5:0]               ), //i
    .featureIn_0_valid    (peCtrl_1_featureIn_0_valid         ), //i
    .featureIn_0_ready    (peArray_1_featureIn_0_ready        ), //o
    .featureIn_0_payload  (peCtrl_1_featureIn_0_payload[7:0]  ), //i
    .featureIn_1_valid    (peCtrl_1_featureIn_1_valid         ), //i
    .featureIn_1_ready    (peArray_1_featureIn_1_ready        ), //o
    .featureIn_1_payload  (peCtrl_1_featureIn_1_payload[7:0]  ), //i
    .featureIn_2_valid    (peCtrl_1_featureIn_2_valid         ), //i
    .featureIn_2_ready    (peArray_1_featureIn_2_ready        ), //o
    .featureIn_2_payload  (peCtrl_1_featureIn_2_payload[7:0]  ), //i
    .featureIn_3_valid    (peCtrl_1_featureIn_3_valid         ), //i
    .featureIn_3_ready    (peArray_1_featureIn_3_ready        ), //o
    .featureIn_3_payload  (peCtrl_1_featureIn_3_payload[7:0]  ), //i
    .featureIn_4_valid    (peCtrl_1_featureIn_4_valid         ), //i
    .featureIn_4_ready    (peArray_1_featureIn_4_ready        ), //o
    .featureIn_4_payload  (peCtrl_1_featureIn_4_payload[7:0]  ), //i
    .featureIn_5_valid    (peCtrl_1_featureIn_5_valid         ), //i
    .featureIn_5_ready    (peArray_1_featureIn_5_ready        ), //o
    .featureIn_5_payload  (peCtrl_1_featureIn_5_payload[7:0]  ), //i
    .featureIn_6_valid    (peCtrl_1_featureIn_6_valid         ), //i
    .featureIn_6_ready    (peArray_1_featureIn_6_ready        ), //o
    .featureIn_6_payload  (peCtrl_1_featureIn_6_payload[7:0]  ), //i
    .featureIn_7_valid    (peCtrl_1_featureIn_7_valid         ), //i
    .featureIn_7_ready    (peArray_1_featureIn_7_ready        ), //o
    .featureIn_7_payload  (peCtrl_1_featureIn_7_payload[7:0]  ), //i
    .weight_0_0_valid     (peCtrl_1_weight_0_0_valid          ), //i
    .weight_0_0_ready     (peArray_1_weight_0_0_ready         ), //o
    .weight_0_0_payload   (peCtrl_1_weight_0_0_payload[7:0]   ), //i
    .weight_0_1_valid     (peCtrl_1_weight_0_1_valid          ), //i
    .weight_0_1_ready     (peArray_1_weight_0_1_ready         ), //o
    .weight_0_1_payload   (peCtrl_1_weight_0_1_payload[7:0]   ), //i
    .weight_0_2_valid     (peCtrl_1_weight_0_2_valid          ), //i
    .weight_0_2_ready     (peArray_1_weight_0_2_ready         ), //o
    .weight_0_2_payload   (peCtrl_1_weight_0_2_payload[7:0]   ), //i
    .weight_0_3_valid     (peCtrl_1_weight_0_3_valid          ), //i
    .weight_0_3_ready     (peArray_1_weight_0_3_ready         ), //o
    .weight_0_3_payload   (peCtrl_1_weight_0_3_payload[7:0]   ), //i
    .weight_0_4_valid     (peCtrl_1_weight_0_4_valid          ), //i
    .weight_0_4_ready     (peArray_1_weight_0_4_ready         ), //o
    .weight_0_4_payload   (peCtrl_1_weight_0_4_payload[7:0]   ), //i
    .weight_0_5_valid     (peCtrl_1_weight_0_5_valid          ), //i
    .weight_0_5_ready     (peArray_1_weight_0_5_ready         ), //o
    .weight_0_5_payload   (peCtrl_1_weight_0_5_payload[7:0]   ), //i
    .weight_0_6_valid     (peCtrl_1_weight_0_6_valid          ), //i
    .weight_0_6_ready     (peArray_1_weight_0_6_ready         ), //o
    .weight_0_6_payload   (peCtrl_1_weight_0_6_payload[7:0]   ), //i
    .weight_0_7_valid     (peCtrl_1_weight_0_7_valid          ), //i
    .weight_0_7_ready     (peArray_1_weight_0_7_ready         ), //o
    .weight_0_7_payload   (peCtrl_1_weight_0_7_payload[7:0]   ), //i
    .weight_1_0_valid     (peCtrl_1_weight_1_0_valid          ), //i
    .weight_1_0_ready     (peArray_1_weight_1_0_ready         ), //o
    .weight_1_0_payload   (peCtrl_1_weight_1_0_payload[7:0]   ), //i
    .weight_1_1_valid     (peCtrl_1_weight_1_1_valid          ), //i
    .weight_1_1_ready     (peArray_1_weight_1_1_ready         ), //o
    .weight_1_1_payload   (peCtrl_1_weight_1_1_payload[7:0]   ), //i
    .weight_1_2_valid     (peCtrl_1_weight_1_2_valid          ), //i
    .weight_1_2_ready     (peArray_1_weight_1_2_ready         ), //o
    .weight_1_2_payload   (peCtrl_1_weight_1_2_payload[7:0]   ), //i
    .weight_1_3_valid     (peCtrl_1_weight_1_3_valid          ), //i
    .weight_1_3_ready     (peArray_1_weight_1_3_ready         ), //o
    .weight_1_3_payload   (peCtrl_1_weight_1_3_payload[7:0]   ), //i
    .weight_1_4_valid     (peCtrl_1_weight_1_4_valid          ), //i
    .weight_1_4_ready     (peArray_1_weight_1_4_ready         ), //o
    .weight_1_4_payload   (peCtrl_1_weight_1_4_payload[7:0]   ), //i
    .weight_1_5_valid     (peCtrl_1_weight_1_5_valid          ), //i
    .weight_1_5_ready     (peArray_1_weight_1_5_ready         ), //o
    .weight_1_5_payload   (peCtrl_1_weight_1_5_payload[7:0]   ), //i
    .weight_1_6_valid     (peCtrl_1_weight_1_6_valid          ), //i
    .weight_1_6_ready     (peArray_1_weight_1_6_ready         ), //o
    .weight_1_6_payload   (peCtrl_1_weight_1_6_payload[7:0]   ), //i
    .weight_1_7_valid     (peCtrl_1_weight_1_7_valid          ), //i
    .weight_1_7_ready     (peArray_1_weight_1_7_ready         ), //o
    .weight_1_7_payload   (peCtrl_1_weight_1_7_payload[7:0]   ), //i
    .weight_2_0_valid     (peCtrl_1_weight_2_0_valid          ), //i
    .weight_2_0_ready     (peArray_1_weight_2_0_ready         ), //o
    .weight_2_0_payload   (peCtrl_1_weight_2_0_payload[7:0]   ), //i
    .weight_2_1_valid     (peCtrl_1_weight_2_1_valid          ), //i
    .weight_2_1_ready     (peArray_1_weight_2_1_ready         ), //o
    .weight_2_1_payload   (peCtrl_1_weight_2_1_payload[7:0]   ), //i
    .weight_2_2_valid     (peCtrl_1_weight_2_2_valid          ), //i
    .weight_2_2_ready     (peArray_1_weight_2_2_ready         ), //o
    .weight_2_2_payload   (peCtrl_1_weight_2_2_payload[7:0]   ), //i
    .weight_2_3_valid     (peCtrl_1_weight_2_3_valid          ), //i
    .weight_2_3_ready     (peArray_1_weight_2_3_ready         ), //o
    .weight_2_3_payload   (peCtrl_1_weight_2_3_payload[7:0]   ), //i
    .weight_2_4_valid     (peCtrl_1_weight_2_4_valid          ), //i
    .weight_2_4_ready     (peArray_1_weight_2_4_ready         ), //o
    .weight_2_4_payload   (peCtrl_1_weight_2_4_payload[7:0]   ), //i
    .weight_2_5_valid     (peCtrl_1_weight_2_5_valid          ), //i
    .weight_2_5_ready     (peArray_1_weight_2_5_ready         ), //o
    .weight_2_5_payload   (peCtrl_1_weight_2_5_payload[7:0]   ), //i
    .weight_2_6_valid     (peCtrl_1_weight_2_6_valid          ), //i
    .weight_2_6_ready     (peArray_1_weight_2_6_ready         ), //o
    .weight_2_6_payload   (peCtrl_1_weight_2_6_payload[7:0]   ), //i
    .weight_2_7_valid     (peCtrl_1_weight_2_7_valid          ), //i
    .weight_2_7_ready     (peArray_1_weight_2_7_ready         ), //o
    .weight_2_7_payload   (peCtrl_1_weight_2_7_payload[7:0]   ), //i
    .weight_3_0_valid     (peCtrl_1_weight_3_0_valid          ), //i
    .weight_3_0_ready     (peArray_1_weight_3_0_ready         ), //o
    .weight_3_0_payload   (peCtrl_1_weight_3_0_payload[7:0]   ), //i
    .weight_3_1_valid     (peCtrl_1_weight_3_1_valid          ), //i
    .weight_3_1_ready     (peArray_1_weight_3_1_ready         ), //o
    .weight_3_1_payload   (peCtrl_1_weight_3_1_payload[7:0]   ), //i
    .weight_3_2_valid     (peCtrl_1_weight_3_2_valid          ), //i
    .weight_3_2_ready     (peArray_1_weight_3_2_ready         ), //o
    .weight_3_2_payload   (peCtrl_1_weight_3_2_payload[7:0]   ), //i
    .weight_3_3_valid     (peCtrl_1_weight_3_3_valid          ), //i
    .weight_3_3_ready     (peArray_1_weight_3_3_ready         ), //o
    .weight_3_3_payload   (peCtrl_1_weight_3_3_payload[7:0]   ), //i
    .weight_3_4_valid     (peCtrl_1_weight_3_4_valid          ), //i
    .weight_3_4_ready     (peArray_1_weight_3_4_ready         ), //o
    .weight_3_4_payload   (peCtrl_1_weight_3_4_payload[7:0]   ), //i
    .weight_3_5_valid     (peCtrl_1_weight_3_5_valid          ), //i
    .weight_3_5_ready     (peArray_1_weight_3_5_ready         ), //o
    .weight_3_5_payload   (peCtrl_1_weight_3_5_payload[7:0]   ), //i
    .weight_3_6_valid     (peCtrl_1_weight_3_6_valid          ), //i
    .weight_3_6_ready     (peArray_1_weight_3_6_ready         ), //o
    .weight_3_6_payload   (peCtrl_1_weight_3_6_payload[7:0]   ), //i
    .weight_3_7_valid     (peCtrl_1_weight_3_7_valid          ), //i
    .weight_3_7_ready     (peArray_1_weight_3_7_ready         ), //o
    .weight_3_7_payload   (peCtrl_1_weight_3_7_payload[7:0]   ), //i
    .weight_4_0_valid     (peCtrl_1_weight_4_0_valid          ), //i
    .weight_4_0_ready     (peArray_1_weight_4_0_ready         ), //o
    .weight_4_0_payload   (peCtrl_1_weight_4_0_payload[7:0]   ), //i
    .weight_4_1_valid     (peCtrl_1_weight_4_1_valid          ), //i
    .weight_4_1_ready     (peArray_1_weight_4_1_ready         ), //o
    .weight_4_1_payload   (peCtrl_1_weight_4_1_payload[7:0]   ), //i
    .weight_4_2_valid     (peCtrl_1_weight_4_2_valid          ), //i
    .weight_4_2_ready     (peArray_1_weight_4_2_ready         ), //o
    .weight_4_2_payload   (peCtrl_1_weight_4_2_payload[7:0]   ), //i
    .weight_4_3_valid     (peCtrl_1_weight_4_3_valid          ), //i
    .weight_4_3_ready     (peArray_1_weight_4_3_ready         ), //o
    .weight_4_3_payload   (peCtrl_1_weight_4_3_payload[7:0]   ), //i
    .weight_4_4_valid     (peCtrl_1_weight_4_4_valid          ), //i
    .weight_4_4_ready     (peArray_1_weight_4_4_ready         ), //o
    .weight_4_4_payload   (peCtrl_1_weight_4_4_payload[7:0]   ), //i
    .weight_4_5_valid     (peCtrl_1_weight_4_5_valid          ), //i
    .weight_4_5_ready     (peArray_1_weight_4_5_ready         ), //o
    .weight_4_5_payload   (peCtrl_1_weight_4_5_payload[7:0]   ), //i
    .weight_4_6_valid     (peCtrl_1_weight_4_6_valid          ), //i
    .weight_4_6_ready     (peArray_1_weight_4_6_ready         ), //o
    .weight_4_6_payload   (peCtrl_1_weight_4_6_payload[7:0]   ), //i
    .weight_4_7_valid     (peCtrl_1_weight_4_7_valid          ), //i
    .weight_4_7_ready     (peArray_1_weight_4_7_ready         ), //o
    .weight_4_7_payload   (peCtrl_1_weight_4_7_payload[7:0]   ), //i
    .weight_5_0_valid     (peCtrl_1_weight_5_0_valid          ), //i
    .weight_5_0_ready     (peArray_1_weight_5_0_ready         ), //o
    .weight_5_0_payload   (peCtrl_1_weight_5_0_payload[7:0]   ), //i
    .weight_5_1_valid     (peCtrl_1_weight_5_1_valid          ), //i
    .weight_5_1_ready     (peArray_1_weight_5_1_ready         ), //o
    .weight_5_1_payload   (peCtrl_1_weight_5_1_payload[7:0]   ), //i
    .weight_5_2_valid     (peCtrl_1_weight_5_2_valid          ), //i
    .weight_5_2_ready     (peArray_1_weight_5_2_ready         ), //o
    .weight_5_2_payload   (peCtrl_1_weight_5_2_payload[7:0]   ), //i
    .weight_5_3_valid     (peCtrl_1_weight_5_3_valid          ), //i
    .weight_5_3_ready     (peArray_1_weight_5_3_ready         ), //o
    .weight_5_3_payload   (peCtrl_1_weight_5_3_payload[7:0]   ), //i
    .weight_5_4_valid     (peCtrl_1_weight_5_4_valid          ), //i
    .weight_5_4_ready     (peArray_1_weight_5_4_ready         ), //o
    .weight_5_4_payload   (peCtrl_1_weight_5_4_payload[7:0]   ), //i
    .weight_5_5_valid     (peCtrl_1_weight_5_5_valid          ), //i
    .weight_5_5_ready     (peArray_1_weight_5_5_ready         ), //o
    .weight_5_5_payload   (peCtrl_1_weight_5_5_payload[7:0]   ), //i
    .weight_5_6_valid     (peCtrl_1_weight_5_6_valid          ), //i
    .weight_5_6_ready     (peArray_1_weight_5_6_ready         ), //o
    .weight_5_6_payload   (peCtrl_1_weight_5_6_payload[7:0]   ), //i
    .weight_5_7_valid     (peCtrl_1_weight_5_7_valid          ), //i
    .weight_5_7_ready     (peArray_1_weight_5_7_ready         ), //o
    .weight_5_7_payload   (peCtrl_1_weight_5_7_payload[7:0]   ), //i
    .weight_6_0_valid     (peCtrl_1_weight_6_0_valid          ), //i
    .weight_6_0_ready     (peArray_1_weight_6_0_ready         ), //o
    .weight_6_0_payload   (peCtrl_1_weight_6_0_payload[7:0]   ), //i
    .weight_6_1_valid     (peCtrl_1_weight_6_1_valid          ), //i
    .weight_6_1_ready     (peArray_1_weight_6_1_ready         ), //o
    .weight_6_1_payload   (peCtrl_1_weight_6_1_payload[7:0]   ), //i
    .weight_6_2_valid     (peCtrl_1_weight_6_2_valid          ), //i
    .weight_6_2_ready     (peArray_1_weight_6_2_ready         ), //o
    .weight_6_2_payload   (peCtrl_1_weight_6_2_payload[7:0]   ), //i
    .weight_6_3_valid     (peCtrl_1_weight_6_3_valid          ), //i
    .weight_6_3_ready     (peArray_1_weight_6_3_ready         ), //o
    .weight_6_3_payload   (peCtrl_1_weight_6_3_payload[7:0]   ), //i
    .weight_6_4_valid     (peCtrl_1_weight_6_4_valid          ), //i
    .weight_6_4_ready     (peArray_1_weight_6_4_ready         ), //o
    .weight_6_4_payload   (peCtrl_1_weight_6_4_payload[7:0]   ), //i
    .weight_6_5_valid     (peCtrl_1_weight_6_5_valid          ), //i
    .weight_6_5_ready     (peArray_1_weight_6_5_ready         ), //o
    .weight_6_5_payload   (peCtrl_1_weight_6_5_payload[7:0]   ), //i
    .weight_6_6_valid     (peCtrl_1_weight_6_6_valid          ), //i
    .weight_6_6_ready     (peArray_1_weight_6_6_ready         ), //o
    .weight_6_6_payload   (peCtrl_1_weight_6_6_payload[7:0]   ), //i
    .weight_6_7_valid     (peCtrl_1_weight_6_7_valid          ), //i
    .weight_6_7_ready     (peArray_1_weight_6_7_ready         ), //o
    .weight_6_7_payload   (peCtrl_1_weight_6_7_payload[7:0]   ), //i
    .weight_7_0_valid     (peCtrl_1_weight_7_0_valid          ), //i
    .weight_7_0_ready     (peArray_1_weight_7_0_ready         ), //o
    .weight_7_0_payload   (peCtrl_1_weight_7_0_payload[7:0]   ), //i
    .weight_7_1_valid     (peCtrl_1_weight_7_1_valid          ), //i
    .weight_7_1_ready     (peArray_1_weight_7_1_ready         ), //o
    .weight_7_1_payload   (peCtrl_1_weight_7_1_payload[7:0]   ), //i
    .weight_7_2_valid     (peCtrl_1_weight_7_2_valid          ), //i
    .weight_7_2_ready     (peArray_1_weight_7_2_ready         ), //o
    .weight_7_2_payload   (peCtrl_1_weight_7_2_payload[7:0]   ), //i
    .weight_7_3_valid     (peCtrl_1_weight_7_3_valid          ), //i
    .weight_7_3_ready     (peArray_1_weight_7_3_ready         ), //o
    .weight_7_3_payload   (peCtrl_1_weight_7_3_payload[7:0]   ), //i
    .weight_7_4_valid     (peCtrl_1_weight_7_4_valid          ), //i
    .weight_7_4_ready     (peArray_1_weight_7_4_ready         ), //o
    .weight_7_4_payload   (peCtrl_1_weight_7_4_payload[7:0]   ), //i
    .weight_7_5_valid     (peCtrl_1_weight_7_5_valid          ), //i
    .weight_7_5_ready     (peArray_1_weight_7_5_ready         ), //o
    .weight_7_5_payload   (peCtrl_1_weight_7_5_payload[7:0]   ), //i
    .weight_7_6_valid     (peCtrl_1_weight_7_6_valid          ), //i
    .weight_7_6_ready     (peArray_1_weight_7_6_ready         ), //o
    .weight_7_6_payload   (peCtrl_1_weight_7_6_payload[7:0]   ), //i
    .weight_7_7_valid     (peCtrl_1_weight_7_7_valid          ), //i
    .weight_7_7_ready     (peArray_1_weight_7_7_ready         ), //o
    .weight_7_7_payload   (peCtrl_1_weight_7_7_payload[7:0]   ), //i
    .featureOut_0_valid   (peArray_1_featureOut_0_valid       ), //o
    .featureOut_0_payload (peArray_1_featureOut_0_payload[7:0]), //o
    .featureOut_1_valid   (peArray_1_featureOut_1_valid       ), //o
    .featureOut_1_payload (peArray_1_featureOut_1_payload[7:0]), //o
    .featureOut_2_valid   (peArray_1_featureOut_2_valid       ), //o
    .featureOut_2_payload (peArray_1_featureOut_2_payload[7:0]), //o
    .featureOut_3_valid   (peArray_1_featureOut_3_valid       ), //o
    .featureOut_3_payload (peArray_1_featureOut_3_payload[7:0]), //o
    .featureOut_4_valid   (peArray_1_featureOut_4_valid       ), //o
    .featureOut_4_payload (peArray_1_featureOut_4_payload[7:0]), //o
    .featureOut_5_valid   (peArray_1_featureOut_5_valid       ), //o
    .featureOut_5_payload (peArray_1_featureOut_5_payload[7:0]), //o
    .featureOut_6_valid   (peArray_1_featureOut_6_valid       ), //o
    .featureOut_6_payload (peArray_1_featureOut_6_payload[7:0]), //o
    .featureOut_7_valid   (peArray_1_featureOut_7_valid       ), //o
    .featureOut_7_payload (peArray_1_featureOut_7_payload[7:0]), //o
    .clk                  (clk                                ), //i
    .reset                (reset                              )  //i
  );
  PECtrl peCtrl_1 (
    .convParm_valid                (convParm_valid                     ), //i
    .convParm_ready                (peCtrl_1_convParm_ready            ), //o
    .convParm_payload_mode         (convParm_payload_mode[1:0]         ), //i
    .convParm_payload_finBaseAddr  (convParm_payload_finBaseAddr[14:0] ), //i
    .convParm_payload_foutBaseAddr (convParm_payload_foutBaseAddr[14:0]), //i
    .convParm_payload_wBaseAddr    (convParm_payload_wBaseAddr[14:0]   ), //i
    .convParm_payload_fHeight      (convParm_payload_fHeight[4:0]      ), //i
    .convParm_payload_fWidth       (convParm_payload_fWidth[4:0]       ), //i
    .convParm_payload_kSize        (convParm_payload_kSize[2:0]        ), //i
    .convParm_payload_chIn         (convParm_payload_chIn[9:0]         ), //i
    .convParm_payload_chOut        (convParm_payload_chOut[9:0]        ), //i
    .convParm_payload_pad          (convParm_payload_pad[2:0]          ), //i
    .convParm_payload_stride       (convParm_payload_stride[2:0]       ), //i
    .convParm_payload_spLen        (convParm_payload_spLen[9:0]        ), //i
    .clear                         (peCtrl_1_clear                     ), //o
    .relu                          (peCtrl_1_relu                      ), //o
    .peMode                        (peCtrl_1_peMode[2:0]               ), //o
    .ppuMode                       (peCtrl_1_ppuMode[1:0]              ), //o
    .spLen                         (peCtrl_1_spLen[9:0]                ), //o
    .loopLen                       (peCtrl_1_loopLen[6:0]              ), //o
    .kChDim                        (peCtrl_1_kChDim[5:0]               ), //o
    .featureIn_0_valid             (peCtrl_1_featureIn_0_valid         ), //o
    .featureIn_0_ready             (peArray_1_featureIn_0_ready        ), //i
    .featureIn_0_payload           (peCtrl_1_featureIn_0_payload[7:0]  ), //o
    .featureIn_1_valid             (peCtrl_1_featureIn_1_valid         ), //o
    .featureIn_1_ready             (peArray_1_featureIn_1_ready        ), //i
    .featureIn_1_payload           (peCtrl_1_featureIn_1_payload[7:0]  ), //o
    .featureIn_2_valid             (peCtrl_1_featureIn_2_valid         ), //o
    .featureIn_2_ready             (peArray_1_featureIn_2_ready        ), //i
    .featureIn_2_payload           (peCtrl_1_featureIn_2_payload[7:0]  ), //o
    .featureIn_3_valid             (peCtrl_1_featureIn_3_valid         ), //o
    .featureIn_3_ready             (peArray_1_featureIn_3_ready        ), //i
    .featureIn_3_payload           (peCtrl_1_featureIn_3_payload[7:0]  ), //o
    .featureIn_4_valid             (peCtrl_1_featureIn_4_valid         ), //o
    .featureIn_4_ready             (peArray_1_featureIn_4_ready        ), //i
    .featureIn_4_payload           (peCtrl_1_featureIn_4_payload[7:0]  ), //o
    .featureIn_5_valid             (peCtrl_1_featureIn_5_valid         ), //o
    .featureIn_5_ready             (peArray_1_featureIn_5_ready        ), //i
    .featureIn_5_payload           (peCtrl_1_featureIn_5_payload[7:0]  ), //o
    .featureIn_6_valid             (peCtrl_1_featureIn_6_valid         ), //o
    .featureIn_6_ready             (peArray_1_featureIn_6_ready        ), //i
    .featureIn_6_payload           (peCtrl_1_featureIn_6_payload[7:0]  ), //o
    .featureIn_7_valid             (peCtrl_1_featureIn_7_valid         ), //o
    .featureIn_7_ready             (peArray_1_featureIn_7_ready        ), //i
    .featureIn_7_payload           (peCtrl_1_featureIn_7_payload[7:0]  ), //o
    .weight_0_0_valid              (peCtrl_1_weight_0_0_valid          ), //o
    .weight_0_0_ready              (peArray_1_weight_0_0_ready         ), //i
    .weight_0_0_payload            (peCtrl_1_weight_0_0_payload[7:0]   ), //o
    .weight_0_1_valid              (peCtrl_1_weight_0_1_valid          ), //o
    .weight_0_1_ready              (peArray_1_weight_0_1_ready         ), //i
    .weight_0_1_payload            (peCtrl_1_weight_0_1_payload[7:0]   ), //o
    .weight_0_2_valid              (peCtrl_1_weight_0_2_valid          ), //o
    .weight_0_2_ready              (peArray_1_weight_0_2_ready         ), //i
    .weight_0_2_payload            (peCtrl_1_weight_0_2_payload[7:0]   ), //o
    .weight_0_3_valid              (peCtrl_1_weight_0_3_valid          ), //o
    .weight_0_3_ready              (peArray_1_weight_0_3_ready         ), //i
    .weight_0_3_payload            (peCtrl_1_weight_0_3_payload[7:0]   ), //o
    .weight_0_4_valid              (peCtrl_1_weight_0_4_valid          ), //o
    .weight_0_4_ready              (peArray_1_weight_0_4_ready         ), //i
    .weight_0_4_payload            (peCtrl_1_weight_0_4_payload[7:0]   ), //o
    .weight_0_5_valid              (peCtrl_1_weight_0_5_valid          ), //o
    .weight_0_5_ready              (peArray_1_weight_0_5_ready         ), //i
    .weight_0_5_payload            (peCtrl_1_weight_0_5_payload[7:0]   ), //o
    .weight_0_6_valid              (peCtrl_1_weight_0_6_valid          ), //o
    .weight_0_6_ready              (peArray_1_weight_0_6_ready         ), //i
    .weight_0_6_payload            (peCtrl_1_weight_0_6_payload[7:0]   ), //o
    .weight_0_7_valid              (peCtrl_1_weight_0_7_valid          ), //o
    .weight_0_7_ready              (peArray_1_weight_0_7_ready         ), //i
    .weight_0_7_payload            (peCtrl_1_weight_0_7_payload[7:0]   ), //o
    .weight_1_0_valid              (peCtrl_1_weight_1_0_valid          ), //o
    .weight_1_0_ready              (peArray_1_weight_1_0_ready         ), //i
    .weight_1_0_payload            (peCtrl_1_weight_1_0_payload[7:0]   ), //o
    .weight_1_1_valid              (peCtrl_1_weight_1_1_valid          ), //o
    .weight_1_1_ready              (peArray_1_weight_1_1_ready         ), //i
    .weight_1_1_payload            (peCtrl_1_weight_1_1_payload[7:0]   ), //o
    .weight_1_2_valid              (peCtrl_1_weight_1_2_valid          ), //o
    .weight_1_2_ready              (peArray_1_weight_1_2_ready         ), //i
    .weight_1_2_payload            (peCtrl_1_weight_1_2_payload[7:0]   ), //o
    .weight_1_3_valid              (peCtrl_1_weight_1_3_valid          ), //o
    .weight_1_3_ready              (peArray_1_weight_1_3_ready         ), //i
    .weight_1_3_payload            (peCtrl_1_weight_1_3_payload[7:0]   ), //o
    .weight_1_4_valid              (peCtrl_1_weight_1_4_valid          ), //o
    .weight_1_4_ready              (peArray_1_weight_1_4_ready         ), //i
    .weight_1_4_payload            (peCtrl_1_weight_1_4_payload[7:0]   ), //o
    .weight_1_5_valid              (peCtrl_1_weight_1_5_valid          ), //o
    .weight_1_5_ready              (peArray_1_weight_1_5_ready         ), //i
    .weight_1_5_payload            (peCtrl_1_weight_1_5_payload[7:0]   ), //o
    .weight_1_6_valid              (peCtrl_1_weight_1_6_valid          ), //o
    .weight_1_6_ready              (peArray_1_weight_1_6_ready         ), //i
    .weight_1_6_payload            (peCtrl_1_weight_1_6_payload[7:0]   ), //o
    .weight_1_7_valid              (peCtrl_1_weight_1_7_valid          ), //o
    .weight_1_7_ready              (peArray_1_weight_1_7_ready         ), //i
    .weight_1_7_payload            (peCtrl_1_weight_1_7_payload[7:0]   ), //o
    .weight_2_0_valid              (peCtrl_1_weight_2_0_valid          ), //o
    .weight_2_0_ready              (peArray_1_weight_2_0_ready         ), //i
    .weight_2_0_payload            (peCtrl_1_weight_2_0_payload[7:0]   ), //o
    .weight_2_1_valid              (peCtrl_1_weight_2_1_valid          ), //o
    .weight_2_1_ready              (peArray_1_weight_2_1_ready         ), //i
    .weight_2_1_payload            (peCtrl_1_weight_2_1_payload[7:0]   ), //o
    .weight_2_2_valid              (peCtrl_1_weight_2_2_valid          ), //o
    .weight_2_2_ready              (peArray_1_weight_2_2_ready         ), //i
    .weight_2_2_payload            (peCtrl_1_weight_2_2_payload[7:0]   ), //o
    .weight_2_3_valid              (peCtrl_1_weight_2_3_valid          ), //o
    .weight_2_3_ready              (peArray_1_weight_2_3_ready         ), //i
    .weight_2_3_payload            (peCtrl_1_weight_2_3_payload[7:0]   ), //o
    .weight_2_4_valid              (peCtrl_1_weight_2_4_valid          ), //o
    .weight_2_4_ready              (peArray_1_weight_2_4_ready         ), //i
    .weight_2_4_payload            (peCtrl_1_weight_2_4_payload[7:0]   ), //o
    .weight_2_5_valid              (peCtrl_1_weight_2_5_valid          ), //o
    .weight_2_5_ready              (peArray_1_weight_2_5_ready         ), //i
    .weight_2_5_payload            (peCtrl_1_weight_2_5_payload[7:0]   ), //o
    .weight_2_6_valid              (peCtrl_1_weight_2_6_valid          ), //o
    .weight_2_6_ready              (peArray_1_weight_2_6_ready         ), //i
    .weight_2_6_payload            (peCtrl_1_weight_2_6_payload[7:0]   ), //o
    .weight_2_7_valid              (peCtrl_1_weight_2_7_valid          ), //o
    .weight_2_7_ready              (peArray_1_weight_2_7_ready         ), //i
    .weight_2_7_payload            (peCtrl_1_weight_2_7_payload[7:0]   ), //o
    .weight_3_0_valid              (peCtrl_1_weight_3_0_valid          ), //o
    .weight_3_0_ready              (peArray_1_weight_3_0_ready         ), //i
    .weight_3_0_payload            (peCtrl_1_weight_3_0_payload[7:0]   ), //o
    .weight_3_1_valid              (peCtrl_1_weight_3_1_valid          ), //o
    .weight_3_1_ready              (peArray_1_weight_3_1_ready         ), //i
    .weight_3_1_payload            (peCtrl_1_weight_3_1_payload[7:0]   ), //o
    .weight_3_2_valid              (peCtrl_1_weight_3_2_valid          ), //o
    .weight_3_2_ready              (peArray_1_weight_3_2_ready         ), //i
    .weight_3_2_payload            (peCtrl_1_weight_3_2_payload[7:0]   ), //o
    .weight_3_3_valid              (peCtrl_1_weight_3_3_valid          ), //o
    .weight_3_3_ready              (peArray_1_weight_3_3_ready         ), //i
    .weight_3_3_payload            (peCtrl_1_weight_3_3_payload[7:0]   ), //o
    .weight_3_4_valid              (peCtrl_1_weight_3_4_valid          ), //o
    .weight_3_4_ready              (peArray_1_weight_3_4_ready         ), //i
    .weight_3_4_payload            (peCtrl_1_weight_3_4_payload[7:0]   ), //o
    .weight_3_5_valid              (peCtrl_1_weight_3_5_valid          ), //o
    .weight_3_5_ready              (peArray_1_weight_3_5_ready         ), //i
    .weight_3_5_payload            (peCtrl_1_weight_3_5_payload[7:0]   ), //o
    .weight_3_6_valid              (peCtrl_1_weight_3_6_valid          ), //o
    .weight_3_6_ready              (peArray_1_weight_3_6_ready         ), //i
    .weight_3_6_payload            (peCtrl_1_weight_3_6_payload[7:0]   ), //o
    .weight_3_7_valid              (peCtrl_1_weight_3_7_valid          ), //o
    .weight_3_7_ready              (peArray_1_weight_3_7_ready         ), //i
    .weight_3_7_payload            (peCtrl_1_weight_3_7_payload[7:0]   ), //o
    .weight_4_0_valid              (peCtrl_1_weight_4_0_valid          ), //o
    .weight_4_0_ready              (peArray_1_weight_4_0_ready         ), //i
    .weight_4_0_payload            (peCtrl_1_weight_4_0_payload[7:0]   ), //o
    .weight_4_1_valid              (peCtrl_1_weight_4_1_valid          ), //o
    .weight_4_1_ready              (peArray_1_weight_4_1_ready         ), //i
    .weight_4_1_payload            (peCtrl_1_weight_4_1_payload[7:0]   ), //o
    .weight_4_2_valid              (peCtrl_1_weight_4_2_valid          ), //o
    .weight_4_2_ready              (peArray_1_weight_4_2_ready         ), //i
    .weight_4_2_payload            (peCtrl_1_weight_4_2_payload[7:0]   ), //o
    .weight_4_3_valid              (peCtrl_1_weight_4_3_valid          ), //o
    .weight_4_3_ready              (peArray_1_weight_4_3_ready         ), //i
    .weight_4_3_payload            (peCtrl_1_weight_4_3_payload[7:0]   ), //o
    .weight_4_4_valid              (peCtrl_1_weight_4_4_valid          ), //o
    .weight_4_4_ready              (peArray_1_weight_4_4_ready         ), //i
    .weight_4_4_payload            (peCtrl_1_weight_4_4_payload[7:0]   ), //o
    .weight_4_5_valid              (peCtrl_1_weight_4_5_valid          ), //o
    .weight_4_5_ready              (peArray_1_weight_4_5_ready         ), //i
    .weight_4_5_payload            (peCtrl_1_weight_4_5_payload[7:0]   ), //o
    .weight_4_6_valid              (peCtrl_1_weight_4_6_valid          ), //o
    .weight_4_6_ready              (peArray_1_weight_4_6_ready         ), //i
    .weight_4_6_payload            (peCtrl_1_weight_4_6_payload[7:0]   ), //o
    .weight_4_7_valid              (peCtrl_1_weight_4_7_valid          ), //o
    .weight_4_7_ready              (peArray_1_weight_4_7_ready         ), //i
    .weight_4_7_payload            (peCtrl_1_weight_4_7_payload[7:0]   ), //o
    .weight_5_0_valid              (peCtrl_1_weight_5_0_valid          ), //o
    .weight_5_0_ready              (peArray_1_weight_5_0_ready         ), //i
    .weight_5_0_payload            (peCtrl_1_weight_5_0_payload[7:0]   ), //o
    .weight_5_1_valid              (peCtrl_1_weight_5_1_valid          ), //o
    .weight_5_1_ready              (peArray_1_weight_5_1_ready         ), //i
    .weight_5_1_payload            (peCtrl_1_weight_5_1_payload[7:0]   ), //o
    .weight_5_2_valid              (peCtrl_1_weight_5_2_valid          ), //o
    .weight_5_2_ready              (peArray_1_weight_5_2_ready         ), //i
    .weight_5_2_payload            (peCtrl_1_weight_5_2_payload[7:0]   ), //o
    .weight_5_3_valid              (peCtrl_1_weight_5_3_valid          ), //o
    .weight_5_3_ready              (peArray_1_weight_5_3_ready         ), //i
    .weight_5_3_payload            (peCtrl_1_weight_5_3_payload[7:0]   ), //o
    .weight_5_4_valid              (peCtrl_1_weight_5_4_valid          ), //o
    .weight_5_4_ready              (peArray_1_weight_5_4_ready         ), //i
    .weight_5_4_payload            (peCtrl_1_weight_5_4_payload[7:0]   ), //o
    .weight_5_5_valid              (peCtrl_1_weight_5_5_valid          ), //o
    .weight_5_5_ready              (peArray_1_weight_5_5_ready         ), //i
    .weight_5_5_payload            (peCtrl_1_weight_5_5_payload[7:0]   ), //o
    .weight_5_6_valid              (peCtrl_1_weight_5_6_valid          ), //o
    .weight_5_6_ready              (peArray_1_weight_5_6_ready         ), //i
    .weight_5_6_payload            (peCtrl_1_weight_5_6_payload[7:0]   ), //o
    .weight_5_7_valid              (peCtrl_1_weight_5_7_valid          ), //o
    .weight_5_7_ready              (peArray_1_weight_5_7_ready         ), //i
    .weight_5_7_payload            (peCtrl_1_weight_5_7_payload[7:0]   ), //o
    .weight_6_0_valid              (peCtrl_1_weight_6_0_valid          ), //o
    .weight_6_0_ready              (peArray_1_weight_6_0_ready         ), //i
    .weight_6_0_payload            (peCtrl_1_weight_6_0_payload[7:0]   ), //o
    .weight_6_1_valid              (peCtrl_1_weight_6_1_valid          ), //o
    .weight_6_1_ready              (peArray_1_weight_6_1_ready         ), //i
    .weight_6_1_payload            (peCtrl_1_weight_6_1_payload[7:0]   ), //o
    .weight_6_2_valid              (peCtrl_1_weight_6_2_valid          ), //o
    .weight_6_2_ready              (peArray_1_weight_6_2_ready         ), //i
    .weight_6_2_payload            (peCtrl_1_weight_6_2_payload[7:0]   ), //o
    .weight_6_3_valid              (peCtrl_1_weight_6_3_valid          ), //o
    .weight_6_3_ready              (peArray_1_weight_6_3_ready         ), //i
    .weight_6_3_payload            (peCtrl_1_weight_6_3_payload[7:0]   ), //o
    .weight_6_4_valid              (peCtrl_1_weight_6_4_valid          ), //o
    .weight_6_4_ready              (peArray_1_weight_6_4_ready         ), //i
    .weight_6_4_payload            (peCtrl_1_weight_6_4_payload[7:0]   ), //o
    .weight_6_5_valid              (peCtrl_1_weight_6_5_valid          ), //o
    .weight_6_5_ready              (peArray_1_weight_6_5_ready         ), //i
    .weight_6_5_payload            (peCtrl_1_weight_6_5_payload[7:0]   ), //o
    .weight_6_6_valid              (peCtrl_1_weight_6_6_valid          ), //o
    .weight_6_6_ready              (peArray_1_weight_6_6_ready         ), //i
    .weight_6_6_payload            (peCtrl_1_weight_6_6_payload[7:0]   ), //o
    .weight_6_7_valid              (peCtrl_1_weight_6_7_valid          ), //o
    .weight_6_7_ready              (peArray_1_weight_6_7_ready         ), //i
    .weight_6_7_payload            (peCtrl_1_weight_6_7_payload[7:0]   ), //o
    .weight_7_0_valid              (peCtrl_1_weight_7_0_valid          ), //o
    .weight_7_0_ready              (peArray_1_weight_7_0_ready         ), //i
    .weight_7_0_payload            (peCtrl_1_weight_7_0_payload[7:0]   ), //o
    .weight_7_1_valid              (peCtrl_1_weight_7_1_valid          ), //o
    .weight_7_1_ready              (peArray_1_weight_7_1_ready         ), //i
    .weight_7_1_payload            (peCtrl_1_weight_7_1_payload[7:0]   ), //o
    .weight_7_2_valid              (peCtrl_1_weight_7_2_valid          ), //o
    .weight_7_2_ready              (peArray_1_weight_7_2_ready         ), //i
    .weight_7_2_payload            (peCtrl_1_weight_7_2_payload[7:0]   ), //o
    .weight_7_3_valid              (peCtrl_1_weight_7_3_valid          ), //o
    .weight_7_3_ready              (peArray_1_weight_7_3_ready         ), //i
    .weight_7_3_payload            (peCtrl_1_weight_7_3_payload[7:0]   ), //o
    .weight_7_4_valid              (peCtrl_1_weight_7_4_valid          ), //o
    .weight_7_4_ready              (peArray_1_weight_7_4_ready         ), //i
    .weight_7_4_payload            (peCtrl_1_weight_7_4_payload[7:0]   ), //o
    .weight_7_5_valid              (peCtrl_1_weight_7_5_valid          ), //o
    .weight_7_5_ready              (peArray_1_weight_7_5_ready         ), //i
    .weight_7_5_payload            (peCtrl_1_weight_7_5_payload[7:0]   ), //o
    .weight_7_6_valid              (peCtrl_1_weight_7_6_valid          ), //o
    .weight_7_6_ready              (peArray_1_weight_7_6_ready         ), //i
    .weight_7_6_payload            (peCtrl_1_weight_7_6_payload[7:0]   ), //o
    .weight_7_7_valid              (peCtrl_1_weight_7_7_valid          ), //o
    .weight_7_7_ready              (peArray_1_weight_7_7_ready         ), //i
    .weight_7_7_payload            (peCtrl_1_weight_7_7_payload[7:0]   ), //o
    .featureOut_0_valid            (peArray_1_featureOut_0_valid       ), //i
    .featureOut_0_payload          (peArray_1_featureOut_0_payload[7:0]), //i
    .featureOut_1_valid            (peArray_1_featureOut_1_valid       ), //i
    .featureOut_1_payload          (peArray_1_featureOut_1_payload[7:0]), //i
    .featureOut_2_valid            (peArray_1_featureOut_2_valid       ), //i
    .featureOut_2_payload          (peArray_1_featureOut_2_payload[7:0]), //i
    .featureOut_3_valid            (peArray_1_featureOut_3_valid       ), //i
    .featureOut_3_payload          (peArray_1_featureOut_3_payload[7:0]), //i
    .featureOut_4_valid            (peArray_1_featureOut_4_valid       ), //i
    .featureOut_4_payload          (peArray_1_featureOut_4_payload[7:0]), //i
    .featureOut_5_valid            (peArray_1_featureOut_5_valid       ), //i
    .featureOut_5_payload          (peArray_1_featureOut_5_payload[7:0]), //i
    .featureOut_6_valid            (peArray_1_featureOut_6_valid       ), //i
    .featureOut_6_payload          (peArray_1_featureOut_6_payload[7:0]), //i
    .featureOut_7_valid            (peArray_1_featureOut_7_valid       ), //i
    .featureOut_7_payload          (peArray_1_featureOut_7_payload[7:0]), //i
    .wAddr_valid                   (addrGen_1_wAddr_valid              ), //i
    .wAddr_ready                   (peCtrl_1_wAddr_ready               ), //o
    .wAddr_payload                 (addrGen_1_wAddr_payload[14:0]      ), //i
    .finAddr_valid                 (addrGen_1_finAddr_valid            ), //i
    .finAddr_ready                 (peCtrl_1_finAddr_ready             ), //o
    .finAddr_payload               (addrGen_1_finAddr_payload[14:0]    ), //i
    .foutAddr_valid                (addrGen_1_foutAddr_valid           ), //i
    .foutAddr_ready                (peCtrl_1_foutAddr_ready            ), //o
    .foutAddr_payload              (addrGen_1_foutAddr_payload[14:0]   ), //i
    .wPort0_addr                   (peCtrl_1_wPort0_addr[14:0]         ), //o
    .wPort0_rData                  (wPort0_rData[63:0]                 ), //i
    .wPort0_en                     (peCtrl_1_wPort0_en                 ), //o
    .fPort0_addr                   (peCtrl_1_fPort0_addr[14:0]         ), //o
    .fPort0_rData                  (fPort0_rData[63:0]                 ), //i
    .fPort0_en                     (peCtrl_1_fPort0_en                 ), //o
    .fPort1_addr                   (peCtrl_1_fPort1_addr[14:0]         ), //o
    .fPort1_wData                  (peCtrl_1_fPort1_wData[63:0]        ), //o
    .fPort1_en                     (peCtrl_1_fPort1_en                 ), //o
    .clk                           (clk                                ), //i
    .reset                         (reset                              )  //i
  );
  AddrGen addrGen_1 (
    .convParm_valid                (convParm_valid                     ), //i
    .convParm_payload_mode         (convParm_payload_mode[1:0]         ), //i
    .convParm_payload_finBaseAddr  (convParm_payload_finBaseAddr[14:0] ), //i
    .convParm_payload_foutBaseAddr (convParm_payload_foutBaseAddr[14:0]), //i
    .convParm_payload_wBaseAddr    (convParm_payload_wBaseAddr[14:0]   ), //i
    .convParm_payload_fHeight      (convParm_payload_fHeight[4:0]      ), //i
    .convParm_payload_fWidth       (convParm_payload_fWidth[4:0]       ), //i
    .convParm_payload_kSize        (convParm_payload_kSize[2:0]        ), //i
    .convParm_payload_chIn         (convParm_payload_chIn[9:0]         ), //i
    .convParm_payload_chOut        (convParm_payload_chOut[9:0]        ), //i
    .convParm_payload_pad          (convParm_payload_pad[2:0]          ), //i
    .convParm_payload_stride       (convParm_payload_stride[2:0]       ), //i
    .convParm_payload_spLen        (convParm_payload_spLen[9:0]        ), //i
    .wAddr_valid                   (addrGen_1_wAddr_valid              ), //o
    .wAddr_ready                   (peCtrl_1_wAddr_ready               ), //i
    .wAddr_payload                 (addrGen_1_wAddr_payload[14:0]      ), //o
    .finAddr_valid                 (addrGen_1_finAddr_valid            ), //o
    .finAddr_ready                 (peCtrl_1_finAddr_ready             ), //i
    .finAddr_payload               (addrGen_1_finAddr_payload[14:0]    ), //o
    .foutAddr_valid                (addrGen_1_foutAddr_valid           ), //o
    .foutAddr_ready                (peCtrl_1_foutAddr_ready            ), //i
    .foutAddr_payload              (addrGen_1_foutAddr_payload[14:0]   ), //o
    .clk                           (clk                                ), //i
    .reset                         (reset                              )  //i
  );
  assign convParm_ready = peCtrl_1_convParm_ready;
  assign wPort0_addr = peCtrl_1_wPort0_addr;
  assign wPort0_en = peCtrl_1_wPort0_en;
  assign fPort0_addr = peCtrl_1_fPort0_addr;
  assign fPort0_en = peCtrl_1_fPort0_en;
  assign fPort1_addr = peCtrl_1_fPort1_addr;
  assign fPort1_wData = peCtrl_1_fPort1_wData;
  assign fPort1_en = peCtrl_1_fPort1_en;

endmodule

module AddrGen (
  input  wire          convParm_valid,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [4:0]    convParm_payload_fHeight,
  input  wire [4:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [9:0]    convParm_payload_chIn,
  input  wire [9:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [2:0]    convParm_payload_stride,
  input  wire [9:0]    convParm_payload_spLen,
  output wire          wAddr_valid,
  input  wire          wAddr_ready,
  output wire [14:0]   wAddr_payload,
  output wire          finAddr_valid,
  input  wire          finAddr_ready,
  output reg  [14:0]   finAddr_payload,
  output wire          foutAddr_valid,
  input  wire          foutAddr_ready,
  output wire [14:0]   foutAddr_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [9:0]    tmp_chInBlock;
  wire       [9:0]    tmp_chInBlock_1;
  wire       [9:0]    tmp_chOutBlock;
  wire       [9:0]    tmp_chOutBlock_1;
  wire       [5:0]    tmp_kerDim;
  wire       [4:0]    tmp_foutHeight;
  wire       [4:0]    tmp_foutHeight_1;
  wire       [4:0]    tmp_foutHeight_2;
  wire       [4:0]    tmp_foutHeight_3;
  wire       [4:0]    tmp_foutHeight_4;
  wire       [4:0]    tmp_foutWidth;
  wire       [4:0]    tmp_foutWidth_1;
  wire       [4:0]    tmp_foutWidth_2;
  wire       [4:0]    tmp_foutWidth_3;
  wire       [4:0]    tmp_foutWidth_4;
  wire       [23:0]   tmp_wAddr_payload;
  wire       [23:0]   tmp_wAddr_payload_1;
  wire       [15:0]   tmp_wAddr_payload_2;
  wire       [15:0]   tmp_wAddr_payload_3;
  wire       [14:0]   tmp_wAddr_payload_4;
  wire       [14:0]   tmp_wAddr_payload_5;
  wire       [15:0]   tmp_wAddr_payload_6;
  wire       [23:0]   tmp_wAddr_payload_7;
  wire       [16:0]   tmp_wAddr_payload_8;
  wire       [10:0]   tmp_wAddr_payload_9;
  wire       [10:0]   tmp_wAddr_payload_10;
  wire       [10:0]   tmp_wAddr_payload_11;
  wire       [8:0]    tmp_when_AddrGen_l61;
  wire       [5:0]    tmp_when_AddrGen_l61_1;
  wire       [6:0]    tmp_when_AddrGen_l69;
  wire       [6:0]    tmp_when_AddrGen_l73;
  wire       [19:0]   tmp_finAddr_payload;
  wire       [19:0]   tmp_finAddr_payload_1;
  wire       [14:0]   tmp_finAddr_payload_2;
  wire       [14:0]   tmp_finAddr_payload_3;
  wire       [14:0]   tmp_finAddr_payload_4;
  wire       [14:0]   tmp_finAddr_payload_5;
  wire       [7:0]    tmp_finAddr_payload_6;
  wire       [7:0]    tmp_finAddr_payload_7;
  wire       [7:0]    tmp_finAddr_payload_8;
  wire       [19:0]   tmp_finAddr_payload_9;
  wire       [14:0]   tmp_finAddr_payload_10;
  wire       [7:0]    tmp_finAddr_payload_11;
  wire       [7:0]    tmp_finAddr_payload_12;
  wire       [7:0]    tmp_finAddr_payload_13;
  wire       [2:0]    tmp_when_AddrGen_l131;
  wire       [2:0]    tmp_when_AddrGen_l135;
  wire       [9:0]    tmp_when_AddrGen_l139;
  wire       [6:0]    tmp_when_AddrGen_l139_1;
  wire       [4:0]    tmp_when_AddrGen_l143;
  wire       [4:0]    tmp_when_AddrGen_l147;
  wire       [4:0]    tmp_finAddrArea_hCounter;
  wire       [6:0]    tmp_when_AddrGen_l151;
  wire       [9:0]    tmp_foutAddrArea_hwcCounterReload;
  wire       [19:0]   tmp_foutAddr_payload;
  wire       [19:0]   tmp_foutAddr_payload_1;
  wire       [19:0]   tmp_when_AddrGen_l190;
  wire       [16:0]   tmp_when_AddrGen_l190_1;
  reg        [1:0]    convParm_mode;
  reg        [14:0]   convParm_finBaseAddr;
  reg        [14:0]   convParm_foutBaseAddr;
  reg        [14:0]   convParm_wBaseAddr;
  reg        [4:0]    convParm_fHeight;
  reg        [4:0]    convParm_fWidth;
  reg        [2:0]    convParm_kSize;
  reg        [9:0]    convParm_chIn;
  reg        [9:0]    convParm_chOut;
  reg        [2:0]    convParm_pad;
  reg        [2:0]    convParm_stride;
  reg        [9:0]    convParm_spLen;
  reg                 busy;
  wire       [6:0]    chInBlock;
  wire       [6:0]    chOutBlock;
  wire       [5:0]    kerChDim;
  wire       [12:0]   kerDim;
  wire       [4:0]    foutHeight;
  wire       [4:0]    foutWidth;
  reg                 wAddrGenArea_wAddrDone;
  reg        [6:0]    wAddrGenArea_nCounter;
  reg        [6:0]    wAddrGenArea_cCounter;
  reg        [2:0]    wAddrGenArea_kaCounter;
  reg        [8:0]    wAddrGenArea_rsCounter;
  wire       [5:0]    wAddrGenArea_rsCounterReload;
  reg                 wAddrGenArea_valid;
  wire                wAddr_fire;
  wire                when_AddrGen_l61;
  wire                when_AddrGen_l65;
  wire                when_AddrGen_l69;
  wire                when_AddrGen_l73;
  reg        [14:0]   finAddrArea_finBaseAddr;
  reg                 finAddrArea_finAddrDone;
  reg        [6:0]    finAddrArea_nCounter;
  reg        [4:0]    finAddrArea_hCounter;
  reg        [4:0]    finAddrArea_wCounter;
  reg        [9:0]    finAddrArea_cCounter;
  reg        [2:0]    finAddrArea_sCounter;
  reg        [2:0]    finAddrArea_rCounter;
  reg                 finAddrArea_valid;
  wire                finAddrArea_padFlag;
  wire                finAddr_fire;
  wire                when_AddrGen_l131;
  wire                when_AddrGen_l135;
  wire                when_AddrGen_l139;
  wire                when_AddrGen_l143;
  wire                when_AddrGen_l147;
  wire                when_AddrGen_l151;
  reg        [14:0]   foutAddrArea_foutBaseAddr;
  reg                 foutAddrArea_foutAddrDone;
  reg        [19:0]   foutAddrArea_hwcCounter;
  wire       [16:0]   foutAddrArea_hwcCounterReload;
  reg                 foutAddrArea_valid;
  wire                when_AddrGen_l189;
  wire                when_AddrGen_l190;
  wire                when_AddrGen_l205;

  assign tmp_chInBlock = (tmp_chInBlock_1 - 10'h001);
  assign tmp_chInBlock_1 = (convParm_chIn + 10'h008);
  assign tmp_chOutBlock = (tmp_chOutBlock_1 - 10'h001);
  assign tmp_chOutBlock_1 = (convParm_chOut + 10'h008);
  assign tmp_kerDim = (convParm_kSize * convParm_kSize);
  assign tmp_foutHeight = (tmp_foutHeight_1 / convParm_stride);
  assign tmp_foutHeight_1 = (tmp_foutHeight_2 + tmp_foutHeight_4);
  assign tmp_foutHeight_2 = (convParm_fHeight - tmp_foutHeight_3);
  assign tmp_foutHeight_3 = {2'd0, convParm_kSize};
  assign tmp_foutHeight_4 = (2'b10 * convParm_pad);
  assign tmp_foutWidth = (tmp_foutWidth_1 / convParm_stride);
  assign tmp_foutWidth_1 = (tmp_foutWidth_2 + tmp_foutWidth_4);
  assign tmp_foutWidth_2 = (convParm_fWidth - tmp_foutWidth_3);
  assign tmp_foutWidth_3 = {2'd0, convParm_kSize};
  assign tmp_foutWidth_4 = (2'b10 * convParm_pad);
  assign tmp_wAddr_payload = (tmp_wAddr_payload_1 + tmp_wAddr_payload_7);
  assign tmp_wAddr_payload_2 = (tmp_wAddr_payload_3 + tmp_wAddr_payload_6);
  assign tmp_wAddr_payload_1 = {8'd0, tmp_wAddr_payload_2};
  assign tmp_wAddr_payload_4 = (convParm_wBaseAddr + tmp_wAddr_payload_5);
  assign tmp_wAddr_payload_3 = {1'd0, tmp_wAddr_payload_4};
  assign tmp_wAddr_payload_5 = {8'd0, wAddrGenArea_cCounter};
  assign tmp_wAddr_payload_6 = (wAddrGenArea_rsCounter * chInBlock);
  assign tmp_wAddr_payload_7 = (tmp_wAddr_payload_8 * chInBlock);
  assign tmp_wAddr_payload_8 = (tmp_wAddr_payload_9 * wAddrGenArea_rsCounterReload);
  assign tmp_wAddr_payload_9 = (tmp_wAddr_payload_10 + tmp_wAddr_payload_11);
  assign tmp_wAddr_payload_10 = (wAddrGenArea_nCounter * 4'b1000);
  assign tmp_wAddr_payload_11 = {8'd0, wAddrGenArea_kaCounter};
  assign tmp_when_AddrGen_l61_1 = (wAddrGenArea_rsCounterReload - 6'h01);
  assign tmp_when_AddrGen_l61 = {3'd0, tmp_when_AddrGen_l61_1};
  assign tmp_when_AddrGen_l69 = (chInBlock - 7'h01);
  assign tmp_when_AddrGen_l73 = (chOutBlock - 7'h01);
  assign tmp_finAddr_payload = (tmp_finAddr_payload_1 + tmp_finAddr_payload_9);
  assign tmp_finAddr_payload_2 = (tmp_finAddr_payload_3 + tmp_finAddr_payload_5);
  assign tmp_finAddr_payload_1 = {5'd0, tmp_finAddr_payload_2};
  assign tmp_finAddr_payload_3 = (finAddrArea_finBaseAddr + tmp_finAddr_payload_4);
  assign tmp_finAddr_payload_4 = {5'd0, finAddrArea_cCounter};
  assign tmp_finAddr_payload_5 = (tmp_finAddr_payload_6 * chInBlock);
  assign tmp_finAddr_payload_6 = (tmp_finAddr_payload_7 + tmp_finAddr_payload_8);
  assign tmp_finAddr_payload_7 = (finAddrArea_wCounter * convParm_stride);
  assign tmp_finAddr_payload_8 = {5'd0, finAddrArea_rCounter};
  assign tmp_finAddr_payload_9 = (tmp_finAddr_payload_10 * foutWidth);
  assign tmp_finAddr_payload_10 = (tmp_finAddr_payload_11 * chInBlock);
  assign tmp_finAddr_payload_11 = (tmp_finAddr_payload_12 + tmp_finAddr_payload_13);
  assign tmp_finAddr_payload_12 = (finAddrArea_hCounter * convParm_stride);
  assign tmp_finAddr_payload_13 = {5'd0, finAddrArea_sCounter};
  assign tmp_when_AddrGen_l131 = (convParm_kSize - 3'b001);
  assign tmp_when_AddrGen_l135 = (convParm_kSize - 3'b001);
  assign tmp_when_AddrGen_l139_1 = (chInBlock - 7'h01);
  assign tmp_when_AddrGen_l139 = {3'd0, tmp_when_AddrGen_l139_1};
  assign tmp_when_AddrGen_l143 = (foutWidth - 5'h01);
  assign tmp_when_AddrGen_l147 = (foutHeight - 5'h01);
  assign tmp_finAddrArea_hCounter = {2'd0, convParm_stride};
  assign tmp_when_AddrGen_l151 = (chOutBlock - 7'h01);
  assign tmp_foutAddrArea_hwcCounterReload = (convParm_fHeight * convParm_fWidth);
  assign tmp_foutAddr_payload = (tmp_foutAddr_payload_1 + foutAddrArea_hwcCounter);
  assign tmp_foutAddr_payload_1 = {5'd0, foutAddrArea_foutBaseAddr};
  assign tmp_when_AddrGen_l190_1 = (foutAddrArea_hwcCounterReload - 17'h00001);
  assign tmp_when_AddrGen_l190 = {3'd0, tmp_when_AddrGen_l190_1};
  assign chInBlock = (tmp_chInBlock >>> 2'd3);
  assign chOutBlock = (tmp_chOutBlock >>> 2'd3);
  assign kerChDim = (convParm_kSize * convParm_kSize);
  assign kerDim = (tmp_kerDim * chInBlock);
  assign foutHeight = (tmp_foutHeight + 5'h01);
  assign foutWidth = (tmp_foutWidth + 5'h01);
  assign wAddrGenArea_rsCounterReload = (convParm_kSize * convParm_kSize);
  assign wAddr_valid = wAddrGenArea_valid;
  assign wAddr_payload = tmp_wAddr_payload[14:0];
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign when_AddrGen_l61 = (wAddrGenArea_rsCounter < tmp_when_AddrGen_l61);
  assign when_AddrGen_l65 = (wAddrGenArea_kaCounter < 3'b111);
  assign when_AddrGen_l69 = (wAddrGenArea_cCounter < tmp_when_AddrGen_l69);
  assign when_AddrGen_l73 = (wAddrGenArea_nCounter < tmp_when_AddrGen_l73);
  assign finAddrArea_padFlag = 1'b0;
  assign finAddr_valid = finAddrArea_valid;
  always @(*) begin
    if(finAddrArea_padFlag) begin
      finAddr_payload = 15'h0;
    end else begin
      finAddr_payload = tmp_finAddr_payload[14:0];
    end
  end

  assign finAddr_fire = (finAddr_valid && finAddr_ready);
  assign when_AddrGen_l131 = (finAddrArea_rCounter < tmp_when_AddrGen_l131);
  assign when_AddrGen_l135 = (finAddrArea_sCounter < tmp_when_AddrGen_l135);
  assign when_AddrGen_l139 = (finAddrArea_cCounter < tmp_when_AddrGen_l139);
  assign when_AddrGen_l143 = (finAddrArea_wCounter < tmp_when_AddrGen_l143);
  assign when_AddrGen_l147 = (finAddrArea_hCounter < tmp_when_AddrGen_l147);
  assign when_AddrGen_l151 = (finAddrArea_nCounter < tmp_when_AddrGen_l151);
  assign foutAddrArea_hwcCounterReload = (tmp_foutAddrArea_hwcCounterReload * chOutBlock);
  assign foutAddr_valid = foutAddrArea_valid;
  assign foutAddr_payload = tmp_foutAddr_payload[14:0];
  assign when_AddrGen_l189 = (foutAddr_ready && foutAddr_valid);
  assign when_AddrGen_l190 = (foutAddrArea_hwcCounter < tmp_when_AddrGen_l190);
  assign when_AddrGen_l205 = ((wAddrGenArea_wAddrDone && finAddrArea_finAddrDone) && foutAddrArea_foutAddrDone);
  always @(posedge clk) begin
    if(convParm_valid) begin
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
    if(convParm_valid) begin
      finAddrArea_finBaseAddr <= convParm_payload_finBaseAddr;
    end
    if(convParm_valid) begin
      foutAddrArea_foutBaseAddr <= convParm_payload_foutBaseAddr;
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      busy <= 1'b0;
      wAddrGenArea_wAddrDone <= 1'b0;
      wAddrGenArea_nCounter <= 7'h0;
      wAddrGenArea_cCounter <= 7'h0;
      wAddrGenArea_kaCounter <= 3'b000;
      wAddrGenArea_rsCounter <= 9'h0;
      wAddrGenArea_valid <= 1'b0;
      finAddrArea_finAddrDone <= 1'b0;
      finAddrArea_nCounter <= 7'h0;
      finAddrArea_hCounter <= 5'h0;
      finAddrArea_wCounter <= 5'h0;
      finAddrArea_cCounter <= 10'h0;
      finAddrArea_sCounter <= 3'b000;
      finAddrArea_rCounter <= 3'b000;
      finAddrArea_valid <= 1'b0;
      foutAddrArea_foutAddrDone <= 1'b0;
      foutAddrArea_hwcCounter <= 20'h0;
      foutAddrArea_valid <= 1'b0;
    end else begin
      if(convParm_valid) begin
        wAddrGenArea_nCounter <= 7'h0;
        wAddrGenArea_cCounter <= 7'h0;
        wAddrGenArea_kaCounter <= 3'b000;
        wAddrGenArea_rsCounter <= 9'h0;
        wAddrGenArea_valid <= 1'b1;
      end else begin
        if(wAddr_fire) begin
          if(when_AddrGen_l61) begin
            wAddrGenArea_rsCounter <= (wAddrGenArea_rsCounter + 9'h001);
          end else begin
            wAddrGenArea_rsCounter <= 9'h0;
            if(when_AddrGen_l65) begin
              wAddrGenArea_kaCounter <= (wAddrGenArea_kaCounter + 3'b001);
            end else begin
              wAddrGenArea_kaCounter <= 3'b000;
              if(when_AddrGen_l69) begin
                wAddrGenArea_cCounter <= (wAddrGenArea_cCounter + 7'h01);
              end else begin
                wAddrGenArea_cCounter <= 7'h0;
                if(when_AddrGen_l73) begin
                  wAddrGenArea_nCounter <= (wAddrGenArea_nCounter + 7'h01);
                end else begin
                  wAddrGenArea_nCounter <= 7'h0;
                  wAddrGenArea_wAddrDone <= 1'b1;
                  wAddrGenArea_valid <= 1'b0;
                end
              end
            end
          end
        end
      end
      if(convParm_valid) begin
        finAddrArea_nCounter <= 7'h0;
        finAddrArea_hCounter <= 5'h0;
        finAddrArea_wCounter <= 5'h0;
        finAddrArea_cCounter <= 10'h0;
        finAddrArea_sCounter <= 3'b000;
        finAddrArea_rCounter <= 3'b000;
        finAddrArea_valid <= 1'b1;
      end else begin
        if(finAddr_fire) begin
          if(when_AddrGen_l131) begin
            finAddrArea_rCounter <= (finAddrArea_rCounter + 3'b001);
          end else begin
            finAddrArea_rCounter <= 3'b000;
            if(when_AddrGen_l135) begin
              finAddrArea_sCounter <= (finAddrArea_sCounter + 3'b001);
            end else begin
              finAddrArea_sCounter <= 3'b000;
              if(when_AddrGen_l139) begin
                finAddrArea_cCounter <= (finAddrArea_cCounter + 10'h001);
              end else begin
                finAddrArea_cCounter <= 10'h0;
                if(when_AddrGen_l143) begin
                  finAddrArea_wCounter <= (finAddrArea_wCounter + 5'h01);
                end else begin
                  finAddrArea_wCounter <= 5'h0;
                  if(when_AddrGen_l147) begin
                    finAddrArea_hCounter <= (finAddrArea_hCounter + tmp_finAddrArea_hCounter);
                  end else begin
                    finAddrArea_hCounter <= 5'h0;
                    if(when_AddrGen_l151) begin
                      finAddrArea_nCounter <= (finAddrArea_nCounter + 7'h01);
                    end else begin
                      finAddrArea_nCounter <= 7'h0;
                      finAddrArea_finAddrDone <= 1'b1;
                      finAddrArea_valid <= 1'b0;
                    end
                  end
                end
              end
            end
          end
        end
      end
      if(convParm_valid) begin
        foutAddrArea_hwcCounter <= 20'h0;
        foutAddrArea_valid <= 1'b1;
        foutAddrArea_foutAddrDone <= 1'b0;
      end else begin
        if(when_AddrGen_l189) begin
          if(when_AddrGen_l190) begin
            foutAddrArea_hwcCounter <= (foutAddrArea_hwcCounter + 20'h00001);
          end else begin
            foutAddrArea_hwcCounter <= 20'h0;
            foutAddrArea_foutAddrDone <= 1'b1;
            foutAddrArea_valid <= 1'b0;
          end
        end
      end
      if(convParm_valid) begin
        busy <= 1'b1;
      end else begin
        if(when_AddrGen_l205) begin
          busy <= 1'b0;
        end
      end
    end
  end


endmodule

module PECtrl (
  input  wire          convParm_valid,
  output reg           convParm_ready,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [4:0]    convParm_payload_fHeight,
  input  wire [4:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [9:0]    convParm_payload_chIn,
  input  wire [9:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [2:0]    convParm_payload_stride,
  input  wire [9:0]    convParm_payload_spLen,
  output wire          clear,
  output wire          relu,
  output wire [2:0]    peMode,
  output wire [1:0]    ppuMode,
  output wire [9:0]    spLen,
  output wire [6:0]    loopLen,
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

  wire       [9:0]    tmp_loopLen;
  wire       [9:0]    tmp_loopLen_1;
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
  reg        [4:0]    convParm_fHeight;
  reg        [4:0]    convParm_fWidth;
  reg        [2:0]    convParm_kSize;
  reg        [9:0]    convParm_chIn;
  reg        [9:0]    convParm_chOut;
  reg        [2:0]    convParm_pad;
  reg        [2:0]    convParm_stride;
  reg        [9:0]    convParm_spLen;
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

  assign tmp_loopLen = (tmp_loopLen_1 - 10'h001);
  assign tmp_loopLen_1 = (convParm_chIn + 10'h008);
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
  assign spLen = (convParm_fWidth * convParm_fHeight);
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

module PEArray (
  input  wire          clear,
  input  wire          relu,
  input  wire [2:0]    peMode,
  input  wire [1:0]    ppuMode,
  input  wire [9:0]    spLen,
  input  wire [6:0]    loopLen,
  input  wire [5:0]    kChDim,
  input  wire          featureIn_0_valid,
  output wire          featureIn_0_ready,
  input  wire [7:0]    featureIn_0_payload,
  input  wire          featureIn_1_valid,
  output wire          featureIn_1_ready,
  input  wire [7:0]    featureIn_1_payload,
  input  wire          featureIn_2_valid,
  output wire          featureIn_2_ready,
  input  wire [7:0]    featureIn_2_payload,
  input  wire          featureIn_3_valid,
  output wire          featureIn_3_ready,
  input  wire [7:0]    featureIn_3_payload,
  input  wire          featureIn_4_valid,
  output wire          featureIn_4_ready,
  input  wire [7:0]    featureIn_4_payload,
  input  wire          featureIn_5_valid,
  output wire          featureIn_5_ready,
  input  wire [7:0]    featureIn_5_payload,
  input  wire          featureIn_6_valid,
  output wire          featureIn_6_ready,
  input  wire [7:0]    featureIn_6_payload,
  input  wire          featureIn_7_valid,
  output wire          featureIn_7_ready,
  input  wire [7:0]    featureIn_7_payload,
  input  wire          weight_0_0_valid,
  output wire          weight_0_0_ready,
  input  wire [7:0]    weight_0_0_payload,
  input  wire          weight_0_1_valid,
  output wire          weight_0_1_ready,
  input  wire [7:0]    weight_0_1_payload,
  input  wire          weight_0_2_valid,
  output wire          weight_0_2_ready,
  input  wire [7:0]    weight_0_2_payload,
  input  wire          weight_0_3_valid,
  output wire          weight_0_3_ready,
  input  wire [7:0]    weight_0_3_payload,
  input  wire          weight_0_4_valid,
  output wire          weight_0_4_ready,
  input  wire [7:0]    weight_0_4_payload,
  input  wire          weight_0_5_valid,
  output wire          weight_0_5_ready,
  input  wire [7:0]    weight_0_5_payload,
  input  wire          weight_0_6_valid,
  output wire          weight_0_6_ready,
  input  wire [7:0]    weight_0_6_payload,
  input  wire          weight_0_7_valid,
  output wire          weight_0_7_ready,
  input  wire [7:0]    weight_0_7_payload,
  input  wire          weight_1_0_valid,
  output wire          weight_1_0_ready,
  input  wire [7:0]    weight_1_0_payload,
  input  wire          weight_1_1_valid,
  output wire          weight_1_1_ready,
  input  wire [7:0]    weight_1_1_payload,
  input  wire          weight_1_2_valid,
  output wire          weight_1_2_ready,
  input  wire [7:0]    weight_1_2_payload,
  input  wire          weight_1_3_valid,
  output wire          weight_1_3_ready,
  input  wire [7:0]    weight_1_3_payload,
  input  wire          weight_1_4_valid,
  output wire          weight_1_4_ready,
  input  wire [7:0]    weight_1_4_payload,
  input  wire          weight_1_5_valid,
  output wire          weight_1_5_ready,
  input  wire [7:0]    weight_1_5_payload,
  input  wire          weight_1_6_valid,
  output wire          weight_1_6_ready,
  input  wire [7:0]    weight_1_6_payload,
  input  wire          weight_1_7_valid,
  output wire          weight_1_7_ready,
  input  wire [7:0]    weight_1_7_payload,
  input  wire          weight_2_0_valid,
  output wire          weight_2_0_ready,
  input  wire [7:0]    weight_2_0_payload,
  input  wire          weight_2_1_valid,
  output wire          weight_2_1_ready,
  input  wire [7:0]    weight_2_1_payload,
  input  wire          weight_2_2_valid,
  output wire          weight_2_2_ready,
  input  wire [7:0]    weight_2_2_payload,
  input  wire          weight_2_3_valid,
  output wire          weight_2_3_ready,
  input  wire [7:0]    weight_2_3_payload,
  input  wire          weight_2_4_valid,
  output wire          weight_2_4_ready,
  input  wire [7:0]    weight_2_4_payload,
  input  wire          weight_2_5_valid,
  output wire          weight_2_5_ready,
  input  wire [7:0]    weight_2_5_payload,
  input  wire          weight_2_6_valid,
  output wire          weight_2_6_ready,
  input  wire [7:0]    weight_2_6_payload,
  input  wire          weight_2_7_valid,
  output wire          weight_2_7_ready,
  input  wire [7:0]    weight_2_7_payload,
  input  wire          weight_3_0_valid,
  output wire          weight_3_0_ready,
  input  wire [7:0]    weight_3_0_payload,
  input  wire          weight_3_1_valid,
  output wire          weight_3_1_ready,
  input  wire [7:0]    weight_3_1_payload,
  input  wire          weight_3_2_valid,
  output wire          weight_3_2_ready,
  input  wire [7:0]    weight_3_2_payload,
  input  wire          weight_3_3_valid,
  output wire          weight_3_3_ready,
  input  wire [7:0]    weight_3_3_payload,
  input  wire          weight_3_4_valid,
  output wire          weight_3_4_ready,
  input  wire [7:0]    weight_3_4_payload,
  input  wire          weight_3_5_valid,
  output wire          weight_3_5_ready,
  input  wire [7:0]    weight_3_5_payload,
  input  wire          weight_3_6_valid,
  output wire          weight_3_6_ready,
  input  wire [7:0]    weight_3_6_payload,
  input  wire          weight_3_7_valid,
  output wire          weight_3_7_ready,
  input  wire [7:0]    weight_3_7_payload,
  input  wire          weight_4_0_valid,
  output wire          weight_4_0_ready,
  input  wire [7:0]    weight_4_0_payload,
  input  wire          weight_4_1_valid,
  output wire          weight_4_1_ready,
  input  wire [7:0]    weight_4_1_payload,
  input  wire          weight_4_2_valid,
  output wire          weight_4_2_ready,
  input  wire [7:0]    weight_4_2_payload,
  input  wire          weight_4_3_valid,
  output wire          weight_4_3_ready,
  input  wire [7:0]    weight_4_3_payload,
  input  wire          weight_4_4_valid,
  output wire          weight_4_4_ready,
  input  wire [7:0]    weight_4_4_payload,
  input  wire          weight_4_5_valid,
  output wire          weight_4_5_ready,
  input  wire [7:0]    weight_4_5_payload,
  input  wire          weight_4_6_valid,
  output wire          weight_4_6_ready,
  input  wire [7:0]    weight_4_6_payload,
  input  wire          weight_4_7_valid,
  output wire          weight_4_7_ready,
  input  wire [7:0]    weight_4_7_payload,
  input  wire          weight_5_0_valid,
  output wire          weight_5_0_ready,
  input  wire [7:0]    weight_5_0_payload,
  input  wire          weight_5_1_valid,
  output wire          weight_5_1_ready,
  input  wire [7:0]    weight_5_1_payload,
  input  wire          weight_5_2_valid,
  output wire          weight_5_2_ready,
  input  wire [7:0]    weight_5_2_payload,
  input  wire          weight_5_3_valid,
  output wire          weight_5_3_ready,
  input  wire [7:0]    weight_5_3_payload,
  input  wire          weight_5_4_valid,
  output wire          weight_5_4_ready,
  input  wire [7:0]    weight_5_4_payload,
  input  wire          weight_5_5_valid,
  output wire          weight_5_5_ready,
  input  wire [7:0]    weight_5_5_payload,
  input  wire          weight_5_6_valid,
  output wire          weight_5_6_ready,
  input  wire [7:0]    weight_5_6_payload,
  input  wire          weight_5_7_valid,
  output wire          weight_5_7_ready,
  input  wire [7:0]    weight_5_7_payload,
  input  wire          weight_6_0_valid,
  output wire          weight_6_0_ready,
  input  wire [7:0]    weight_6_0_payload,
  input  wire          weight_6_1_valid,
  output wire          weight_6_1_ready,
  input  wire [7:0]    weight_6_1_payload,
  input  wire          weight_6_2_valid,
  output wire          weight_6_2_ready,
  input  wire [7:0]    weight_6_2_payload,
  input  wire          weight_6_3_valid,
  output wire          weight_6_3_ready,
  input  wire [7:0]    weight_6_3_payload,
  input  wire          weight_6_4_valid,
  output wire          weight_6_4_ready,
  input  wire [7:0]    weight_6_4_payload,
  input  wire          weight_6_5_valid,
  output wire          weight_6_5_ready,
  input  wire [7:0]    weight_6_5_payload,
  input  wire          weight_6_6_valid,
  output wire          weight_6_6_ready,
  input  wire [7:0]    weight_6_6_payload,
  input  wire          weight_6_7_valid,
  output wire          weight_6_7_ready,
  input  wire [7:0]    weight_6_7_payload,
  input  wire          weight_7_0_valid,
  output wire          weight_7_0_ready,
  input  wire [7:0]    weight_7_0_payload,
  input  wire          weight_7_1_valid,
  output wire          weight_7_1_ready,
  input  wire [7:0]    weight_7_1_payload,
  input  wire          weight_7_2_valid,
  output wire          weight_7_2_ready,
  input  wire [7:0]    weight_7_2_payload,
  input  wire          weight_7_3_valid,
  output wire          weight_7_3_ready,
  input  wire [7:0]    weight_7_3_payload,
  input  wire          weight_7_4_valid,
  output wire          weight_7_4_ready,
  input  wire [7:0]    weight_7_4_payload,
  input  wire          weight_7_5_valid,
  output wire          weight_7_5_ready,
  input  wire [7:0]    weight_7_5_payload,
  input  wire          weight_7_6_valid,
  output wire          weight_7_6_ready,
  input  wire [7:0]    weight_7_6_payload,
  input  wire          weight_7_7_valid,
  output wire          weight_7_7_ready,
  input  wire [7:0]    weight_7_7_payload,
  output wire          featureOut_0_valid,
  output wire [7:0]    featureOut_0_payload,
  output wire          featureOut_1_valid,
  output wire [7:0]    featureOut_1_payload,
  output wire          featureOut_2_valid,
  output wire [7:0]    featureOut_2_payload,
  output wire          featureOut_3_valid,
  output wire [7:0]    featureOut_3_payload,
  output wire          featureOut_4_valid,
  output wire [7:0]    featureOut_4_payload,
  output wire          featureOut_5_valid,
  output wire [7:0]    featureOut_5_payload,
  output wire          featureOut_6_valid,
  output wire [7:0]    featureOut_6_payload,
  output wire          featureOut_7_valid,
  output wire [7:0]    featureOut_7_payload,
  input  wire          clk,
  input  wire          reset
);

  wire                peCores_0_0_featureIn_ready;
  wire                peCores_0_0_weight_ready;
  wire                peCores_0_0_macOut_valid;
  wire       [31:0]   peCores_0_0_macOut_payload;
  wire                peCores_0_1_featureIn_ready;
  wire                peCores_0_1_weight_ready;
  wire                peCores_0_1_macOut_valid;
  wire       [31:0]   peCores_0_1_macOut_payload;
  wire                peCores_0_2_featureIn_ready;
  wire                peCores_0_2_weight_ready;
  wire                peCores_0_2_macOut_valid;
  wire       [31:0]   peCores_0_2_macOut_payload;
  wire                peCores_0_3_featureIn_ready;
  wire                peCores_0_3_weight_ready;
  wire                peCores_0_3_macOut_valid;
  wire       [31:0]   peCores_0_3_macOut_payload;
  wire                peCores_0_4_featureIn_ready;
  wire                peCores_0_4_weight_ready;
  wire                peCores_0_4_macOut_valid;
  wire       [31:0]   peCores_0_4_macOut_payload;
  wire                peCores_0_5_featureIn_ready;
  wire                peCores_0_5_weight_ready;
  wire                peCores_0_5_macOut_valid;
  wire       [31:0]   peCores_0_5_macOut_payload;
  wire                peCores_0_6_featureIn_ready;
  wire                peCores_0_6_weight_ready;
  wire                peCores_0_6_macOut_valid;
  wire       [31:0]   peCores_0_6_macOut_payload;
  wire                peCores_0_7_featureIn_ready;
  wire                peCores_0_7_weight_ready;
  wire                peCores_0_7_macOut_valid;
  wire       [31:0]   peCores_0_7_macOut_payload;
  wire                peCores_1_0_featureIn_ready;
  wire                peCores_1_0_weight_ready;
  wire                peCores_1_0_macOut_valid;
  wire       [31:0]   peCores_1_0_macOut_payload;
  wire                peCores_1_1_featureIn_ready;
  wire                peCores_1_1_weight_ready;
  wire                peCores_1_1_macOut_valid;
  wire       [31:0]   peCores_1_1_macOut_payload;
  wire                peCores_1_2_featureIn_ready;
  wire                peCores_1_2_weight_ready;
  wire                peCores_1_2_macOut_valid;
  wire       [31:0]   peCores_1_2_macOut_payload;
  wire                peCores_1_3_featureIn_ready;
  wire                peCores_1_3_weight_ready;
  wire                peCores_1_3_macOut_valid;
  wire       [31:0]   peCores_1_3_macOut_payload;
  wire                peCores_1_4_featureIn_ready;
  wire                peCores_1_4_weight_ready;
  wire                peCores_1_4_macOut_valid;
  wire       [31:0]   peCores_1_4_macOut_payload;
  wire                peCores_1_5_featureIn_ready;
  wire                peCores_1_5_weight_ready;
  wire                peCores_1_5_macOut_valid;
  wire       [31:0]   peCores_1_5_macOut_payload;
  wire                peCores_1_6_featureIn_ready;
  wire                peCores_1_6_weight_ready;
  wire                peCores_1_6_macOut_valid;
  wire       [31:0]   peCores_1_6_macOut_payload;
  wire                peCores_1_7_featureIn_ready;
  wire                peCores_1_7_weight_ready;
  wire                peCores_1_7_macOut_valid;
  wire       [31:0]   peCores_1_7_macOut_payload;
  wire                peCores_2_0_featureIn_ready;
  wire                peCores_2_0_weight_ready;
  wire                peCores_2_0_macOut_valid;
  wire       [31:0]   peCores_2_0_macOut_payload;
  wire                peCores_2_1_featureIn_ready;
  wire                peCores_2_1_weight_ready;
  wire                peCores_2_1_macOut_valid;
  wire       [31:0]   peCores_2_1_macOut_payload;
  wire                peCores_2_2_featureIn_ready;
  wire                peCores_2_2_weight_ready;
  wire                peCores_2_2_macOut_valid;
  wire       [31:0]   peCores_2_2_macOut_payload;
  wire                peCores_2_3_featureIn_ready;
  wire                peCores_2_3_weight_ready;
  wire                peCores_2_3_macOut_valid;
  wire       [31:0]   peCores_2_3_macOut_payload;
  wire                peCores_2_4_featureIn_ready;
  wire                peCores_2_4_weight_ready;
  wire                peCores_2_4_macOut_valid;
  wire       [31:0]   peCores_2_4_macOut_payload;
  wire                peCores_2_5_featureIn_ready;
  wire                peCores_2_5_weight_ready;
  wire                peCores_2_5_macOut_valid;
  wire       [31:0]   peCores_2_5_macOut_payload;
  wire                peCores_2_6_featureIn_ready;
  wire                peCores_2_6_weight_ready;
  wire                peCores_2_6_macOut_valid;
  wire       [31:0]   peCores_2_6_macOut_payload;
  wire                peCores_2_7_featureIn_ready;
  wire                peCores_2_7_weight_ready;
  wire                peCores_2_7_macOut_valid;
  wire       [31:0]   peCores_2_7_macOut_payload;
  wire                peCores_3_0_featureIn_ready;
  wire                peCores_3_0_weight_ready;
  wire                peCores_3_0_macOut_valid;
  wire       [31:0]   peCores_3_0_macOut_payload;
  wire                peCores_3_1_featureIn_ready;
  wire                peCores_3_1_weight_ready;
  wire                peCores_3_1_macOut_valid;
  wire       [31:0]   peCores_3_1_macOut_payload;
  wire                peCores_3_2_featureIn_ready;
  wire                peCores_3_2_weight_ready;
  wire                peCores_3_2_macOut_valid;
  wire       [31:0]   peCores_3_2_macOut_payload;
  wire                peCores_3_3_featureIn_ready;
  wire                peCores_3_3_weight_ready;
  wire                peCores_3_3_macOut_valid;
  wire       [31:0]   peCores_3_3_macOut_payload;
  wire                peCores_3_4_featureIn_ready;
  wire                peCores_3_4_weight_ready;
  wire                peCores_3_4_macOut_valid;
  wire       [31:0]   peCores_3_4_macOut_payload;
  wire                peCores_3_5_featureIn_ready;
  wire                peCores_3_5_weight_ready;
  wire                peCores_3_5_macOut_valid;
  wire       [31:0]   peCores_3_5_macOut_payload;
  wire                peCores_3_6_featureIn_ready;
  wire                peCores_3_6_weight_ready;
  wire                peCores_3_6_macOut_valid;
  wire       [31:0]   peCores_3_6_macOut_payload;
  wire                peCores_3_7_featureIn_ready;
  wire                peCores_3_7_weight_ready;
  wire                peCores_3_7_macOut_valid;
  wire       [31:0]   peCores_3_7_macOut_payload;
  wire                peCores_4_0_featureIn_ready;
  wire                peCores_4_0_weight_ready;
  wire                peCores_4_0_macOut_valid;
  wire       [31:0]   peCores_4_0_macOut_payload;
  wire                peCores_4_1_featureIn_ready;
  wire                peCores_4_1_weight_ready;
  wire                peCores_4_1_macOut_valid;
  wire       [31:0]   peCores_4_1_macOut_payload;
  wire                peCores_4_2_featureIn_ready;
  wire                peCores_4_2_weight_ready;
  wire                peCores_4_2_macOut_valid;
  wire       [31:0]   peCores_4_2_macOut_payload;
  wire                peCores_4_3_featureIn_ready;
  wire                peCores_4_3_weight_ready;
  wire                peCores_4_3_macOut_valid;
  wire       [31:0]   peCores_4_3_macOut_payload;
  wire                peCores_4_4_featureIn_ready;
  wire                peCores_4_4_weight_ready;
  wire                peCores_4_4_macOut_valid;
  wire       [31:0]   peCores_4_4_macOut_payload;
  wire                peCores_4_5_featureIn_ready;
  wire                peCores_4_5_weight_ready;
  wire                peCores_4_5_macOut_valid;
  wire       [31:0]   peCores_4_5_macOut_payload;
  wire                peCores_4_6_featureIn_ready;
  wire                peCores_4_6_weight_ready;
  wire                peCores_4_6_macOut_valid;
  wire       [31:0]   peCores_4_6_macOut_payload;
  wire                peCores_4_7_featureIn_ready;
  wire                peCores_4_7_weight_ready;
  wire                peCores_4_7_macOut_valid;
  wire       [31:0]   peCores_4_7_macOut_payload;
  wire                peCores_5_0_featureIn_ready;
  wire                peCores_5_0_weight_ready;
  wire                peCores_5_0_macOut_valid;
  wire       [31:0]   peCores_5_0_macOut_payload;
  wire                peCores_5_1_featureIn_ready;
  wire                peCores_5_1_weight_ready;
  wire                peCores_5_1_macOut_valid;
  wire       [31:0]   peCores_5_1_macOut_payload;
  wire                peCores_5_2_featureIn_ready;
  wire                peCores_5_2_weight_ready;
  wire                peCores_5_2_macOut_valid;
  wire       [31:0]   peCores_5_2_macOut_payload;
  wire                peCores_5_3_featureIn_ready;
  wire                peCores_5_3_weight_ready;
  wire                peCores_5_3_macOut_valid;
  wire       [31:0]   peCores_5_3_macOut_payload;
  wire                peCores_5_4_featureIn_ready;
  wire                peCores_5_4_weight_ready;
  wire                peCores_5_4_macOut_valid;
  wire       [31:0]   peCores_5_4_macOut_payload;
  wire                peCores_5_5_featureIn_ready;
  wire                peCores_5_5_weight_ready;
  wire                peCores_5_5_macOut_valid;
  wire       [31:0]   peCores_5_5_macOut_payload;
  wire                peCores_5_6_featureIn_ready;
  wire                peCores_5_6_weight_ready;
  wire                peCores_5_6_macOut_valid;
  wire       [31:0]   peCores_5_6_macOut_payload;
  wire                peCores_5_7_featureIn_ready;
  wire                peCores_5_7_weight_ready;
  wire                peCores_5_7_macOut_valid;
  wire       [31:0]   peCores_5_7_macOut_payload;
  wire                peCores_6_0_featureIn_ready;
  wire                peCores_6_0_weight_ready;
  wire                peCores_6_0_macOut_valid;
  wire       [31:0]   peCores_6_0_macOut_payload;
  wire                peCores_6_1_featureIn_ready;
  wire                peCores_6_1_weight_ready;
  wire                peCores_6_1_macOut_valid;
  wire       [31:0]   peCores_6_1_macOut_payload;
  wire                peCores_6_2_featureIn_ready;
  wire                peCores_6_2_weight_ready;
  wire                peCores_6_2_macOut_valid;
  wire       [31:0]   peCores_6_2_macOut_payload;
  wire                peCores_6_3_featureIn_ready;
  wire                peCores_6_3_weight_ready;
  wire                peCores_6_3_macOut_valid;
  wire       [31:0]   peCores_6_3_macOut_payload;
  wire                peCores_6_4_featureIn_ready;
  wire                peCores_6_4_weight_ready;
  wire                peCores_6_4_macOut_valid;
  wire       [31:0]   peCores_6_4_macOut_payload;
  wire                peCores_6_5_featureIn_ready;
  wire                peCores_6_5_weight_ready;
  wire                peCores_6_5_macOut_valid;
  wire       [31:0]   peCores_6_5_macOut_payload;
  wire                peCores_6_6_featureIn_ready;
  wire                peCores_6_6_weight_ready;
  wire                peCores_6_6_macOut_valid;
  wire       [31:0]   peCores_6_6_macOut_payload;
  wire                peCores_6_7_featureIn_ready;
  wire                peCores_6_7_weight_ready;
  wire                peCores_6_7_macOut_valid;
  wire       [31:0]   peCores_6_7_macOut_payload;
  wire                peCores_7_0_featureIn_ready;
  wire                peCores_7_0_weight_ready;
  wire                peCores_7_0_macOut_valid;
  wire       [31:0]   peCores_7_0_macOut_payload;
  wire                peCores_7_1_featureIn_ready;
  wire                peCores_7_1_weight_ready;
  wire                peCores_7_1_macOut_valid;
  wire       [31:0]   peCores_7_1_macOut_payload;
  wire                peCores_7_2_featureIn_ready;
  wire                peCores_7_2_weight_ready;
  wire                peCores_7_2_macOut_valid;
  wire       [31:0]   peCores_7_2_macOut_payload;
  wire                peCores_7_3_featureIn_ready;
  wire                peCores_7_3_weight_ready;
  wire                peCores_7_3_macOut_valid;
  wire       [31:0]   peCores_7_3_macOut_payload;
  wire                peCores_7_4_featureIn_ready;
  wire                peCores_7_4_weight_ready;
  wire                peCores_7_4_macOut_valid;
  wire       [31:0]   peCores_7_4_macOut_payload;
  wire                peCores_7_5_featureIn_ready;
  wire                peCores_7_5_weight_ready;
  wire                peCores_7_5_macOut_valid;
  wire       [31:0]   peCores_7_5_macOut_payload;
  wire                peCores_7_6_featureIn_ready;
  wire                peCores_7_6_weight_ready;
  wire                peCores_7_6_macOut_valid;
  wire       [31:0]   peCores_7_6_macOut_payload;
  wire                peCores_7_7_featureIn_ready;
  wire                peCores_7_7_weight_ready;
  wire                peCores_7_7_macOut_valid;
  wire       [31:0]   peCores_7_7_macOut_payload;
  wire                ppUnit_0_featureOut_valid;
  wire       [7:0]    ppUnit_0_featureOut_payload;
  wire                ppUnit_1_1_featureOut_valid;
  wire       [7:0]    ppUnit_1_1_featureOut_payload;
  wire                ppUnit_2_1_featureOut_valid;
  wire       [7:0]    ppUnit_2_1_featureOut_payload;
  wire                ppUnit_3_1_featureOut_valid;
  wire       [7:0]    ppUnit_3_1_featureOut_payload;
  wire                ppUnit_4_1_featureOut_valid;
  wire       [7:0]    ppUnit_4_1_featureOut_payload;
  wire                ppUnit_5_1_featureOut_valid;
  wire       [7:0]    ppUnit_5_1_featureOut_payload;
  wire                ppUnit_6_1_featureOut_valid;
  wire       [7:0]    ppUnit_6_1_featureOut_payload;
  wire                ppUnit_7_1_featureOut_valid;
  wire       [7:0]    ppUnit_7_1_featureOut_payload;
  wire                lwBuffer_0_0_io_weightIn_ready;
  wire                lwBuffer_0_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_0_io_weightOut_payload;
  wire                lwBuffer_0_1_io_weightIn_ready;
  wire                lwBuffer_0_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_1_io_weightOut_payload;
  wire                lwBuffer_0_2_io_weightIn_ready;
  wire                lwBuffer_0_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_2_io_weightOut_payload;
  wire                lwBuffer_0_3_io_weightIn_ready;
  wire                lwBuffer_0_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_3_io_weightOut_payload;
  wire                lwBuffer_0_4_io_weightIn_ready;
  wire                lwBuffer_0_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_4_io_weightOut_payload;
  wire                lwBuffer_0_5_io_weightIn_ready;
  wire                lwBuffer_0_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_5_io_weightOut_payload;
  wire                lwBuffer_0_6_io_weightIn_ready;
  wire                lwBuffer_0_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_6_io_weightOut_payload;
  wire                lwBuffer_0_7_io_weightIn_ready;
  wire                lwBuffer_0_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_0_7_io_weightOut_payload;
  wire                lwBuffer_1_0_io_weightIn_ready;
  wire                lwBuffer_1_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_0_io_weightOut_payload;
  wire                lwBuffer_1_1_io_weightIn_ready;
  wire                lwBuffer_1_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_1_io_weightOut_payload;
  wire                lwBuffer_1_2_io_weightIn_ready;
  wire                lwBuffer_1_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_2_io_weightOut_payload;
  wire                lwBuffer_1_3_io_weightIn_ready;
  wire                lwBuffer_1_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_3_io_weightOut_payload;
  wire                lwBuffer_1_4_io_weightIn_ready;
  wire                lwBuffer_1_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_4_io_weightOut_payload;
  wire                lwBuffer_1_5_io_weightIn_ready;
  wire                lwBuffer_1_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_5_io_weightOut_payload;
  wire                lwBuffer_1_6_io_weightIn_ready;
  wire                lwBuffer_1_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_6_io_weightOut_payload;
  wire                lwBuffer_1_7_io_weightIn_ready;
  wire                lwBuffer_1_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_1_7_io_weightOut_payload;
  wire                lwBuffer_2_0_io_weightIn_ready;
  wire                lwBuffer_2_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_0_io_weightOut_payload;
  wire                lwBuffer_2_1_io_weightIn_ready;
  wire                lwBuffer_2_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_1_io_weightOut_payload;
  wire                lwBuffer_2_2_io_weightIn_ready;
  wire                lwBuffer_2_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_2_io_weightOut_payload;
  wire                lwBuffer_2_3_io_weightIn_ready;
  wire                lwBuffer_2_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_3_io_weightOut_payload;
  wire                lwBuffer_2_4_io_weightIn_ready;
  wire                lwBuffer_2_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_4_io_weightOut_payload;
  wire                lwBuffer_2_5_io_weightIn_ready;
  wire                lwBuffer_2_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_5_io_weightOut_payload;
  wire                lwBuffer_2_6_io_weightIn_ready;
  wire                lwBuffer_2_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_6_io_weightOut_payload;
  wire                lwBuffer_2_7_io_weightIn_ready;
  wire                lwBuffer_2_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_2_7_io_weightOut_payload;
  wire                lwBuffer_3_0_io_weightIn_ready;
  wire                lwBuffer_3_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_0_io_weightOut_payload;
  wire                lwBuffer_3_1_io_weightIn_ready;
  wire                lwBuffer_3_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_1_io_weightOut_payload;
  wire                lwBuffer_3_2_io_weightIn_ready;
  wire                lwBuffer_3_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_2_io_weightOut_payload;
  wire                lwBuffer_3_3_io_weightIn_ready;
  wire                lwBuffer_3_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_3_io_weightOut_payload;
  wire                lwBuffer_3_4_io_weightIn_ready;
  wire                lwBuffer_3_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_4_io_weightOut_payload;
  wire                lwBuffer_3_5_io_weightIn_ready;
  wire                lwBuffer_3_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_5_io_weightOut_payload;
  wire                lwBuffer_3_6_io_weightIn_ready;
  wire                lwBuffer_3_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_6_io_weightOut_payload;
  wire                lwBuffer_3_7_io_weightIn_ready;
  wire                lwBuffer_3_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_3_7_io_weightOut_payload;
  wire                lwBuffer_4_0_io_weightIn_ready;
  wire                lwBuffer_4_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_0_io_weightOut_payload;
  wire                lwBuffer_4_1_io_weightIn_ready;
  wire                lwBuffer_4_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_1_io_weightOut_payload;
  wire                lwBuffer_4_2_io_weightIn_ready;
  wire                lwBuffer_4_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_2_io_weightOut_payload;
  wire                lwBuffer_4_3_io_weightIn_ready;
  wire                lwBuffer_4_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_3_io_weightOut_payload;
  wire                lwBuffer_4_4_io_weightIn_ready;
  wire                lwBuffer_4_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_4_io_weightOut_payload;
  wire                lwBuffer_4_5_io_weightIn_ready;
  wire                lwBuffer_4_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_5_io_weightOut_payload;
  wire                lwBuffer_4_6_io_weightIn_ready;
  wire                lwBuffer_4_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_6_io_weightOut_payload;
  wire                lwBuffer_4_7_io_weightIn_ready;
  wire                lwBuffer_4_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_4_7_io_weightOut_payload;
  wire                lwBuffer_5_0_io_weightIn_ready;
  wire                lwBuffer_5_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_0_io_weightOut_payload;
  wire                lwBuffer_5_1_io_weightIn_ready;
  wire                lwBuffer_5_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_1_io_weightOut_payload;
  wire                lwBuffer_5_2_io_weightIn_ready;
  wire                lwBuffer_5_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_2_io_weightOut_payload;
  wire                lwBuffer_5_3_io_weightIn_ready;
  wire                lwBuffer_5_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_3_io_weightOut_payload;
  wire                lwBuffer_5_4_io_weightIn_ready;
  wire                lwBuffer_5_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_4_io_weightOut_payload;
  wire                lwBuffer_5_5_io_weightIn_ready;
  wire                lwBuffer_5_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_5_io_weightOut_payload;
  wire                lwBuffer_5_6_io_weightIn_ready;
  wire                lwBuffer_5_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_6_io_weightOut_payload;
  wire                lwBuffer_5_7_io_weightIn_ready;
  wire                lwBuffer_5_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_5_7_io_weightOut_payload;
  wire                lwBuffer_6_0_io_weightIn_ready;
  wire                lwBuffer_6_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_0_io_weightOut_payload;
  wire                lwBuffer_6_1_io_weightIn_ready;
  wire                lwBuffer_6_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_1_io_weightOut_payload;
  wire                lwBuffer_6_2_io_weightIn_ready;
  wire                lwBuffer_6_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_2_io_weightOut_payload;
  wire                lwBuffer_6_3_io_weightIn_ready;
  wire                lwBuffer_6_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_3_io_weightOut_payload;
  wire                lwBuffer_6_4_io_weightIn_ready;
  wire                lwBuffer_6_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_4_io_weightOut_payload;
  wire                lwBuffer_6_5_io_weightIn_ready;
  wire                lwBuffer_6_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_5_io_weightOut_payload;
  wire                lwBuffer_6_6_io_weightIn_ready;
  wire                lwBuffer_6_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_6_io_weightOut_payload;
  wire                lwBuffer_6_7_io_weightIn_ready;
  wire                lwBuffer_6_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_6_7_io_weightOut_payload;
  wire                lwBuffer_7_0_io_weightIn_ready;
  wire                lwBuffer_7_0_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_0_io_weightOut_payload;
  wire                lwBuffer_7_1_io_weightIn_ready;
  wire                lwBuffer_7_1_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_1_io_weightOut_payload;
  wire                lwBuffer_7_2_io_weightIn_ready;
  wire                lwBuffer_7_2_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_2_io_weightOut_payload;
  wire                lwBuffer_7_3_io_weightIn_ready;
  wire                lwBuffer_7_3_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_3_io_weightOut_payload;
  wire                lwBuffer_7_4_io_weightIn_ready;
  wire                lwBuffer_7_4_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_4_io_weightOut_payload;
  wire                lwBuffer_7_5_io_weightIn_ready;
  wire                lwBuffer_7_5_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_5_io_weightOut_payload;
  wire                lwBuffer_7_6_io_weightIn_ready;
  wire                lwBuffer_7_6_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_6_io_weightOut_payload;
  wire                lwBuffer_7_7_io_weightIn_ready;
  wire                lwBuffer_7_7_io_weightOut_valid;
  wire       [7:0]    lwBuffer_7_7_io_weightOut_payload;

  PECore peCores_0_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_0_macOut_valid              ), //o
    .macOut_payload    (peCores_0_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_1_macOut_valid              ), //o
    .macOut_payload    (peCores_0_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_2_macOut_valid              ), //o
    .macOut_payload    (peCores_0_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_3_macOut_valid              ), //o
    .macOut_payload    (peCores_0_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_4_macOut_valid              ), //o
    .macOut_payload    (peCores_0_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_5_macOut_valid              ), //o
    .macOut_payload    (peCores_0_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_6_macOut_valid              ), //o
    .macOut_payload    (peCores_0_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_0_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_0_valid                     ), //i
    .featureIn_ready   (peCores_0_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_0_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_0_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_0_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_0_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_0_7_macOut_valid              ), //o
    .macOut_payload    (peCores_0_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_0_macOut_valid              ), //o
    .macOut_payload    (peCores_1_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_1_macOut_valid              ), //o
    .macOut_payload    (peCores_1_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_2_macOut_valid              ), //o
    .macOut_payload    (peCores_1_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_3_macOut_valid              ), //o
    .macOut_payload    (peCores_1_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_4_macOut_valid              ), //o
    .macOut_payload    (peCores_1_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_5_macOut_valid              ), //o
    .macOut_payload    (peCores_1_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_6_macOut_valid              ), //o
    .macOut_payload    (peCores_1_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_1_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_1_valid                     ), //i
    .featureIn_ready   (peCores_1_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_1_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_1_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_1_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_1_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_1_7_macOut_valid              ), //o
    .macOut_payload    (peCores_1_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_0_macOut_valid              ), //o
    .macOut_payload    (peCores_2_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_1_macOut_valid              ), //o
    .macOut_payload    (peCores_2_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_2_macOut_valid              ), //o
    .macOut_payload    (peCores_2_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_3_macOut_valid              ), //o
    .macOut_payload    (peCores_2_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_4_macOut_valid              ), //o
    .macOut_payload    (peCores_2_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_5_macOut_valid              ), //o
    .macOut_payload    (peCores_2_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_6_macOut_valid              ), //o
    .macOut_payload    (peCores_2_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_2_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_2_valid                     ), //i
    .featureIn_ready   (peCores_2_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_2_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_2_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_2_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_2_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_2_7_macOut_valid              ), //o
    .macOut_payload    (peCores_2_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_0_macOut_valid              ), //o
    .macOut_payload    (peCores_3_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_1_macOut_valid              ), //o
    .macOut_payload    (peCores_3_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_2_macOut_valid              ), //o
    .macOut_payload    (peCores_3_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_3_macOut_valid              ), //o
    .macOut_payload    (peCores_3_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_4_macOut_valid              ), //o
    .macOut_payload    (peCores_3_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_5_macOut_valid              ), //o
    .macOut_payload    (peCores_3_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_6_macOut_valid              ), //o
    .macOut_payload    (peCores_3_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_3_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_3_valid                     ), //i
    .featureIn_ready   (peCores_3_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_3_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_3_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_3_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_3_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_3_7_macOut_valid              ), //o
    .macOut_payload    (peCores_3_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_0_macOut_valid              ), //o
    .macOut_payload    (peCores_4_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_1_macOut_valid              ), //o
    .macOut_payload    (peCores_4_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_2_macOut_valid              ), //o
    .macOut_payload    (peCores_4_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_3_macOut_valid              ), //o
    .macOut_payload    (peCores_4_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_4_macOut_valid              ), //o
    .macOut_payload    (peCores_4_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_5_macOut_valid              ), //o
    .macOut_payload    (peCores_4_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_6_macOut_valid              ), //o
    .macOut_payload    (peCores_4_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_4_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_4_valid                     ), //i
    .featureIn_ready   (peCores_4_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_4_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_4_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_4_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_4_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_4_7_macOut_valid              ), //o
    .macOut_payload    (peCores_4_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_0_macOut_valid              ), //o
    .macOut_payload    (peCores_5_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_1_macOut_valid              ), //o
    .macOut_payload    (peCores_5_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_2_macOut_valid              ), //o
    .macOut_payload    (peCores_5_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_3_macOut_valid              ), //o
    .macOut_payload    (peCores_5_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_4_macOut_valid              ), //o
    .macOut_payload    (peCores_5_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_5_macOut_valid              ), //o
    .macOut_payload    (peCores_5_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_6_macOut_valid              ), //o
    .macOut_payload    (peCores_5_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_5_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_5_valid                     ), //i
    .featureIn_ready   (peCores_5_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_5_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_5_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_5_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_5_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_5_7_macOut_valid              ), //o
    .macOut_payload    (peCores_5_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_0_macOut_valid              ), //o
    .macOut_payload    (peCores_6_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_1_macOut_valid              ), //o
    .macOut_payload    (peCores_6_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_2_macOut_valid              ), //o
    .macOut_payload    (peCores_6_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_3_macOut_valid              ), //o
    .macOut_payload    (peCores_6_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_4_macOut_valid              ), //o
    .macOut_payload    (peCores_6_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_5_macOut_valid              ), //o
    .macOut_payload    (peCores_6_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_6_macOut_valid              ), //o
    .macOut_payload    (peCores_6_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_6_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_6_valid                     ), //i
    .featureIn_ready   (peCores_6_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_6_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_6_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_6_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_6_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_6_7_macOut_valid              ), //o
    .macOut_payload    (peCores_6_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_0_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_0_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_0_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_0_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_0_macOut_valid              ), //o
    .macOut_payload    (peCores_7_0_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_1 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_1_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_1_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_1_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_1_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_1_macOut_valid              ), //o
    .macOut_payload    (peCores_7_1_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_2 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_2_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_2_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_2_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_2_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_2_macOut_valid              ), //o
    .macOut_payload    (peCores_7_2_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_3 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_3_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_3_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_3_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_3_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_3_macOut_valid              ), //o
    .macOut_payload    (peCores_7_3_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_4 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_4_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_4_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_4_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_4_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_4_macOut_valid              ), //o
    .macOut_payload    (peCores_7_4_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_5 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_5_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_5_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_5_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_5_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_5_macOut_valid              ), //o
    .macOut_payload    (peCores_7_5_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_6 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_6_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_6_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_6_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_6_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_6_macOut_valid              ), //o
    .macOut_payload    (peCores_7_6_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PECore peCores_7_7 (
    .clear             (clear                                 ), //i
    .mode              (peMode[2:0]                           ), //i
    .featureIn_valid   (featureIn_7_valid                     ), //i
    .featureIn_ready   (peCores_7_7_featureIn_ready           ), //o
    .featureIn_payload (featureIn_7_payload[7:0]              ), //i
    .weight_valid      (lwBuffer_7_7_io_weightOut_valid       ), //i
    .weight_ready      (peCores_7_7_weight_ready              ), //o
    .weight_payload    (lwBuffer_7_7_io_weightOut_payload[7:0]), //i
    .macOut_valid      (peCores_7_7_macOut_valid              ), //o
    .macOut_payload    (peCores_7_7_macOut_payload[31:0]      ), //o
    .clk               (clk                                   ), //i
    .reset             (reset                                 )  //i
  );
  PPUnit ppUnit_0 (
    .clear              (clear                           ), //i
    .relu               (relu                            ), //i
    .mode               (ppuMode[1:0]                    ), //i
    .spLen              (spLen[9:0]                      ), //i
    .loopLen            (loopLen[6:0]                    ), //i
    .macIn_0_valid      (peCores_0_0_macOut_valid        ), //i
    .macIn_0_payload    (peCores_0_0_macOut_payload[31:0]), //i
    .macIn_1_valid      (peCores_0_1_macOut_valid        ), //i
    .macIn_1_payload    (peCores_0_1_macOut_payload[31:0]), //i
    .macIn_2_valid      (peCores_0_2_macOut_valid        ), //i
    .macIn_2_payload    (peCores_0_2_macOut_payload[31:0]), //i
    .macIn_3_valid      (peCores_0_3_macOut_valid        ), //i
    .macIn_3_payload    (peCores_0_3_macOut_payload[31:0]), //i
    .macIn_4_valid      (peCores_0_4_macOut_valid        ), //i
    .macIn_4_payload    (peCores_0_4_macOut_payload[31:0]), //i
    .macIn_5_valid      (peCores_0_5_macOut_valid        ), //i
    .macIn_5_payload    (peCores_0_5_macOut_payload[31:0]), //i
    .macIn_6_valid      (peCores_0_6_macOut_valid        ), //i
    .macIn_6_payload    (peCores_0_6_macOut_payload[31:0]), //i
    .macIn_7_valid      (peCores_0_7_macOut_valid        ), //i
    .macIn_7_payload    (peCores_0_7_macOut_payload[31:0]), //i
    .featureOut_valid   (ppUnit_0_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_0_featureOut_payload[7:0]), //o
    .clk                (clk                             ), //i
    .reset              (reset                           )  //i
  );
  PPUnit ppUnit_1_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_1_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_1_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_1_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_1_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_1_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_1_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_1_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_1_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_1_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_1_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_1_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_1_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_1_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_1_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_1_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_1_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_1_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_1_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_2_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_2_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_2_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_2_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_2_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_2_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_2_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_2_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_2_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_2_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_2_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_2_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_2_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_2_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_2_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_2_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_2_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_2_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_2_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_3_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_3_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_3_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_3_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_3_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_3_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_3_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_3_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_3_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_3_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_3_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_3_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_3_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_3_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_3_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_3_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_3_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_3_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_3_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_4_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_4_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_4_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_4_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_4_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_4_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_4_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_4_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_4_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_4_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_4_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_4_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_4_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_4_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_4_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_4_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_4_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_4_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_4_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_5_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_5_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_5_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_5_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_5_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_5_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_5_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_5_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_5_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_5_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_5_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_5_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_5_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_5_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_5_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_5_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_5_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_5_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_5_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_6_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_6_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_6_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_6_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_6_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_6_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_6_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_6_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_6_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_6_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_6_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_6_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_6_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_6_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_6_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_6_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_6_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_6_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_6_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  PPUnit ppUnit_7_1 (
    .clear              (clear                             ), //i
    .relu               (relu                              ), //i
    .mode               (ppuMode[1:0]                      ), //i
    .spLen              (spLen[9:0]                        ), //i
    .loopLen            (loopLen[6:0]                      ), //i
    .macIn_0_valid      (peCores_7_0_macOut_valid          ), //i
    .macIn_0_payload    (peCores_7_0_macOut_payload[31:0]  ), //i
    .macIn_1_valid      (peCores_7_1_macOut_valid          ), //i
    .macIn_1_payload    (peCores_7_1_macOut_payload[31:0]  ), //i
    .macIn_2_valid      (peCores_7_2_macOut_valid          ), //i
    .macIn_2_payload    (peCores_7_2_macOut_payload[31:0]  ), //i
    .macIn_3_valid      (peCores_7_3_macOut_valid          ), //i
    .macIn_3_payload    (peCores_7_3_macOut_payload[31:0]  ), //i
    .macIn_4_valid      (peCores_7_4_macOut_valid          ), //i
    .macIn_4_payload    (peCores_7_4_macOut_payload[31:0]  ), //i
    .macIn_5_valid      (peCores_7_5_macOut_valid          ), //i
    .macIn_5_payload    (peCores_7_5_macOut_payload[31:0]  ), //i
    .macIn_6_valid      (peCores_7_6_macOut_valid          ), //i
    .macIn_6_payload    (peCores_7_6_macOut_payload[31:0]  ), //i
    .macIn_7_valid      (peCores_7_7_macOut_valid          ), //i
    .macIn_7_payload    (peCores_7_7_macOut_payload[31:0]  ), //i
    .featureOut_valid   (ppUnit_7_1_featureOut_valid       ), //o
    .featureOut_payload (ppUnit_7_1_featureOut_payload[7:0]), //o
    .clk                (clk                               ), //i
    .reset              (reset                             )  //i
  );
  LWBuffer lwBuffer_0_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_0_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_0_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_0_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_0_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_0_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_0_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_0_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_1_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_1_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_1_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_1_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_1_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_1_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_1_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_2_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_2_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_2_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_2_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_2_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_2_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_2_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_3_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_3_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_3_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_3_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_3_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_3_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_3_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_4_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_4_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_4_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_4_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_4_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_4_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_4_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_5_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_5_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_5_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_5_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_5_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_5_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_5_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_6_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_6_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_6_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_6_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_6_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_6_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_6_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_0 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_0_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_0_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_0_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_0_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_0_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_0_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_1 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_1_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_1_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_1_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_1_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_1_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_1_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_2 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_2_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_2_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_2_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_2_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_2_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_2_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_3 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_3_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_3_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_3_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_3_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_3_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_3_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_4 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_4_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_4_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_4_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_4_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_4_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_4_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_5 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_5_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_5_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_5_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_5_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_5_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_5_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_6 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_6_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_6_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_6_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_6_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_6_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_6_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  LWBuffer lwBuffer_7_7 (
    .io_clear             (clear                                 ), //i
    .io_spLen             (spLen[9:0]                            ), //i
    .io_kChDim            (kChDim[5:0]                           ), //i
    .io_weightIn_valid    (weight_7_7_valid                      ), //i
    .io_weightIn_ready    (lwBuffer_7_7_io_weightIn_ready        ), //o
    .io_weightIn_payload  (weight_7_7_payload[7:0]               ), //i
    .io_weightOut_valid   (lwBuffer_7_7_io_weightOut_valid       ), //o
    .io_weightOut_ready   (peCores_7_7_weight_ready              ), //i
    .io_weightOut_payload (lwBuffer_7_7_io_weightOut_payload[7:0]), //o
    .clk                  (clk                                   ), //i
    .reset                (reset                                 )  //i
  );
  assign featureOut_0_valid = ppUnit_0_featureOut_valid;
  assign featureOut_0_payload = ppUnit_0_featureOut_payload;
  assign weight_0_0_ready = lwBuffer_0_0_io_weightIn_ready;
  assign weight_0_1_ready = lwBuffer_0_1_io_weightIn_ready;
  assign weight_0_2_ready = lwBuffer_0_2_io_weightIn_ready;
  assign weight_0_3_ready = lwBuffer_0_3_io_weightIn_ready;
  assign weight_0_4_ready = lwBuffer_0_4_io_weightIn_ready;
  assign weight_0_5_ready = lwBuffer_0_5_io_weightIn_ready;
  assign weight_0_6_ready = lwBuffer_0_6_io_weightIn_ready;
  assign weight_0_7_ready = lwBuffer_0_7_io_weightIn_ready;
  assign featureOut_1_valid = ppUnit_1_1_featureOut_valid;
  assign featureOut_1_payload = ppUnit_1_1_featureOut_payload;
  assign weight_1_0_ready = lwBuffer_1_0_io_weightIn_ready;
  assign weight_1_1_ready = lwBuffer_1_1_io_weightIn_ready;
  assign weight_1_2_ready = lwBuffer_1_2_io_weightIn_ready;
  assign weight_1_3_ready = lwBuffer_1_3_io_weightIn_ready;
  assign weight_1_4_ready = lwBuffer_1_4_io_weightIn_ready;
  assign weight_1_5_ready = lwBuffer_1_5_io_weightIn_ready;
  assign weight_1_6_ready = lwBuffer_1_6_io_weightIn_ready;
  assign weight_1_7_ready = lwBuffer_1_7_io_weightIn_ready;
  assign featureOut_2_valid = ppUnit_2_1_featureOut_valid;
  assign featureOut_2_payload = ppUnit_2_1_featureOut_payload;
  assign weight_2_0_ready = lwBuffer_2_0_io_weightIn_ready;
  assign weight_2_1_ready = lwBuffer_2_1_io_weightIn_ready;
  assign weight_2_2_ready = lwBuffer_2_2_io_weightIn_ready;
  assign weight_2_3_ready = lwBuffer_2_3_io_weightIn_ready;
  assign weight_2_4_ready = lwBuffer_2_4_io_weightIn_ready;
  assign weight_2_5_ready = lwBuffer_2_5_io_weightIn_ready;
  assign weight_2_6_ready = lwBuffer_2_6_io_weightIn_ready;
  assign weight_2_7_ready = lwBuffer_2_7_io_weightIn_ready;
  assign featureOut_3_valid = ppUnit_3_1_featureOut_valid;
  assign featureOut_3_payload = ppUnit_3_1_featureOut_payload;
  assign weight_3_0_ready = lwBuffer_3_0_io_weightIn_ready;
  assign weight_3_1_ready = lwBuffer_3_1_io_weightIn_ready;
  assign weight_3_2_ready = lwBuffer_3_2_io_weightIn_ready;
  assign weight_3_3_ready = lwBuffer_3_3_io_weightIn_ready;
  assign weight_3_4_ready = lwBuffer_3_4_io_weightIn_ready;
  assign weight_3_5_ready = lwBuffer_3_5_io_weightIn_ready;
  assign weight_3_6_ready = lwBuffer_3_6_io_weightIn_ready;
  assign weight_3_7_ready = lwBuffer_3_7_io_weightIn_ready;
  assign featureOut_4_valid = ppUnit_4_1_featureOut_valid;
  assign featureOut_4_payload = ppUnit_4_1_featureOut_payload;
  assign weight_4_0_ready = lwBuffer_4_0_io_weightIn_ready;
  assign weight_4_1_ready = lwBuffer_4_1_io_weightIn_ready;
  assign weight_4_2_ready = lwBuffer_4_2_io_weightIn_ready;
  assign weight_4_3_ready = lwBuffer_4_3_io_weightIn_ready;
  assign weight_4_4_ready = lwBuffer_4_4_io_weightIn_ready;
  assign weight_4_5_ready = lwBuffer_4_5_io_weightIn_ready;
  assign weight_4_6_ready = lwBuffer_4_6_io_weightIn_ready;
  assign weight_4_7_ready = lwBuffer_4_7_io_weightIn_ready;
  assign featureOut_5_valid = ppUnit_5_1_featureOut_valid;
  assign featureOut_5_payload = ppUnit_5_1_featureOut_payload;
  assign weight_5_0_ready = lwBuffer_5_0_io_weightIn_ready;
  assign weight_5_1_ready = lwBuffer_5_1_io_weightIn_ready;
  assign weight_5_2_ready = lwBuffer_5_2_io_weightIn_ready;
  assign weight_5_3_ready = lwBuffer_5_3_io_weightIn_ready;
  assign weight_5_4_ready = lwBuffer_5_4_io_weightIn_ready;
  assign weight_5_5_ready = lwBuffer_5_5_io_weightIn_ready;
  assign weight_5_6_ready = lwBuffer_5_6_io_weightIn_ready;
  assign weight_5_7_ready = lwBuffer_5_7_io_weightIn_ready;
  assign featureOut_6_valid = ppUnit_6_1_featureOut_valid;
  assign featureOut_6_payload = ppUnit_6_1_featureOut_payload;
  assign weight_6_0_ready = lwBuffer_6_0_io_weightIn_ready;
  assign weight_6_1_ready = lwBuffer_6_1_io_weightIn_ready;
  assign weight_6_2_ready = lwBuffer_6_2_io_weightIn_ready;
  assign weight_6_3_ready = lwBuffer_6_3_io_weightIn_ready;
  assign weight_6_4_ready = lwBuffer_6_4_io_weightIn_ready;
  assign weight_6_5_ready = lwBuffer_6_5_io_weightIn_ready;
  assign weight_6_6_ready = lwBuffer_6_6_io_weightIn_ready;
  assign weight_6_7_ready = lwBuffer_6_7_io_weightIn_ready;
  assign featureOut_7_valid = ppUnit_7_1_featureOut_valid;
  assign featureOut_7_payload = ppUnit_7_1_featureOut_payload;
  assign weight_7_0_ready = lwBuffer_7_0_io_weightIn_ready;
  assign weight_7_1_ready = lwBuffer_7_1_io_weightIn_ready;
  assign weight_7_2_ready = lwBuffer_7_2_io_weightIn_ready;
  assign weight_7_3_ready = lwBuffer_7_3_io_weightIn_ready;
  assign weight_7_4_ready = lwBuffer_7_4_io_weightIn_ready;
  assign weight_7_5_ready = lwBuffer_7_5_io_weightIn_ready;
  assign weight_7_6_ready = lwBuffer_7_6_io_weightIn_ready;
  assign weight_7_7_ready = lwBuffer_7_7_io_weightIn_ready;
  assign featureIn_0_ready = (((((((peCores_0_0_featureIn_ready && peCores_0_1_featureIn_ready) && peCores_0_2_featureIn_ready) && peCores_0_3_featureIn_ready) && peCores_0_4_featureIn_ready) && peCores_0_5_featureIn_ready) && peCores_0_6_featureIn_ready) && peCores_0_7_featureIn_ready);
  assign featureIn_1_ready = (((((((peCores_1_0_featureIn_ready && peCores_1_1_featureIn_ready) && peCores_1_2_featureIn_ready) && peCores_1_3_featureIn_ready) && peCores_1_4_featureIn_ready) && peCores_1_5_featureIn_ready) && peCores_1_6_featureIn_ready) && peCores_1_7_featureIn_ready);
  assign featureIn_2_ready = (((((((peCores_2_0_featureIn_ready && peCores_2_1_featureIn_ready) && peCores_2_2_featureIn_ready) && peCores_2_3_featureIn_ready) && peCores_2_4_featureIn_ready) && peCores_2_5_featureIn_ready) && peCores_2_6_featureIn_ready) && peCores_2_7_featureIn_ready);
  assign featureIn_3_ready = (((((((peCores_3_0_featureIn_ready && peCores_3_1_featureIn_ready) && peCores_3_2_featureIn_ready) && peCores_3_3_featureIn_ready) && peCores_3_4_featureIn_ready) && peCores_3_5_featureIn_ready) && peCores_3_6_featureIn_ready) && peCores_3_7_featureIn_ready);
  assign featureIn_4_ready = (((((((peCores_4_0_featureIn_ready && peCores_4_1_featureIn_ready) && peCores_4_2_featureIn_ready) && peCores_4_3_featureIn_ready) && peCores_4_4_featureIn_ready) && peCores_4_5_featureIn_ready) && peCores_4_6_featureIn_ready) && peCores_4_7_featureIn_ready);
  assign featureIn_5_ready = (((((((peCores_5_0_featureIn_ready && peCores_5_1_featureIn_ready) && peCores_5_2_featureIn_ready) && peCores_5_3_featureIn_ready) && peCores_5_4_featureIn_ready) && peCores_5_5_featureIn_ready) && peCores_5_6_featureIn_ready) && peCores_5_7_featureIn_ready);
  assign featureIn_6_ready = (((((((peCores_6_0_featureIn_ready && peCores_6_1_featureIn_ready) && peCores_6_2_featureIn_ready) && peCores_6_3_featureIn_ready) && peCores_6_4_featureIn_ready) && peCores_6_5_featureIn_ready) && peCores_6_6_featureIn_ready) && peCores_6_7_featureIn_ready);
  assign featureIn_7_ready = (((((((peCores_7_0_featureIn_ready && peCores_7_1_featureIn_ready) && peCores_7_2_featureIn_ready) && peCores_7_3_featureIn_ready) && peCores_7_4_featureIn_ready) && peCores_7_5_featureIn_ready) && peCores_7_6_featureIn_ready) && peCores_7_7_featureIn_ready);

endmodule

//LWBuffer_63 replaced by LWBuffer

//LWBuffer_62 replaced by LWBuffer

//LWBuffer_61 replaced by LWBuffer

//LWBuffer_60 replaced by LWBuffer

//LWBuffer_59 replaced by LWBuffer

//LWBuffer_58 replaced by LWBuffer

//LWBuffer_57 replaced by LWBuffer

//LWBuffer_56 replaced by LWBuffer

//LWBuffer_55 replaced by LWBuffer

//LWBuffer_54 replaced by LWBuffer

//LWBuffer_53 replaced by LWBuffer

//LWBuffer_52 replaced by LWBuffer

//LWBuffer_51 replaced by LWBuffer

//LWBuffer_50 replaced by LWBuffer

//LWBuffer_49 replaced by LWBuffer

//LWBuffer_48 replaced by LWBuffer

//LWBuffer_47 replaced by LWBuffer

//LWBuffer_46 replaced by LWBuffer

//LWBuffer_45 replaced by LWBuffer

//LWBuffer_44 replaced by LWBuffer

//LWBuffer_43 replaced by LWBuffer

//LWBuffer_42 replaced by LWBuffer

//LWBuffer_41 replaced by LWBuffer

//LWBuffer_40 replaced by LWBuffer

//LWBuffer_39 replaced by LWBuffer

//LWBuffer_38 replaced by LWBuffer

//LWBuffer_37 replaced by LWBuffer

//LWBuffer_36 replaced by LWBuffer

//LWBuffer_35 replaced by LWBuffer

//LWBuffer_34 replaced by LWBuffer

//LWBuffer_33 replaced by LWBuffer

//LWBuffer_32 replaced by LWBuffer

//LWBuffer_31 replaced by LWBuffer

//LWBuffer_30 replaced by LWBuffer

//LWBuffer_29 replaced by LWBuffer

//LWBuffer_28 replaced by LWBuffer

//LWBuffer_27 replaced by LWBuffer

//LWBuffer_26 replaced by LWBuffer

//LWBuffer_25 replaced by LWBuffer

//LWBuffer_24 replaced by LWBuffer

//LWBuffer_23 replaced by LWBuffer

//LWBuffer_22 replaced by LWBuffer

//LWBuffer_21 replaced by LWBuffer

//LWBuffer_20 replaced by LWBuffer

//LWBuffer_19 replaced by LWBuffer

//LWBuffer_18 replaced by LWBuffer

//LWBuffer_17 replaced by LWBuffer

//LWBuffer_16 replaced by LWBuffer

//LWBuffer_15 replaced by LWBuffer

//LWBuffer_14 replaced by LWBuffer

//LWBuffer_13 replaced by LWBuffer

//LWBuffer_12 replaced by LWBuffer

//LWBuffer_11 replaced by LWBuffer

//LWBuffer_10 replaced by LWBuffer

//LWBuffer_9 replaced by LWBuffer

//LWBuffer_8 replaced by LWBuffer

//LWBuffer_7 replaced by LWBuffer

//LWBuffer_6 replaced by LWBuffer

//LWBuffer_5 replaced by LWBuffer

//LWBuffer_4 replaced by LWBuffer

//LWBuffer_3 replaced by LWBuffer

//LWBuffer_2 replaced by LWBuffer

//LWBuffer_1 replaced by LWBuffer

module LWBuffer (
  input  wire          io_clear,
  input  wire [9:0]    io_spLen,
  input  wire [5:0]    io_kChDim,
  input  wire          io_weightIn_valid,
  output wire          io_weightIn_ready,
  input  wire [7:0]    io_weightIn_payload,
  output wire          io_weightOut_valid,
  input  wire          io_weightOut_ready,
  output wire [7:0]    io_weightOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [9:0]    tmp_spLenValid;
  wire       [9:0]    tmp_kChDimValid;
  wire       [9:0]    tmp_kChDimValid_1;
  wire       [5:0]    tmp_io_weightIn_ready;
  reg        [7:0]    tmp_io_weightOut_payload;
  wire       [5:0]    tmp_validWeight;
  wire       [5:0]    tmp_rdPointer;
  reg        [7:0]    Buffer_0;
  reg        [7:0]    Buffer_1;
  reg        [7:0]    Buffer_2;
  reg        [7:0]    Buffer_3;
  reg        [7:0]    Buffer_4;
  reg        [7:0]    Buffer_5;
  reg        [7:0]    Buffer_6;
  reg        [7:0]    Buffer_7;
  reg        [7:0]    Buffer_8;
  reg        [7:0]    Buffer_9;
  reg        [7:0]    Buffer_10;
  reg        [7:0]    Buffer_11;
  reg        [7:0]    Buffer_12;
  reg        [7:0]    Buffer_13;
  reg        [7:0]    Buffer_14;
  reg        [7:0]    Buffer_15;
  reg        [7:0]    Buffer_16;
  reg        [7:0]    Buffer_17;
  reg        [7:0]    Buffer_18;
  reg        [7:0]    Buffer_19;
  reg        [7:0]    Buffer_20;
  reg        [7:0]    Buffer_21;
  reg        [7:0]    Buffer_22;
  reg        [7:0]    Buffer_23;
  reg        [7:0]    Buffer_24;
  reg        [7:0]    Buffer_25;
  reg        [7:0]    Buffer_26;
  reg        [7:0]    Buffer_27;
  reg        [7:0]    Buffer_28;
  reg        [7:0]    Buffer_29;
  reg        [7:0]    Buffer_30;
  reg        [7:0]    Buffer_31;
  reg        [7:0]    Buffer_32;
  reg        [7:0]    Buffer_33;
  reg        [7:0]    Buffer_34;
  reg        [7:0]    Buffer_35;
  reg        [7:0]    Buffer_36;
  reg        [7:0]    Buffer_37;
  reg        [7:0]    Buffer_38;
  reg        [7:0]    Buffer_39;
  reg        [7:0]    Buffer_40;
  reg        [7:0]    Buffer_41;
  reg        [7:0]    Buffer_42;
  reg        [7:0]    Buffer_43;
  reg        [7:0]    Buffer_44;
  reg        [7:0]    Buffer_45;
  reg        [7:0]    Buffer_46;
  reg        [7:0]    Buffer_47;
  reg        [7:0]    Buffer_48;
  reg        [5:0]    validWeight;
  reg        [5:0]    rdPointer;
  reg        [5:0]    wrPointer;
  reg        [9:0]    spLenCnt;
  reg        [5:0]    kChDimCnt;
  wire                spLenValid;
  wire                kChDimValid;
  wire                io_weightOut_fire;
  wire                when_LWBuffer_l47;
  wire                io_weightIn_fire;
  wire       [63:0]   tmp_1;
  wire                when_LWBuffer_l93;

  assign tmp_spLenValid = (io_spLen - 10'h001);
  assign tmp_kChDimValid = {4'd0, kChDimCnt};
  assign tmp_kChDimValid_1 = (io_spLen - 10'h001);
  assign tmp_io_weightIn_ready = (6'h31 - validWeight);
  assign tmp_validWeight = (validWeight - io_kChDim);
  assign tmp_rdPointer = (rdPointer - io_kChDim);
  always @(*) begin
    case(rdPointer)
      6'b000000 : tmp_io_weightOut_payload = Buffer_0;
      6'b000001 : tmp_io_weightOut_payload = Buffer_1;
      6'b000010 : tmp_io_weightOut_payload = Buffer_2;
      6'b000011 : tmp_io_weightOut_payload = Buffer_3;
      6'b000100 : tmp_io_weightOut_payload = Buffer_4;
      6'b000101 : tmp_io_weightOut_payload = Buffer_5;
      6'b000110 : tmp_io_weightOut_payload = Buffer_6;
      6'b000111 : tmp_io_weightOut_payload = Buffer_7;
      6'b001000 : tmp_io_weightOut_payload = Buffer_8;
      6'b001001 : tmp_io_weightOut_payload = Buffer_9;
      6'b001010 : tmp_io_weightOut_payload = Buffer_10;
      6'b001011 : tmp_io_weightOut_payload = Buffer_11;
      6'b001100 : tmp_io_weightOut_payload = Buffer_12;
      6'b001101 : tmp_io_weightOut_payload = Buffer_13;
      6'b001110 : tmp_io_weightOut_payload = Buffer_14;
      6'b001111 : tmp_io_weightOut_payload = Buffer_15;
      6'b010000 : tmp_io_weightOut_payload = Buffer_16;
      6'b010001 : tmp_io_weightOut_payload = Buffer_17;
      6'b010010 : tmp_io_weightOut_payload = Buffer_18;
      6'b010011 : tmp_io_weightOut_payload = Buffer_19;
      6'b010100 : tmp_io_weightOut_payload = Buffer_20;
      6'b010101 : tmp_io_weightOut_payload = Buffer_21;
      6'b010110 : tmp_io_weightOut_payload = Buffer_22;
      6'b010111 : tmp_io_weightOut_payload = Buffer_23;
      6'b011000 : tmp_io_weightOut_payload = Buffer_24;
      6'b011001 : tmp_io_weightOut_payload = Buffer_25;
      6'b011010 : tmp_io_weightOut_payload = Buffer_26;
      6'b011011 : tmp_io_weightOut_payload = Buffer_27;
      6'b011100 : tmp_io_weightOut_payload = Buffer_28;
      6'b011101 : tmp_io_weightOut_payload = Buffer_29;
      6'b011110 : tmp_io_weightOut_payload = Buffer_30;
      6'b011111 : tmp_io_weightOut_payload = Buffer_31;
      6'b100000 : tmp_io_weightOut_payload = Buffer_32;
      6'b100001 : tmp_io_weightOut_payload = Buffer_33;
      6'b100010 : tmp_io_weightOut_payload = Buffer_34;
      6'b100011 : tmp_io_weightOut_payload = Buffer_35;
      6'b100100 : tmp_io_weightOut_payload = Buffer_36;
      6'b100101 : tmp_io_weightOut_payload = Buffer_37;
      6'b100110 : tmp_io_weightOut_payload = Buffer_38;
      6'b100111 : tmp_io_weightOut_payload = Buffer_39;
      6'b101000 : tmp_io_weightOut_payload = Buffer_40;
      6'b101001 : tmp_io_weightOut_payload = Buffer_41;
      6'b101010 : tmp_io_weightOut_payload = Buffer_42;
      6'b101011 : tmp_io_weightOut_payload = Buffer_43;
      6'b101100 : tmp_io_weightOut_payload = Buffer_44;
      6'b101101 : tmp_io_weightOut_payload = Buffer_45;
      6'b101110 : tmp_io_weightOut_payload = Buffer_46;
      6'b101111 : tmp_io_weightOut_payload = Buffer_47;
      default : tmp_io_weightOut_payload = Buffer_48;
    endcase
  end

  assign spLenValid = (spLenCnt == tmp_spLenValid);
  assign kChDimValid = (tmp_kChDimValid == tmp_kChDimValid_1);
  assign io_weightOut_valid = (io_kChDim <= validWeight);
  assign io_weightIn_ready = (tmp_io_weightIn_ready != 6'h0);
  assign io_weightOut_payload = tmp_io_weightOut_payload;
  assign io_weightOut_fire = (io_weightOut_valid && io_weightOut_ready);
  assign when_LWBuffer_l47 = (spLenValid && kChDimValid);
  assign io_weightIn_fire = (io_weightIn_valid && io_weightIn_ready);
  assign tmp_1 = ({63'd0,1'b1} <<< wrPointer);
  assign when_LWBuffer_l93 = (kChDimValid && (! spLenValid));
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      Buffer_0 <= 8'h0;
      Buffer_1 <= 8'h0;
      Buffer_2 <= 8'h0;
      Buffer_3 <= 8'h0;
      Buffer_4 <= 8'h0;
      Buffer_5 <= 8'h0;
      Buffer_6 <= 8'h0;
      Buffer_7 <= 8'h0;
      Buffer_8 <= 8'h0;
      Buffer_9 <= 8'h0;
      Buffer_10 <= 8'h0;
      Buffer_11 <= 8'h0;
      Buffer_12 <= 8'h0;
      Buffer_13 <= 8'h0;
      Buffer_14 <= 8'h0;
      Buffer_15 <= 8'h0;
      Buffer_16 <= 8'h0;
      Buffer_17 <= 8'h0;
      Buffer_18 <= 8'h0;
      Buffer_19 <= 8'h0;
      Buffer_20 <= 8'h0;
      Buffer_21 <= 8'h0;
      Buffer_22 <= 8'h0;
      Buffer_23 <= 8'h0;
      Buffer_24 <= 8'h0;
      Buffer_25 <= 8'h0;
      Buffer_26 <= 8'h0;
      Buffer_27 <= 8'h0;
      Buffer_28 <= 8'h0;
      Buffer_29 <= 8'h0;
      Buffer_30 <= 8'h0;
      Buffer_31 <= 8'h0;
      Buffer_32 <= 8'h0;
      Buffer_33 <= 8'h0;
      Buffer_34 <= 8'h0;
      Buffer_35 <= 8'h0;
      Buffer_36 <= 8'h0;
      Buffer_37 <= 8'h0;
      Buffer_38 <= 8'h0;
      Buffer_39 <= 8'h0;
      Buffer_40 <= 8'h0;
      Buffer_41 <= 8'h0;
      Buffer_42 <= 8'h0;
      Buffer_43 <= 8'h0;
      Buffer_44 <= 8'h0;
      Buffer_45 <= 8'h0;
      Buffer_46 <= 8'h0;
      Buffer_47 <= 8'h0;
      Buffer_48 <= 8'h0;
      validWeight <= 6'h0;
      rdPointer <= 6'h0;
      wrPointer <= 6'h0;
      spLenCnt <= 10'h0;
      kChDimCnt <= 6'h0;
    end else begin
      if(io_clear) begin
        validWeight <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(when_LWBuffer_l47) begin
            if(io_weightIn_fire) begin
              validWeight <= (tmp_validWeight + 6'h01);
            end else begin
              validWeight <= (validWeight - io_kChDim);
            end
          end
        end else begin
          if(io_weightIn_fire) begin
            validWeight <= (validWeight + 6'h01);
          end
        end
      end
      if(io_clear) begin
        wrPointer <= 6'h0;
      end else begin
        if(io_weightIn_fire) begin
          if(tmp_1[0]) begin
            Buffer_0 <= io_weightIn_payload;
          end
          if(tmp_1[1]) begin
            Buffer_1 <= io_weightIn_payload;
          end
          if(tmp_1[2]) begin
            Buffer_2 <= io_weightIn_payload;
          end
          if(tmp_1[3]) begin
            Buffer_3 <= io_weightIn_payload;
          end
          if(tmp_1[4]) begin
            Buffer_4 <= io_weightIn_payload;
          end
          if(tmp_1[5]) begin
            Buffer_5 <= io_weightIn_payload;
          end
          if(tmp_1[6]) begin
            Buffer_6 <= io_weightIn_payload;
          end
          if(tmp_1[7]) begin
            Buffer_7 <= io_weightIn_payload;
          end
          if(tmp_1[8]) begin
            Buffer_8 <= io_weightIn_payload;
          end
          if(tmp_1[9]) begin
            Buffer_9 <= io_weightIn_payload;
          end
          if(tmp_1[10]) begin
            Buffer_10 <= io_weightIn_payload;
          end
          if(tmp_1[11]) begin
            Buffer_11 <= io_weightIn_payload;
          end
          if(tmp_1[12]) begin
            Buffer_12 <= io_weightIn_payload;
          end
          if(tmp_1[13]) begin
            Buffer_13 <= io_weightIn_payload;
          end
          if(tmp_1[14]) begin
            Buffer_14 <= io_weightIn_payload;
          end
          if(tmp_1[15]) begin
            Buffer_15 <= io_weightIn_payload;
          end
          if(tmp_1[16]) begin
            Buffer_16 <= io_weightIn_payload;
          end
          if(tmp_1[17]) begin
            Buffer_17 <= io_weightIn_payload;
          end
          if(tmp_1[18]) begin
            Buffer_18 <= io_weightIn_payload;
          end
          if(tmp_1[19]) begin
            Buffer_19 <= io_weightIn_payload;
          end
          if(tmp_1[20]) begin
            Buffer_20 <= io_weightIn_payload;
          end
          if(tmp_1[21]) begin
            Buffer_21 <= io_weightIn_payload;
          end
          if(tmp_1[22]) begin
            Buffer_22 <= io_weightIn_payload;
          end
          if(tmp_1[23]) begin
            Buffer_23 <= io_weightIn_payload;
          end
          if(tmp_1[24]) begin
            Buffer_24 <= io_weightIn_payload;
          end
          if(tmp_1[25]) begin
            Buffer_25 <= io_weightIn_payload;
          end
          if(tmp_1[26]) begin
            Buffer_26 <= io_weightIn_payload;
          end
          if(tmp_1[27]) begin
            Buffer_27 <= io_weightIn_payload;
          end
          if(tmp_1[28]) begin
            Buffer_28 <= io_weightIn_payload;
          end
          if(tmp_1[29]) begin
            Buffer_29 <= io_weightIn_payload;
          end
          if(tmp_1[30]) begin
            Buffer_30 <= io_weightIn_payload;
          end
          if(tmp_1[31]) begin
            Buffer_31 <= io_weightIn_payload;
          end
          if(tmp_1[32]) begin
            Buffer_32 <= io_weightIn_payload;
          end
          if(tmp_1[33]) begin
            Buffer_33 <= io_weightIn_payload;
          end
          if(tmp_1[34]) begin
            Buffer_34 <= io_weightIn_payload;
          end
          if(tmp_1[35]) begin
            Buffer_35 <= io_weightIn_payload;
          end
          if(tmp_1[36]) begin
            Buffer_36 <= io_weightIn_payload;
          end
          if(tmp_1[37]) begin
            Buffer_37 <= io_weightIn_payload;
          end
          if(tmp_1[38]) begin
            Buffer_38 <= io_weightIn_payload;
          end
          if(tmp_1[39]) begin
            Buffer_39 <= io_weightIn_payload;
          end
          if(tmp_1[40]) begin
            Buffer_40 <= io_weightIn_payload;
          end
          if(tmp_1[41]) begin
            Buffer_41 <= io_weightIn_payload;
          end
          if(tmp_1[42]) begin
            Buffer_42 <= io_weightIn_payload;
          end
          if(tmp_1[43]) begin
            Buffer_43 <= io_weightIn_payload;
          end
          if(tmp_1[44]) begin
            Buffer_44 <= io_weightIn_payload;
          end
          if(tmp_1[45]) begin
            Buffer_45 <= io_weightIn_payload;
          end
          if(tmp_1[46]) begin
            Buffer_46 <= io_weightIn_payload;
          end
          if(tmp_1[47]) begin
            Buffer_47 <= io_weightIn_payload;
          end
          if(tmp_1[48]) begin
            Buffer_48 <= io_weightIn_payload;
          end
          wrPointer <= (wrPointer + 6'h01);
        end
      end
      if(io_clear) begin
        spLenCnt <= 10'h0;
        kChDimCnt <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(kChDimValid) begin
            kChDimCnt <= 6'h0;
            if(spLenValid) begin
              spLenCnt <= 10'h0;
            end else begin
              spLenCnt <= (spLenCnt + 10'h001);
            end
          end else begin
            kChDimCnt <= (kChDimCnt + 6'h01);
          end
        end
      end
      if(io_clear) begin
        rdPointer <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(when_LWBuffer_l93) begin
            rdPointer <= (tmp_rdPointer + 6'h01);
          end else begin
            rdPointer <= (rdPointer + 6'h01);
          end
        end
      end
    end
  end


endmodule

//PPUnit_7 replaced by PPUnit

//PPUnit_6 replaced by PPUnit

//PPUnit_5 replaced by PPUnit

//PPUnit_4 replaced by PPUnit

//PPUnit_3 replaced by PPUnit

//PPUnit_2 replaced by PPUnit

//PPUnit_1 replaced by PPUnit

module PPUnit (
  input  wire          clear,
  input  wire          relu,
  input  wire [1:0]    mode,
  input  wire [9:0]    spLen,
  input  wire [6:0]    loopLen,
  input  wire          macIn_0_valid,
  input  wire [31:0]   macIn_0_payload,
  input  wire          macIn_1_valid,
  input  wire [31:0]   macIn_1_payload,
  input  wire          macIn_2_valid,
  input  wire [31:0]   macIn_2_payload,
  input  wire          macIn_3_valid,
  input  wire [31:0]   macIn_3_payload,
  input  wire          macIn_4_valid,
  input  wire [31:0]   macIn_4_payload,
  input  wire          macIn_5_valid,
  input  wire [31:0]   macIn_5_payload,
  input  wire          macIn_6_valid,
  input  wire [31:0]   macIn_6_payload,
  input  wire          macIn_7_valid,
  input  wire [31:0]   macIn_7_payload,
  output wire          featureOut_valid,
  output wire [7:0]    featureOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [34:0]   macSumArea_adderTree_dataOut;
  wire       [6:0]    tmp_pSumArea_last;
  wire       [9:0]    tmp_when_PPUnit_l70;
  wire       [6:0]    tmp_when_PPUnit_l74;
  reg        [31:0]   tmp_pSumArea_pAddData;
  wire       [23:0]   tmp_quantArea_quantReg;
  reg        [31:0]   lfBuffer_0;
  reg        [31:0]   lfBuffer_1;
  reg        [31:0]   lfBuffer_2;
  reg        [31:0]   lfBuffer_3;
  reg        [31:0]   lfBuffer_4;
  reg        [31:0]   lfBuffer_5;
  reg        [31:0]   lfBuffer_6;
  reg        [31:0]   lfBuffer_7;
  reg        [31:0]   lfBuffer_8;
  reg        [31:0]   lfBuffer_9;
  reg        [31:0]   lfBuffer_10;
  reg        [31:0]   lfBuffer_11;
  reg        [31:0]   lfBuffer_12;
  reg        [31:0]   lfBuffer_13;
  reg        [31:0]   lfBuffer_14;
  reg        [31:0]   lfBuffer_15;
  reg        [31:0]   lfBuffer_16;
  reg        [31:0]   lfBuffer_17;
  reg        [31:0]   lfBuffer_18;
  reg        [31:0]   lfBuffer_19;
  reg        [31:0]   lfBuffer_20;
  reg        [31:0]   lfBuffer_21;
  reg        [31:0]   lfBuffer_22;
  reg        [31:0]   lfBuffer_23;
  reg        [31:0]   lfBuffer_24;
  reg        [31:0]   lfBuffer_25;
  reg        [31:0]   lfBuffer_26;
  reg        [31:0]   lfBuffer_27;
  reg        [31:0]   lfBuffer_28;
  reg        [31:0]   lfBuffer_29;
  reg        [31:0]   lfBuffer_30;
  reg        [31:0]   lfBuffer_31;
  reg        [31:0]   lfBuffer_32;
  reg        [31:0]   lfBuffer_33;
  reg        [31:0]   lfBuffer_34;
  reg        [31:0]   lfBuffer_35;
  reg        [31:0]   lfBuffer_36;
  reg        [31:0]   lfBuffer_37;
  reg        [31:0]   lfBuffer_38;
  reg        [31:0]   lfBuffer_39;
  reg        [31:0]   lfBuffer_40;
  reg        [31:0]   lfBuffer_41;
  reg        [31:0]   lfBuffer_42;
  reg        [31:0]   lfBuffer_43;
  reg        [31:0]   lfBuffer_44;
  reg        [31:0]   lfBuffer_45;
  reg        [31:0]   lfBuffer_46;
  reg        [31:0]   lfBuffer_47;
  reg        [31:0]   lfBuffer_48;
  reg        [31:0]   lfBuffer_49;
  reg        [31:0]   lfBuffer_50;
  reg        [31:0]   lfBuffer_51;
  reg        [31:0]   lfBuffer_52;
  reg        [31:0]   lfBuffer_53;
  reg        [31:0]   lfBuffer_54;
  reg        [31:0]   lfBuffer_55;
  reg        [31:0]   lfBuffer_56;
  reg        [31:0]   lfBuffer_57;
  reg        [31:0]   lfBuffer_58;
  reg        [31:0]   lfBuffer_59;
  reg        [31:0]   lfBuffer_60;
  reg        [31:0]   lfBuffer_61;
  reg        [31:0]   lfBuffer_62;
  reg        [31:0]   lfBuffer_63;
  reg        [31:0]   lfBuffer_64;
  reg        [31:0]   lfBuffer_65;
  reg        [31:0]   lfBuffer_66;
  reg        [31:0]   lfBuffer_67;
  reg        [31:0]   lfBuffer_68;
  reg        [31:0]   lfBuffer_69;
  reg        [31:0]   lfBuffer_70;
  reg        [31:0]   lfBuffer_71;
  reg        [31:0]   lfBuffer_72;
  reg        [31:0]   lfBuffer_73;
  reg        [31:0]   lfBuffer_74;
  reg        [31:0]   lfBuffer_75;
  reg        [31:0]   lfBuffer_76;
  reg        [31:0]   lfBuffer_77;
  reg        [31:0]   lfBuffer_78;
  reg        [31:0]   lfBuffer_79;
  reg        [31:0]   lfBuffer_80;
  reg        [31:0]   lfBuffer_81;
  reg        [31:0]   lfBuffer_82;
  reg        [31:0]   lfBuffer_83;
  reg        [31:0]   lfBuffer_84;
  reg        [31:0]   lfBuffer_85;
  reg        [31:0]   lfBuffer_86;
  reg        [31:0]   lfBuffer_87;
  reg        [31:0]   lfBuffer_88;
  reg        [31:0]   lfBuffer_89;
  reg        [31:0]   lfBuffer_90;
  reg        [31:0]   lfBuffer_91;
  reg        [31:0]   lfBuffer_92;
  reg        [31:0]   lfBuffer_93;
  reg        [31:0]   lfBuffer_94;
  reg        [31:0]   lfBuffer_95;
  reg        [31:0]   lfBuffer_96;
  reg        [31:0]   lfBuffer_97;
  reg        [31:0]   lfBuffer_98;
  reg        [31:0]   lfBuffer_99;
  reg        [31:0]   lfBuffer_100;
  reg        [31:0]   lfBuffer_101;
  reg        [31:0]   lfBuffer_102;
  reg        [31:0]   lfBuffer_103;
  reg        [31:0]   lfBuffer_104;
  reg        [31:0]   lfBuffer_105;
  reg        [31:0]   lfBuffer_106;
  reg        [31:0]   lfBuffer_107;
  reg        [31:0]   lfBuffer_108;
  reg        [31:0]   lfBuffer_109;
  reg        [31:0]   lfBuffer_110;
  reg        [31:0]   lfBuffer_111;
  reg        [31:0]   lfBuffer_112;
  reg        [31:0]   lfBuffer_113;
  reg        [31:0]   lfBuffer_114;
  reg        [31:0]   lfBuffer_115;
  reg        [31:0]   lfBuffer_116;
  reg        [31:0]   lfBuffer_117;
  reg        [31:0]   lfBuffer_118;
  reg        [31:0]   lfBuffer_119;
  reg        [31:0]   lfBuffer_120;
  reg        [31:0]   lfBuffer_121;
  reg        [31:0]   lfBuffer_122;
  reg        [31:0]   lfBuffer_123;
  reg        [31:0]   lfBuffer_124;
  reg        [31:0]   lfBuffer_125;
  reg        [31:0]   lfBuffer_126;
  reg        [31:0]   lfBuffer_127;
  reg        [31:0]   lfBuffer_128;
  reg        [31:0]   lfBuffer_129;
  reg        [31:0]   lfBuffer_130;
  reg        [31:0]   lfBuffer_131;
  reg        [31:0]   lfBuffer_132;
  reg        [31:0]   lfBuffer_133;
  reg        [31:0]   lfBuffer_134;
  reg        [31:0]   lfBuffer_135;
  reg        [31:0]   lfBuffer_136;
  reg        [31:0]   lfBuffer_137;
  reg        [31:0]   lfBuffer_138;
  reg        [31:0]   lfBuffer_139;
  reg        [31:0]   lfBuffer_140;
  reg        [31:0]   lfBuffer_141;
  reg        [31:0]   lfBuffer_142;
  reg        [31:0]   lfBuffer_143;
  reg        [31:0]   lfBuffer_144;
  reg        [31:0]   lfBuffer_145;
  reg        [31:0]   lfBuffer_146;
  reg        [31:0]   lfBuffer_147;
  reg        [31:0]   lfBuffer_148;
  reg        [31:0]   lfBuffer_149;
  reg        [31:0]   lfBuffer_150;
  reg        [31:0]   lfBuffer_151;
  reg        [31:0]   lfBuffer_152;
  reg        [31:0]   lfBuffer_153;
  reg        [31:0]   lfBuffer_154;
  reg        [31:0]   lfBuffer_155;
  reg        [31:0]   lfBuffer_156;
  reg        [31:0]   lfBuffer_157;
  reg        [31:0]   lfBuffer_158;
  reg        [31:0]   lfBuffer_159;
  reg        [31:0]   lfBuffer_160;
  reg        [31:0]   lfBuffer_161;
  reg        [31:0]   lfBuffer_162;
  reg        [31:0]   lfBuffer_163;
  reg        [31:0]   lfBuffer_164;
  reg        [31:0]   lfBuffer_165;
  reg        [31:0]   lfBuffer_166;
  reg        [31:0]   lfBuffer_167;
  reg        [31:0]   lfBuffer_168;
  reg        [31:0]   lfBuffer_169;
  reg        [31:0]   lfBuffer_170;
  reg        [31:0]   lfBuffer_171;
  reg        [31:0]   lfBuffer_172;
  reg        [31:0]   lfBuffer_173;
  reg        [31:0]   lfBuffer_174;
  reg        [31:0]   lfBuffer_175;
  reg        [31:0]   lfBuffer_176;
  reg        [31:0]   lfBuffer_177;
  reg        [31:0]   lfBuffer_178;
  reg        [31:0]   lfBuffer_179;
  reg        [31:0]   lfBuffer_180;
  reg        [31:0]   lfBuffer_181;
  reg        [31:0]   lfBuffer_182;
  reg        [31:0]   lfBuffer_183;
  reg        [31:0]   lfBuffer_184;
  reg        [31:0]   lfBuffer_185;
  reg        [31:0]   lfBuffer_186;
  reg        [31:0]   lfBuffer_187;
  reg        [31:0]   lfBuffer_188;
  reg        [31:0]   lfBuffer_189;
  reg        [31:0]   lfBuffer_190;
  reg        [31:0]   lfBuffer_191;
  reg        [31:0]   lfBuffer_192;
  reg        [31:0]   lfBuffer_193;
  reg        [31:0]   lfBuffer_194;
  reg        [31:0]   lfBuffer_195;
  reg        [31:0]   lfBuffer_196;
  reg        [31:0]   lfBuffer_197;
  reg        [31:0]   lfBuffer_198;
  reg        [31:0]   lfBuffer_199;
  reg        [31:0]   lfBuffer_200;
  reg        [31:0]   lfBuffer_201;
  reg        [31:0]   lfBuffer_202;
  reg        [31:0]   lfBuffer_203;
  reg        [31:0]   lfBuffer_204;
  reg        [31:0]   lfBuffer_205;
  reg        [31:0]   lfBuffer_206;
  reg        [31:0]   lfBuffer_207;
  reg        [31:0]   lfBuffer_208;
  reg        [31:0]   lfBuffer_209;
  reg        [31:0]   lfBuffer_210;
  reg        [31:0]   lfBuffer_211;
  reg        [31:0]   lfBuffer_212;
  reg        [31:0]   lfBuffer_213;
  reg        [31:0]   lfBuffer_214;
  reg        [31:0]   lfBuffer_215;
  reg        [31:0]   lfBuffer_216;
  reg        [31:0]   lfBuffer_217;
  reg        [31:0]   lfBuffer_218;
  reg        [31:0]   lfBuffer_219;
  reg        [31:0]   lfBuffer_220;
  reg        [31:0]   lfBuffer_221;
  reg        [31:0]   lfBuffer_222;
  reg        [31:0]   lfBuffer_223;
  reg        [31:0]   lfBuffer_224;
  reg        [31:0]   lfBuffer_225;
  reg        [31:0]   lfBuffer_226;
  reg        [31:0]   lfBuffer_227;
  reg        [31:0]   lfBuffer_228;
  reg        [31:0]   lfBuffer_229;
  reg        [31:0]   lfBuffer_230;
  reg        [31:0]   lfBuffer_231;
  reg        [31:0]   lfBuffer_232;
  reg        [31:0]   lfBuffer_233;
  reg        [31:0]   lfBuffer_234;
  reg        [31:0]   lfBuffer_235;
  reg        [31:0]   lfBuffer_236;
  reg        [31:0]   lfBuffer_237;
  reg        [31:0]   lfBuffer_238;
  reg        [31:0]   lfBuffer_239;
  reg        [31:0]   lfBuffer_240;
  reg        [31:0]   lfBuffer_241;
  reg        [31:0]   lfBuffer_242;
  reg        [31:0]   lfBuffer_243;
  reg        [31:0]   lfBuffer_244;
  reg        [31:0]   lfBuffer_245;
  reg        [31:0]   lfBuffer_246;
  reg        [31:0]   lfBuffer_247;
  reg        [31:0]   lfBuffer_248;
  reg        [31:0]   lfBuffer_249;
  reg        [31:0]   lfBuffer_250;
  reg        [31:0]   lfBuffer_251;
  reg        [31:0]   lfBuffer_252;
  reg        [31:0]   lfBuffer_253;
  reg        [31:0]   lfBuffer_254;
  reg        [31:0]   lfBuffer_255;
  reg        [31:0]   lfBuffer_256;
  reg        [31:0]   lfBuffer_257;
  reg        [31:0]   lfBuffer_258;
  reg        [31:0]   lfBuffer_259;
  reg        [31:0]   lfBuffer_260;
  reg        [31:0]   lfBuffer_261;
  reg        [31:0]   lfBuffer_262;
  reg        [31:0]   lfBuffer_263;
  reg        [31:0]   lfBuffer_264;
  reg        [31:0]   lfBuffer_265;
  reg        [31:0]   lfBuffer_266;
  reg        [31:0]   lfBuffer_267;
  reg        [31:0]   lfBuffer_268;
  reg        [31:0]   lfBuffer_269;
  reg        [31:0]   lfBuffer_270;
  reg        [31:0]   lfBuffer_271;
  reg        [31:0]   lfBuffer_272;
  reg        [31:0]   lfBuffer_273;
  reg        [31:0]   lfBuffer_274;
  reg        [31:0]   lfBuffer_275;
  reg        [31:0]   lfBuffer_276;
  reg        [31:0]   lfBuffer_277;
  reg        [31:0]   lfBuffer_278;
  reg        [31:0]   lfBuffer_279;
  reg        [31:0]   lfBuffer_280;
  reg        [31:0]   lfBuffer_281;
  reg        [31:0]   lfBuffer_282;
  reg        [31:0]   lfBuffer_283;
  reg        [31:0]   lfBuffer_284;
  reg        [31:0]   lfBuffer_285;
  reg        [31:0]   lfBuffer_286;
  reg        [31:0]   lfBuffer_287;
  reg        [31:0]   lfBuffer_288;
  reg        [31:0]   lfBuffer_289;
  reg        [31:0]   lfBuffer_290;
  reg        [31:0]   lfBuffer_291;
  reg        [31:0]   lfBuffer_292;
  reg        [31:0]   lfBuffer_293;
  reg        [31:0]   lfBuffer_294;
  reg        [31:0]   lfBuffer_295;
  reg        [31:0]   lfBuffer_296;
  reg        [31:0]   lfBuffer_297;
  reg        [31:0]   lfBuffer_298;
  reg        [31:0]   lfBuffer_299;
  reg        [31:0]   lfBuffer_300;
  reg        [31:0]   lfBuffer_301;
  reg        [31:0]   lfBuffer_302;
  reg        [31:0]   lfBuffer_303;
  reg        [31:0]   lfBuffer_304;
  reg        [31:0]   lfBuffer_305;
  reg        [31:0]   lfBuffer_306;
  reg        [31:0]   lfBuffer_307;
  reg        [31:0]   lfBuffer_308;
  reg        [31:0]   lfBuffer_309;
  reg        [31:0]   lfBuffer_310;
  reg        [31:0]   lfBuffer_311;
  reg        [31:0]   lfBuffer_312;
  reg        [31:0]   lfBuffer_313;
  reg        [31:0]   lfBuffer_314;
  reg        [31:0]   lfBuffer_315;
  reg        [31:0]   lfBuffer_316;
  reg        [31:0]   lfBuffer_317;
  reg        [31:0]   lfBuffer_318;
  reg        [31:0]   lfBuffer_319;
  reg        [31:0]   lfBuffer_320;
  reg        [31:0]   lfBuffer_321;
  reg        [31:0]   lfBuffer_322;
  reg        [31:0]   lfBuffer_323;
  reg        [31:0]   lfBuffer_324;
  reg        [31:0]   lfBuffer_325;
  reg        [31:0]   lfBuffer_326;
  reg        [31:0]   lfBuffer_327;
  reg        [31:0]   lfBuffer_328;
  reg        [31:0]   lfBuffer_329;
  reg        [31:0]   lfBuffer_330;
  reg        [31:0]   lfBuffer_331;
  reg        [31:0]   lfBuffer_332;
  reg        [31:0]   lfBuffer_333;
  reg        [31:0]   lfBuffer_334;
  reg        [31:0]   lfBuffer_335;
  reg        [31:0]   lfBuffer_336;
  reg        [31:0]   lfBuffer_337;
  reg        [31:0]   lfBuffer_338;
  reg        [31:0]   lfBuffer_339;
  reg        [31:0]   lfBuffer_340;
  reg        [31:0]   lfBuffer_341;
  reg        [31:0]   lfBuffer_342;
  reg        [31:0]   lfBuffer_343;
  reg        [31:0]   lfBuffer_344;
  reg        [31:0]   lfBuffer_345;
  reg        [31:0]   lfBuffer_346;
  reg        [31:0]   lfBuffer_347;
  reg        [31:0]   lfBuffer_348;
  reg        [31:0]   lfBuffer_349;
  reg        [31:0]   lfBuffer_350;
  reg        [31:0]   lfBuffer_351;
  reg        [31:0]   lfBuffer_352;
  reg        [31:0]   lfBuffer_353;
  reg        [31:0]   lfBuffer_354;
  reg        [31:0]   lfBuffer_355;
  reg        [31:0]   lfBuffer_356;
  reg        [31:0]   lfBuffer_357;
  reg        [31:0]   lfBuffer_358;
  reg        [31:0]   lfBuffer_359;
  reg        [31:0]   lfBuffer_360;
  reg        [31:0]   lfBuffer_361;
  reg        [31:0]   lfBuffer_362;
  reg        [31:0]   lfBuffer_363;
  reg        [31:0]   lfBuffer_364;
  reg        [31:0]   lfBuffer_365;
  reg        [31:0]   lfBuffer_366;
  reg        [31:0]   lfBuffer_367;
  reg        [31:0]   lfBuffer_368;
  reg        [31:0]   lfBuffer_369;
  reg        [31:0]   lfBuffer_370;
  reg        [31:0]   lfBuffer_371;
  reg        [31:0]   lfBuffer_372;
  reg        [31:0]   lfBuffer_373;
  reg        [31:0]   lfBuffer_374;
  reg        [31:0]   lfBuffer_375;
  reg        [31:0]   lfBuffer_376;
  reg        [31:0]   lfBuffer_377;
  reg        [31:0]   lfBuffer_378;
  reg        [31:0]   lfBuffer_379;
  reg        [31:0]   lfBuffer_380;
  reg        [31:0]   lfBuffer_381;
  reg        [31:0]   lfBuffer_382;
  reg        [31:0]   lfBuffer_383;
  reg        [31:0]   lfBuffer_384;
  reg        [31:0]   lfBuffer_385;
  reg        [31:0]   lfBuffer_386;
  reg        [31:0]   lfBuffer_387;
  reg        [31:0]   lfBuffer_388;
  reg        [31:0]   lfBuffer_389;
  reg        [31:0]   lfBuffer_390;
  reg        [31:0]   lfBuffer_391;
  reg        [31:0]   lfBuffer_392;
  reg        [31:0]   lfBuffer_393;
  reg        [31:0]   lfBuffer_394;
  reg        [31:0]   lfBuffer_395;
  reg        [31:0]   lfBuffer_396;
  reg        [31:0]   lfBuffer_397;
  reg        [31:0]   lfBuffer_398;
  reg        [31:0]   lfBuffer_399;
  reg        [31:0]   lfBuffer_400;
  reg        [31:0]   lfBuffer_401;
  reg        [31:0]   lfBuffer_402;
  reg        [31:0]   lfBuffer_403;
  reg        [31:0]   lfBuffer_404;
  reg        [31:0]   lfBuffer_405;
  reg        [31:0]   lfBuffer_406;
  reg        [31:0]   lfBuffer_407;
  reg        [31:0]   lfBuffer_408;
  reg        [31:0]   lfBuffer_409;
  reg        [31:0]   lfBuffer_410;
  reg        [31:0]   lfBuffer_411;
  reg        [31:0]   lfBuffer_412;
  reg        [31:0]   lfBuffer_413;
  reg        [31:0]   lfBuffer_414;
  reg        [31:0]   lfBuffer_415;
  reg        [31:0]   lfBuffer_416;
  reg        [31:0]   lfBuffer_417;
  reg        [31:0]   lfBuffer_418;
  reg        [31:0]   lfBuffer_419;
  reg        [31:0]   lfBuffer_420;
  reg        [31:0]   lfBuffer_421;
  reg        [31:0]   lfBuffer_422;
  reg        [31:0]   lfBuffer_423;
  reg        [31:0]   lfBuffer_424;
  reg        [31:0]   lfBuffer_425;
  reg        [31:0]   lfBuffer_426;
  reg        [31:0]   lfBuffer_427;
  reg        [31:0]   lfBuffer_428;
  reg        [31:0]   lfBuffer_429;
  reg        [31:0]   lfBuffer_430;
  reg        [31:0]   lfBuffer_431;
  reg        [31:0]   lfBuffer_432;
  reg        [31:0]   lfBuffer_433;
  reg        [31:0]   lfBuffer_434;
  reg        [31:0]   lfBuffer_435;
  reg        [31:0]   lfBuffer_436;
  reg        [31:0]   lfBuffer_437;
  reg        [31:0]   lfBuffer_438;
  reg        [31:0]   lfBuffer_439;
  reg        [31:0]   lfBuffer_440;
  reg        [31:0]   lfBuffer_441;
  reg        [31:0]   lfBuffer_442;
  reg        [31:0]   lfBuffer_443;
  reg        [31:0]   lfBuffer_444;
  reg        [31:0]   lfBuffer_445;
  reg        [31:0]   lfBuffer_446;
  reg        [31:0]   lfBuffer_447;
  reg        [31:0]   lfBuffer_448;
  reg        [31:0]   lfBuffer_449;
  reg        [31:0]   lfBuffer_450;
  reg        [31:0]   lfBuffer_451;
  reg        [31:0]   lfBuffer_452;
  reg        [31:0]   lfBuffer_453;
  reg        [31:0]   lfBuffer_454;
  reg        [31:0]   lfBuffer_455;
  reg        [31:0]   lfBuffer_456;
  reg        [31:0]   lfBuffer_457;
  reg        [31:0]   lfBuffer_458;
  reg        [31:0]   lfBuffer_459;
  reg        [31:0]   lfBuffer_460;
  reg        [31:0]   lfBuffer_461;
  reg        [31:0]   lfBuffer_462;
  reg        [31:0]   lfBuffer_463;
  reg        [31:0]   lfBuffer_464;
  reg        [31:0]   lfBuffer_465;
  reg        [31:0]   lfBuffer_466;
  reg        [31:0]   lfBuffer_467;
  reg        [31:0]   lfBuffer_468;
  reg        [31:0]   lfBuffer_469;
  reg        [31:0]   lfBuffer_470;
  reg        [31:0]   lfBuffer_471;
  reg        [31:0]   lfBuffer_472;
  reg        [31:0]   lfBuffer_473;
  reg        [31:0]   lfBuffer_474;
  reg        [31:0]   lfBuffer_475;
  reg        [31:0]   lfBuffer_476;
  reg        [31:0]   lfBuffer_477;
  reg        [31:0]   lfBuffer_478;
  reg        [31:0]   lfBuffer_479;
  reg        [31:0]   lfBuffer_480;
  reg        [31:0]   lfBuffer_481;
  reg        [31:0]   lfBuffer_482;
  reg        [31:0]   lfBuffer_483;
  reg        [31:0]   lfBuffer_484;
  reg        [31:0]   lfBuffer_485;
  reg        [31:0]   lfBuffer_486;
  reg        [31:0]   lfBuffer_487;
  reg        [31:0]   lfBuffer_488;
  reg        [31:0]   lfBuffer_489;
  reg        [31:0]   lfBuffer_490;
  reg        [31:0]   lfBuffer_491;
  reg        [31:0]   lfBuffer_492;
  reg        [31:0]   lfBuffer_493;
  reg        [31:0]   lfBuffer_494;
  reg        [31:0]   lfBuffer_495;
  reg        [31:0]   lfBuffer_496;
  reg        [31:0]   lfBuffer_497;
  reg        [31:0]   lfBuffer_498;
  reg        [31:0]   lfBuffer_499;
  reg        [31:0]   lfBuffer_500;
  reg        [31:0]   lfBuffer_501;
  reg        [31:0]   lfBuffer_502;
  reg        [31:0]   lfBuffer_503;
  reg        [31:0]   lfBuffer_504;
  reg        [31:0]   lfBuffer_505;
  reg        [31:0]   lfBuffer_506;
  reg        [31:0]   lfBuffer_507;
  reg        [31:0]   lfBuffer_508;
  reg        [31:0]   lfBuffer_509;
  reg        [31:0]   lfBuffer_510;
  reg        [31:0]   lfBuffer_511;
  reg        [31:0]   lfBuffer_512;
  reg        [31:0]   lfBuffer_513;
  reg        [31:0]   lfBuffer_514;
  reg        [31:0]   lfBuffer_515;
  reg        [31:0]   lfBuffer_516;
  reg        [31:0]   lfBuffer_517;
  reg        [31:0]   lfBuffer_518;
  reg        [31:0]   lfBuffer_519;
  reg        [31:0]   lfBuffer_520;
  reg        [31:0]   lfBuffer_521;
  reg        [31:0]   lfBuffer_522;
  reg        [31:0]   lfBuffer_523;
  reg        [31:0]   lfBuffer_524;
  reg        [31:0]   lfBuffer_525;
  reg        [31:0]   lfBuffer_526;
  reg        [31:0]   lfBuffer_527;
  reg        [31:0]   lfBuffer_528;
  reg        [31:0]   lfBuffer_529;
  reg        [31:0]   lfBuffer_530;
  reg        [31:0]   lfBuffer_531;
  reg        [31:0]   lfBuffer_532;
  reg        [31:0]   lfBuffer_533;
  reg        [31:0]   lfBuffer_534;
  reg        [31:0]   lfBuffer_535;
  reg        [31:0]   lfBuffer_536;
  reg        [31:0]   lfBuffer_537;
  reg        [31:0]   lfBuffer_538;
  reg        [31:0]   lfBuffer_539;
  reg        [31:0]   lfBuffer_540;
  reg        [31:0]   lfBuffer_541;
  reg        [31:0]   lfBuffer_542;
  reg        [31:0]   lfBuffer_543;
  reg        [31:0]   lfBuffer_544;
  reg        [31:0]   lfBuffer_545;
  reg        [31:0]   lfBuffer_546;
  reg        [31:0]   lfBuffer_547;
  reg        [31:0]   lfBuffer_548;
  reg        [31:0]   lfBuffer_549;
  reg        [31:0]   lfBuffer_550;
  reg        [31:0]   lfBuffer_551;
  reg        [31:0]   lfBuffer_552;
  reg        [31:0]   lfBuffer_553;
  reg        [31:0]   lfBuffer_554;
  reg        [31:0]   lfBuffer_555;
  reg        [31:0]   lfBuffer_556;
  reg        [31:0]   lfBuffer_557;
  reg        [31:0]   lfBuffer_558;
  reg        [31:0]   lfBuffer_559;
  reg        [31:0]   lfBuffer_560;
  reg        [31:0]   lfBuffer_561;
  reg        [31:0]   lfBuffer_562;
  reg        [31:0]   lfBuffer_563;
  reg        [31:0]   lfBuffer_564;
  reg        [31:0]   lfBuffer_565;
  reg        [31:0]   lfBuffer_566;
  reg        [31:0]   lfBuffer_567;
  reg        [31:0]   lfBuffer_568;
  reg        [31:0]   lfBuffer_569;
  reg        [31:0]   lfBuffer_570;
  reg        [31:0]   lfBuffer_571;
  reg        [31:0]   lfBuffer_572;
  reg        [31:0]   lfBuffer_573;
  reg        [31:0]   lfBuffer_574;
  reg        [31:0]   lfBuffer_575;
  reg        [31:0]   lfBuffer_576;
  reg        [31:0]   lfBuffer_577;
  reg        [31:0]   lfBuffer_578;
  reg        [31:0]   lfBuffer_579;
  reg        [31:0]   lfBuffer_580;
  reg        [31:0]   lfBuffer_581;
  reg        [31:0]   lfBuffer_582;
  reg        [31:0]   lfBuffer_583;
  reg        [31:0]   lfBuffer_584;
  reg        [31:0]   lfBuffer_585;
  reg        [31:0]   lfBuffer_586;
  reg        [31:0]   lfBuffer_587;
  reg        [31:0]   lfBuffer_588;
  reg        [31:0]   lfBuffer_589;
  reg        [31:0]   lfBuffer_590;
  reg        [31:0]   lfBuffer_591;
  reg        [31:0]   lfBuffer_592;
  reg        [31:0]   lfBuffer_593;
  reg        [31:0]   lfBuffer_594;
  reg        [31:0]   lfBuffer_595;
  reg        [31:0]   lfBuffer_596;
  reg        [31:0]   lfBuffer_597;
  reg        [31:0]   lfBuffer_598;
  reg        [31:0]   lfBuffer_599;
  reg        [31:0]   lfBuffer_600;
  reg        [31:0]   lfBuffer_601;
  reg        [31:0]   lfBuffer_602;
  reg        [31:0]   lfBuffer_603;
  reg        [31:0]   lfBuffer_604;
  reg        [31:0]   lfBuffer_605;
  reg        [31:0]   lfBuffer_606;
  reg        [31:0]   lfBuffer_607;
  reg        [31:0]   lfBuffer_608;
  reg        [31:0]   lfBuffer_609;
  reg        [31:0]   lfBuffer_610;
  reg        [31:0]   lfBuffer_611;
  reg        [31:0]   lfBuffer_612;
  reg        [31:0]   lfBuffer_613;
  reg        [31:0]   lfBuffer_614;
  reg        [31:0]   lfBuffer_615;
  reg        [31:0]   lfBuffer_616;
  reg        [31:0]   lfBuffer_617;
  reg        [31:0]   lfBuffer_618;
  reg        [31:0]   lfBuffer_619;
  reg        [31:0]   lfBuffer_620;
  reg        [31:0]   lfBuffer_621;
  reg        [31:0]   lfBuffer_622;
  reg        [31:0]   lfBuffer_623;
  reg        [31:0]   lfBuffer_624;
  reg        [31:0]   lfBuffer_625;
  reg        [31:0]   lfBuffer_626;
  reg        [31:0]   lfBuffer_627;
  reg        [31:0]   lfBuffer_628;
  reg        [31:0]   lfBuffer_629;
  reg        [31:0]   lfBuffer_630;
  reg        [31:0]   lfBuffer_631;
  reg        [31:0]   lfBuffer_632;
  reg        [31:0]   lfBuffer_633;
  reg        [31:0]   lfBuffer_634;
  reg        [31:0]   lfBuffer_635;
  reg        [31:0]   lfBuffer_636;
  reg        [31:0]   lfBuffer_637;
  reg        [31:0]   lfBuffer_638;
  reg        [31:0]   lfBuffer_639;
  reg        [31:0]   lfBuffer_640;
  reg        [31:0]   lfBuffer_641;
  reg        [31:0]   lfBuffer_642;
  reg        [31:0]   lfBuffer_643;
  reg        [31:0]   lfBuffer_644;
  reg        [31:0]   lfBuffer_645;
  reg        [31:0]   lfBuffer_646;
  reg        [31:0]   lfBuffer_647;
  reg        [31:0]   lfBuffer_648;
  reg        [31:0]   lfBuffer_649;
  reg        [31:0]   lfBuffer_650;
  reg        [31:0]   lfBuffer_651;
  reg        [31:0]   lfBuffer_652;
  reg        [31:0]   lfBuffer_653;
  reg        [31:0]   lfBuffer_654;
  reg        [31:0]   lfBuffer_655;
  reg        [31:0]   lfBuffer_656;
  reg        [31:0]   lfBuffer_657;
  reg        [31:0]   lfBuffer_658;
  reg        [31:0]   lfBuffer_659;
  reg        [31:0]   lfBuffer_660;
  reg        [31:0]   lfBuffer_661;
  reg        [31:0]   lfBuffer_662;
  reg        [31:0]   lfBuffer_663;
  reg        [31:0]   lfBuffer_664;
  reg        [31:0]   lfBuffer_665;
  reg        [31:0]   lfBuffer_666;
  reg        [31:0]   lfBuffer_667;
  reg        [31:0]   lfBuffer_668;
  reg        [31:0]   lfBuffer_669;
  reg        [31:0]   lfBuffer_670;
  reg        [31:0]   lfBuffer_671;
  reg        [31:0]   lfBuffer_672;
  reg        [31:0]   lfBuffer_673;
  reg        [31:0]   lfBuffer_674;
  reg        [31:0]   lfBuffer_675;
  reg        [31:0]   lfBuffer_676;
  reg        [31:0]   lfBuffer_677;
  reg        [31:0]   lfBuffer_678;
  reg        [31:0]   lfBuffer_679;
  reg        [31:0]   lfBuffer_680;
  reg        [31:0]   lfBuffer_681;
  reg        [31:0]   lfBuffer_682;
  reg        [31:0]   lfBuffer_683;
  reg        [31:0]   lfBuffer_684;
  reg        [31:0]   lfBuffer_685;
  reg        [31:0]   lfBuffer_686;
  reg        [31:0]   lfBuffer_687;
  reg        [31:0]   lfBuffer_688;
  reg        [31:0]   lfBuffer_689;
  reg        [31:0]   lfBuffer_690;
  reg        [31:0]   lfBuffer_691;
  reg        [31:0]   lfBuffer_692;
  reg        [31:0]   lfBuffer_693;
  reg        [31:0]   lfBuffer_694;
  reg        [31:0]   lfBuffer_695;
  reg        [31:0]   lfBuffer_696;
  reg        [31:0]   lfBuffer_697;
  reg        [31:0]   lfBuffer_698;
  reg        [31:0]   lfBuffer_699;
  reg        [31:0]   lfBuffer_700;
  reg        [31:0]   lfBuffer_701;
  reg        [31:0]   lfBuffer_702;
  reg        [31:0]   lfBuffer_703;
  reg        [31:0]   lfBuffer_704;
  reg        [31:0]   lfBuffer_705;
  reg        [31:0]   lfBuffer_706;
  reg        [31:0]   lfBuffer_707;
  reg        [31:0]   lfBuffer_708;
  reg        [31:0]   lfBuffer_709;
  reg        [31:0]   lfBuffer_710;
  reg        [31:0]   lfBuffer_711;
  reg        [31:0]   lfBuffer_712;
  reg        [31:0]   lfBuffer_713;
  reg        [31:0]   lfBuffer_714;
  reg        [31:0]   lfBuffer_715;
  reg        [31:0]   lfBuffer_716;
  reg        [31:0]   lfBuffer_717;
  reg        [31:0]   lfBuffer_718;
  reg        [31:0]   lfBuffer_719;
  reg        [31:0]   lfBuffer_720;
  reg        [31:0]   lfBuffer_721;
  reg        [31:0]   lfBuffer_722;
  reg        [31:0]   lfBuffer_723;
  reg        [31:0]   lfBuffer_724;
  reg        [31:0]   lfBuffer_725;
  reg        [31:0]   lfBuffer_726;
  reg        [31:0]   lfBuffer_727;
  reg        [31:0]   lfBuffer_728;
  reg        [31:0]   lfBuffer_729;
  reg        [31:0]   lfBuffer_730;
  reg        [31:0]   lfBuffer_731;
  reg        [31:0]   lfBuffer_732;
  reg        [31:0]   lfBuffer_733;
  reg        [31:0]   lfBuffer_734;
  reg        [31:0]   lfBuffer_735;
  reg        [31:0]   lfBuffer_736;
  reg        [31:0]   lfBuffer_737;
  reg        [31:0]   lfBuffer_738;
  reg        [31:0]   lfBuffer_739;
  reg        [31:0]   lfBuffer_740;
  reg        [31:0]   lfBuffer_741;
  reg        [31:0]   lfBuffer_742;
  reg        [31:0]   lfBuffer_743;
  reg        [31:0]   lfBuffer_744;
  reg        [31:0]   lfBuffer_745;
  reg        [31:0]   lfBuffer_746;
  reg        [31:0]   lfBuffer_747;
  reg        [31:0]   lfBuffer_748;
  reg        [31:0]   lfBuffer_749;
  reg        [31:0]   lfBuffer_750;
  reg        [31:0]   lfBuffer_751;
  reg        [31:0]   lfBuffer_752;
  reg        [31:0]   lfBuffer_753;
  reg        [31:0]   lfBuffer_754;
  reg        [31:0]   lfBuffer_755;
  reg        [31:0]   lfBuffer_756;
  reg        [31:0]   lfBuffer_757;
  reg        [31:0]   lfBuffer_758;
  reg        [31:0]   lfBuffer_759;
  reg        [31:0]   lfBuffer_760;
  reg        [31:0]   lfBuffer_761;
  reg        [31:0]   lfBuffer_762;
  reg        [31:0]   lfBuffer_763;
  reg        [31:0]   lfBuffer_764;
  reg        [31:0]   lfBuffer_765;
  reg        [31:0]   lfBuffer_766;
  reg        [31:0]   lfBuffer_767;
  reg        [31:0]   lfBuffer_768;
  reg        [31:0]   lfBuffer_769;
  reg        [31:0]   lfBuffer_770;
  reg        [31:0]   lfBuffer_771;
  reg        [31:0]   lfBuffer_772;
  reg        [31:0]   lfBuffer_773;
  reg        [31:0]   lfBuffer_774;
  reg        [31:0]   lfBuffer_775;
  reg        [31:0]   lfBuffer_776;
  reg        [31:0]   lfBuffer_777;
  reg        [31:0]   lfBuffer_778;
  reg        [31:0]   lfBuffer_779;
  reg        [31:0]   lfBuffer_780;
  reg        [31:0]   lfBuffer_781;
  reg        [31:0]   lfBuffer_782;
  reg        [31:0]   lfBuffer_783;
  reg        [31:0]   lfBuffer_784;
  reg        [31:0]   lfBuffer_785;
  reg        [31:0]   lfBuffer_786;
  reg        [31:0]   lfBuffer_787;
  reg        [31:0]   lfBuffer_788;
  reg        [31:0]   lfBuffer_789;
  reg        [31:0]   lfBuffer_790;
  reg        [31:0]   lfBuffer_791;
  reg        [31:0]   lfBuffer_792;
  reg        [31:0]   lfBuffer_793;
  reg        [31:0]   lfBuffer_794;
  reg        [31:0]   lfBuffer_795;
  reg        [31:0]   lfBuffer_796;
  reg        [31:0]   lfBuffer_797;
  reg        [31:0]   lfBuffer_798;
  reg        [31:0]   lfBuffer_799;
  reg        [31:0]   lfBuffer_800;
  reg        [31:0]   lfBuffer_801;
  reg        [31:0]   lfBuffer_802;
  reg        [31:0]   lfBuffer_803;
  reg        [31:0]   lfBuffer_804;
  reg        [31:0]   lfBuffer_805;
  reg        [31:0]   lfBuffer_806;
  reg        [31:0]   lfBuffer_807;
  reg        [31:0]   lfBuffer_808;
  reg        [31:0]   lfBuffer_809;
  reg        [31:0]   lfBuffer_810;
  reg        [31:0]   lfBuffer_811;
  reg        [31:0]   lfBuffer_812;
  reg        [31:0]   lfBuffer_813;
  reg        [31:0]   lfBuffer_814;
  reg        [31:0]   lfBuffer_815;
  reg        [31:0]   lfBuffer_816;
  reg        [31:0]   lfBuffer_817;
  reg        [31:0]   lfBuffer_818;
  reg        [31:0]   lfBuffer_819;
  reg        [31:0]   lfBuffer_820;
  reg        [31:0]   lfBuffer_821;
  reg        [31:0]   lfBuffer_822;
  reg        [31:0]   lfBuffer_823;
  reg        [31:0]   lfBuffer_824;
  reg        [31:0]   lfBuffer_825;
  reg        [31:0]   lfBuffer_826;
  reg        [31:0]   lfBuffer_827;
  reg        [31:0]   lfBuffer_828;
  reg        [31:0]   lfBuffer_829;
  reg        [31:0]   lfBuffer_830;
  reg        [31:0]   lfBuffer_831;
  reg        [31:0]   lfBuffer_832;
  reg        [31:0]   lfBuffer_833;
  reg        [31:0]   lfBuffer_834;
  reg        [31:0]   lfBuffer_835;
  reg        [31:0]   lfBuffer_836;
  reg        [31:0]   lfBuffer_837;
  reg        [31:0]   lfBuffer_838;
  reg        [31:0]   lfBuffer_839;
  reg        [31:0]   lfBuffer_840;
  reg        [31:0]   lfBuffer_841;
  reg        [31:0]   lfBuffer_842;
  reg        [31:0]   lfBuffer_843;
  reg        [31:0]   lfBuffer_844;
  reg        [31:0]   lfBuffer_845;
  reg        [31:0]   lfBuffer_846;
  reg        [31:0]   lfBuffer_847;
  reg        [31:0]   lfBuffer_848;
  reg        [31:0]   lfBuffer_849;
  reg        [31:0]   lfBuffer_850;
  reg        [31:0]   lfBuffer_851;
  reg        [31:0]   lfBuffer_852;
  reg        [31:0]   lfBuffer_853;
  reg        [31:0]   lfBuffer_854;
  reg        [31:0]   lfBuffer_855;
  reg        [31:0]   lfBuffer_856;
  reg        [31:0]   lfBuffer_857;
  reg        [31:0]   lfBuffer_858;
  reg        [31:0]   lfBuffer_859;
  reg        [31:0]   lfBuffer_860;
  reg        [31:0]   lfBuffer_861;
  reg        [31:0]   lfBuffer_862;
  reg        [31:0]   lfBuffer_863;
  reg        [31:0]   lfBuffer_864;
  reg        [31:0]   lfBuffer_865;
  reg        [31:0]   lfBuffer_866;
  reg        [31:0]   lfBuffer_867;
  reg        [31:0]   lfBuffer_868;
  reg        [31:0]   lfBuffer_869;
  reg        [31:0]   lfBuffer_870;
  reg        [31:0]   lfBuffer_871;
  reg        [31:0]   lfBuffer_872;
  reg        [31:0]   lfBuffer_873;
  reg        [31:0]   lfBuffer_874;
  reg        [31:0]   lfBuffer_875;
  reg        [31:0]   lfBuffer_876;
  reg        [31:0]   lfBuffer_877;
  reg        [31:0]   lfBuffer_878;
  reg        [31:0]   lfBuffer_879;
  reg        [31:0]   lfBuffer_880;
  reg        [31:0]   lfBuffer_881;
  reg        [31:0]   lfBuffer_882;
  reg        [31:0]   lfBuffer_883;
  reg        [31:0]   lfBuffer_884;
  reg        [31:0]   lfBuffer_885;
  reg        [31:0]   lfBuffer_886;
  reg        [31:0]   lfBuffer_887;
  reg        [31:0]   lfBuffer_888;
  reg        [31:0]   lfBuffer_889;
  reg        [31:0]   lfBuffer_890;
  reg        [31:0]   lfBuffer_891;
  reg        [31:0]   lfBuffer_892;
  reg        [31:0]   lfBuffer_893;
  reg        [31:0]   lfBuffer_894;
  reg        [31:0]   lfBuffer_895;
  reg        [31:0]   lfBuffer_896;
  reg        [31:0]   lfBuffer_897;
  reg        [31:0]   lfBuffer_898;
  reg        [31:0]   lfBuffer_899;
  reg        [31:0]   lfBuffer_900;
  reg        [31:0]   lfBuffer_901;
  reg        [31:0]   lfBuffer_902;
  reg        [31:0]   lfBuffer_903;
  reg        [31:0]   lfBuffer_904;
  reg        [31:0]   lfBuffer_905;
  reg        [31:0]   lfBuffer_906;
  reg        [31:0]   lfBuffer_907;
  reg        [31:0]   lfBuffer_908;
  reg        [31:0]   lfBuffer_909;
  reg        [31:0]   lfBuffer_910;
  reg        [31:0]   lfBuffer_911;
  reg        [31:0]   lfBuffer_912;
  reg        [31:0]   lfBuffer_913;
  reg        [31:0]   lfBuffer_914;
  reg        [31:0]   lfBuffer_915;
  reg        [31:0]   lfBuffer_916;
  reg        [31:0]   lfBuffer_917;
  reg        [31:0]   lfBuffer_918;
  reg        [31:0]   lfBuffer_919;
  reg        [31:0]   lfBuffer_920;
  reg        [31:0]   lfBuffer_921;
  reg        [31:0]   lfBuffer_922;
  reg        [31:0]   lfBuffer_923;
  reg        [31:0]   lfBuffer_924;
  reg        [31:0]   lfBuffer_925;
  reg        [31:0]   lfBuffer_926;
  reg        [31:0]   lfBuffer_927;
  reg        [31:0]   lfBuffer_928;
  reg        [31:0]   lfBuffer_929;
  reg        [31:0]   lfBuffer_930;
  reg        [31:0]   lfBuffer_931;
  reg        [31:0]   lfBuffer_932;
  reg        [31:0]   lfBuffer_933;
  reg        [31:0]   lfBuffer_934;
  reg        [31:0]   lfBuffer_935;
  reg        [31:0]   lfBuffer_936;
  reg        [31:0]   lfBuffer_937;
  reg        [31:0]   lfBuffer_938;
  reg        [31:0]   lfBuffer_939;
  reg        [31:0]   lfBuffer_940;
  reg        [31:0]   lfBuffer_941;
  reg        [31:0]   lfBuffer_942;
  reg        [31:0]   lfBuffer_943;
  reg        [31:0]   lfBuffer_944;
  reg        [31:0]   lfBuffer_945;
  reg        [31:0]   lfBuffer_946;
  reg        [31:0]   lfBuffer_947;
  reg        [31:0]   lfBuffer_948;
  reg        [31:0]   lfBuffer_949;
  reg        [31:0]   lfBuffer_950;
  reg        [31:0]   lfBuffer_951;
  reg        [31:0]   lfBuffer_952;
  reg        [31:0]   lfBuffer_953;
  reg        [31:0]   lfBuffer_954;
  reg        [31:0]   lfBuffer_955;
  reg        [31:0]   lfBuffer_956;
  reg        [31:0]   lfBuffer_957;
  reg        [31:0]   lfBuffer_958;
  reg        [31:0]   lfBuffer_959;
  reg        [31:0]   lfBuffer_960;
  reg        [31:0]   lfBuffer_961;
  reg        [31:0]   lfBuffer_962;
  reg        [31:0]   lfBuffer_963;
  reg        [31:0]   lfBuffer_964;
  reg        [31:0]   lfBuffer_965;
  reg        [31:0]   lfBuffer_966;
  reg        [31:0]   lfBuffer_967;
  reg        [31:0]   lfBuffer_968;
  reg        [31:0]   lfBuffer_969;
  reg        [31:0]   lfBuffer_970;
  reg        [31:0]   lfBuffer_971;
  reg        [31:0]   lfBuffer_972;
  reg        [31:0]   lfBuffer_973;
  reg        [31:0]   lfBuffer_974;
  reg        [31:0]   lfBuffer_975;
  reg        [31:0]   lfBuffer_976;
  reg        [31:0]   lfBuffer_977;
  reg        [31:0]   lfBuffer_978;
  reg        [31:0]   lfBuffer_979;
  reg        [31:0]   lfBuffer_980;
  reg        [31:0]   lfBuffer_981;
  reg        [31:0]   lfBuffer_982;
  reg        [31:0]   lfBuffer_983;
  reg        [31:0]   lfBuffer_984;
  reg        [31:0]   lfBuffer_985;
  reg        [31:0]   lfBuffer_986;
  reg        [31:0]   lfBuffer_987;
  reg        [31:0]   lfBuffer_988;
  reg        [31:0]   lfBuffer_989;
  reg        [31:0]   lfBuffer_990;
  reg        [31:0]   lfBuffer_991;
  reg        [31:0]   lfBuffer_992;
  reg        [31:0]   lfBuffer_993;
  reg        [31:0]   lfBuffer_994;
  reg        [31:0]   lfBuffer_995;
  reg        [31:0]   lfBuffer_996;
  reg        [31:0]   lfBuffer_997;
  reg        [31:0]   lfBuffer_998;
  reg        [31:0]   lfBuffer_999;
  reg        [31:0]   lfBuffer_1000;
  reg        [31:0]   lfBuffer_1001;
  reg        [31:0]   lfBuffer_1002;
  reg        [31:0]   lfBuffer_1003;
  reg        [31:0]   lfBuffer_1004;
  reg        [31:0]   lfBuffer_1005;
  reg        [31:0]   lfBuffer_1006;
  reg        [31:0]   lfBuffer_1007;
  reg        [31:0]   lfBuffer_1008;
  reg        [31:0]   lfBuffer_1009;
  reg        [31:0]   lfBuffer_1010;
  reg        [31:0]   lfBuffer_1011;
  reg        [31:0]   lfBuffer_1012;
  reg        [31:0]   lfBuffer_1013;
  reg        [31:0]   lfBuffer_1014;
  reg        [31:0]   lfBuffer_1015;
  reg        [31:0]   lfBuffer_1016;
  reg        [31:0]   lfBuffer_1017;
  reg        [31:0]   lfBuffer_1018;
  reg        [31:0]   lfBuffer_1019;
  reg        [31:0]   lfBuffer_1020;
  reg        [31:0]   lfBuffer_1021;
  reg        [31:0]   lfBuffer_1022;
  reg        [31:0]   lfBuffer_1023;
  reg        [31:0]   macSumArea_macSumReg;
  wire                macSumArea_macSumEn;
  reg                 macSumArea_macSumValid;
  reg        [31:0]   pSumArea_pAddData;
  reg        [31:0]   pSumArea_pSumReg;
  wire                pSumArea_pSumEn;
  reg                 pSumArea_pSumValid;
  reg        [9:0]    pSumArea_spLenCnt;
  reg        [6:0]    pSumArea_loopCnt;
  wire                pSumArea_last;
  wire                when_PPUnit_l70;
  wire                when_PPUnit_l74;
  reg        [7:0]    quantArea_quantReg;
  wire                quantArea_quantEn;
  reg                 quantArea_quantValid;
  reg        [7:0]    reluArea_reluReg;
  wire                reluArea_reluEn;
  reg                 reluArea_reluValid;
  wire                when_PPUnit_l129;

  assign tmp_pSumArea_last = (loopLen - 7'h01);
  assign tmp_when_PPUnit_l70 = (spLen - 10'h001);
  assign tmp_when_PPUnit_l74 = (loopLen - 7'h01);
  assign tmp_quantArea_quantReg = (pSumArea_pSumReg >>> 4'd8);
  AdderTree_7 macSumArea_adderTree (
    .dataIn_0 (macIn_0_payload[31:0]             ), //i
    .dataIn_1 (macIn_1_payload[31:0]             ), //i
    .dataIn_2 (macIn_2_payload[31:0]             ), //i
    .dataIn_3 (macIn_3_payload[31:0]             ), //i
    .dataIn_4 (macIn_4_payload[31:0]             ), //i
    .dataIn_5 (macIn_5_payload[31:0]             ), //i
    .dataIn_6 (macIn_6_payload[31:0]             ), //i
    .dataIn_7 (macIn_7_payload[31:0]             ), //i
    .dataOut  (macSumArea_adderTree_dataOut[34:0])  //o
  );
  always @(*) begin
    case(pSumArea_spLenCnt)
      10'b0000000000 : tmp_pSumArea_pAddData = lfBuffer_0;
      10'b0000000001 : tmp_pSumArea_pAddData = lfBuffer_1;
      10'b0000000010 : tmp_pSumArea_pAddData = lfBuffer_2;
      10'b0000000011 : tmp_pSumArea_pAddData = lfBuffer_3;
      10'b0000000100 : tmp_pSumArea_pAddData = lfBuffer_4;
      10'b0000000101 : tmp_pSumArea_pAddData = lfBuffer_5;
      10'b0000000110 : tmp_pSumArea_pAddData = lfBuffer_6;
      10'b0000000111 : tmp_pSumArea_pAddData = lfBuffer_7;
      10'b0000001000 : tmp_pSumArea_pAddData = lfBuffer_8;
      10'b0000001001 : tmp_pSumArea_pAddData = lfBuffer_9;
      10'b0000001010 : tmp_pSumArea_pAddData = lfBuffer_10;
      10'b0000001011 : tmp_pSumArea_pAddData = lfBuffer_11;
      10'b0000001100 : tmp_pSumArea_pAddData = lfBuffer_12;
      10'b0000001101 : tmp_pSumArea_pAddData = lfBuffer_13;
      10'b0000001110 : tmp_pSumArea_pAddData = lfBuffer_14;
      10'b0000001111 : tmp_pSumArea_pAddData = lfBuffer_15;
      10'b0000010000 : tmp_pSumArea_pAddData = lfBuffer_16;
      10'b0000010001 : tmp_pSumArea_pAddData = lfBuffer_17;
      10'b0000010010 : tmp_pSumArea_pAddData = lfBuffer_18;
      10'b0000010011 : tmp_pSumArea_pAddData = lfBuffer_19;
      10'b0000010100 : tmp_pSumArea_pAddData = lfBuffer_20;
      10'b0000010101 : tmp_pSumArea_pAddData = lfBuffer_21;
      10'b0000010110 : tmp_pSumArea_pAddData = lfBuffer_22;
      10'b0000010111 : tmp_pSumArea_pAddData = lfBuffer_23;
      10'b0000011000 : tmp_pSumArea_pAddData = lfBuffer_24;
      10'b0000011001 : tmp_pSumArea_pAddData = lfBuffer_25;
      10'b0000011010 : tmp_pSumArea_pAddData = lfBuffer_26;
      10'b0000011011 : tmp_pSumArea_pAddData = lfBuffer_27;
      10'b0000011100 : tmp_pSumArea_pAddData = lfBuffer_28;
      10'b0000011101 : tmp_pSumArea_pAddData = lfBuffer_29;
      10'b0000011110 : tmp_pSumArea_pAddData = lfBuffer_30;
      10'b0000011111 : tmp_pSumArea_pAddData = lfBuffer_31;
      10'b0000100000 : tmp_pSumArea_pAddData = lfBuffer_32;
      10'b0000100001 : tmp_pSumArea_pAddData = lfBuffer_33;
      10'b0000100010 : tmp_pSumArea_pAddData = lfBuffer_34;
      10'b0000100011 : tmp_pSumArea_pAddData = lfBuffer_35;
      10'b0000100100 : tmp_pSumArea_pAddData = lfBuffer_36;
      10'b0000100101 : tmp_pSumArea_pAddData = lfBuffer_37;
      10'b0000100110 : tmp_pSumArea_pAddData = lfBuffer_38;
      10'b0000100111 : tmp_pSumArea_pAddData = lfBuffer_39;
      10'b0000101000 : tmp_pSumArea_pAddData = lfBuffer_40;
      10'b0000101001 : tmp_pSumArea_pAddData = lfBuffer_41;
      10'b0000101010 : tmp_pSumArea_pAddData = lfBuffer_42;
      10'b0000101011 : tmp_pSumArea_pAddData = lfBuffer_43;
      10'b0000101100 : tmp_pSumArea_pAddData = lfBuffer_44;
      10'b0000101101 : tmp_pSumArea_pAddData = lfBuffer_45;
      10'b0000101110 : tmp_pSumArea_pAddData = lfBuffer_46;
      10'b0000101111 : tmp_pSumArea_pAddData = lfBuffer_47;
      10'b0000110000 : tmp_pSumArea_pAddData = lfBuffer_48;
      10'b0000110001 : tmp_pSumArea_pAddData = lfBuffer_49;
      10'b0000110010 : tmp_pSumArea_pAddData = lfBuffer_50;
      10'b0000110011 : tmp_pSumArea_pAddData = lfBuffer_51;
      10'b0000110100 : tmp_pSumArea_pAddData = lfBuffer_52;
      10'b0000110101 : tmp_pSumArea_pAddData = lfBuffer_53;
      10'b0000110110 : tmp_pSumArea_pAddData = lfBuffer_54;
      10'b0000110111 : tmp_pSumArea_pAddData = lfBuffer_55;
      10'b0000111000 : tmp_pSumArea_pAddData = lfBuffer_56;
      10'b0000111001 : tmp_pSumArea_pAddData = lfBuffer_57;
      10'b0000111010 : tmp_pSumArea_pAddData = lfBuffer_58;
      10'b0000111011 : tmp_pSumArea_pAddData = lfBuffer_59;
      10'b0000111100 : tmp_pSumArea_pAddData = lfBuffer_60;
      10'b0000111101 : tmp_pSumArea_pAddData = lfBuffer_61;
      10'b0000111110 : tmp_pSumArea_pAddData = lfBuffer_62;
      10'b0000111111 : tmp_pSumArea_pAddData = lfBuffer_63;
      10'b0001000000 : tmp_pSumArea_pAddData = lfBuffer_64;
      10'b0001000001 : tmp_pSumArea_pAddData = lfBuffer_65;
      10'b0001000010 : tmp_pSumArea_pAddData = lfBuffer_66;
      10'b0001000011 : tmp_pSumArea_pAddData = lfBuffer_67;
      10'b0001000100 : tmp_pSumArea_pAddData = lfBuffer_68;
      10'b0001000101 : tmp_pSumArea_pAddData = lfBuffer_69;
      10'b0001000110 : tmp_pSumArea_pAddData = lfBuffer_70;
      10'b0001000111 : tmp_pSumArea_pAddData = lfBuffer_71;
      10'b0001001000 : tmp_pSumArea_pAddData = lfBuffer_72;
      10'b0001001001 : tmp_pSumArea_pAddData = lfBuffer_73;
      10'b0001001010 : tmp_pSumArea_pAddData = lfBuffer_74;
      10'b0001001011 : tmp_pSumArea_pAddData = lfBuffer_75;
      10'b0001001100 : tmp_pSumArea_pAddData = lfBuffer_76;
      10'b0001001101 : tmp_pSumArea_pAddData = lfBuffer_77;
      10'b0001001110 : tmp_pSumArea_pAddData = lfBuffer_78;
      10'b0001001111 : tmp_pSumArea_pAddData = lfBuffer_79;
      10'b0001010000 : tmp_pSumArea_pAddData = lfBuffer_80;
      10'b0001010001 : tmp_pSumArea_pAddData = lfBuffer_81;
      10'b0001010010 : tmp_pSumArea_pAddData = lfBuffer_82;
      10'b0001010011 : tmp_pSumArea_pAddData = lfBuffer_83;
      10'b0001010100 : tmp_pSumArea_pAddData = lfBuffer_84;
      10'b0001010101 : tmp_pSumArea_pAddData = lfBuffer_85;
      10'b0001010110 : tmp_pSumArea_pAddData = lfBuffer_86;
      10'b0001010111 : tmp_pSumArea_pAddData = lfBuffer_87;
      10'b0001011000 : tmp_pSumArea_pAddData = lfBuffer_88;
      10'b0001011001 : tmp_pSumArea_pAddData = lfBuffer_89;
      10'b0001011010 : tmp_pSumArea_pAddData = lfBuffer_90;
      10'b0001011011 : tmp_pSumArea_pAddData = lfBuffer_91;
      10'b0001011100 : tmp_pSumArea_pAddData = lfBuffer_92;
      10'b0001011101 : tmp_pSumArea_pAddData = lfBuffer_93;
      10'b0001011110 : tmp_pSumArea_pAddData = lfBuffer_94;
      10'b0001011111 : tmp_pSumArea_pAddData = lfBuffer_95;
      10'b0001100000 : tmp_pSumArea_pAddData = lfBuffer_96;
      10'b0001100001 : tmp_pSumArea_pAddData = lfBuffer_97;
      10'b0001100010 : tmp_pSumArea_pAddData = lfBuffer_98;
      10'b0001100011 : tmp_pSumArea_pAddData = lfBuffer_99;
      10'b0001100100 : tmp_pSumArea_pAddData = lfBuffer_100;
      10'b0001100101 : tmp_pSumArea_pAddData = lfBuffer_101;
      10'b0001100110 : tmp_pSumArea_pAddData = lfBuffer_102;
      10'b0001100111 : tmp_pSumArea_pAddData = lfBuffer_103;
      10'b0001101000 : tmp_pSumArea_pAddData = lfBuffer_104;
      10'b0001101001 : tmp_pSumArea_pAddData = lfBuffer_105;
      10'b0001101010 : tmp_pSumArea_pAddData = lfBuffer_106;
      10'b0001101011 : tmp_pSumArea_pAddData = lfBuffer_107;
      10'b0001101100 : tmp_pSumArea_pAddData = lfBuffer_108;
      10'b0001101101 : tmp_pSumArea_pAddData = lfBuffer_109;
      10'b0001101110 : tmp_pSumArea_pAddData = lfBuffer_110;
      10'b0001101111 : tmp_pSumArea_pAddData = lfBuffer_111;
      10'b0001110000 : tmp_pSumArea_pAddData = lfBuffer_112;
      10'b0001110001 : tmp_pSumArea_pAddData = lfBuffer_113;
      10'b0001110010 : tmp_pSumArea_pAddData = lfBuffer_114;
      10'b0001110011 : tmp_pSumArea_pAddData = lfBuffer_115;
      10'b0001110100 : tmp_pSumArea_pAddData = lfBuffer_116;
      10'b0001110101 : tmp_pSumArea_pAddData = lfBuffer_117;
      10'b0001110110 : tmp_pSumArea_pAddData = lfBuffer_118;
      10'b0001110111 : tmp_pSumArea_pAddData = lfBuffer_119;
      10'b0001111000 : tmp_pSumArea_pAddData = lfBuffer_120;
      10'b0001111001 : tmp_pSumArea_pAddData = lfBuffer_121;
      10'b0001111010 : tmp_pSumArea_pAddData = lfBuffer_122;
      10'b0001111011 : tmp_pSumArea_pAddData = lfBuffer_123;
      10'b0001111100 : tmp_pSumArea_pAddData = lfBuffer_124;
      10'b0001111101 : tmp_pSumArea_pAddData = lfBuffer_125;
      10'b0001111110 : tmp_pSumArea_pAddData = lfBuffer_126;
      10'b0001111111 : tmp_pSumArea_pAddData = lfBuffer_127;
      10'b0010000000 : tmp_pSumArea_pAddData = lfBuffer_128;
      10'b0010000001 : tmp_pSumArea_pAddData = lfBuffer_129;
      10'b0010000010 : tmp_pSumArea_pAddData = lfBuffer_130;
      10'b0010000011 : tmp_pSumArea_pAddData = lfBuffer_131;
      10'b0010000100 : tmp_pSumArea_pAddData = lfBuffer_132;
      10'b0010000101 : tmp_pSumArea_pAddData = lfBuffer_133;
      10'b0010000110 : tmp_pSumArea_pAddData = lfBuffer_134;
      10'b0010000111 : tmp_pSumArea_pAddData = lfBuffer_135;
      10'b0010001000 : tmp_pSumArea_pAddData = lfBuffer_136;
      10'b0010001001 : tmp_pSumArea_pAddData = lfBuffer_137;
      10'b0010001010 : tmp_pSumArea_pAddData = lfBuffer_138;
      10'b0010001011 : tmp_pSumArea_pAddData = lfBuffer_139;
      10'b0010001100 : tmp_pSumArea_pAddData = lfBuffer_140;
      10'b0010001101 : tmp_pSumArea_pAddData = lfBuffer_141;
      10'b0010001110 : tmp_pSumArea_pAddData = lfBuffer_142;
      10'b0010001111 : tmp_pSumArea_pAddData = lfBuffer_143;
      10'b0010010000 : tmp_pSumArea_pAddData = lfBuffer_144;
      10'b0010010001 : tmp_pSumArea_pAddData = lfBuffer_145;
      10'b0010010010 : tmp_pSumArea_pAddData = lfBuffer_146;
      10'b0010010011 : tmp_pSumArea_pAddData = lfBuffer_147;
      10'b0010010100 : tmp_pSumArea_pAddData = lfBuffer_148;
      10'b0010010101 : tmp_pSumArea_pAddData = lfBuffer_149;
      10'b0010010110 : tmp_pSumArea_pAddData = lfBuffer_150;
      10'b0010010111 : tmp_pSumArea_pAddData = lfBuffer_151;
      10'b0010011000 : tmp_pSumArea_pAddData = lfBuffer_152;
      10'b0010011001 : tmp_pSumArea_pAddData = lfBuffer_153;
      10'b0010011010 : tmp_pSumArea_pAddData = lfBuffer_154;
      10'b0010011011 : tmp_pSumArea_pAddData = lfBuffer_155;
      10'b0010011100 : tmp_pSumArea_pAddData = lfBuffer_156;
      10'b0010011101 : tmp_pSumArea_pAddData = lfBuffer_157;
      10'b0010011110 : tmp_pSumArea_pAddData = lfBuffer_158;
      10'b0010011111 : tmp_pSumArea_pAddData = lfBuffer_159;
      10'b0010100000 : tmp_pSumArea_pAddData = lfBuffer_160;
      10'b0010100001 : tmp_pSumArea_pAddData = lfBuffer_161;
      10'b0010100010 : tmp_pSumArea_pAddData = lfBuffer_162;
      10'b0010100011 : tmp_pSumArea_pAddData = lfBuffer_163;
      10'b0010100100 : tmp_pSumArea_pAddData = lfBuffer_164;
      10'b0010100101 : tmp_pSumArea_pAddData = lfBuffer_165;
      10'b0010100110 : tmp_pSumArea_pAddData = lfBuffer_166;
      10'b0010100111 : tmp_pSumArea_pAddData = lfBuffer_167;
      10'b0010101000 : tmp_pSumArea_pAddData = lfBuffer_168;
      10'b0010101001 : tmp_pSumArea_pAddData = lfBuffer_169;
      10'b0010101010 : tmp_pSumArea_pAddData = lfBuffer_170;
      10'b0010101011 : tmp_pSumArea_pAddData = lfBuffer_171;
      10'b0010101100 : tmp_pSumArea_pAddData = lfBuffer_172;
      10'b0010101101 : tmp_pSumArea_pAddData = lfBuffer_173;
      10'b0010101110 : tmp_pSumArea_pAddData = lfBuffer_174;
      10'b0010101111 : tmp_pSumArea_pAddData = lfBuffer_175;
      10'b0010110000 : tmp_pSumArea_pAddData = lfBuffer_176;
      10'b0010110001 : tmp_pSumArea_pAddData = lfBuffer_177;
      10'b0010110010 : tmp_pSumArea_pAddData = lfBuffer_178;
      10'b0010110011 : tmp_pSumArea_pAddData = lfBuffer_179;
      10'b0010110100 : tmp_pSumArea_pAddData = lfBuffer_180;
      10'b0010110101 : tmp_pSumArea_pAddData = lfBuffer_181;
      10'b0010110110 : tmp_pSumArea_pAddData = lfBuffer_182;
      10'b0010110111 : tmp_pSumArea_pAddData = lfBuffer_183;
      10'b0010111000 : tmp_pSumArea_pAddData = lfBuffer_184;
      10'b0010111001 : tmp_pSumArea_pAddData = lfBuffer_185;
      10'b0010111010 : tmp_pSumArea_pAddData = lfBuffer_186;
      10'b0010111011 : tmp_pSumArea_pAddData = lfBuffer_187;
      10'b0010111100 : tmp_pSumArea_pAddData = lfBuffer_188;
      10'b0010111101 : tmp_pSumArea_pAddData = lfBuffer_189;
      10'b0010111110 : tmp_pSumArea_pAddData = lfBuffer_190;
      10'b0010111111 : tmp_pSumArea_pAddData = lfBuffer_191;
      10'b0011000000 : tmp_pSumArea_pAddData = lfBuffer_192;
      10'b0011000001 : tmp_pSumArea_pAddData = lfBuffer_193;
      10'b0011000010 : tmp_pSumArea_pAddData = lfBuffer_194;
      10'b0011000011 : tmp_pSumArea_pAddData = lfBuffer_195;
      10'b0011000100 : tmp_pSumArea_pAddData = lfBuffer_196;
      10'b0011000101 : tmp_pSumArea_pAddData = lfBuffer_197;
      10'b0011000110 : tmp_pSumArea_pAddData = lfBuffer_198;
      10'b0011000111 : tmp_pSumArea_pAddData = lfBuffer_199;
      10'b0011001000 : tmp_pSumArea_pAddData = lfBuffer_200;
      10'b0011001001 : tmp_pSumArea_pAddData = lfBuffer_201;
      10'b0011001010 : tmp_pSumArea_pAddData = lfBuffer_202;
      10'b0011001011 : tmp_pSumArea_pAddData = lfBuffer_203;
      10'b0011001100 : tmp_pSumArea_pAddData = lfBuffer_204;
      10'b0011001101 : tmp_pSumArea_pAddData = lfBuffer_205;
      10'b0011001110 : tmp_pSumArea_pAddData = lfBuffer_206;
      10'b0011001111 : tmp_pSumArea_pAddData = lfBuffer_207;
      10'b0011010000 : tmp_pSumArea_pAddData = lfBuffer_208;
      10'b0011010001 : tmp_pSumArea_pAddData = lfBuffer_209;
      10'b0011010010 : tmp_pSumArea_pAddData = lfBuffer_210;
      10'b0011010011 : tmp_pSumArea_pAddData = lfBuffer_211;
      10'b0011010100 : tmp_pSumArea_pAddData = lfBuffer_212;
      10'b0011010101 : tmp_pSumArea_pAddData = lfBuffer_213;
      10'b0011010110 : tmp_pSumArea_pAddData = lfBuffer_214;
      10'b0011010111 : tmp_pSumArea_pAddData = lfBuffer_215;
      10'b0011011000 : tmp_pSumArea_pAddData = lfBuffer_216;
      10'b0011011001 : tmp_pSumArea_pAddData = lfBuffer_217;
      10'b0011011010 : tmp_pSumArea_pAddData = lfBuffer_218;
      10'b0011011011 : tmp_pSumArea_pAddData = lfBuffer_219;
      10'b0011011100 : tmp_pSumArea_pAddData = lfBuffer_220;
      10'b0011011101 : tmp_pSumArea_pAddData = lfBuffer_221;
      10'b0011011110 : tmp_pSumArea_pAddData = lfBuffer_222;
      10'b0011011111 : tmp_pSumArea_pAddData = lfBuffer_223;
      10'b0011100000 : tmp_pSumArea_pAddData = lfBuffer_224;
      10'b0011100001 : tmp_pSumArea_pAddData = lfBuffer_225;
      10'b0011100010 : tmp_pSumArea_pAddData = lfBuffer_226;
      10'b0011100011 : tmp_pSumArea_pAddData = lfBuffer_227;
      10'b0011100100 : tmp_pSumArea_pAddData = lfBuffer_228;
      10'b0011100101 : tmp_pSumArea_pAddData = lfBuffer_229;
      10'b0011100110 : tmp_pSumArea_pAddData = lfBuffer_230;
      10'b0011100111 : tmp_pSumArea_pAddData = lfBuffer_231;
      10'b0011101000 : tmp_pSumArea_pAddData = lfBuffer_232;
      10'b0011101001 : tmp_pSumArea_pAddData = lfBuffer_233;
      10'b0011101010 : tmp_pSumArea_pAddData = lfBuffer_234;
      10'b0011101011 : tmp_pSumArea_pAddData = lfBuffer_235;
      10'b0011101100 : tmp_pSumArea_pAddData = lfBuffer_236;
      10'b0011101101 : tmp_pSumArea_pAddData = lfBuffer_237;
      10'b0011101110 : tmp_pSumArea_pAddData = lfBuffer_238;
      10'b0011101111 : tmp_pSumArea_pAddData = lfBuffer_239;
      10'b0011110000 : tmp_pSumArea_pAddData = lfBuffer_240;
      10'b0011110001 : tmp_pSumArea_pAddData = lfBuffer_241;
      10'b0011110010 : tmp_pSumArea_pAddData = lfBuffer_242;
      10'b0011110011 : tmp_pSumArea_pAddData = lfBuffer_243;
      10'b0011110100 : tmp_pSumArea_pAddData = lfBuffer_244;
      10'b0011110101 : tmp_pSumArea_pAddData = lfBuffer_245;
      10'b0011110110 : tmp_pSumArea_pAddData = lfBuffer_246;
      10'b0011110111 : tmp_pSumArea_pAddData = lfBuffer_247;
      10'b0011111000 : tmp_pSumArea_pAddData = lfBuffer_248;
      10'b0011111001 : tmp_pSumArea_pAddData = lfBuffer_249;
      10'b0011111010 : tmp_pSumArea_pAddData = lfBuffer_250;
      10'b0011111011 : tmp_pSumArea_pAddData = lfBuffer_251;
      10'b0011111100 : tmp_pSumArea_pAddData = lfBuffer_252;
      10'b0011111101 : tmp_pSumArea_pAddData = lfBuffer_253;
      10'b0011111110 : tmp_pSumArea_pAddData = lfBuffer_254;
      10'b0011111111 : tmp_pSumArea_pAddData = lfBuffer_255;
      10'b0100000000 : tmp_pSumArea_pAddData = lfBuffer_256;
      10'b0100000001 : tmp_pSumArea_pAddData = lfBuffer_257;
      10'b0100000010 : tmp_pSumArea_pAddData = lfBuffer_258;
      10'b0100000011 : tmp_pSumArea_pAddData = lfBuffer_259;
      10'b0100000100 : tmp_pSumArea_pAddData = lfBuffer_260;
      10'b0100000101 : tmp_pSumArea_pAddData = lfBuffer_261;
      10'b0100000110 : tmp_pSumArea_pAddData = lfBuffer_262;
      10'b0100000111 : tmp_pSumArea_pAddData = lfBuffer_263;
      10'b0100001000 : tmp_pSumArea_pAddData = lfBuffer_264;
      10'b0100001001 : tmp_pSumArea_pAddData = lfBuffer_265;
      10'b0100001010 : tmp_pSumArea_pAddData = lfBuffer_266;
      10'b0100001011 : tmp_pSumArea_pAddData = lfBuffer_267;
      10'b0100001100 : tmp_pSumArea_pAddData = lfBuffer_268;
      10'b0100001101 : tmp_pSumArea_pAddData = lfBuffer_269;
      10'b0100001110 : tmp_pSumArea_pAddData = lfBuffer_270;
      10'b0100001111 : tmp_pSumArea_pAddData = lfBuffer_271;
      10'b0100010000 : tmp_pSumArea_pAddData = lfBuffer_272;
      10'b0100010001 : tmp_pSumArea_pAddData = lfBuffer_273;
      10'b0100010010 : tmp_pSumArea_pAddData = lfBuffer_274;
      10'b0100010011 : tmp_pSumArea_pAddData = lfBuffer_275;
      10'b0100010100 : tmp_pSumArea_pAddData = lfBuffer_276;
      10'b0100010101 : tmp_pSumArea_pAddData = lfBuffer_277;
      10'b0100010110 : tmp_pSumArea_pAddData = lfBuffer_278;
      10'b0100010111 : tmp_pSumArea_pAddData = lfBuffer_279;
      10'b0100011000 : tmp_pSumArea_pAddData = lfBuffer_280;
      10'b0100011001 : tmp_pSumArea_pAddData = lfBuffer_281;
      10'b0100011010 : tmp_pSumArea_pAddData = lfBuffer_282;
      10'b0100011011 : tmp_pSumArea_pAddData = lfBuffer_283;
      10'b0100011100 : tmp_pSumArea_pAddData = lfBuffer_284;
      10'b0100011101 : tmp_pSumArea_pAddData = lfBuffer_285;
      10'b0100011110 : tmp_pSumArea_pAddData = lfBuffer_286;
      10'b0100011111 : tmp_pSumArea_pAddData = lfBuffer_287;
      10'b0100100000 : tmp_pSumArea_pAddData = lfBuffer_288;
      10'b0100100001 : tmp_pSumArea_pAddData = lfBuffer_289;
      10'b0100100010 : tmp_pSumArea_pAddData = lfBuffer_290;
      10'b0100100011 : tmp_pSumArea_pAddData = lfBuffer_291;
      10'b0100100100 : tmp_pSumArea_pAddData = lfBuffer_292;
      10'b0100100101 : tmp_pSumArea_pAddData = lfBuffer_293;
      10'b0100100110 : tmp_pSumArea_pAddData = lfBuffer_294;
      10'b0100100111 : tmp_pSumArea_pAddData = lfBuffer_295;
      10'b0100101000 : tmp_pSumArea_pAddData = lfBuffer_296;
      10'b0100101001 : tmp_pSumArea_pAddData = lfBuffer_297;
      10'b0100101010 : tmp_pSumArea_pAddData = lfBuffer_298;
      10'b0100101011 : tmp_pSumArea_pAddData = lfBuffer_299;
      10'b0100101100 : tmp_pSumArea_pAddData = lfBuffer_300;
      10'b0100101101 : tmp_pSumArea_pAddData = lfBuffer_301;
      10'b0100101110 : tmp_pSumArea_pAddData = lfBuffer_302;
      10'b0100101111 : tmp_pSumArea_pAddData = lfBuffer_303;
      10'b0100110000 : tmp_pSumArea_pAddData = lfBuffer_304;
      10'b0100110001 : tmp_pSumArea_pAddData = lfBuffer_305;
      10'b0100110010 : tmp_pSumArea_pAddData = lfBuffer_306;
      10'b0100110011 : tmp_pSumArea_pAddData = lfBuffer_307;
      10'b0100110100 : tmp_pSumArea_pAddData = lfBuffer_308;
      10'b0100110101 : tmp_pSumArea_pAddData = lfBuffer_309;
      10'b0100110110 : tmp_pSumArea_pAddData = lfBuffer_310;
      10'b0100110111 : tmp_pSumArea_pAddData = lfBuffer_311;
      10'b0100111000 : tmp_pSumArea_pAddData = lfBuffer_312;
      10'b0100111001 : tmp_pSumArea_pAddData = lfBuffer_313;
      10'b0100111010 : tmp_pSumArea_pAddData = lfBuffer_314;
      10'b0100111011 : tmp_pSumArea_pAddData = lfBuffer_315;
      10'b0100111100 : tmp_pSumArea_pAddData = lfBuffer_316;
      10'b0100111101 : tmp_pSumArea_pAddData = lfBuffer_317;
      10'b0100111110 : tmp_pSumArea_pAddData = lfBuffer_318;
      10'b0100111111 : tmp_pSumArea_pAddData = lfBuffer_319;
      10'b0101000000 : tmp_pSumArea_pAddData = lfBuffer_320;
      10'b0101000001 : tmp_pSumArea_pAddData = lfBuffer_321;
      10'b0101000010 : tmp_pSumArea_pAddData = lfBuffer_322;
      10'b0101000011 : tmp_pSumArea_pAddData = lfBuffer_323;
      10'b0101000100 : tmp_pSumArea_pAddData = lfBuffer_324;
      10'b0101000101 : tmp_pSumArea_pAddData = lfBuffer_325;
      10'b0101000110 : tmp_pSumArea_pAddData = lfBuffer_326;
      10'b0101000111 : tmp_pSumArea_pAddData = lfBuffer_327;
      10'b0101001000 : tmp_pSumArea_pAddData = lfBuffer_328;
      10'b0101001001 : tmp_pSumArea_pAddData = lfBuffer_329;
      10'b0101001010 : tmp_pSumArea_pAddData = lfBuffer_330;
      10'b0101001011 : tmp_pSumArea_pAddData = lfBuffer_331;
      10'b0101001100 : tmp_pSumArea_pAddData = lfBuffer_332;
      10'b0101001101 : tmp_pSumArea_pAddData = lfBuffer_333;
      10'b0101001110 : tmp_pSumArea_pAddData = lfBuffer_334;
      10'b0101001111 : tmp_pSumArea_pAddData = lfBuffer_335;
      10'b0101010000 : tmp_pSumArea_pAddData = lfBuffer_336;
      10'b0101010001 : tmp_pSumArea_pAddData = lfBuffer_337;
      10'b0101010010 : tmp_pSumArea_pAddData = lfBuffer_338;
      10'b0101010011 : tmp_pSumArea_pAddData = lfBuffer_339;
      10'b0101010100 : tmp_pSumArea_pAddData = lfBuffer_340;
      10'b0101010101 : tmp_pSumArea_pAddData = lfBuffer_341;
      10'b0101010110 : tmp_pSumArea_pAddData = lfBuffer_342;
      10'b0101010111 : tmp_pSumArea_pAddData = lfBuffer_343;
      10'b0101011000 : tmp_pSumArea_pAddData = lfBuffer_344;
      10'b0101011001 : tmp_pSumArea_pAddData = lfBuffer_345;
      10'b0101011010 : tmp_pSumArea_pAddData = lfBuffer_346;
      10'b0101011011 : tmp_pSumArea_pAddData = lfBuffer_347;
      10'b0101011100 : tmp_pSumArea_pAddData = lfBuffer_348;
      10'b0101011101 : tmp_pSumArea_pAddData = lfBuffer_349;
      10'b0101011110 : tmp_pSumArea_pAddData = lfBuffer_350;
      10'b0101011111 : tmp_pSumArea_pAddData = lfBuffer_351;
      10'b0101100000 : tmp_pSumArea_pAddData = lfBuffer_352;
      10'b0101100001 : tmp_pSumArea_pAddData = lfBuffer_353;
      10'b0101100010 : tmp_pSumArea_pAddData = lfBuffer_354;
      10'b0101100011 : tmp_pSumArea_pAddData = lfBuffer_355;
      10'b0101100100 : tmp_pSumArea_pAddData = lfBuffer_356;
      10'b0101100101 : tmp_pSumArea_pAddData = lfBuffer_357;
      10'b0101100110 : tmp_pSumArea_pAddData = lfBuffer_358;
      10'b0101100111 : tmp_pSumArea_pAddData = lfBuffer_359;
      10'b0101101000 : tmp_pSumArea_pAddData = lfBuffer_360;
      10'b0101101001 : tmp_pSumArea_pAddData = lfBuffer_361;
      10'b0101101010 : tmp_pSumArea_pAddData = lfBuffer_362;
      10'b0101101011 : tmp_pSumArea_pAddData = lfBuffer_363;
      10'b0101101100 : tmp_pSumArea_pAddData = lfBuffer_364;
      10'b0101101101 : tmp_pSumArea_pAddData = lfBuffer_365;
      10'b0101101110 : tmp_pSumArea_pAddData = lfBuffer_366;
      10'b0101101111 : tmp_pSumArea_pAddData = lfBuffer_367;
      10'b0101110000 : tmp_pSumArea_pAddData = lfBuffer_368;
      10'b0101110001 : tmp_pSumArea_pAddData = lfBuffer_369;
      10'b0101110010 : tmp_pSumArea_pAddData = lfBuffer_370;
      10'b0101110011 : tmp_pSumArea_pAddData = lfBuffer_371;
      10'b0101110100 : tmp_pSumArea_pAddData = lfBuffer_372;
      10'b0101110101 : tmp_pSumArea_pAddData = lfBuffer_373;
      10'b0101110110 : tmp_pSumArea_pAddData = lfBuffer_374;
      10'b0101110111 : tmp_pSumArea_pAddData = lfBuffer_375;
      10'b0101111000 : tmp_pSumArea_pAddData = lfBuffer_376;
      10'b0101111001 : tmp_pSumArea_pAddData = lfBuffer_377;
      10'b0101111010 : tmp_pSumArea_pAddData = lfBuffer_378;
      10'b0101111011 : tmp_pSumArea_pAddData = lfBuffer_379;
      10'b0101111100 : tmp_pSumArea_pAddData = lfBuffer_380;
      10'b0101111101 : tmp_pSumArea_pAddData = lfBuffer_381;
      10'b0101111110 : tmp_pSumArea_pAddData = lfBuffer_382;
      10'b0101111111 : tmp_pSumArea_pAddData = lfBuffer_383;
      10'b0110000000 : tmp_pSumArea_pAddData = lfBuffer_384;
      10'b0110000001 : tmp_pSumArea_pAddData = lfBuffer_385;
      10'b0110000010 : tmp_pSumArea_pAddData = lfBuffer_386;
      10'b0110000011 : tmp_pSumArea_pAddData = lfBuffer_387;
      10'b0110000100 : tmp_pSumArea_pAddData = lfBuffer_388;
      10'b0110000101 : tmp_pSumArea_pAddData = lfBuffer_389;
      10'b0110000110 : tmp_pSumArea_pAddData = lfBuffer_390;
      10'b0110000111 : tmp_pSumArea_pAddData = lfBuffer_391;
      10'b0110001000 : tmp_pSumArea_pAddData = lfBuffer_392;
      10'b0110001001 : tmp_pSumArea_pAddData = lfBuffer_393;
      10'b0110001010 : tmp_pSumArea_pAddData = lfBuffer_394;
      10'b0110001011 : tmp_pSumArea_pAddData = lfBuffer_395;
      10'b0110001100 : tmp_pSumArea_pAddData = lfBuffer_396;
      10'b0110001101 : tmp_pSumArea_pAddData = lfBuffer_397;
      10'b0110001110 : tmp_pSumArea_pAddData = lfBuffer_398;
      10'b0110001111 : tmp_pSumArea_pAddData = lfBuffer_399;
      10'b0110010000 : tmp_pSumArea_pAddData = lfBuffer_400;
      10'b0110010001 : tmp_pSumArea_pAddData = lfBuffer_401;
      10'b0110010010 : tmp_pSumArea_pAddData = lfBuffer_402;
      10'b0110010011 : tmp_pSumArea_pAddData = lfBuffer_403;
      10'b0110010100 : tmp_pSumArea_pAddData = lfBuffer_404;
      10'b0110010101 : tmp_pSumArea_pAddData = lfBuffer_405;
      10'b0110010110 : tmp_pSumArea_pAddData = lfBuffer_406;
      10'b0110010111 : tmp_pSumArea_pAddData = lfBuffer_407;
      10'b0110011000 : tmp_pSumArea_pAddData = lfBuffer_408;
      10'b0110011001 : tmp_pSumArea_pAddData = lfBuffer_409;
      10'b0110011010 : tmp_pSumArea_pAddData = lfBuffer_410;
      10'b0110011011 : tmp_pSumArea_pAddData = lfBuffer_411;
      10'b0110011100 : tmp_pSumArea_pAddData = lfBuffer_412;
      10'b0110011101 : tmp_pSumArea_pAddData = lfBuffer_413;
      10'b0110011110 : tmp_pSumArea_pAddData = lfBuffer_414;
      10'b0110011111 : tmp_pSumArea_pAddData = lfBuffer_415;
      10'b0110100000 : tmp_pSumArea_pAddData = lfBuffer_416;
      10'b0110100001 : tmp_pSumArea_pAddData = lfBuffer_417;
      10'b0110100010 : tmp_pSumArea_pAddData = lfBuffer_418;
      10'b0110100011 : tmp_pSumArea_pAddData = lfBuffer_419;
      10'b0110100100 : tmp_pSumArea_pAddData = lfBuffer_420;
      10'b0110100101 : tmp_pSumArea_pAddData = lfBuffer_421;
      10'b0110100110 : tmp_pSumArea_pAddData = lfBuffer_422;
      10'b0110100111 : tmp_pSumArea_pAddData = lfBuffer_423;
      10'b0110101000 : tmp_pSumArea_pAddData = lfBuffer_424;
      10'b0110101001 : tmp_pSumArea_pAddData = lfBuffer_425;
      10'b0110101010 : tmp_pSumArea_pAddData = lfBuffer_426;
      10'b0110101011 : tmp_pSumArea_pAddData = lfBuffer_427;
      10'b0110101100 : tmp_pSumArea_pAddData = lfBuffer_428;
      10'b0110101101 : tmp_pSumArea_pAddData = lfBuffer_429;
      10'b0110101110 : tmp_pSumArea_pAddData = lfBuffer_430;
      10'b0110101111 : tmp_pSumArea_pAddData = lfBuffer_431;
      10'b0110110000 : tmp_pSumArea_pAddData = lfBuffer_432;
      10'b0110110001 : tmp_pSumArea_pAddData = lfBuffer_433;
      10'b0110110010 : tmp_pSumArea_pAddData = lfBuffer_434;
      10'b0110110011 : tmp_pSumArea_pAddData = lfBuffer_435;
      10'b0110110100 : tmp_pSumArea_pAddData = lfBuffer_436;
      10'b0110110101 : tmp_pSumArea_pAddData = lfBuffer_437;
      10'b0110110110 : tmp_pSumArea_pAddData = lfBuffer_438;
      10'b0110110111 : tmp_pSumArea_pAddData = lfBuffer_439;
      10'b0110111000 : tmp_pSumArea_pAddData = lfBuffer_440;
      10'b0110111001 : tmp_pSumArea_pAddData = lfBuffer_441;
      10'b0110111010 : tmp_pSumArea_pAddData = lfBuffer_442;
      10'b0110111011 : tmp_pSumArea_pAddData = lfBuffer_443;
      10'b0110111100 : tmp_pSumArea_pAddData = lfBuffer_444;
      10'b0110111101 : tmp_pSumArea_pAddData = lfBuffer_445;
      10'b0110111110 : tmp_pSumArea_pAddData = lfBuffer_446;
      10'b0110111111 : tmp_pSumArea_pAddData = lfBuffer_447;
      10'b0111000000 : tmp_pSumArea_pAddData = lfBuffer_448;
      10'b0111000001 : tmp_pSumArea_pAddData = lfBuffer_449;
      10'b0111000010 : tmp_pSumArea_pAddData = lfBuffer_450;
      10'b0111000011 : tmp_pSumArea_pAddData = lfBuffer_451;
      10'b0111000100 : tmp_pSumArea_pAddData = lfBuffer_452;
      10'b0111000101 : tmp_pSumArea_pAddData = lfBuffer_453;
      10'b0111000110 : tmp_pSumArea_pAddData = lfBuffer_454;
      10'b0111000111 : tmp_pSumArea_pAddData = lfBuffer_455;
      10'b0111001000 : tmp_pSumArea_pAddData = lfBuffer_456;
      10'b0111001001 : tmp_pSumArea_pAddData = lfBuffer_457;
      10'b0111001010 : tmp_pSumArea_pAddData = lfBuffer_458;
      10'b0111001011 : tmp_pSumArea_pAddData = lfBuffer_459;
      10'b0111001100 : tmp_pSumArea_pAddData = lfBuffer_460;
      10'b0111001101 : tmp_pSumArea_pAddData = lfBuffer_461;
      10'b0111001110 : tmp_pSumArea_pAddData = lfBuffer_462;
      10'b0111001111 : tmp_pSumArea_pAddData = lfBuffer_463;
      10'b0111010000 : tmp_pSumArea_pAddData = lfBuffer_464;
      10'b0111010001 : tmp_pSumArea_pAddData = lfBuffer_465;
      10'b0111010010 : tmp_pSumArea_pAddData = lfBuffer_466;
      10'b0111010011 : tmp_pSumArea_pAddData = lfBuffer_467;
      10'b0111010100 : tmp_pSumArea_pAddData = lfBuffer_468;
      10'b0111010101 : tmp_pSumArea_pAddData = lfBuffer_469;
      10'b0111010110 : tmp_pSumArea_pAddData = lfBuffer_470;
      10'b0111010111 : tmp_pSumArea_pAddData = lfBuffer_471;
      10'b0111011000 : tmp_pSumArea_pAddData = lfBuffer_472;
      10'b0111011001 : tmp_pSumArea_pAddData = lfBuffer_473;
      10'b0111011010 : tmp_pSumArea_pAddData = lfBuffer_474;
      10'b0111011011 : tmp_pSumArea_pAddData = lfBuffer_475;
      10'b0111011100 : tmp_pSumArea_pAddData = lfBuffer_476;
      10'b0111011101 : tmp_pSumArea_pAddData = lfBuffer_477;
      10'b0111011110 : tmp_pSumArea_pAddData = lfBuffer_478;
      10'b0111011111 : tmp_pSumArea_pAddData = lfBuffer_479;
      10'b0111100000 : tmp_pSumArea_pAddData = lfBuffer_480;
      10'b0111100001 : tmp_pSumArea_pAddData = lfBuffer_481;
      10'b0111100010 : tmp_pSumArea_pAddData = lfBuffer_482;
      10'b0111100011 : tmp_pSumArea_pAddData = lfBuffer_483;
      10'b0111100100 : tmp_pSumArea_pAddData = lfBuffer_484;
      10'b0111100101 : tmp_pSumArea_pAddData = lfBuffer_485;
      10'b0111100110 : tmp_pSumArea_pAddData = lfBuffer_486;
      10'b0111100111 : tmp_pSumArea_pAddData = lfBuffer_487;
      10'b0111101000 : tmp_pSumArea_pAddData = lfBuffer_488;
      10'b0111101001 : tmp_pSumArea_pAddData = lfBuffer_489;
      10'b0111101010 : tmp_pSumArea_pAddData = lfBuffer_490;
      10'b0111101011 : tmp_pSumArea_pAddData = lfBuffer_491;
      10'b0111101100 : tmp_pSumArea_pAddData = lfBuffer_492;
      10'b0111101101 : tmp_pSumArea_pAddData = lfBuffer_493;
      10'b0111101110 : tmp_pSumArea_pAddData = lfBuffer_494;
      10'b0111101111 : tmp_pSumArea_pAddData = lfBuffer_495;
      10'b0111110000 : tmp_pSumArea_pAddData = lfBuffer_496;
      10'b0111110001 : tmp_pSumArea_pAddData = lfBuffer_497;
      10'b0111110010 : tmp_pSumArea_pAddData = lfBuffer_498;
      10'b0111110011 : tmp_pSumArea_pAddData = lfBuffer_499;
      10'b0111110100 : tmp_pSumArea_pAddData = lfBuffer_500;
      10'b0111110101 : tmp_pSumArea_pAddData = lfBuffer_501;
      10'b0111110110 : tmp_pSumArea_pAddData = lfBuffer_502;
      10'b0111110111 : tmp_pSumArea_pAddData = lfBuffer_503;
      10'b0111111000 : tmp_pSumArea_pAddData = lfBuffer_504;
      10'b0111111001 : tmp_pSumArea_pAddData = lfBuffer_505;
      10'b0111111010 : tmp_pSumArea_pAddData = lfBuffer_506;
      10'b0111111011 : tmp_pSumArea_pAddData = lfBuffer_507;
      10'b0111111100 : tmp_pSumArea_pAddData = lfBuffer_508;
      10'b0111111101 : tmp_pSumArea_pAddData = lfBuffer_509;
      10'b0111111110 : tmp_pSumArea_pAddData = lfBuffer_510;
      10'b0111111111 : tmp_pSumArea_pAddData = lfBuffer_511;
      10'b1000000000 : tmp_pSumArea_pAddData = lfBuffer_512;
      10'b1000000001 : tmp_pSumArea_pAddData = lfBuffer_513;
      10'b1000000010 : tmp_pSumArea_pAddData = lfBuffer_514;
      10'b1000000011 : tmp_pSumArea_pAddData = lfBuffer_515;
      10'b1000000100 : tmp_pSumArea_pAddData = lfBuffer_516;
      10'b1000000101 : tmp_pSumArea_pAddData = lfBuffer_517;
      10'b1000000110 : tmp_pSumArea_pAddData = lfBuffer_518;
      10'b1000000111 : tmp_pSumArea_pAddData = lfBuffer_519;
      10'b1000001000 : tmp_pSumArea_pAddData = lfBuffer_520;
      10'b1000001001 : tmp_pSumArea_pAddData = lfBuffer_521;
      10'b1000001010 : tmp_pSumArea_pAddData = lfBuffer_522;
      10'b1000001011 : tmp_pSumArea_pAddData = lfBuffer_523;
      10'b1000001100 : tmp_pSumArea_pAddData = lfBuffer_524;
      10'b1000001101 : tmp_pSumArea_pAddData = lfBuffer_525;
      10'b1000001110 : tmp_pSumArea_pAddData = lfBuffer_526;
      10'b1000001111 : tmp_pSumArea_pAddData = lfBuffer_527;
      10'b1000010000 : tmp_pSumArea_pAddData = lfBuffer_528;
      10'b1000010001 : tmp_pSumArea_pAddData = lfBuffer_529;
      10'b1000010010 : tmp_pSumArea_pAddData = lfBuffer_530;
      10'b1000010011 : tmp_pSumArea_pAddData = lfBuffer_531;
      10'b1000010100 : tmp_pSumArea_pAddData = lfBuffer_532;
      10'b1000010101 : tmp_pSumArea_pAddData = lfBuffer_533;
      10'b1000010110 : tmp_pSumArea_pAddData = lfBuffer_534;
      10'b1000010111 : tmp_pSumArea_pAddData = lfBuffer_535;
      10'b1000011000 : tmp_pSumArea_pAddData = lfBuffer_536;
      10'b1000011001 : tmp_pSumArea_pAddData = lfBuffer_537;
      10'b1000011010 : tmp_pSumArea_pAddData = lfBuffer_538;
      10'b1000011011 : tmp_pSumArea_pAddData = lfBuffer_539;
      10'b1000011100 : tmp_pSumArea_pAddData = lfBuffer_540;
      10'b1000011101 : tmp_pSumArea_pAddData = lfBuffer_541;
      10'b1000011110 : tmp_pSumArea_pAddData = lfBuffer_542;
      10'b1000011111 : tmp_pSumArea_pAddData = lfBuffer_543;
      10'b1000100000 : tmp_pSumArea_pAddData = lfBuffer_544;
      10'b1000100001 : tmp_pSumArea_pAddData = lfBuffer_545;
      10'b1000100010 : tmp_pSumArea_pAddData = lfBuffer_546;
      10'b1000100011 : tmp_pSumArea_pAddData = lfBuffer_547;
      10'b1000100100 : tmp_pSumArea_pAddData = lfBuffer_548;
      10'b1000100101 : tmp_pSumArea_pAddData = lfBuffer_549;
      10'b1000100110 : tmp_pSumArea_pAddData = lfBuffer_550;
      10'b1000100111 : tmp_pSumArea_pAddData = lfBuffer_551;
      10'b1000101000 : tmp_pSumArea_pAddData = lfBuffer_552;
      10'b1000101001 : tmp_pSumArea_pAddData = lfBuffer_553;
      10'b1000101010 : tmp_pSumArea_pAddData = lfBuffer_554;
      10'b1000101011 : tmp_pSumArea_pAddData = lfBuffer_555;
      10'b1000101100 : tmp_pSumArea_pAddData = lfBuffer_556;
      10'b1000101101 : tmp_pSumArea_pAddData = lfBuffer_557;
      10'b1000101110 : tmp_pSumArea_pAddData = lfBuffer_558;
      10'b1000101111 : tmp_pSumArea_pAddData = lfBuffer_559;
      10'b1000110000 : tmp_pSumArea_pAddData = lfBuffer_560;
      10'b1000110001 : tmp_pSumArea_pAddData = lfBuffer_561;
      10'b1000110010 : tmp_pSumArea_pAddData = lfBuffer_562;
      10'b1000110011 : tmp_pSumArea_pAddData = lfBuffer_563;
      10'b1000110100 : tmp_pSumArea_pAddData = lfBuffer_564;
      10'b1000110101 : tmp_pSumArea_pAddData = lfBuffer_565;
      10'b1000110110 : tmp_pSumArea_pAddData = lfBuffer_566;
      10'b1000110111 : tmp_pSumArea_pAddData = lfBuffer_567;
      10'b1000111000 : tmp_pSumArea_pAddData = lfBuffer_568;
      10'b1000111001 : tmp_pSumArea_pAddData = lfBuffer_569;
      10'b1000111010 : tmp_pSumArea_pAddData = lfBuffer_570;
      10'b1000111011 : tmp_pSumArea_pAddData = lfBuffer_571;
      10'b1000111100 : tmp_pSumArea_pAddData = lfBuffer_572;
      10'b1000111101 : tmp_pSumArea_pAddData = lfBuffer_573;
      10'b1000111110 : tmp_pSumArea_pAddData = lfBuffer_574;
      10'b1000111111 : tmp_pSumArea_pAddData = lfBuffer_575;
      10'b1001000000 : tmp_pSumArea_pAddData = lfBuffer_576;
      10'b1001000001 : tmp_pSumArea_pAddData = lfBuffer_577;
      10'b1001000010 : tmp_pSumArea_pAddData = lfBuffer_578;
      10'b1001000011 : tmp_pSumArea_pAddData = lfBuffer_579;
      10'b1001000100 : tmp_pSumArea_pAddData = lfBuffer_580;
      10'b1001000101 : tmp_pSumArea_pAddData = lfBuffer_581;
      10'b1001000110 : tmp_pSumArea_pAddData = lfBuffer_582;
      10'b1001000111 : tmp_pSumArea_pAddData = lfBuffer_583;
      10'b1001001000 : tmp_pSumArea_pAddData = lfBuffer_584;
      10'b1001001001 : tmp_pSumArea_pAddData = lfBuffer_585;
      10'b1001001010 : tmp_pSumArea_pAddData = lfBuffer_586;
      10'b1001001011 : tmp_pSumArea_pAddData = lfBuffer_587;
      10'b1001001100 : tmp_pSumArea_pAddData = lfBuffer_588;
      10'b1001001101 : tmp_pSumArea_pAddData = lfBuffer_589;
      10'b1001001110 : tmp_pSumArea_pAddData = lfBuffer_590;
      10'b1001001111 : tmp_pSumArea_pAddData = lfBuffer_591;
      10'b1001010000 : tmp_pSumArea_pAddData = lfBuffer_592;
      10'b1001010001 : tmp_pSumArea_pAddData = lfBuffer_593;
      10'b1001010010 : tmp_pSumArea_pAddData = lfBuffer_594;
      10'b1001010011 : tmp_pSumArea_pAddData = lfBuffer_595;
      10'b1001010100 : tmp_pSumArea_pAddData = lfBuffer_596;
      10'b1001010101 : tmp_pSumArea_pAddData = lfBuffer_597;
      10'b1001010110 : tmp_pSumArea_pAddData = lfBuffer_598;
      10'b1001010111 : tmp_pSumArea_pAddData = lfBuffer_599;
      10'b1001011000 : tmp_pSumArea_pAddData = lfBuffer_600;
      10'b1001011001 : tmp_pSumArea_pAddData = lfBuffer_601;
      10'b1001011010 : tmp_pSumArea_pAddData = lfBuffer_602;
      10'b1001011011 : tmp_pSumArea_pAddData = lfBuffer_603;
      10'b1001011100 : tmp_pSumArea_pAddData = lfBuffer_604;
      10'b1001011101 : tmp_pSumArea_pAddData = lfBuffer_605;
      10'b1001011110 : tmp_pSumArea_pAddData = lfBuffer_606;
      10'b1001011111 : tmp_pSumArea_pAddData = lfBuffer_607;
      10'b1001100000 : tmp_pSumArea_pAddData = lfBuffer_608;
      10'b1001100001 : tmp_pSumArea_pAddData = lfBuffer_609;
      10'b1001100010 : tmp_pSumArea_pAddData = lfBuffer_610;
      10'b1001100011 : tmp_pSumArea_pAddData = lfBuffer_611;
      10'b1001100100 : tmp_pSumArea_pAddData = lfBuffer_612;
      10'b1001100101 : tmp_pSumArea_pAddData = lfBuffer_613;
      10'b1001100110 : tmp_pSumArea_pAddData = lfBuffer_614;
      10'b1001100111 : tmp_pSumArea_pAddData = lfBuffer_615;
      10'b1001101000 : tmp_pSumArea_pAddData = lfBuffer_616;
      10'b1001101001 : tmp_pSumArea_pAddData = lfBuffer_617;
      10'b1001101010 : tmp_pSumArea_pAddData = lfBuffer_618;
      10'b1001101011 : tmp_pSumArea_pAddData = lfBuffer_619;
      10'b1001101100 : tmp_pSumArea_pAddData = lfBuffer_620;
      10'b1001101101 : tmp_pSumArea_pAddData = lfBuffer_621;
      10'b1001101110 : tmp_pSumArea_pAddData = lfBuffer_622;
      10'b1001101111 : tmp_pSumArea_pAddData = lfBuffer_623;
      10'b1001110000 : tmp_pSumArea_pAddData = lfBuffer_624;
      10'b1001110001 : tmp_pSumArea_pAddData = lfBuffer_625;
      10'b1001110010 : tmp_pSumArea_pAddData = lfBuffer_626;
      10'b1001110011 : tmp_pSumArea_pAddData = lfBuffer_627;
      10'b1001110100 : tmp_pSumArea_pAddData = lfBuffer_628;
      10'b1001110101 : tmp_pSumArea_pAddData = lfBuffer_629;
      10'b1001110110 : tmp_pSumArea_pAddData = lfBuffer_630;
      10'b1001110111 : tmp_pSumArea_pAddData = lfBuffer_631;
      10'b1001111000 : tmp_pSumArea_pAddData = lfBuffer_632;
      10'b1001111001 : tmp_pSumArea_pAddData = lfBuffer_633;
      10'b1001111010 : tmp_pSumArea_pAddData = lfBuffer_634;
      10'b1001111011 : tmp_pSumArea_pAddData = lfBuffer_635;
      10'b1001111100 : tmp_pSumArea_pAddData = lfBuffer_636;
      10'b1001111101 : tmp_pSumArea_pAddData = lfBuffer_637;
      10'b1001111110 : tmp_pSumArea_pAddData = lfBuffer_638;
      10'b1001111111 : tmp_pSumArea_pAddData = lfBuffer_639;
      10'b1010000000 : tmp_pSumArea_pAddData = lfBuffer_640;
      10'b1010000001 : tmp_pSumArea_pAddData = lfBuffer_641;
      10'b1010000010 : tmp_pSumArea_pAddData = lfBuffer_642;
      10'b1010000011 : tmp_pSumArea_pAddData = lfBuffer_643;
      10'b1010000100 : tmp_pSumArea_pAddData = lfBuffer_644;
      10'b1010000101 : tmp_pSumArea_pAddData = lfBuffer_645;
      10'b1010000110 : tmp_pSumArea_pAddData = lfBuffer_646;
      10'b1010000111 : tmp_pSumArea_pAddData = lfBuffer_647;
      10'b1010001000 : tmp_pSumArea_pAddData = lfBuffer_648;
      10'b1010001001 : tmp_pSumArea_pAddData = lfBuffer_649;
      10'b1010001010 : tmp_pSumArea_pAddData = lfBuffer_650;
      10'b1010001011 : tmp_pSumArea_pAddData = lfBuffer_651;
      10'b1010001100 : tmp_pSumArea_pAddData = lfBuffer_652;
      10'b1010001101 : tmp_pSumArea_pAddData = lfBuffer_653;
      10'b1010001110 : tmp_pSumArea_pAddData = lfBuffer_654;
      10'b1010001111 : tmp_pSumArea_pAddData = lfBuffer_655;
      10'b1010010000 : tmp_pSumArea_pAddData = lfBuffer_656;
      10'b1010010001 : tmp_pSumArea_pAddData = lfBuffer_657;
      10'b1010010010 : tmp_pSumArea_pAddData = lfBuffer_658;
      10'b1010010011 : tmp_pSumArea_pAddData = lfBuffer_659;
      10'b1010010100 : tmp_pSumArea_pAddData = lfBuffer_660;
      10'b1010010101 : tmp_pSumArea_pAddData = lfBuffer_661;
      10'b1010010110 : tmp_pSumArea_pAddData = lfBuffer_662;
      10'b1010010111 : tmp_pSumArea_pAddData = lfBuffer_663;
      10'b1010011000 : tmp_pSumArea_pAddData = lfBuffer_664;
      10'b1010011001 : tmp_pSumArea_pAddData = lfBuffer_665;
      10'b1010011010 : tmp_pSumArea_pAddData = lfBuffer_666;
      10'b1010011011 : tmp_pSumArea_pAddData = lfBuffer_667;
      10'b1010011100 : tmp_pSumArea_pAddData = lfBuffer_668;
      10'b1010011101 : tmp_pSumArea_pAddData = lfBuffer_669;
      10'b1010011110 : tmp_pSumArea_pAddData = lfBuffer_670;
      10'b1010011111 : tmp_pSumArea_pAddData = lfBuffer_671;
      10'b1010100000 : tmp_pSumArea_pAddData = lfBuffer_672;
      10'b1010100001 : tmp_pSumArea_pAddData = lfBuffer_673;
      10'b1010100010 : tmp_pSumArea_pAddData = lfBuffer_674;
      10'b1010100011 : tmp_pSumArea_pAddData = lfBuffer_675;
      10'b1010100100 : tmp_pSumArea_pAddData = lfBuffer_676;
      10'b1010100101 : tmp_pSumArea_pAddData = lfBuffer_677;
      10'b1010100110 : tmp_pSumArea_pAddData = lfBuffer_678;
      10'b1010100111 : tmp_pSumArea_pAddData = lfBuffer_679;
      10'b1010101000 : tmp_pSumArea_pAddData = lfBuffer_680;
      10'b1010101001 : tmp_pSumArea_pAddData = lfBuffer_681;
      10'b1010101010 : tmp_pSumArea_pAddData = lfBuffer_682;
      10'b1010101011 : tmp_pSumArea_pAddData = lfBuffer_683;
      10'b1010101100 : tmp_pSumArea_pAddData = lfBuffer_684;
      10'b1010101101 : tmp_pSumArea_pAddData = lfBuffer_685;
      10'b1010101110 : tmp_pSumArea_pAddData = lfBuffer_686;
      10'b1010101111 : tmp_pSumArea_pAddData = lfBuffer_687;
      10'b1010110000 : tmp_pSumArea_pAddData = lfBuffer_688;
      10'b1010110001 : tmp_pSumArea_pAddData = lfBuffer_689;
      10'b1010110010 : tmp_pSumArea_pAddData = lfBuffer_690;
      10'b1010110011 : tmp_pSumArea_pAddData = lfBuffer_691;
      10'b1010110100 : tmp_pSumArea_pAddData = lfBuffer_692;
      10'b1010110101 : tmp_pSumArea_pAddData = lfBuffer_693;
      10'b1010110110 : tmp_pSumArea_pAddData = lfBuffer_694;
      10'b1010110111 : tmp_pSumArea_pAddData = lfBuffer_695;
      10'b1010111000 : tmp_pSumArea_pAddData = lfBuffer_696;
      10'b1010111001 : tmp_pSumArea_pAddData = lfBuffer_697;
      10'b1010111010 : tmp_pSumArea_pAddData = lfBuffer_698;
      10'b1010111011 : tmp_pSumArea_pAddData = lfBuffer_699;
      10'b1010111100 : tmp_pSumArea_pAddData = lfBuffer_700;
      10'b1010111101 : tmp_pSumArea_pAddData = lfBuffer_701;
      10'b1010111110 : tmp_pSumArea_pAddData = lfBuffer_702;
      10'b1010111111 : tmp_pSumArea_pAddData = lfBuffer_703;
      10'b1011000000 : tmp_pSumArea_pAddData = lfBuffer_704;
      10'b1011000001 : tmp_pSumArea_pAddData = lfBuffer_705;
      10'b1011000010 : tmp_pSumArea_pAddData = lfBuffer_706;
      10'b1011000011 : tmp_pSumArea_pAddData = lfBuffer_707;
      10'b1011000100 : tmp_pSumArea_pAddData = lfBuffer_708;
      10'b1011000101 : tmp_pSumArea_pAddData = lfBuffer_709;
      10'b1011000110 : tmp_pSumArea_pAddData = lfBuffer_710;
      10'b1011000111 : tmp_pSumArea_pAddData = lfBuffer_711;
      10'b1011001000 : tmp_pSumArea_pAddData = lfBuffer_712;
      10'b1011001001 : tmp_pSumArea_pAddData = lfBuffer_713;
      10'b1011001010 : tmp_pSumArea_pAddData = lfBuffer_714;
      10'b1011001011 : tmp_pSumArea_pAddData = lfBuffer_715;
      10'b1011001100 : tmp_pSumArea_pAddData = lfBuffer_716;
      10'b1011001101 : tmp_pSumArea_pAddData = lfBuffer_717;
      10'b1011001110 : tmp_pSumArea_pAddData = lfBuffer_718;
      10'b1011001111 : tmp_pSumArea_pAddData = lfBuffer_719;
      10'b1011010000 : tmp_pSumArea_pAddData = lfBuffer_720;
      10'b1011010001 : tmp_pSumArea_pAddData = lfBuffer_721;
      10'b1011010010 : tmp_pSumArea_pAddData = lfBuffer_722;
      10'b1011010011 : tmp_pSumArea_pAddData = lfBuffer_723;
      10'b1011010100 : tmp_pSumArea_pAddData = lfBuffer_724;
      10'b1011010101 : tmp_pSumArea_pAddData = lfBuffer_725;
      10'b1011010110 : tmp_pSumArea_pAddData = lfBuffer_726;
      10'b1011010111 : tmp_pSumArea_pAddData = lfBuffer_727;
      10'b1011011000 : tmp_pSumArea_pAddData = lfBuffer_728;
      10'b1011011001 : tmp_pSumArea_pAddData = lfBuffer_729;
      10'b1011011010 : tmp_pSumArea_pAddData = lfBuffer_730;
      10'b1011011011 : tmp_pSumArea_pAddData = lfBuffer_731;
      10'b1011011100 : tmp_pSumArea_pAddData = lfBuffer_732;
      10'b1011011101 : tmp_pSumArea_pAddData = lfBuffer_733;
      10'b1011011110 : tmp_pSumArea_pAddData = lfBuffer_734;
      10'b1011011111 : tmp_pSumArea_pAddData = lfBuffer_735;
      10'b1011100000 : tmp_pSumArea_pAddData = lfBuffer_736;
      10'b1011100001 : tmp_pSumArea_pAddData = lfBuffer_737;
      10'b1011100010 : tmp_pSumArea_pAddData = lfBuffer_738;
      10'b1011100011 : tmp_pSumArea_pAddData = lfBuffer_739;
      10'b1011100100 : tmp_pSumArea_pAddData = lfBuffer_740;
      10'b1011100101 : tmp_pSumArea_pAddData = lfBuffer_741;
      10'b1011100110 : tmp_pSumArea_pAddData = lfBuffer_742;
      10'b1011100111 : tmp_pSumArea_pAddData = lfBuffer_743;
      10'b1011101000 : tmp_pSumArea_pAddData = lfBuffer_744;
      10'b1011101001 : tmp_pSumArea_pAddData = lfBuffer_745;
      10'b1011101010 : tmp_pSumArea_pAddData = lfBuffer_746;
      10'b1011101011 : tmp_pSumArea_pAddData = lfBuffer_747;
      10'b1011101100 : tmp_pSumArea_pAddData = lfBuffer_748;
      10'b1011101101 : tmp_pSumArea_pAddData = lfBuffer_749;
      10'b1011101110 : tmp_pSumArea_pAddData = lfBuffer_750;
      10'b1011101111 : tmp_pSumArea_pAddData = lfBuffer_751;
      10'b1011110000 : tmp_pSumArea_pAddData = lfBuffer_752;
      10'b1011110001 : tmp_pSumArea_pAddData = lfBuffer_753;
      10'b1011110010 : tmp_pSumArea_pAddData = lfBuffer_754;
      10'b1011110011 : tmp_pSumArea_pAddData = lfBuffer_755;
      10'b1011110100 : tmp_pSumArea_pAddData = lfBuffer_756;
      10'b1011110101 : tmp_pSumArea_pAddData = lfBuffer_757;
      10'b1011110110 : tmp_pSumArea_pAddData = lfBuffer_758;
      10'b1011110111 : tmp_pSumArea_pAddData = lfBuffer_759;
      10'b1011111000 : tmp_pSumArea_pAddData = lfBuffer_760;
      10'b1011111001 : tmp_pSumArea_pAddData = lfBuffer_761;
      10'b1011111010 : tmp_pSumArea_pAddData = lfBuffer_762;
      10'b1011111011 : tmp_pSumArea_pAddData = lfBuffer_763;
      10'b1011111100 : tmp_pSumArea_pAddData = lfBuffer_764;
      10'b1011111101 : tmp_pSumArea_pAddData = lfBuffer_765;
      10'b1011111110 : tmp_pSumArea_pAddData = lfBuffer_766;
      10'b1011111111 : tmp_pSumArea_pAddData = lfBuffer_767;
      10'b1100000000 : tmp_pSumArea_pAddData = lfBuffer_768;
      10'b1100000001 : tmp_pSumArea_pAddData = lfBuffer_769;
      10'b1100000010 : tmp_pSumArea_pAddData = lfBuffer_770;
      10'b1100000011 : tmp_pSumArea_pAddData = lfBuffer_771;
      10'b1100000100 : tmp_pSumArea_pAddData = lfBuffer_772;
      10'b1100000101 : tmp_pSumArea_pAddData = lfBuffer_773;
      10'b1100000110 : tmp_pSumArea_pAddData = lfBuffer_774;
      10'b1100000111 : tmp_pSumArea_pAddData = lfBuffer_775;
      10'b1100001000 : tmp_pSumArea_pAddData = lfBuffer_776;
      10'b1100001001 : tmp_pSumArea_pAddData = lfBuffer_777;
      10'b1100001010 : tmp_pSumArea_pAddData = lfBuffer_778;
      10'b1100001011 : tmp_pSumArea_pAddData = lfBuffer_779;
      10'b1100001100 : tmp_pSumArea_pAddData = lfBuffer_780;
      10'b1100001101 : tmp_pSumArea_pAddData = lfBuffer_781;
      10'b1100001110 : tmp_pSumArea_pAddData = lfBuffer_782;
      10'b1100001111 : tmp_pSumArea_pAddData = lfBuffer_783;
      10'b1100010000 : tmp_pSumArea_pAddData = lfBuffer_784;
      10'b1100010001 : tmp_pSumArea_pAddData = lfBuffer_785;
      10'b1100010010 : tmp_pSumArea_pAddData = lfBuffer_786;
      10'b1100010011 : tmp_pSumArea_pAddData = lfBuffer_787;
      10'b1100010100 : tmp_pSumArea_pAddData = lfBuffer_788;
      10'b1100010101 : tmp_pSumArea_pAddData = lfBuffer_789;
      10'b1100010110 : tmp_pSumArea_pAddData = lfBuffer_790;
      10'b1100010111 : tmp_pSumArea_pAddData = lfBuffer_791;
      10'b1100011000 : tmp_pSumArea_pAddData = lfBuffer_792;
      10'b1100011001 : tmp_pSumArea_pAddData = lfBuffer_793;
      10'b1100011010 : tmp_pSumArea_pAddData = lfBuffer_794;
      10'b1100011011 : tmp_pSumArea_pAddData = lfBuffer_795;
      10'b1100011100 : tmp_pSumArea_pAddData = lfBuffer_796;
      10'b1100011101 : tmp_pSumArea_pAddData = lfBuffer_797;
      10'b1100011110 : tmp_pSumArea_pAddData = lfBuffer_798;
      10'b1100011111 : tmp_pSumArea_pAddData = lfBuffer_799;
      10'b1100100000 : tmp_pSumArea_pAddData = lfBuffer_800;
      10'b1100100001 : tmp_pSumArea_pAddData = lfBuffer_801;
      10'b1100100010 : tmp_pSumArea_pAddData = lfBuffer_802;
      10'b1100100011 : tmp_pSumArea_pAddData = lfBuffer_803;
      10'b1100100100 : tmp_pSumArea_pAddData = lfBuffer_804;
      10'b1100100101 : tmp_pSumArea_pAddData = lfBuffer_805;
      10'b1100100110 : tmp_pSumArea_pAddData = lfBuffer_806;
      10'b1100100111 : tmp_pSumArea_pAddData = lfBuffer_807;
      10'b1100101000 : tmp_pSumArea_pAddData = lfBuffer_808;
      10'b1100101001 : tmp_pSumArea_pAddData = lfBuffer_809;
      10'b1100101010 : tmp_pSumArea_pAddData = lfBuffer_810;
      10'b1100101011 : tmp_pSumArea_pAddData = lfBuffer_811;
      10'b1100101100 : tmp_pSumArea_pAddData = lfBuffer_812;
      10'b1100101101 : tmp_pSumArea_pAddData = lfBuffer_813;
      10'b1100101110 : tmp_pSumArea_pAddData = lfBuffer_814;
      10'b1100101111 : tmp_pSumArea_pAddData = lfBuffer_815;
      10'b1100110000 : tmp_pSumArea_pAddData = lfBuffer_816;
      10'b1100110001 : tmp_pSumArea_pAddData = lfBuffer_817;
      10'b1100110010 : tmp_pSumArea_pAddData = lfBuffer_818;
      10'b1100110011 : tmp_pSumArea_pAddData = lfBuffer_819;
      10'b1100110100 : tmp_pSumArea_pAddData = lfBuffer_820;
      10'b1100110101 : tmp_pSumArea_pAddData = lfBuffer_821;
      10'b1100110110 : tmp_pSumArea_pAddData = lfBuffer_822;
      10'b1100110111 : tmp_pSumArea_pAddData = lfBuffer_823;
      10'b1100111000 : tmp_pSumArea_pAddData = lfBuffer_824;
      10'b1100111001 : tmp_pSumArea_pAddData = lfBuffer_825;
      10'b1100111010 : tmp_pSumArea_pAddData = lfBuffer_826;
      10'b1100111011 : tmp_pSumArea_pAddData = lfBuffer_827;
      10'b1100111100 : tmp_pSumArea_pAddData = lfBuffer_828;
      10'b1100111101 : tmp_pSumArea_pAddData = lfBuffer_829;
      10'b1100111110 : tmp_pSumArea_pAddData = lfBuffer_830;
      10'b1100111111 : tmp_pSumArea_pAddData = lfBuffer_831;
      10'b1101000000 : tmp_pSumArea_pAddData = lfBuffer_832;
      10'b1101000001 : tmp_pSumArea_pAddData = lfBuffer_833;
      10'b1101000010 : tmp_pSumArea_pAddData = lfBuffer_834;
      10'b1101000011 : tmp_pSumArea_pAddData = lfBuffer_835;
      10'b1101000100 : tmp_pSumArea_pAddData = lfBuffer_836;
      10'b1101000101 : tmp_pSumArea_pAddData = lfBuffer_837;
      10'b1101000110 : tmp_pSumArea_pAddData = lfBuffer_838;
      10'b1101000111 : tmp_pSumArea_pAddData = lfBuffer_839;
      10'b1101001000 : tmp_pSumArea_pAddData = lfBuffer_840;
      10'b1101001001 : tmp_pSumArea_pAddData = lfBuffer_841;
      10'b1101001010 : tmp_pSumArea_pAddData = lfBuffer_842;
      10'b1101001011 : tmp_pSumArea_pAddData = lfBuffer_843;
      10'b1101001100 : tmp_pSumArea_pAddData = lfBuffer_844;
      10'b1101001101 : tmp_pSumArea_pAddData = lfBuffer_845;
      10'b1101001110 : tmp_pSumArea_pAddData = lfBuffer_846;
      10'b1101001111 : tmp_pSumArea_pAddData = lfBuffer_847;
      10'b1101010000 : tmp_pSumArea_pAddData = lfBuffer_848;
      10'b1101010001 : tmp_pSumArea_pAddData = lfBuffer_849;
      10'b1101010010 : tmp_pSumArea_pAddData = lfBuffer_850;
      10'b1101010011 : tmp_pSumArea_pAddData = lfBuffer_851;
      10'b1101010100 : tmp_pSumArea_pAddData = lfBuffer_852;
      10'b1101010101 : tmp_pSumArea_pAddData = lfBuffer_853;
      10'b1101010110 : tmp_pSumArea_pAddData = lfBuffer_854;
      10'b1101010111 : tmp_pSumArea_pAddData = lfBuffer_855;
      10'b1101011000 : tmp_pSumArea_pAddData = lfBuffer_856;
      10'b1101011001 : tmp_pSumArea_pAddData = lfBuffer_857;
      10'b1101011010 : tmp_pSumArea_pAddData = lfBuffer_858;
      10'b1101011011 : tmp_pSumArea_pAddData = lfBuffer_859;
      10'b1101011100 : tmp_pSumArea_pAddData = lfBuffer_860;
      10'b1101011101 : tmp_pSumArea_pAddData = lfBuffer_861;
      10'b1101011110 : tmp_pSumArea_pAddData = lfBuffer_862;
      10'b1101011111 : tmp_pSumArea_pAddData = lfBuffer_863;
      10'b1101100000 : tmp_pSumArea_pAddData = lfBuffer_864;
      10'b1101100001 : tmp_pSumArea_pAddData = lfBuffer_865;
      10'b1101100010 : tmp_pSumArea_pAddData = lfBuffer_866;
      10'b1101100011 : tmp_pSumArea_pAddData = lfBuffer_867;
      10'b1101100100 : tmp_pSumArea_pAddData = lfBuffer_868;
      10'b1101100101 : tmp_pSumArea_pAddData = lfBuffer_869;
      10'b1101100110 : tmp_pSumArea_pAddData = lfBuffer_870;
      10'b1101100111 : tmp_pSumArea_pAddData = lfBuffer_871;
      10'b1101101000 : tmp_pSumArea_pAddData = lfBuffer_872;
      10'b1101101001 : tmp_pSumArea_pAddData = lfBuffer_873;
      10'b1101101010 : tmp_pSumArea_pAddData = lfBuffer_874;
      10'b1101101011 : tmp_pSumArea_pAddData = lfBuffer_875;
      10'b1101101100 : tmp_pSumArea_pAddData = lfBuffer_876;
      10'b1101101101 : tmp_pSumArea_pAddData = lfBuffer_877;
      10'b1101101110 : tmp_pSumArea_pAddData = lfBuffer_878;
      10'b1101101111 : tmp_pSumArea_pAddData = lfBuffer_879;
      10'b1101110000 : tmp_pSumArea_pAddData = lfBuffer_880;
      10'b1101110001 : tmp_pSumArea_pAddData = lfBuffer_881;
      10'b1101110010 : tmp_pSumArea_pAddData = lfBuffer_882;
      10'b1101110011 : tmp_pSumArea_pAddData = lfBuffer_883;
      10'b1101110100 : tmp_pSumArea_pAddData = lfBuffer_884;
      10'b1101110101 : tmp_pSumArea_pAddData = lfBuffer_885;
      10'b1101110110 : tmp_pSumArea_pAddData = lfBuffer_886;
      10'b1101110111 : tmp_pSumArea_pAddData = lfBuffer_887;
      10'b1101111000 : tmp_pSumArea_pAddData = lfBuffer_888;
      10'b1101111001 : tmp_pSumArea_pAddData = lfBuffer_889;
      10'b1101111010 : tmp_pSumArea_pAddData = lfBuffer_890;
      10'b1101111011 : tmp_pSumArea_pAddData = lfBuffer_891;
      10'b1101111100 : tmp_pSumArea_pAddData = lfBuffer_892;
      10'b1101111101 : tmp_pSumArea_pAddData = lfBuffer_893;
      10'b1101111110 : tmp_pSumArea_pAddData = lfBuffer_894;
      10'b1101111111 : tmp_pSumArea_pAddData = lfBuffer_895;
      10'b1110000000 : tmp_pSumArea_pAddData = lfBuffer_896;
      10'b1110000001 : tmp_pSumArea_pAddData = lfBuffer_897;
      10'b1110000010 : tmp_pSumArea_pAddData = lfBuffer_898;
      10'b1110000011 : tmp_pSumArea_pAddData = lfBuffer_899;
      10'b1110000100 : tmp_pSumArea_pAddData = lfBuffer_900;
      10'b1110000101 : tmp_pSumArea_pAddData = lfBuffer_901;
      10'b1110000110 : tmp_pSumArea_pAddData = lfBuffer_902;
      10'b1110000111 : tmp_pSumArea_pAddData = lfBuffer_903;
      10'b1110001000 : tmp_pSumArea_pAddData = lfBuffer_904;
      10'b1110001001 : tmp_pSumArea_pAddData = lfBuffer_905;
      10'b1110001010 : tmp_pSumArea_pAddData = lfBuffer_906;
      10'b1110001011 : tmp_pSumArea_pAddData = lfBuffer_907;
      10'b1110001100 : tmp_pSumArea_pAddData = lfBuffer_908;
      10'b1110001101 : tmp_pSumArea_pAddData = lfBuffer_909;
      10'b1110001110 : tmp_pSumArea_pAddData = lfBuffer_910;
      10'b1110001111 : tmp_pSumArea_pAddData = lfBuffer_911;
      10'b1110010000 : tmp_pSumArea_pAddData = lfBuffer_912;
      10'b1110010001 : tmp_pSumArea_pAddData = lfBuffer_913;
      10'b1110010010 : tmp_pSumArea_pAddData = lfBuffer_914;
      10'b1110010011 : tmp_pSumArea_pAddData = lfBuffer_915;
      10'b1110010100 : tmp_pSumArea_pAddData = lfBuffer_916;
      10'b1110010101 : tmp_pSumArea_pAddData = lfBuffer_917;
      10'b1110010110 : tmp_pSumArea_pAddData = lfBuffer_918;
      10'b1110010111 : tmp_pSumArea_pAddData = lfBuffer_919;
      10'b1110011000 : tmp_pSumArea_pAddData = lfBuffer_920;
      10'b1110011001 : tmp_pSumArea_pAddData = lfBuffer_921;
      10'b1110011010 : tmp_pSumArea_pAddData = lfBuffer_922;
      10'b1110011011 : tmp_pSumArea_pAddData = lfBuffer_923;
      10'b1110011100 : tmp_pSumArea_pAddData = lfBuffer_924;
      10'b1110011101 : tmp_pSumArea_pAddData = lfBuffer_925;
      10'b1110011110 : tmp_pSumArea_pAddData = lfBuffer_926;
      10'b1110011111 : tmp_pSumArea_pAddData = lfBuffer_927;
      10'b1110100000 : tmp_pSumArea_pAddData = lfBuffer_928;
      10'b1110100001 : tmp_pSumArea_pAddData = lfBuffer_929;
      10'b1110100010 : tmp_pSumArea_pAddData = lfBuffer_930;
      10'b1110100011 : tmp_pSumArea_pAddData = lfBuffer_931;
      10'b1110100100 : tmp_pSumArea_pAddData = lfBuffer_932;
      10'b1110100101 : tmp_pSumArea_pAddData = lfBuffer_933;
      10'b1110100110 : tmp_pSumArea_pAddData = lfBuffer_934;
      10'b1110100111 : tmp_pSumArea_pAddData = lfBuffer_935;
      10'b1110101000 : tmp_pSumArea_pAddData = lfBuffer_936;
      10'b1110101001 : tmp_pSumArea_pAddData = lfBuffer_937;
      10'b1110101010 : tmp_pSumArea_pAddData = lfBuffer_938;
      10'b1110101011 : tmp_pSumArea_pAddData = lfBuffer_939;
      10'b1110101100 : tmp_pSumArea_pAddData = lfBuffer_940;
      10'b1110101101 : tmp_pSumArea_pAddData = lfBuffer_941;
      10'b1110101110 : tmp_pSumArea_pAddData = lfBuffer_942;
      10'b1110101111 : tmp_pSumArea_pAddData = lfBuffer_943;
      10'b1110110000 : tmp_pSumArea_pAddData = lfBuffer_944;
      10'b1110110001 : tmp_pSumArea_pAddData = lfBuffer_945;
      10'b1110110010 : tmp_pSumArea_pAddData = lfBuffer_946;
      10'b1110110011 : tmp_pSumArea_pAddData = lfBuffer_947;
      10'b1110110100 : tmp_pSumArea_pAddData = lfBuffer_948;
      10'b1110110101 : tmp_pSumArea_pAddData = lfBuffer_949;
      10'b1110110110 : tmp_pSumArea_pAddData = lfBuffer_950;
      10'b1110110111 : tmp_pSumArea_pAddData = lfBuffer_951;
      10'b1110111000 : tmp_pSumArea_pAddData = lfBuffer_952;
      10'b1110111001 : tmp_pSumArea_pAddData = lfBuffer_953;
      10'b1110111010 : tmp_pSumArea_pAddData = lfBuffer_954;
      10'b1110111011 : tmp_pSumArea_pAddData = lfBuffer_955;
      10'b1110111100 : tmp_pSumArea_pAddData = lfBuffer_956;
      10'b1110111101 : tmp_pSumArea_pAddData = lfBuffer_957;
      10'b1110111110 : tmp_pSumArea_pAddData = lfBuffer_958;
      10'b1110111111 : tmp_pSumArea_pAddData = lfBuffer_959;
      10'b1111000000 : tmp_pSumArea_pAddData = lfBuffer_960;
      10'b1111000001 : tmp_pSumArea_pAddData = lfBuffer_961;
      10'b1111000010 : tmp_pSumArea_pAddData = lfBuffer_962;
      10'b1111000011 : tmp_pSumArea_pAddData = lfBuffer_963;
      10'b1111000100 : tmp_pSumArea_pAddData = lfBuffer_964;
      10'b1111000101 : tmp_pSumArea_pAddData = lfBuffer_965;
      10'b1111000110 : tmp_pSumArea_pAddData = lfBuffer_966;
      10'b1111000111 : tmp_pSumArea_pAddData = lfBuffer_967;
      10'b1111001000 : tmp_pSumArea_pAddData = lfBuffer_968;
      10'b1111001001 : tmp_pSumArea_pAddData = lfBuffer_969;
      10'b1111001010 : tmp_pSumArea_pAddData = lfBuffer_970;
      10'b1111001011 : tmp_pSumArea_pAddData = lfBuffer_971;
      10'b1111001100 : tmp_pSumArea_pAddData = lfBuffer_972;
      10'b1111001101 : tmp_pSumArea_pAddData = lfBuffer_973;
      10'b1111001110 : tmp_pSumArea_pAddData = lfBuffer_974;
      10'b1111001111 : tmp_pSumArea_pAddData = lfBuffer_975;
      10'b1111010000 : tmp_pSumArea_pAddData = lfBuffer_976;
      10'b1111010001 : tmp_pSumArea_pAddData = lfBuffer_977;
      10'b1111010010 : tmp_pSumArea_pAddData = lfBuffer_978;
      10'b1111010011 : tmp_pSumArea_pAddData = lfBuffer_979;
      10'b1111010100 : tmp_pSumArea_pAddData = lfBuffer_980;
      10'b1111010101 : tmp_pSumArea_pAddData = lfBuffer_981;
      10'b1111010110 : tmp_pSumArea_pAddData = lfBuffer_982;
      10'b1111010111 : tmp_pSumArea_pAddData = lfBuffer_983;
      10'b1111011000 : tmp_pSumArea_pAddData = lfBuffer_984;
      10'b1111011001 : tmp_pSumArea_pAddData = lfBuffer_985;
      10'b1111011010 : tmp_pSumArea_pAddData = lfBuffer_986;
      10'b1111011011 : tmp_pSumArea_pAddData = lfBuffer_987;
      10'b1111011100 : tmp_pSumArea_pAddData = lfBuffer_988;
      10'b1111011101 : tmp_pSumArea_pAddData = lfBuffer_989;
      10'b1111011110 : tmp_pSumArea_pAddData = lfBuffer_990;
      10'b1111011111 : tmp_pSumArea_pAddData = lfBuffer_991;
      10'b1111100000 : tmp_pSumArea_pAddData = lfBuffer_992;
      10'b1111100001 : tmp_pSumArea_pAddData = lfBuffer_993;
      10'b1111100010 : tmp_pSumArea_pAddData = lfBuffer_994;
      10'b1111100011 : tmp_pSumArea_pAddData = lfBuffer_995;
      10'b1111100100 : tmp_pSumArea_pAddData = lfBuffer_996;
      10'b1111100101 : tmp_pSumArea_pAddData = lfBuffer_997;
      10'b1111100110 : tmp_pSumArea_pAddData = lfBuffer_998;
      10'b1111100111 : tmp_pSumArea_pAddData = lfBuffer_999;
      10'b1111101000 : tmp_pSumArea_pAddData = lfBuffer_1000;
      10'b1111101001 : tmp_pSumArea_pAddData = lfBuffer_1001;
      10'b1111101010 : tmp_pSumArea_pAddData = lfBuffer_1002;
      10'b1111101011 : tmp_pSumArea_pAddData = lfBuffer_1003;
      10'b1111101100 : tmp_pSumArea_pAddData = lfBuffer_1004;
      10'b1111101101 : tmp_pSumArea_pAddData = lfBuffer_1005;
      10'b1111101110 : tmp_pSumArea_pAddData = lfBuffer_1006;
      10'b1111101111 : tmp_pSumArea_pAddData = lfBuffer_1007;
      10'b1111110000 : tmp_pSumArea_pAddData = lfBuffer_1008;
      10'b1111110001 : tmp_pSumArea_pAddData = lfBuffer_1009;
      10'b1111110010 : tmp_pSumArea_pAddData = lfBuffer_1010;
      10'b1111110011 : tmp_pSumArea_pAddData = lfBuffer_1011;
      10'b1111110100 : tmp_pSumArea_pAddData = lfBuffer_1012;
      10'b1111110101 : tmp_pSumArea_pAddData = lfBuffer_1013;
      10'b1111110110 : tmp_pSumArea_pAddData = lfBuffer_1014;
      10'b1111110111 : tmp_pSumArea_pAddData = lfBuffer_1015;
      10'b1111111000 : tmp_pSumArea_pAddData = lfBuffer_1016;
      10'b1111111001 : tmp_pSumArea_pAddData = lfBuffer_1017;
      10'b1111111010 : tmp_pSumArea_pAddData = lfBuffer_1018;
      10'b1111111011 : tmp_pSumArea_pAddData = lfBuffer_1019;
      10'b1111111100 : tmp_pSumArea_pAddData = lfBuffer_1020;
      10'b1111111101 : tmp_pSumArea_pAddData = lfBuffer_1021;
      10'b1111111110 : tmp_pSumArea_pAddData = lfBuffer_1022;
      default : tmp_pSumArea_pAddData = lfBuffer_1023;
    endcase
  end

  assign macSumArea_macSumEn = ((((((((macIn_0_valid || macIn_1_valid) || macIn_2_valid) || macIn_3_valid) || macIn_4_valid) || macIn_5_valid) || macIn_6_valid) || macIn_7_valid) && (! clear));
  assign pSumArea_pSumEn = (macSumArea_macSumValid && (! clear));
  assign pSumArea_last = (pSumArea_loopCnt == tmp_pSumArea_last);
  always @(*) begin
    pSumArea_pAddData = 32'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(mode)
          2'b00 : begin
            pSumArea_pAddData = 32'h0;
          end
          2'b01 : begin
            pSumArea_pAddData = tmp_pSumArea_pAddData;
          end
          2'b10 : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign when_PPUnit_l70 = (pSumArea_spLenCnt < tmp_when_PPUnit_l70);
  assign when_PPUnit_l74 = (pSumArea_loopCnt < tmp_when_PPUnit_l74);
  assign quantArea_quantEn = ((pSumArea_pSumValid && pSumArea_last) && (! clear));
  assign reluArea_reluEn = (quantArea_quantValid && (! clear));
  assign when_PPUnit_l129 = (($signed(quantArea_quantReg) < $signed(8'h0)) && relu);
  assign featureOut_payload = reluArea_reluReg;
  assign featureOut_valid = reluArea_reluValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macSumArea_macSumReg <= 32'h0;
      macSumArea_macSumValid <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      pSumArea_pSumValid <= 1'b0;
      pSumArea_spLenCnt <= 10'h0;
      pSumArea_loopCnt <= 7'h0;
      quantArea_quantReg <= 8'h0;
      quantArea_quantValid <= 1'b0;
      reluArea_reluReg <= 8'h0;
      reluArea_reluValid <= 1'b0;
    end else begin
      macSumArea_macSumValid <= macSumArea_macSumEn;
      if(macSumArea_macSumEn) begin
        macSumArea_macSumReg <= macSumArea_adderTree_dataOut[31:0];
      end
      pSumArea_pSumValid <= pSumArea_pSumEn;
      if(clear) begin
        pSumArea_spLenCnt <= 10'h0;
        pSumArea_loopCnt <= 7'h0;
      end else begin
        if(pSumArea_pSumEn) begin
          if(when_PPUnit_l70) begin
            pSumArea_spLenCnt <= (pSumArea_spLenCnt + 10'h001);
          end else begin
            pSumArea_spLenCnt <= 10'h0;
            if(when_PPUnit_l74) begin
              pSumArea_loopCnt <= (pSumArea_loopCnt + 7'h01);
            end else begin
              pSumArea_loopCnt <= 7'h0;
            end
          end
          pSumArea_pSumReg <= ($signed(macSumArea_macSumReg) + $signed(pSumArea_pAddData));
        end
      end
      quantArea_quantValid <= quantArea_quantEn;
      if(quantArea_quantEn) begin
        quantArea_quantReg <= tmp_quantArea_quantReg[7:0];
      end
      reluArea_reluValid <= reluArea_reluEn;
      if(reluArea_reluEn) begin
        if(when_PPUnit_l129) begin
          reluArea_reluReg <= 8'h0;
        end else begin
          reluArea_reluReg <= quantArea_quantReg;
        end
      end
    end
  end

  always @(posedge clk) begin
    if(clear) begin
      lfBuffer_0 <= 32'h0;
      lfBuffer_1 <= 32'h0;
      lfBuffer_2 <= 32'h0;
      lfBuffer_3 <= 32'h0;
      lfBuffer_4 <= 32'h0;
      lfBuffer_5 <= 32'h0;
      lfBuffer_6 <= 32'h0;
      lfBuffer_7 <= 32'h0;
      lfBuffer_8 <= 32'h0;
      lfBuffer_9 <= 32'h0;
      lfBuffer_10 <= 32'h0;
      lfBuffer_11 <= 32'h0;
      lfBuffer_12 <= 32'h0;
      lfBuffer_13 <= 32'h0;
      lfBuffer_14 <= 32'h0;
      lfBuffer_15 <= 32'h0;
      lfBuffer_16 <= 32'h0;
      lfBuffer_17 <= 32'h0;
      lfBuffer_18 <= 32'h0;
      lfBuffer_19 <= 32'h0;
      lfBuffer_20 <= 32'h0;
      lfBuffer_21 <= 32'h0;
      lfBuffer_22 <= 32'h0;
      lfBuffer_23 <= 32'h0;
      lfBuffer_24 <= 32'h0;
      lfBuffer_25 <= 32'h0;
      lfBuffer_26 <= 32'h0;
      lfBuffer_27 <= 32'h0;
      lfBuffer_28 <= 32'h0;
      lfBuffer_29 <= 32'h0;
      lfBuffer_30 <= 32'h0;
      lfBuffer_31 <= 32'h0;
      lfBuffer_32 <= 32'h0;
      lfBuffer_33 <= 32'h0;
      lfBuffer_34 <= 32'h0;
      lfBuffer_35 <= 32'h0;
      lfBuffer_36 <= 32'h0;
      lfBuffer_37 <= 32'h0;
      lfBuffer_38 <= 32'h0;
      lfBuffer_39 <= 32'h0;
      lfBuffer_40 <= 32'h0;
      lfBuffer_41 <= 32'h0;
      lfBuffer_42 <= 32'h0;
      lfBuffer_43 <= 32'h0;
      lfBuffer_44 <= 32'h0;
      lfBuffer_45 <= 32'h0;
      lfBuffer_46 <= 32'h0;
      lfBuffer_47 <= 32'h0;
      lfBuffer_48 <= 32'h0;
      lfBuffer_49 <= 32'h0;
      lfBuffer_50 <= 32'h0;
      lfBuffer_51 <= 32'h0;
      lfBuffer_52 <= 32'h0;
      lfBuffer_53 <= 32'h0;
      lfBuffer_54 <= 32'h0;
      lfBuffer_55 <= 32'h0;
      lfBuffer_56 <= 32'h0;
      lfBuffer_57 <= 32'h0;
      lfBuffer_58 <= 32'h0;
      lfBuffer_59 <= 32'h0;
      lfBuffer_60 <= 32'h0;
      lfBuffer_61 <= 32'h0;
      lfBuffer_62 <= 32'h0;
      lfBuffer_63 <= 32'h0;
      lfBuffer_64 <= 32'h0;
      lfBuffer_65 <= 32'h0;
      lfBuffer_66 <= 32'h0;
      lfBuffer_67 <= 32'h0;
      lfBuffer_68 <= 32'h0;
      lfBuffer_69 <= 32'h0;
      lfBuffer_70 <= 32'h0;
      lfBuffer_71 <= 32'h0;
      lfBuffer_72 <= 32'h0;
      lfBuffer_73 <= 32'h0;
      lfBuffer_74 <= 32'h0;
      lfBuffer_75 <= 32'h0;
      lfBuffer_76 <= 32'h0;
      lfBuffer_77 <= 32'h0;
      lfBuffer_78 <= 32'h0;
      lfBuffer_79 <= 32'h0;
      lfBuffer_80 <= 32'h0;
      lfBuffer_81 <= 32'h0;
      lfBuffer_82 <= 32'h0;
      lfBuffer_83 <= 32'h0;
      lfBuffer_84 <= 32'h0;
      lfBuffer_85 <= 32'h0;
      lfBuffer_86 <= 32'h0;
      lfBuffer_87 <= 32'h0;
      lfBuffer_88 <= 32'h0;
      lfBuffer_89 <= 32'h0;
      lfBuffer_90 <= 32'h0;
      lfBuffer_91 <= 32'h0;
      lfBuffer_92 <= 32'h0;
      lfBuffer_93 <= 32'h0;
      lfBuffer_94 <= 32'h0;
      lfBuffer_95 <= 32'h0;
      lfBuffer_96 <= 32'h0;
      lfBuffer_97 <= 32'h0;
      lfBuffer_98 <= 32'h0;
      lfBuffer_99 <= 32'h0;
      lfBuffer_100 <= 32'h0;
      lfBuffer_101 <= 32'h0;
      lfBuffer_102 <= 32'h0;
      lfBuffer_103 <= 32'h0;
      lfBuffer_104 <= 32'h0;
      lfBuffer_105 <= 32'h0;
      lfBuffer_106 <= 32'h0;
      lfBuffer_107 <= 32'h0;
      lfBuffer_108 <= 32'h0;
      lfBuffer_109 <= 32'h0;
      lfBuffer_110 <= 32'h0;
      lfBuffer_111 <= 32'h0;
      lfBuffer_112 <= 32'h0;
      lfBuffer_113 <= 32'h0;
      lfBuffer_114 <= 32'h0;
      lfBuffer_115 <= 32'h0;
      lfBuffer_116 <= 32'h0;
      lfBuffer_117 <= 32'h0;
      lfBuffer_118 <= 32'h0;
      lfBuffer_119 <= 32'h0;
      lfBuffer_120 <= 32'h0;
      lfBuffer_121 <= 32'h0;
      lfBuffer_122 <= 32'h0;
      lfBuffer_123 <= 32'h0;
      lfBuffer_124 <= 32'h0;
      lfBuffer_125 <= 32'h0;
      lfBuffer_126 <= 32'h0;
      lfBuffer_127 <= 32'h0;
      lfBuffer_128 <= 32'h0;
      lfBuffer_129 <= 32'h0;
      lfBuffer_130 <= 32'h0;
      lfBuffer_131 <= 32'h0;
      lfBuffer_132 <= 32'h0;
      lfBuffer_133 <= 32'h0;
      lfBuffer_134 <= 32'h0;
      lfBuffer_135 <= 32'h0;
      lfBuffer_136 <= 32'h0;
      lfBuffer_137 <= 32'h0;
      lfBuffer_138 <= 32'h0;
      lfBuffer_139 <= 32'h0;
      lfBuffer_140 <= 32'h0;
      lfBuffer_141 <= 32'h0;
      lfBuffer_142 <= 32'h0;
      lfBuffer_143 <= 32'h0;
      lfBuffer_144 <= 32'h0;
      lfBuffer_145 <= 32'h0;
      lfBuffer_146 <= 32'h0;
      lfBuffer_147 <= 32'h0;
      lfBuffer_148 <= 32'h0;
      lfBuffer_149 <= 32'h0;
      lfBuffer_150 <= 32'h0;
      lfBuffer_151 <= 32'h0;
      lfBuffer_152 <= 32'h0;
      lfBuffer_153 <= 32'h0;
      lfBuffer_154 <= 32'h0;
      lfBuffer_155 <= 32'h0;
      lfBuffer_156 <= 32'h0;
      lfBuffer_157 <= 32'h0;
      lfBuffer_158 <= 32'h0;
      lfBuffer_159 <= 32'h0;
      lfBuffer_160 <= 32'h0;
      lfBuffer_161 <= 32'h0;
      lfBuffer_162 <= 32'h0;
      lfBuffer_163 <= 32'h0;
      lfBuffer_164 <= 32'h0;
      lfBuffer_165 <= 32'h0;
      lfBuffer_166 <= 32'h0;
      lfBuffer_167 <= 32'h0;
      lfBuffer_168 <= 32'h0;
      lfBuffer_169 <= 32'h0;
      lfBuffer_170 <= 32'h0;
      lfBuffer_171 <= 32'h0;
      lfBuffer_172 <= 32'h0;
      lfBuffer_173 <= 32'h0;
      lfBuffer_174 <= 32'h0;
      lfBuffer_175 <= 32'h0;
      lfBuffer_176 <= 32'h0;
      lfBuffer_177 <= 32'h0;
      lfBuffer_178 <= 32'h0;
      lfBuffer_179 <= 32'h0;
      lfBuffer_180 <= 32'h0;
      lfBuffer_181 <= 32'h0;
      lfBuffer_182 <= 32'h0;
      lfBuffer_183 <= 32'h0;
      lfBuffer_184 <= 32'h0;
      lfBuffer_185 <= 32'h0;
      lfBuffer_186 <= 32'h0;
      lfBuffer_187 <= 32'h0;
      lfBuffer_188 <= 32'h0;
      lfBuffer_189 <= 32'h0;
      lfBuffer_190 <= 32'h0;
      lfBuffer_191 <= 32'h0;
      lfBuffer_192 <= 32'h0;
      lfBuffer_193 <= 32'h0;
      lfBuffer_194 <= 32'h0;
      lfBuffer_195 <= 32'h0;
      lfBuffer_196 <= 32'h0;
      lfBuffer_197 <= 32'h0;
      lfBuffer_198 <= 32'h0;
      lfBuffer_199 <= 32'h0;
      lfBuffer_200 <= 32'h0;
      lfBuffer_201 <= 32'h0;
      lfBuffer_202 <= 32'h0;
      lfBuffer_203 <= 32'h0;
      lfBuffer_204 <= 32'h0;
      lfBuffer_205 <= 32'h0;
      lfBuffer_206 <= 32'h0;
      lfBuffer_207 <= 32'h0;
      lfBuffer_208 <= 32'h0;
      lfBuffer_209 <= 32'h0;
      lfBuffer_210 <= 32'h0;
      lfBuffer_211 <= 32'h0;
      lfBuffer_212 <= 32'h0;
      lfBuffer_213 <= 32'h0;
      lfBuffer_214 <= 32'h0;
      lfBuffer_215 <= 32'h0;
      lfBuffer_216 <= 32'h0;
      lfBuffer_217 <= 32'h0;
      lfBuffer_218 <= 32'h0;
      lfBuffer_219 <= 32'h0;
      lfBuffer_220 <= 32'h0;
      lfBuffer_221 <= 32'h0;
      lfBuffer_222 <= 32'h0;
      lfBuffer_223 <= 32'h0;
      lfBuffer_224 <= 32'h0;
      lfBuffer_225 <= 32'h0;
      lfBuffer_226 <= 32'h0;
      lfBuffer_227 <= 32'h0;
      lfBuffer_228 <= 32'h0;
      lfBuffer_229 <= 32'h0;
      lfBuffer_230 <= 32'h0;
      lfBuffer_231 <= 32'h0;
      lfBuffer_232 <= 32'h0;
      lfBuffer_233 <= 32'h0;
      lfBuffer_234 <= 32'h0;
      lfBuffer_235 <= 32'h0;
      lfBuffer_236 <= 32'h0;
      lfBuffer_237 <= 32'h0;
      lfBuffer_238 <= 32'h0;
      lfBuffer_239 <= 32'h0;
      lfBuffer_240 <= 32'h0;
      lfBuffer_241 <= 32'h0;
      lfBuffer_242 <= 32'h0;
      lfBuffer_243 <= 32'h0;
      lfBuffer_244 <= 32'h0;
      lfBuffer_245 <= 32'h0;
      lfBuffer_246 <= 32'h0;
      lfBuffer_247 <= 32'h0;
      lfBuffer_248 <= 32'h0;
      lfBuffer_249 <= 32'h0;
      lfBuffer_250 <= 32'h0;
      lfBuffer_251 <= 32'h0;
      lfBuffer_252 <= 32'h0;
      lfBuffer_253 <= 32'h0;
      lfBuffer_254 <= 32'h0;
      lfBuffer_255 <= 32'h0;
      lfBuffer_256 <= 32'h0;
      lfBuffer_257 <= 32'h0;
      lfBuffer_258 <= 32'h0;
      lfBuffer_259 <= 32'h0;
      lfBuffer_260 <= 32'h0;
      lfBuffer_261 <= 32'h0;
      lfBuffer_262 <= 32'h0;
      lfBuffer_263 <= 32'h0;
      lfBuffer_264 <= 32'h0;
      lfBuffer_265 <= 32'h0;
      lfBuffer_266 <= 32'h0;
      lfBuffer_267 <= 32'h0;
      lfBuffer_268 <= 32'h0;
      lfBuffer_269 <= 32'h0;
      lfBuffer_270 <= 32'h0;
      lfBuffer_271 <= 32'h0;
      lfBuffer_272 <= 32'h0;
      lfBuffer_273 <= 32'h0;
      lfBuffer_274 <= 32'h0;
      lfBuffer_275 <= 32'h0;
      lfBuffer_276 <= 32'h0;
      lfBuffer_277 <= 32'h0;
      lfBuffer_278 <= 32'h0;
      lfBuffer_279 <= 32'h0;
      lfBuffer_280 <= 32'h0;
      lfBuffer_281 <= 32'h0;
      lfBuffer_282 <= 32'h0;
      lfBuffer_283 <= 32'h0;
      lfBuffer_284 <= 32'h0;
      lfBuffer_285 <= 32'h0;
      lfBuffer_286 <= 32'h0;
      lfBuffer_287 <= 32'h0;
      lfBuffer_288 <= 32'h0;
      lfBuffer_289 <= 32'h0;
      lfBuffer_290 <= 32'h0;
      lfBuffer_291 <= 32'h0;
      lfBuffer_292 <= 32'h0;
      lfBuffer_293 <= 32'h0;
      lfBuffer_294 <= 32'h0;
      lfBuffer_295 <= 32'h0;
      lfBuffer_296 <= 32'h0;
      lfBuffer_297 <= 32'h0;
      lfBuffer_298 <= 32'h0;
      lfBuffer_299 <= 32'h0;
      lfBuffer_300 <= 32'h0;
      lfBuffer_301 <= 32'h0;
      lfBuffer_302 <= 32'h0;
      lfBuffer_303 <= 32'h0;
      lfBuffer_304 <= 32'h0;
      lfBuffer_305 <= 32'h0;
      lfBuffer_306 <= 32'h0;
      lfBuffer_307 <= 32'h0;
      lfBuffer_308 <= 32'h0;
      lfBuffer_309 <= 32'h0;
      lfBuffer_310 <= 32'h0;
      lfBuffer_311 <= 32'h0;
      lfBuffer_312 <= 32'h0;
      lfBuffer_313 <= 32'h0;
      lfBuffer_314 <= 32'h0;
      lfBuffer_315 <= 32'h0;
      lfBuffer_316 <= 32'h0;
      lfBuffer_317 <= 32'h0;
      lfBuffer_318 <= 32'h0;
      lfBuffer_319 <= 32'h0;
      lfBuffer_320 <= 32'h0;
      lfBuffer_321 <= 32'h0;
      lfBuffer_322 <= 32'h0;
      lfBuffer_323 <= 32'h0;
      lfBuffer_324 <= 32'h0;
      lfBuffer_325 <= 32'h0;
      lfBuffer_326 <= 32'h0;
      lfBuffer_327 <= 32'h0;
      lfBuffer_328 <= 32'h0;
      lfBuffer_329 <= 32'h0;
      lfBuffer_330 <= 32'h0;
      lfBuffer_331 <= 32'h0;
      lfBuffer_332 <= 32'h0;
      lfBuffer_333 <= 32'h0;
      lfBuffer_334 <= 32'h0;
      lfBuffer_335 <= 32'h0;
      lfBuffer_336 <= 32'h0;
      lfBuffer_337 <= 32'h0;
      lfBuffer_338 <= 32'h0;
      lfBuffer_339 <= 32'h0;
      lfBuffer_340 <= 32'h0;
      lfBuffer_341 <= 32'h0;
      lfBuffer_342 <= 32'h0;
      lfBuffer_343 <= 32'h0;
      lfBuffer_344 <= 32'h0;
      lfBuffer_345 <= 32'h0;
      lfBuffer_346 <= 32'h0;
      lfBuffer_347 <= 32'h0;
      lfBuffer_348 <= 32'h0;
      lfBuffer_349 <= 32'h0;
      lfBuffer_350 <= 32'h0;
      lfBuffer_351 <= 32'h0;
      lfBuffer_352 <= 32'h0;
      lfBuffer_353 <= 32'h0;
      lfBuffer_354 <= 32'h0;
      lfBuffer_355 <= 32'h0;
      lfBuffer_356 <= 32'h0;
      lfBuffer_357 <= 32'h0;
      lfBuffer_358 <= 32'h0;
      lfBuffer_359 <= 32'h0;
      lfBuffer_360 <= 32'h0;
      lfBuffer_361 <= 32'h0;
      lfBuffer_362 <= 32'h0;
      lfBuffer_363 <= 32'h0;
      lfBuffer_364 <= 32'h0;
      lfBuffer_365 <= 32'h0;
      lfBuffer_366 <= 32'h0;
      lfBuffer_367 <= 32'h0;
      lfBuffer_368 <= 32'h0;
      lfBuffer_369 <= 32'h0;
      lfBuffer_370 <= 32'h0;
      lfBuffer_371 <= 32'h0;
      lfBuffer_372 <= 32'h0;
      lfBuffer_373 <= 32'h0;
      lfBuffer_374 <= 32'h0;
      lfBuffer_375 <= 32'h0;
      lfBuffer_376 <= 32'h0;
      lfBuffer_377 <= 32'h0;
      lfBuffer_378 <= 32'h0;
      lfBuffer_379 <= 32'h0;
      lfBuffer_380 <= 32'h0;
      lfBuffer_381 <= 32'h0;
      lfBuffer_382 <= 32'h0;
      lfBuffer_383 <= 32'h0;
      lfBuffer_384 <= 32'h0;
      lfBuffer_385 <= 32'h0;
      lfBuffer_386 <= 32'h0;
      lfBuffer_387 <= 32'h0;
      lfBuffer_388 <= 32'h0;
      lfBuffer_389 <= 32'h0;
      lfBuffer_390 <= 32'h0;
      lfBuffer_391 <= 32'h0;
      lfBuffer_392 <= 32'h0;
      lfBuffer_393 <= 32'h0;
      lfBuffer_394 <= 32'h0;
      lfBuffer_395 <= 32'h0;
      lfBuffer_396 <= 32'h0;
      lfBuffer_397 <= 32'h0;
      lfBuffer_398 <= 32'h0;
      lfBuffer_399 <= 32'h0;
      lfBuffer_400 <= 32'h0;
      lfBuffer_401 <= 32'h0;
      lfBuffer_402 <= 32'h0;
      lfBuffer_403 <= 32'h0;
      lfBuffer_404 <= 32'h0;
      lfBuffer_405 <= 32'h0;
      lfBuffer_406 <= 32'h0;
      lfBuffer_407 <= 32'h0;
      lfBuffer_408 <= 32'h0;
      lfBuffer_409 <= 32'h0;
      lfBuffer_410 <= 32'h0;
      lfBuffer_411 <= 32'h0;
      lfBuffer_412 <= 32'h0;
      lfBuffer_413 <= 32'h0;
      lfBuffer_414 <= 32'h0;
      lfBuffer_415 <= 32'h0;
      lfBuffer_416 <= 32'h0;
      lfBuffer_417 <= 32'h0;
      lfBuffer_418 <= 32'h0;
      lfBuffer_419 <= 32'h0;
      lfBuffer_420 <= 32'h0;
      lfBuffer_421 <= 32'h0;
      lfBuffer_422 <= 32'h0;
      lfBuffer_423 <= 32'h0;
      lfBuffer_424 <= 32'h0;
      lfBuffer_425 <= 32'h0;
      lfBuffer_426 <= 32'h0;
      lfBuffer_427 <= 32'h0;
      lfBuffer_428 <= 32'h0;
      lfBuffer_429 <= 32'h0;
      lfBuffer_430 <= 32'h0;
      lfBuffer_431 <= 32'h0;
      lfBuffer_432 <= 32'h0;
      lfBuffer_433 <= 32'h0;
      lfBuffer_434 <= 32'h0;
      lfBuffer_435 <= 32'h0;
      lfBuffer_436 <= 32'h0;
      lfBuffer_437 <= 32'h0;
      lfBuffer_438 <= 32'h0;
      lfBuffer_439 <= 32'h0;
      lfBuffer_440 <= 32'h0;
      lfBuffer_441 <= 32'h0;
      lfBuffer_442 <= 32'h0;
      lfBuffer_443 <= 32'h0;
      lfBuffer_444 <= 32'h0;
      lfBuffer_445 <= 32'h0;
      lfBuffer_446 <= 32'h0;
      lfBuffer_447 <= 32'h0;
      lfBuffer_448 <= 32'h0;
      lfBuffer_449 <= 32'h0;
      lfBuffer_450 <= 32'h0;
      lfBuffer_451 <= 32'h0;
      lfBuffer_452 <= 32'h0;
      lfBuffer_453 <= 32'h0;
      lfBuffer_454 <= 32'h0;
      lfBuffer_455 <= 32'h0;
      lfBuffer_456 <= 32'h0;
      lfBuffer_457 <= 32'h0;
      lfBuffer_458 <= 32'h0;
      lfBuffer_459 <= 32'h0;
      lfBuffer_460 <= 32'h0;
      lfBuffer_461 <= 32'h0;
      lfBuffer_462 <= 32'h0;
      lfBuffer_463 <= 32'h0;
      lfBuffer_464 <= 32'h0;
      lfBuffer_465 <= 32'h0;
      lfBuffer_466 <= 32'h0;
      lfBuffer_467 <= 32'h0;
      lfBuffer_468 <= 32'h0;
      lfBuffer_469 <= 32'h0;
      lfBuffer_470 <= 32'h0;
      lfBuffer_471 <= 32'h0;
      lfBuffer_472 <= 32'h0;
      lfBuffer_473 <= 32'h0;
      lfBuffer_474 <= 32'h0;
      lfBuffer_475 <= 32'h0;
      lfBuffer_476 <= 32'h0;
      lfBuffer_477 <= 32'h0;
      lfBuffer_478 <= 32'h0;
      lfBuffer_479 <= 32'h0;
      lfBuffer_480 <= 32'h0;
      lfBuffer_481 <= 32'h0;
      lfBuffer_482 <= 32'h0;
      lfBuffer_483 <= 32'h0;
      lfBuffer_484 <= 32'h0;
      lfBuffer_485 <= 32'h0;
      lfBuffer_486 <= 32'h0;
      lfBuffer_487 <= 32'h0;
      lfBuffer_488 <= 32'h0;
      lfBuffer_489 <= 32'h0;
      lfBuffer_490 <= 32'h0;
      lfBuffer_491 <= 32'h0;
      lfBuffer_492 <= 32'h0;
      lfBuffer_493 <= 32'h0;
      lfBuffer_494 <= 32'h0;
      lfBuffer_495 <= 32'h0;
      lfBuffer_496 <= 32'h0;
      lfBuffer_497 <= 32'h0;
      lfBuffer_498 <= 32'h0;
      lfBuffer_499 <= 32'h0;
      lfBuffer_500 <= 32'h0;
      lfBuffer_501 <= 32'h0;
      lfBuffer_502 <= 32'h0;
      lfBuffer_503 <= 32'h0;
      lfBuffer_504 <= 32'h0;
      lfBuffer_505 <= 32'h0;
      lfBuffer_506 <= 32'h0;
      lfBuffer_507 <= 32'h0;
      lfBuffer_508 <= 32'h0;
      lfBuffer_509 <= 32'h0;
      lfBuffer_510 <= 32'h0;
      lfBuffer_511 <= 32'h0;
      lfBuffer_512 <= 32'h0;
      lfBuffer_513 <= 32'h0;
      lfBuffer_514 <= 32'h0;
      lfBuffer_515 <= 32'h0;
      lfBuffer_516 <= 32'h0;
      lfBuffer_517 <= 32'h0;
      lfBuffer_518 <= 32'h0;
      lfBuffer_519 <= 32'h0;
      lfBuffer_520 <= 32'h0;
      lfBuffer_521 <= 32'h0;
      lfBuffer_522 <= 32'h0;
      lfBuffer_523 <= 32'h0;
      lfBuffer_524 <= 32'h0;
      lfBuffer_525 <= 32'h0;
      lfBuffer_526 <= 32'h0;
      lfBuffer_527 <= 32'h0;
      lfBuffer_528 <= 32'h0;
      lfBuffer_529 <= 32'h0;
      lfBuffer_530 <= 32'h0;
      lfBuffer_531 <= 32'h0;
      lfBuffer_532 <= 32'h0;
      lfBuffer_533 <= 32'h0;
      lfBuffer_534 <= 32'h0;
      lfBuffer_535 <= 32'h0;
      lfBuffer_536 <= 32'h0;
      lfBuffer_537 <= 32'h0;
      lfBuffer_538 <= 32'h0;
      lfBuffer_539 <= 32'h0;
      lfBuffer_540 <= 32'h0;
      lfBuffer_541 <= 32'h0;
      lfBuffer_542 <= 32'h0;
      lfBuffer_543 <= 32'h0;
      lfBuffer_544 <= 32'h0;
      lfBuffer_545 <= 32'h0;
      lfBuffer_546 <= 32'h0;
      lfBuffer_547 <= 32'h0;
      lfBuffer_548 <= 32'h0;
      lfBuffer_549 <= 32'h0;
      lfBuffer_550 <= 32'h0;
      lfBuffer_551 <= 32'h0;
      lfBuffer_552 <= 32'h0;
      lfBuffer_553 <= 32'h0;
      lfBuffer_554 <= 32'h0;
      lfBuffer_555 <= 32'h0;
      lfBuffer_556 <= 32'h0;
      lfBuffer_557 <= 32'h0;
      lfBuffer_558 <= 32'h0;
      lfBuffer_559 <= 32'h0;
      lfBuffer_560 <= 32'h0;
      lfBuffer_561 <= 32'h0;
      lfBuffer_562 <= 32'h0;
      lfBuffer_563 <= 32'h0;
      lfBuffer_564 <= 32'h0;
      lfBuffer_565 <= 32'h0;
      lfBuffer_566 <= 32'h0;
      lfBuffer_567 <= 32'h0;
      lfBuffer_568 <= 32'h0;
      lfBuffer_569 <= 32'h0;
      lfBuffer_570 <= 32'h0;
      lfBuffer_571 <= 32'h0;
      lfBuffer_572 <= 32'h0;
      lfBuffer_573 <= 32'h0;
      lfBuffer_574 <= 32'h0;
      lfBuffer_575 <= 32'h0;
      lfBuffer_576 <= 32'h0;
      lfBuffer_577 <= 32'h0;
      lfBuffer_578 <= 32'h0;
      lfBuffer_579 <= 32'h0;
      lfBuffer_580 <= 32'h0;
      lfBuffer_581 <= 32'h0;
      lfBuffer_582 <= 32'h0;
      lfBuffer_583 <= 32'h0;
      lfBuffer_584 <= 32'h0;
      lfBuffer_585 <= 32'h0;
      lfBuffer_586 <= 32'h0;
      lfBuffer_587 <= 32'h0;
      lfBuffer_588 <= 32'h0;
      lfBuffer_589 <= 32'h0;
      lfBuffer_590 <= 32'h0;
      lfBuffer_591 <= 32'h0;
      lfBuffer_592 <= 32'h0;
      lfBuffer_593 <= 32'h0;
      lfBuffer_594 <= 32'h0;
      lfBuffer_595 <= 32'h0;
      lfBuffer_596 <= 32'h0;
      lfBuffer_597 <= 32'h0;
      lfBuffer_598 <= 32'h0;
      lfBuffer_599 <= 32'h0;
      lfBuffer_600 <= 32'h0;
      lfBuffer_601 <= 32'h0;
      lfBuffer_602 <= 32'h0;
      lfBuffer_603 <= 32'h0;
      lfBuffer_604 <= 32'h0;
      lfBuffer_605 <= 32'h0;
      lfBuffer_606 <= 32'h0;
      lfBuffer_607 <= 32'h0;
      lfBuffer_608 <= 32'h0;
      lfBuffer_609 <= 32'h0;
      lfBuffer_610 <= 32'h0;
      lfBuffer_611 <= 32'h0;
      lfBuffer_612 <= 32'h0;
      lfBuffer_613 <= 32'h0;
      lfBuffer_614 <= 32'h0;
      lfBuffer_615 <= 32'h0;
      lfBuffer_616 <= 32'h0;
      lfBuffer_617 <= 32'h0;
      lfBuffer_618 <= 32'h0;
      lfBuffer_619 <= 32'h0;
      lfBuffer_620 <= 32'h0;
      lfBuffer_621 <= 32'h0;
      lfBuffer_622 <= 32'h0;
      lfBuffer_623 <= 32'h0;
      lfBuffer_624 <= 32'h0;
      lfBuffer_625 <= 32'h0;
      lfBuffer_626 <= 32'h0;
      lfBuffer_627 <= 32'h0;
      lfBuffer_628 <= 32'h0;
      lfBuffer_629 <= 32'h0;
      lfBuffer_630 <= 32'h0;
      lfBuffer_631 <= 32'h0;
      lfBuffer_632 <= 32'h0;
      lfBuffer_633 <= 32'h0;
      lfBuffer_634 <= 32'h0;
      lfBuffer_635 <= 32'h0;
      lfBuffer_636 <= 32'h0;
      lfBuffer_637 <= 32'h0;
      lfBuffer_638 <= 32'h0;
      lfBuffer_639 <= 32'h0;
      lfBuffer_640 <= 32'h0;
      lfBuffer_641 <= 32'h0;
      lfBuffer_642 <= 32'h0;
      lfBuffer_643 <= 32'h0;
      lfBuffer_644 <= 32'h0;
      lfBuffer_645 <= 32'h0;
      lfBuffer_646 <= 32'h0;
      lfBuffer_647 <= 32'h0;
      lfBuffer_648 <= 32'h0;
      lfBuffer_649 <= 32'h0;
      lfBuffer_650 <= 32'h0;
      lfBuffer_651 <= 32'h0;
      lfBuffer_652 <= 32'h0;
      lfBuffer_653 <= 32'h0;
      lfBuffer_654 <= 32'h0;
      lfBuffer_655 <= 32'h0;
      lfBuffer_656 <= 32'h0;
      lfBuffer_657 <= 32'h0;
      lfBuffer_658 <= 32'h0;
      lfBuffer_659 <= 32'h0;
      lfBuffer_660 <= 32'h0;
      lfBuffer_661 <= 32'h0;
      lfBuffer_662 <= 32'h0;
      lfBuffer_663 <= 32'h0;
      lfBuffer_664 <= 32'h0;
      lfBuffer_665 <= 32'h0;
      lfBuffer_666 <= 32'h0;
      lfBuffer_667 <= 32'h0;
      lfBuffer_668 <= 32'h0;
      lfBuffer_669 <= 32'h0;
      lfBuffer_670 <= 32'h0;
      lfBuffer_671 <= 32'h0;
      lfBuffer_672 <= 32'h0;
      lfBuffer_673 <= 32'h0;
      lfBuffer_674 <= 32'h0;
      lfBuffer_675 <= 32'h0;
      lfBuffer_676 <= 32'h0;
      lfBuffer_677 <= 32'h0;
      lfBuffer_678 <= 32'h0;
      lfBuffer_679 <= 32'h0;
      lfBuffer_680 <= 32'h0;
      lfBuffer_681 <= 32'h0;
      lfBuffer_682 <= 32'h0;
      lfBuffer_683 <= 32'h0;
      lfBuffer_684 <= 32'h0;
      lfBuffer_685 <= 32'h0;
      lfBuffer_686 <= 32'h0;
      lfBuffer_687 <= 32'h0;
      lfBuffer_688 <= 32'h0;
      lfBuffer_689 <= 32'h0;
      lfBuffer_690 <= 32'h0;
      lfBuffer_691 <= 32'h0;
      lfBuffer_692 <= 32'h0;
      lfBuffer_693 <= 32'h0;
      lfBuffer_694 <= 32'h0;
      lfBuffer_695 <= 32'h0;
      lfBuffer_696 <= 32'h0;
      lfBuffer_697 <= 32'h0;
      lfBuffer_698 <= 32'h0;
      lfBuffer_699 <= 32'h0;
      lfBuffer_700 <= 32'h0;
      lfBuffer_701 <= 32'h0;
      lfBuffer_702 <= 32'h0;
      lfBuffer_703 <= 32'h0;
      lfBuffer_704 <= 32'h0;
      lfBuffer_705 <= 32'h0;
      lfBuffer_706 <= 32'h0;
      lfBuffer_707 <= 32'h0;
      lfBuffer_708 <= 32'h0;
      lfBuffer_709 <= 32'h0;
      lfBuffer_710 <= 32'h0;
      lfBuffer_711 <= 32'h0;
      lfBuffer_712 <= 32'h0;
      lfBuffer_713 <= 32'h0;
      lfBuffer_714 <= 32'h0;
      lfBuffer_715 <= 32'h0;
      lfBuffer_716 <= 32'h0;
      lfBuffer_717 <= 32'h0;
      lfBuffer_718 <= 32'h0;
      lfBuffer_719 <= 32'h0;
      lfBuffer_720 <= 32'h0;
      lfBuffer_721 <= 32'h0;
      lfBuffer_722 <= 32'h0;
      lfBuffer_723 <= 32'h0;
      lfBuffer_724 <= 32'h0;
      lfBuffer_725 <= 32'h0;
      lfBuffer_726 <= 32'h0;
      lfBuffer_727 <= 32'h0;
      lfBuffer_728 <= 32'h0;
      lfBuffer_729 <= 32'h0;
      lfBuffer_730 <= 32'h0;
      lfBuffer_731 <= 32'h0;
      lfBuffer_732 <= 32'h0;
      lfBuffer_733 <= 32'h0;
      lfBuffer_734 <= 32'h0;
      lfBuffer_735 <= 32'h0;
      lfBuffer_736 <= 32'h0;
      lfBuffer_737 <= 32'h0;
      lfBuffer_738 <= 32'h0;
      lfBuffer_739 <= 32'h0;
      lfBuffer_740 <= 32'h0;
      lfBuffer_741 <= 32'h0;
      lfBuffer_742 <= 32'h0;
      lfBuffer_743 <= 32'h0;
      lfBuffer_744 <= 32'h0;
      lfBuffer_745 <= 32'h0;
      lfBuffer_746 <= 32'h0;
      lfBuffer_747 <= 32'h0;
      lfBuffer_748 <= 32'h0;
      lfBuffer_749 <= 32'h0;
      lfBuffer_750 <= 32'h0;
      lfBuffer_751 <= 32'h0;
      lfBuffer_752 <= 32'h0;
      lfBuffer_753 <= 32'h0;
      lfBuffer_754 <= 32'h0;
      lfBuffer_755 <= 32'h0;
      lfBuffer_756 <= 32'h0;
      lfBuffer_757 <= 32'h0;
      lfBuffer_758 <= 32'h0;
      lfBuffer_759 <= 32'h0;
      lfBuffer_760 <= 32'h0;
      lfBuffer_761 <= 32'h0;
      lfBuffer_762 <= 32'h0;
      lfBuffer_763 <= 32'h0;
      lfBuffer_764 <= 32'h0;
      lfBuffer_765 <= 32'h0;
      lfBuffer_766 <= 32'h0;
      lfBuffer_767 <= 32'h0;
      lfBuffer_768 <= 32'h0;
      lfBuffer_769 <= 32'h0;
      lfBuffer_770 <= 32'h0;
      lfBuffer_771 <= 32'h0;
      lfBuffer_772 <= 32'h0;
      lfBuffer_773 <= 32'h0;
      lfBuffer_774 <= 32'h0;
      lfBuffer_775 <= 32'h0;
      lfBuffer_776 <= 32'h0;
      lfBuffer_777 <= 32'h0;
      lfBuffer_778 <= 32'h0;
      lfBuffer_779 <= 32'h0;
      lfBuffer_780 <= 32'h0;
      lfBuffer_781 <= 32'h0;
      lfBuffer_782 <= 32'h0;
      lfBuffer_783 <= 32'h0;
      lfBuffer_784 <= 32'h0;
      lfBuffer_785 <= 32'h0;
      lfBuffer_786 <= 32'h0;
      lfBuffer_787 <= 32'h0;
      lfBuffer_788 <= 32'h0;
      lfBuffer_789 <= 32'h0;
      lfBuffer_790 <= 32'h0;
      lfBuffer_791 <= 32'h0;
      lfBuffer_792 <= 32'h0;
      lfBuffer_793 <= 32'h0;
      lfBuffer_794 <= 32'h0;
      lfBuffer_795 <= 32'h0;
      lfBuffer_796 <= 32'h0;
      lfBuffer_797 <= 32'h0;
      lfBuffer_798 <= 32'h0;
      lfBuffer_799 <= 32'h0;
      lfBuffer_800 <= 32'h0;
      lfBuffer_801 <= 32'h0;
      lfBuffer_802 <= 32'h0;
      lfBuffer_803 <= 32'h0;
      lfBuffer_804 <= 32'h0;
      lfBuffer_805 <= 32'h0;
      lfBuffer_806 <= 32'h0;
      lfBuffer_807 <= 32'h0;
      lfBuffer_808 <= 32'h0;
      lfBuffer_809 <= 32'h0;
      lfBuffer_810 <= 32'h0;
      lfBuffer_811 <= 32'h0;
      lfBuffer_812 <= 32'h0;
      lfBuffer_813 <= 32'h0;
      lfBuffer_814 <= 32'h0;
      lfBuffer_815 <= 32'h0;
      lfBuffer_816 <= 32'h0;
      lfBuffer_817 <= 32'h0;
      lfBuffer_818 <= 32'h0;
      lfBuffer_819 <= 32'h0;
      lfBuffer_820 <= 32'h0;
      lfBuffer_821 <= 32'h0;
      lfBuffer_822 <= 32'h0;
      lfBuffer_823 <= 32'h0;
      lfBuffer_824 <= 32'h0;
      lfBuffer_825 <= 32'h0;
      lfBuffer_826 <= 32'h0;
      lfBuffer_827 <= 32'h0;
      lfBuffer_828 <= 32'h0;
      lfBuffer_829 <= 32'h0;
      lfBuffer_830 <= 32'h0;
      lfBuffer_831 <= 32'h0;
      lfBuffer_832 <= 32'h0;
      lfBuffer_833 <= 32'h0;
      lfBuffer_834 <= 32'h0;
      lfBuffer_835 <= 32'h0;
      lfBuffer_836 <= 32'h0;
      lfBuffer_837 <= 32'h0;
      lfBuffer_838 <= 32'h0;
      lfBuffer_839 <= 32'h0;
      lfBuffer_840 <= 32'h0;
      lfBuffer_841 <= 32'h0;
      lfBuffer_842 <= 32'h0;
      lfBuffer_843 <= 32'h0;
      lfBuffer_844 <= 32'h0;
      lfBuffer_845 <= 32'h0;
      lfBuffer_846 <= 32'h0;
      lfBuffer_847 <= 32'h0;
      lfBuffer_848 <= 32'h0;
      lfBuffer_849 <= 32'h0;
      lfBuffer_850 <= 32'h0;
      lfBuffer_851 <= 32'h0;
      lfBuffer_852 <= 32'h0;
      lfBuffer_853 <= 32'h0;
      lfBuffer_854 <= 32'h0;
      lfBuffer_855 <= 32'h0;
      lfBuffer_856 <= 32'h0;
      lfBuffer_857 <= 32'h0;
      lfBuffer_858 <= 32'h0;
      lfBuffer_859 <= 32'h0;
      lfBuffer_860 <= 32'h0;
      lfBuffer_861 <= 32'h0;
      lfBuffer_862 <= 32'h0;
      lfBuffer_863 <= 32'h0;
      lfBuffer_864 <= 32'h0;
      lfBuffer_865 <= 32'h0;
      lfBuffer_866 <= 32'h0;
      lfBuffer_867 <= 32'h0;
      lfBuffer_868 <= 32'h0;
      lfBuffer_869 <= 32'h0;
      lfBuffer_870 <= 32'h0;
      lfBuffer_871 <= 32'h0;
      lfBuffer_872 <= 32'h0;
      lfBuffer_873 <= 32'h0;
      lfBuffer_874 <= 32'h0;
      lfBuffer_875 <= 32'h0;
      lfBuffer_876 <= 32'h0;
      lfBuffer_877 <= 32'h0;
      lfBuffer_878 <= 32'h0;
      lfBuffer_879 <= 32'h0;
      lfBuffer_880 <= 32'h0;
      lfBuffer_881 <= 32'h0;
      lfBuffer_882 <= 32'h0;
      lfBuffer_883 <= 32'h0;
      lfBuffer_884 <= 32'h0;
      lfBuffer_885 <= 32'h0;
      lfBuffer_886 <= 32'h0;
      lfBuffer_887 <= 32'h0;
      lfBuffer_888 <= 32'h0;
      lfBuffer_889 <= 32'h0;
      lfBuffer_890 <= 32'h0;
      lfBuffer_891 <= 32'h0;
      lfBuffer_892 <= 32'h0;
      lfBuffer_893 <= 32'h0;
      lfBuffer_894 <= 32'h0;
      lfBuffer_895 <= 32'h0;
      lfBuffer_896 <= 32'h0;
      lfBuffer_897 <= 32'h0;
      lfBuffer_898 <= 32'h0;
      lfBuffer_899 <= 32'h0;
      lfBuffer_900 <= 32'h0;
      lfBuffer_901 <= 32'h0;
      lfBuffer_902 <= 32'h0;
      lfBuffer_903 <= 32'h0;
      lfBuffer_904 <= 32'h0;
      lfBuffer_905 <= 32'h0;
      lfBuffer_906 <= 32'h0;
      lfBuffer_907 <= 32'h0;
      lfBuffer_908 <= 32'h0;
      lfBuffer_909 <= 32'h0;
      lfBuffer_910 <= 32'h0;
      lfBuffer_911 <= 32'h0;
      lfBuffer_912 <= 32'h0;
      lfBuffer_913 <= 32'h0;
      lfBuffer_914 <= 32'h0;
      lfBuffer_915 <= 32'h0;
      lfBuffer_916 <= 32'h0;
      lfBuffer_917 <= 32'h0;
      lfBuffer_918 <= 32'h0;
      lfBuffer_919 <= 32'h0;
      lfBuffer_920 <= 32'h0;
      lfBuffer_921 <= 32'h0;
      lfBuffer_922 <= 32'h0;
      lfBuffer_923 <= 32'h0;
      lfBuffer_924 <= 32'h0;
      lfBuffer_925 <= 32'h0;
      lfBuffer_926 <= 32'h0;
      lfBuffer_927 <= 32'h0;
      lfBuffer_928 <= 32'h0;
      lfBuffer_929 <= 32'h0;
      lfBuffer_930 <= 32'h0;
      lfBuffer_931 <= 32'h0;
      lfBuffer_932 <= 32'h0;
      lfBuffer_933 <= 32'h0;
      lfBuffer_934 <= 32'h0;
      lfBuffer_935 <= 32'h0;
      lfBuffer_936 <= 32'h0;
      lfBuffer_937 <= 32'h0;
      lfBuffer_938 <= 32'h0;
      lfBuffer_939 <= 32'h0;
      lfBuffer_940 <= 32'h0;
      lfBuffer_941 <= 32'h0;
      lfBuffer_942 <= 32'h0;
      lfBuffer_943 <= 32'h0;
      lfBuffer_944 <= 32'h0;
      lfBuffer_945 <= 32'h0;
      lfBuffer_946 <= 32'h0;
      lfBuffer_947 <= 32'h0;
      lfBuffer_948 <= 32'h0;
      lfBuffer_949 <= 32'h0;
      lfBuffer_950 <= 32'h0;
      lfBuffer_951 <= 32'h0;
      lfBuffer_952 <= 32'h0;
      lfBuffer_953 <= 32'h0;
      lfBuffer_954 <= 32'h0;
      lfBuffer_955 <= 32'h0;
      lfBuffer_956 <= 32'h0;
      lfBuffer_957 <= 32'h0;
      lfBuffer_958 <= 32'h0;
      lfBuffer_959 <= 32'h0;
      lfBuffer_960 <= 32'h0;
      lfBuffer_961 <= 32'h0;
      lfBuffer_962 <= 32'h0;
      lfBuffer_963 <= 32'h0;
      lfBuffer_964 <= 32'h0;
      lfBuffer_965 <= 32'h0;
      lfBuffer_966 <= 32'h0;
      lfBuffer_967 <= 32'h0;
      lfBuffer_968 <= 32'h0;
      lfBuffer_969 <= 32'h0;
      lfBuffer_970 <= 32'h0;
      lfBuffer_971 <= 32'h0;
      lfBuffer_972 <= 32'h0;
      lfBuffer_973 <= 32'h0;
      lfBuffer_974 <= 32'h0;
      lfBuffer_975 <= 32'h0;
      lfBuffer_976 <= 32'h0;
      lfBuffer_977 <= 32'h0;
      lfBuffer_978 <= 32'h0;
      lfBuffer_979 <= 32'h0;
      lfBuffer_980 <= 32'h0;
      lfBuffer_981 <= 32'h0;
      lfBuffer_982 <= 32'h0;
      lfBuffer_983 <= 32'h0;
      lfBuffer_984 <= 32'h0;
      lfBuffer_985 <= 32'h0;
      lfBuffer_986 <= 32'h0;
      lfBuffer_987 <= 32'h0;
      lfBuffer_988 <= 32'h0;
      lfBuffer_989 <= 32'h0;
      lfBuffer_990 <= 32'h0;
      lfBuffer_991 <= 32'h0;
      lfBuffer_992 <= 32'h0;
      lfBuffer_993 <= 32'h0;
      lfBuffer_994 <= 32'h0;
      lfBuffer_995 <= 32'h0;
      lfBuffer_996 <= 32'h0;
      lfBuffer_997 <= 32'h0;
      lfBuffer_998 <= 32'h0;
      lfBuffer_999 <= 32'h0;
      lfBuffer_1000 <= 32'h0;
      lfBuffer_1001 <= 32'h0;
      lfBuffer_1002 <= 32'h0;
      lfBuffer_1003 <= 32'h0;
      lfBuffer_1004 <= 32'h0;
      lfBuffer_1005 <= 32'h0;
      lfBuffer_1006 <= 32'h0;
      lfBuffer_1007 <= 32'h0;
      lfBuffer_1008 <= 32'h0;
      lfBuffer_1009 <= 32'h0;
      lfBuffer_1010 <= 32'h0;
      lfBuffer_1011 <= 32'h0;
      lfBuffer_1012 <= 32'h0;
      lfBuffer_1013 <= 32'h0;
      lfBuffer_1014 <= 32'h0;
      lfBuffer_1015 <= 32'h0;
      lfBuffer_1016 <= 32'h0;
      lfBuffer_1017 <= 32'h0;
      lfBuffer_1018 <= 32'h0;
      lfBuffer_1019 <= 32'h0;
      lfBuffer_1020 <= 32'h0;
      lfBuffer_1021 <= 32'h0;
      lfBuffer_1022 <= 32'h0;
      lfBuffer_1023 <= 32'h0;
    end
  end


endmodule

//PECore_63 replaced by PECore

//PECore_62 replaced by PECore

//PECore_61 replaced by PECore

//PECore_60 replaced by PECore

//PECore_59 replaced by PECore

//PECore_58 replaced by PECore

//PECore_57 replaced by PECore

//PECore_56 replaced by PECore

//PECore_55 replaced by PECore

//PECore_54 replaced by PECore

//PECore_53 replaced by PECore

//PECore_52 replaced by PECore

//PECore_51 replaced by PECore

//PECore_50 replaced by PECore

//PECore_49 replaced by PECore

//PECore_48 replaced by PECore

//PECore_47 replaced by PECore

//PECore_46 replaced by PECore

//PECore_45 replaced by PECore

//PECore_44 replaced by PECore

//PECore_43 replaced by PECore

//PECore_42 replaced by PECore

//PECore_41 replaced by PECore

//PECore_40 replaced by PECore

//PECore_39 replaced by PECore

//PECore_38 replaced by PECore

//PECore_37 replaced by PECore

//PECore_36 replaced by PECore

//PECore_35 replaced by PECore

//PECore_34 replaced by PECore

//PECore_33 replaced by PECore

//PECore_32 replaced by PECore

//PECore_31 replaced by PECore

//PECore_30 replaced by PECore

//PECore_29 replaced by PECore

//PECore_28 replaced by PECore

//PECore_27 replaced by PECore

//PECore_26 replaced by PECore

//PECore_25 replaced by PECore

//PECore_24 replaced by PECore

//PECore_23 replaced by PECore

//PECore_22 replaced by PECore

//PECore_21 replaced by PECore

//PECore_20 replaced by PECore

//PECore_19 replaced by PECore

//PECore_18 replaced by PECore

//PECore_17 replaced by PECore

//PECore_16 replaced by PECore

//PECore_15 replaced by PECore

//PECore_14 replaced by PECore

//PECore_13 replaced by PECore

//PECore_12 replaced by PECore

//PECore_11 replaced by PECore

//PECore_10 replaced by PECore

//PECore_9 replaced by PECore

//PECore_8 replaced by PECore

//PECore_7 replaced by PECore

//PECore_6 replaced by PECore

//PECore_5 replaced by PECore

//PECore_4 replaced by PECore

//PECore_3 replaced by PECore

//PECore_2 replaced by PECore

//PECore_1 replaced by PECore

module PECore (
  input  wire          clear,
  input  wire [2:0]    mode,
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

  wire       [31:0]   tmp_macReg;
  reg        [31:0]   macReg;
  reg        [15:0]   mulData;
  reg        [15:0]   macData;
  wire                weight_fire;
  wire                featureIn_fire;
  wire                macEn;
  reg                 macEn_regNext;
  wire                when_PECore_l59;
  wire                when_PECore_l64;
  wire                when_PECore_l69;

  assign tmp_macReg = {{16{macData[15]}}, macData};
  assign weight_fire = (weight_valid && weight_ready);
  assign featureIn_fire = (featureIn_valid && featureIn_ready);
  assign macEn = (weight_fire && featureIn_fire);
  always @(*) begin
    mulData = 16'h0;
    if(!clear) begin
      if(macEn) begin
        if(when_PECore_l59) begin
          mulData = ($signed(featureIn_payload) * $signed(weight_payload));
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
        if(when_PECore_l64) begin
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

  assign weight_ready = featureIn_valid;
  assign featureIn_ready = weight_valid;
  assign macOut_valid = macEn_regNext;
  assign when_PECore_l59 = mode[0];
  assign when_PECore_l64 = mode[1];
  assign when_PECore_l69 = mode[2];
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
          if(when_PECore_l69) begin
            macReg <= ($signed(tmp_macReg) + $signed(macReg));
          end else begin
            macReg <= {{16{macData[15]}}, macData};
          end
        end
      end
    end
  end


endmodule

//AdderTree replaced by AdderTree_7

//AdderTree_1 replaced by AdderTree_7

//AdderTree_2 replaced by AdderTree_7

//AdderTree_3 replaced by AdderTree_7

//AdderTree_4 replaced by AdderTree_7

//AdderTree_5 replaced by AdderTree_7

//AdderTree_6 replaced by AdderTree_7

module AdderTree_7 (
  input  wire [31:0]   dataIn_0,
  input  wire [31:0]   dataIn_1,
  input  wire [31:0]   dataIn_2,
  input  wire [31:0]   dataIn_3,
  input  wire [31:0]   dataIn_4,
  input  wire [31:0]   dataIn_5,
  input  wire [31:0]   dataIn_6,
  input  wire [31:0]   dataIn_7,
  output wire [34:0]   dataOut
);

  wire       [33:0]   tmp_dataOut;
  wire       [33:0]   tmp_dataOut_1;
  wire       [32:0]   tmp_dataOut_2;
  wire       [32:0]   tmp_dataOut_3;
  wire       [31:0]   tmp_dataOut_4;
  wire       [32:0]   tmp_dataOut_5;
  wire       [31:0]   tmp_dataOut_6;
  wire       [33:0]   tmp_dataOut_7;
  wire       [32:0]   tmp_dataOut_8;
  wire       [32:0]   tmp_dataOut_9;
  wire       [31:0]   tmp_dataOut_10;
  wire       [32:0]   tmp_dataOut_11;
  wire       [31:0]   tmp_dataOut_12;

  assign tmp_dataOut = ($signed(tmp_dataOut_1) + $signed(tmp_dataOut_7));
  assign tmp_dataOut_2 = ($signed(tmp_dataOut_3) + $signed(tmp_dataOut_5));
  assign tmp_dataOut_1 = {{1{tmp_dataOut_2[32]}}, tmp_dataOut_2};
  assign tmp_dataOut_4 = ($signed(dataIn_0) + $signed(dataIn_1));
  assign tmp_dataOut_3 = {{1{tmp_dataOut_4[31]}}, tmp_dataOut_4};
  assign tmp_dataOut_6 = ($signed(dataIn_2) + $signed(dataIn_3));
  assign tmp_dataOut_5 = {{1{tmp_dataOut_6[31]}}, tmp_dataOut_6};
  assign tmp_dataOut_8 = ($signed(tmp_dataOut_9) + $signed(tmp_dataOut_11));
  assign tmp_dataOut_7 = {{1{tmp_dataOut_8[32]}}, tmp_dataOut_8};
  assign tmp_dataOut_10 = ($signed(dataIn_4) + $signed(dataIn_5));
  assign tmp_dataOut_9 = {{1{tmp_dataOut_10[31]}}, tmp_dataOut_10};
  assign tmp_dataOut_12 = ($signed(dataIn_6) + $signed(dataIn_7));
  assign tmp_dataOut_11 = {{1{tmp_dataOut_12[31]}}, tmp_dataOut_12};
  assign dataOut = {{1{tmp_dataOut[33]}}, tmp_dataOut};

endmodule
