// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PETop
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module PETop (
  input  wire          convParm_valid,
  output wire          convParm_ready,
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
  wire       [5:0]    peCtrl_1_spLen;
  wire       [2:0]    peCtrl_1_loopLen;
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
    .spLen                (peCtrl_1_spLen[5:0]                ), //i
    .loopLen              (peCtrl_1_loopLen[2:0]              ), //i
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
    .convParm_payload_fHeight      (convParm_payload_fHeight[7:0]      ), //i
    .convParm_payload_fWidth       (convParm_payload_fWidth[7:0]       ), //i
    .convParm_payload_kSize        (convParm_payload_kSize[2:0]        ), //i
    .convParm_payload_chIn         (convParm_payload_chIn[5:0]         ), //i
    .convParm_payload_chOut        (convParm_payload_chOut[5:0]        ), //i
    .convParm_payload_pad          (convParm_payload_pad[2:0]          ), //i
    .convParm_payload_stride       (convParm_payload_stride[3:0]       ), //i
    .convParm_payload_spLen        (convParm_payload_spLen[5:0]        ), //i
    .clear                         (peCtrl_1_clear                     ), //o
    .relu                          (peCtrl_1_relu                      ), //o
    .peMode                        (peCtrl_1_peMode[2:0]               ), //o
    .ppuMode                       (peCtrl_1_ppuMode[1:0]              ), //o
    .spLen                         (peCtrl_1_spLen[5:0]                ), //o
    .loopLen                       (peCtrl_1_loopLen[2:0]              ), //o
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
    .convParm_payload_fHeight      (convParm_payload_fHeight[7:0]      ), //i
    .convParm_payload_fWidth       (convParm_payload_fWidth[7:0]       ), //i
    .convParm_payload_kSize        (convParm_payload_kSize[2:0]        ), //i
    .convParm_payload_chIn         (convParm_payload_chIn[5:0]         ), //i
    .convParm_payload_chOut        (convParm_payload_chOut[5:0]        ), //i
    .convParm_payload_pad          (convParm_payload_pad[2:0]          ), //i
    .convParm_payload_stride       (convParm_payload_stride[3:0]       ), //i
    .convParm_payload_spLen        (convParm_payload_spLen[5:0]        ), //i
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
  input  wire [7:0]    convParm_payload_fHeight,
  input  wire [7:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [5:0]    convParm_payload_chIn,
  input  wire [5:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [3:0]    convParm_payload_stride,
  input  wire [5:0]    convParm_payload_spLen,
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

  wire       [5:0]    tmp_chInBlock;
  wire       [5:0]    tmp_chInBlock_1;
  wire       [5:0]    tmp_chOutBlock;
  wire       [5:0]    tmp_chOutBlock_1;
  wire       [5:0]    tmp_kerDim;
  wire       [7:0]    tmp_foutHeight;
  wire       [7:0]    tmp_foutHeight_1;
  wire       [7:0]    tmp_foutHeight_2;
  wire       [7:0]    tmp_foutHeight_3;
  wire       [7:0]    tmp_foutHeight_4;
  wire       [4:0]    tmp_foutHeight_5;
  wire       [7:0]    tmp_foutWidth;
  wire       [7:0]    tmp_foutWidth_1;
  wire       [7:0]    tmp_foutWidth_2;
  wire       [7:0]    tmp_foutWidth_3;
  wire       [7:0]    tmp_foutWidth_4;
  wire       [4:0]    tmp_foutWidth_5;
  wire       [15:0]   tmp_wAddr_payload;
  wire       [15:0]   tmp_wAddr_payload_1;
  wire       [14:0]   tmp_wAddr_payload_2;
  wire       [14:0]   tmp_wAddr_payload_3;
  wire       [14:0]   tmp_wAddr_payload_4;
  wire       [14:0]   tmp_wAddr_payload_5;
  wire       [11:0]   tmp_wAddr_payload_6;
  wire       [15:0]   tmp_wAddr_payload_7;
  wire       [12:0]   tmp_wAddr_payload_8;
  wire       [6:0]    tmp_wAddr_payload_9;
  wire       [6:0]    tmp_wAddr_payload_10;
  wire       [6:0]    tmp_wAddr_payload_11;
  wire       [8:0]    tmp_when_AddrGen_l60;
  wire       [5:0]    tmp_when_AddrGen_l60_1;
  wire       [2:0]    tmp_when_AddrGen_l68;
  wire       [2:0]    tmp_when_AddrGen_l72;
  wire       [22:0]   tmp_finAddr_payload;
  wire       [22:0]   tmp_finAddr_payload_1;
  wire       [14:0]   tmp_finAddr_payload_2;
  wire       [14:0]   tmp_finAddr_payload_3;
  wire       [14:0]   tmp_finAddr_payload_4;
  wire       [14:0]   tmp_finAddr_payload_5;
  wire       [11:0]   tmp_finAddr_payload_6;
  wire       [11:0]   tmp_finAddr_payload_7;
  wire       [11:0]   tmp_finAddr_payload_8;
  wire       [22:0]   tmp_finAddr_payload_9;
  wire       [14:0]   tmp_finAddr_payload_10;
  wire       [11:0]   tmp_finAddr_payload_11;
  wire       [11:0]   tmp_finAddr_payload_12;
  wire       [11:0]   tmp_finAddr_payload_13;
  wire       [2:0]    tmp_when_AddrGen_l130;
  wire       [2:0]    tmp_when_AddrGen_l134;
  wire       [5:0]    tmp_when_AddrGen_l138;
  wire       [2:0]    tmp_when_AddrGen_l138_1;
  wire       [7:0]    tmp_when_AddrGen_l142;
  wire       [7:0]    tmp_when_AddrGen_l146;
  wire       [7:0]    tmp_finAddrArea_hCounter;
  wire       [2:0]    tmp_when_AddrGen_l150;
  wire       [15:0]   tmp_foutAddrArea_hwcCounterReload;
  wire       [21:0]   tmp_foutAddr_payload;
  wire       [21:0]   tmp_foutAddr_payload_1;
  wire       [21:0]   tmp_when_AddrGen_l189;
  wire       [18:0]   tmp_when_AddrGen_l189_1;
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
  reg                 busy;
  wire       [2:0]    chInBlock;
  wire       [2:0]    chOutBlock;
  wire       [5:0]    kerChDim;
  wire       [8:0]    kerDim;
  wire       [7:0]    foutHeight;
  wire       [7:0]    foutWidth;
  reg                 wAddrGenArea_wAddrDone;
  reg        [2:0]    wAddrGenArea_nCounter;
  reg        [2:0]    wAddrGenArea_cCounter;
  reg        [2:0]    wAddrGenArea_kaCounter;
  reg        [8:0]    wAddrGenArea_rsCounter;
  wire       [5:0]    wAddrGenArea_rsCounterReload;
  reg                 wAddrGenArea_valid;
  wire                wAddr_fire;
  wire                when_AddrGen_l60;
  wire                when_AddrGen_l64;
  wire                when_AddrGen_l68;
  wire                when_AddrGen_l72;
  reg        [14:0]   finAddrArea_finBaseAddr;
  reg                 finAddrArea_finAddrDone;
  reg        [2:0]    finAddrArea_nCounter;
  reg        [7:0]    finAddrArea_hCounter;
  reg        [7:0]    finAddrArea_wCounter;
  reg        [5:0]    finAddrArea_cCounter;
  reg        [2:0]    finAddrArea_sCounter;
  reg        [2:0]    finAddrArea_rCounter;
  reg                 finAddrArea_valid;
  wire                finAddrArea_padFlag;
  wire                finAddr_fire;
  wire                when_AddrGen_l130;
  wire                when_AddrGen_l134;
  wire                when_AddrGen_l138;
  wire                when_AddrGen_l142;
  wire                when_AddrGen_l146;
  wire                when_AddrGen_l150;
  reg        [14:0]   foutAddrArea_foutBaseAddr;
  reg                 foutAddrArea_foutAddrDone;
  reg        [21:0]   foutAddrArea_hwcCounter;
  wire       [18:0]   foutAddrArea_hwcCounterReload;
  reg                 foutAddrArea_valid;
  wire                when_AddrGen_l188;
  wire                when_AddrGen_l189;
  wire                when_AddrGen_l204;

  assign tmp_chInBlock = (tmp_chInBlock_1 - 6'h01);
  assign tmp_chInBlock_1 = (convParm_chIn + 6'h08);
  assign tmp_chOutBlock = (tmp_chOutBlock_1 - 6'h01);
  assign tmp_chOutBlock_1 = (convParm_chOut + 6'h08);
  assign tmp_kerDim = (convParm_kSize * convParm_kSize);
  assign tmp_foutHeight = (tmp_foutHeight_1 / convParm_stride);
  assign tmp_foutHeight_1 = (tmp_foutHeight_2 + tmp_foutHeight_4);
  assign tmp_foutHeight_2 = (convParm_fHeight - tmp_foutHeight_3);
  assign tmp_foutHeight_3 = {5'd0, convParm_kSize};
  assign tmp_foutHeight_5 = (2'b10 * convParm_pad);
  assign tmp_foutHeight_4 = {3'd0, tmp_foutHeight_5};
  assign tmp_foutWidth = (tmp_foutWidth_1 / convParm_stride);
  assign tmp_foutWidth_1 = (tmp_foutWidth_2 + tmp_foutWidth_4);
  assign tmp_foutWidth_2 = (convParm_fWidth - tmp_foutWidth_3);
  assign tmp_foutWidth_3 = {5'd0, convParm_kSize};
  assign tmp_foutWidth_5 = (2'b10 * convParm_pad);
  assign tmp_foutWidth_4 = {3'd0, tmp_foutWidth_5};
  assign tmp_wAddr_payload = (tmp_wAddr_payload_1 + tmp_wAddr_payload_7);
  assign tmp_wAddr_payload_2 = (tmp_wAddr_payload_3 + tmp_wAddr_payload_5);
  assign tmp_wAddr_payload_1 = {1'd0, tmp_wAddr_payload_2};
  assign tmp_wAddr_payload_3 = (convParm_wBaseAddr + tmp_wAddr_payload_4);
  assign tmp_wAddr_payload_4 = {12'd0, wAddrGenArea_cCounter};
  assign tmp_wAddr_payload_6 = (wAddrGenArea_rsCounter * chInBlock);
  assign tmp_wAddr_payload_5 = {3'd0, tmp_wAddr_payload_6};
  assign tmp_wAddr_payload_7 = (tmp_wAddr_payload_8 * chInBlock);
  assign tmp_wAddr_payload_8 = (tmp_wAddr_payload_9 * wAddrGenArea_rsCounterReload);
  assign tmp_wAddr_payload_9 = (tmp_wAddr_payload_10 + tmp_wAddr_payload_11);
  assign tmp_wAddr_payload_10 = (wAddrGenArea_nCounter * 4'b1000);
  assign tmp_wAddr_payload_11 = {4'd0, wAddrGenArea_kaCounter};
  assign tmp_when_AddrGen_l60_1 = (wAddrGenArea_rsCounterReload - 6'h01);
  assign tmp_when_AddrGen_l60 = {3'd0, tmp_when_AddrGen_l60_1};
  assign tmp_when_AddrGen_l68 = (chInBlock - 3'b001);
  assign tmp_when_AddrGen_l72 = (chOutBlock - 3'b001);
  assign tmp_finAddr_payload = (tmp_finAddr_payload_1 + tmp_finAddr_payload_9);
  assign tmp_finAddr_payload_2 = (tmp_finAddr_payload_3 + tmp_finAddr_payload_5);
  assign tmp_finAddr_payload_1 = {8'd0, tmp_finAddr_payload_2};
  assign tmp_finAddr_payload_3 = (finAddrArea_finBaseAddr + tmp_finAddr_payload_4);
  assign tmp_finAddr_payload_4 = {9'd0, finAddrArea_cCounter};
  assign tmp_finAddr_payload_5 = (tmp_finAddr_payload_6 * chInBlock);
  assign tmp_finAddr_payload_6 = (tmp_finAddr_payload_7 + tmp_finAddr_payload_8);
  assign tmp_finAddr_payload_7 = (finAddrArea_wCounter * convParm_stride);
  assign tmp_finAddr_payload_8 = {9'd0, finAddrArea_rCounter};
  assign tmp_finAddr_payload_9 = (tmp_finAddr_payload_10 * foutWidth);
  assign tmp_finAddr_payload_10 = (tmp_finAddr_payload_11 * chInBlock);
  assign tmp_finAddr_payload_11 = (tmp_finAddr_payload_12 + tmp_finAddr_payload_13);
  assign tmp_finAddr_payload_12 = (finAddrArea_hCounter * convParm_stride);
  assign tmp_finAddr_payload_13 = {9'd0, finAddrArea_sCounter};
  assign tmp_when_AddrGen_l130 = (convParm_kSize - 3'b001);
  assign tmp_when_AddrGen_l134 = (convParm_kSize - 3'b001);
  assign tmp_when_AddrGen_l138_1 = (chInBlock - 3'b001);
  assign tmp_when_AddrGen_l138 = {3'd0, tmp_when_AddrGen_l138_1};
  assign tmp_when_AddrGen_l142 = (foutWidth - 8'h01);
  assign tmp_when_AddrGen_l146 = (foutHeight - 8'h01);
  assign tmp_finAddrArea_hCounter = {4'd0, convParm_stride};
  assign tmp_when_AddrGen_l150 = (chOutBlock - 3'b001);
  assign tmp_foutAddrArea_hwcCounterReload = (convParm_fHeight * convParm_fWidth);
  assign tmp_foutAddr_payload = (tmp_foutAddr_payload_1 + foutAddrArea_hwcCounter);
  assign tmp_foutAddr_payload_1 = {7'd0, foutAddrArea_foutBaseAddr};
  assign tmp_when_AddrGen_l189_1 = (foutAddrArea_hwcCounterReload - 19'h00001);
  assign tmp_when_AddrGen_l189 = {3'd0, tmp_when_AddrGen_l189_1};
  assign chInBlock = (tmp_chInBlock >>> 2'd3);
  assign chOutBlock = (tmp_chOutBlock >>> 2'd3);
  assign kerChDim = (convParm_kSize * convParm_kSize);
  assign kerDim = (tmp_kerDim * chInBlock);
  assign foutHeight = (tmp_foutHeight + 8'h01);
  assign foutWidth = (tmp_foutWidth + 8'h01);
  assign wAddrGenArea_rsCounterReload = (convParm_kSize * convParm_kSize);
  assign wAddr_valid = wAddrGenArea_valid;
  assign wAddr_payload = tmp_wAddr_payload[14:0];
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign when_AddrGen_l60 = (wAddrGenArea_rsCounter < tmp_when_AddrGen_l60);
  assign when_AddrGen_l64 = (wAddrGenArea_kaCounter < 3'b111);
  assign when_AddrGen_l68 = (wAddrGenArea_cCounter < tmp_when_AddrGen_l68);
  assign when_AddrGen_l72 = (wAddrGenArea_nCounter < tmp_when_AddrGen_l72);
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
  assign when_AddrGen_l130 = (finAddrArea_rCounter < tmp_when_AddrGen_l130);
  assign when_AddrGen_l134 = (finAddrArea_sCounter < tmp_when_AddrGen_l134);
  assign when_AddrGen_l138 = (finAddrArea_cCounter < tmp_when_AddrGen_l138);
  assign when_AddrGen_l142 = (finAddrArea_wCounter < tmp_when_AddrGen_l142);
  assign when_AddrGen_l146 = (finAddrArea_hCounter < tmp_when_AddrGen_l146);
  assign when_AddrGen_l150 = (finAddrArea_nCounter < tmp_when_AddrGen_l150);
  assign foutAddrArea_hwcCounterReload = (tmp_foutAddrArea_hwcCounterReload * chOutBlock);
  assign foutAddr_valid = foutAddrArea_valid;
  assign foutAddr_payload = tmp_foutAddr_payload[14:0];
  assign when_AddrGen_l188 = (foutAddr_ready && foutAddr_valid);
  assign when_AddrGen_l189 = (foutAddrArea_hwcCounter < tmp_when_AddrGen_l189);
  assign when_AddrGen_l204 = ((wAddrGenArea_wAddrDone && finAddrArea_finAddrDone) && foutAddrArea_foutAddrDone);
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
      wAddrGenArea_nCounter <= 3'b000;
      wAddrGenArea_cCounter <= 3'b000;
      wAddrGenArea_kaCounter <= 3'b000;
      wAddrGenArea_rsCounter <= 9'h0;
      wAddrGenArea_valid <= 1'b0;
      finAddrArea_finAddrDone <= 1'b0;
      finAddrArea_nCounter <= 3'b000;
      finAddrArea_hCounter <= 8'h0;
      finAddrArea_wCounter <= 8'h0;
      finAddrArea_cCounter <= 6'h0;
      finAddrArea_sCounter <= 3'b000;
      finAddrArea_rCounter <= 3'b000;
      finAddrArea_valid <= 1'b0;
      foutAddrArea_foutAddrDone <= 1'b0;
      foutAddrArea_hwcCounter <= 22'h0;
      foutAddrArea_valid <= 1'b0;
    end else begin
      if(convParm_valid) begin
        wAddrGenArea_nCounter <= 3'b000;
        wAddrGenArea_cCounter <= 3'b000;
        wAddrGenArea_kaCounter <= 3'b000;
        wAddrGenArea_rsCounter <= 9'h0;
        wAddrGenArea_valid <= 1'b1;
      end else begin
        if(wAddr_fire) begin
          if(when_AddrGen_l60) begin
            wAddrGenArea_rsCounter <= (wAddrGenArea_rsCounter + 9'h001);
          end else begin
            wAddrGenArea_rsCounter <= 9'h0;
            if(when_AddrGen_l64) begin
              wAddrGenArea_kaCounter <= (wAddrGenArea_kaCounter + 3'b001);
            end else begin
              wAddrGenArea_kaCounter <= 3'b000;
              if(when_AddrGen_l68) begin
                wAddrGenArea_cCounter <= (wAddrGenArea_cCounter + 3'b001);
              end else begin
                wAddrGenArea_cCounter <= 3'b000;
                if(when_AddrGen_l72) begin
                  wAddrGenArea_nCounter <= (wAddrGenArea_nCounter + 3'b001);
                end else begin
                  wAddrGenArea_nCounter <= 3'b000;
                  wAddrGenArea_wAddrDone <= 1'b1;
                  wAddrGenArea_valid <= 1'b0;
                end
              end
            end
          end
        end
      end
      if(convParm_valid) begin
        finAddrArea_nCounter <= 3'b000;
        finAddrArea_hCounter <= 8'h0;
        finAddrArea_wCounter <= 8'h0;
        finAddrArea_cCounter <= 6'h0;
        finAddrArea_sCounter <= 3'b000;
        finAddrArea_rCounter <= 3'b000;
        finAddrArea_valid <= 1'b1;
      end else begin
        if(finAddr_fire) begin
          if(when_AddrGen_l130) begin
            finAddrArea_rCounter <= (finAddrArea_rCounter + 3'b001);
          end else begin
            finAddrArea_rCounter <= 3'b000;
            if(when_AddrGen_l134) begin
              finAddrArea_sCounter <= (finAddrArea_sCounter + 3'b001);
            end else begin
              finAddrArea_sCounter <= 3'b000;
              if(when_AddrGen_l138) begin
                finAddrArea_cCounter <= (finAddrArea_cCounter + 6'h01);
              end else begin
                finAddrArea_cCounter <= 6'h0;
                if(when_AddrGen_l142) begin
                  finAddrArea_wCounter <= (finAddrArea_wCounter + 8'h01);
                end else begin
                  finAddrArea_wCounter <= 8'h0;
                  if(when_AddrGen_l146) begin
                    finAddrArea_hCounter <= (finAddrArea_hCounter + tmp_finAddrArea_hCounter);
                  end else begin
                    finAddrArea_hCounter <= 8'h0;
                    if(when_AddrGen_l150) begin
                      finAddrArea_nCounter <= (finAddrArea_nCounter + 3'b001);
                    end else begin
                      finAddrArea_nCounter <= 3'b000;
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
        foutAddrArea_hwcCounter <= 22'h0;
        foutAddrArea_valid <= 1'b1;
        foutAddrArea_foutAddrDone <= 1'b0;
      end else begin
        if(when_AddrGen_l188) begin
          if(when_AddrGen_l189) begin
            foutAddrArea_hwcCounter <= (foutAddrArea_hwcCounter + 22'h000001);
          end else begin
            foutAddrArea_hwcCounter <= 22'h0;
            foutAddrArea_foutAddrDone <= 1'b1;
            foutAddrArea_valid <= 1'b0;
          end
        end
      end
      if(convParm_valid) begin
        busy <= 1'b1;
      end else begin
        if(when_AddrGen_l204) begin
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

module PEArray (
  input  wire          clear,
  input  wire          relu,
  input  wire [2:0]    peMode,
  input  wire [1:0]    ppuMode,
  input  wire [5:0]    spLen,
  input  wire [2:0]    loopLen,
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
    .spLen              (spLen[5:0]                      ), //i
    .loopLen            (loopLen[2:0]                    ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .spLen              (spLen[5:0]                        ), //i
    .loopLen            (loopLen[2:0]                      ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
    .io_spLen             (spLen[5:0]                            ), //i
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
  input  wire [5:0]    io_spLen,
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

  wire       [5:0]    tmp_spLenValid;
  wire       [5:0]    tmp_kChDimValid;
  wire       [6:0]    tmp_io_weightIn_ready;
  wire       [6:0]    tmp_io_weightIn_ready_1;
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
  reg        [7:0]    Buffer_49;
  reg        [7:0]    Buffer_50;
  reg        [7:0]    Buffer_51;
  reg        [7:0]    Buffer_52;
  reg        [7:0]    Buffer_53;
  reg        [7:0]    Buffer_54;
  reg        [7:0]    Buffer_55;
  reg        [7:0]    Buffer_56;
  reg        [7:0]    Buffer_57;
  reg        [7:0]    Buffer_58;
  reg        [7:0]    Buffer_59;
  reg        [7:0]    Buffer_60;
  reg        [7:0]    Buffer_61;
  reg        [7:0]    Buffer_62;
  reg        [7:0]    Buffer_63;
  reg        [5:0]    validWeight;
  reg        [5:0]    rdPointer;
  reg        [5:0]    wrPointer;
  reg        [5:0]    spLenCnt;
  reg        [5:0]    kChDimCnt;
  wire                spLenValid;
  wire                kChDimValid;
  wire                io_weightOut_fire;
  wire                when_LWBuffer_l47;
  wire                io_weightIn_fire;
  wire       [63:0]   tmp_1;
  wire                when_LWBuffer_l93;

  assign tmp_spLenValid = (io_spLen - 6'h01);
  assign tmp_kChDimValid = (io_spLen - 6'h01);
  assign tmp_io_weightIn_ready = (7'h40 - tmp_io_weightIn_ready_1);
  assign tmp_io_weightIn_ready_1 = {1'd0, validWeight};
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
      6'b110000 : tmp_io_weightOut_payload = Buffer_48;
      6'b110001 : tmp_io_weightOut_payload = Buffer_49;
      6'b110010 : tmp_io_weightOut_payload = Buffer_50;
      6'b110011 : tmp_io_weightOut_payload = Buffer_51;
      6'b110100 : tmp_io_weightOut_payload = Buffer_52;
      6'b110101 : tmp_io_weightOut_payload = Buffer_53;
      6'b110110 : tmp_io_weightOut_payload = Buffer_54;
      6'b110111 : tmp_io_weightOut_payload = Buffer_55;
      6'b111000 : tmp_io_weightOut_payload = Buffer_56;
      6'b111001 : tmp_io_weightOut_payload = Buffer_57;
      6'b111010 : tmp_io_weightOut_payload = Buffer_58;
      6'b111011 : tmp_io_weightOut_payload = Buffer_59;
      6'b111100 : tmp_io_weightOut_payload = Buffer_60;
      6'b111101 : tmp_io_weightOut_payload = Buffer_61;
      6'b111110 : tmp_io_weightOut_payload = Buffer_62;
      default : tmp_io_weightOut_payload = Buffer_63;
    endcase
  end

  assign spLenValid = (spLenCnt == tmp_spLenValid);
  assign kChDimValid = (kChDimCnt == tmp_kChDimValid);
  assign io_weightOut_valid = (io_kChDim <= validWeight);
  assign io_weightIn_ready = (tmp_io_weightIn_ready != 7'h0);
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
      Buffer_49 <= 8'h0;
      Buffer_50 <= 8'h0;
      Buffer_51 <= 8'h0;
      Buffer_52 <= 8'h0;
      Buffer_53 <= 8'h0;
      Buffer_54 <= 8'h0;
      Buffer_55 <= 8'h0;
      Buffer_56 <= 8'h0;
      Buffer_57 <= 8'h0;
      Buffer_58 <= 8'h0;
      Buffer_59 <= 8'h0;
      Buffer_60 <= 8'h0;
      Buffer_61 <= 8'h0;
      Buffer_62 <= 8'h0;
      Buffer_63 <= 8'h0;
      validWeight <= 6'h0;
      rdPointer <= 6'h0;
      wrPointer <= 6'h0;
      spLenCnt <= 6'h0;
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
          if(tmp_1[49]) begin
            Buffer_49 <= io_weightIn_payload;
          end
          if(tmp_1[50]) begin
            Buffer_50 <= io_weightIn_payload;
          end
          if(tmp_1[51]) begin
            Buffer_51 <= io_weightIn_payload;
          end
          if(tmp_1[52]) begin
            Buffer_52 <= io_weightIn_payload;
          end
          if(tmp_1[53]) begin
            Buffer_53 <= io_weightIn_payload;
          end
          if(tmp_1[54]) begin
            Buffer_54 <= io_weightIn_payload;
          end
          if(tmp_1[55]) begin
            Buffer_55 <= io_weightIn_payload;
          end
          if(tmp_1[56]) begin
            Buffer_56 <= io_weightIn_payload;
          end
          if(tmp_1[57]) begin
            Buffer_57 <= io_weightIn_payload;
          end
          if(tmp_1[58]) begin
            Buffer_58 <= io_weightIn_payload;
          end
          if(tmp_1[59]) begin
            Buffer_59 <= io_weightIn_payload;
          end
          if(tmp_1[60]) begin
            Buffer_60 <= io_weightIn_payload;
          end
          if(tmp_1[61]) begin
            Buffer_61 <= io_weightIn_payload;
          end
          if(tmp_1[62]) begin
            Buffer_62 <= io_weightIn_payload;
          end
          if(tmp_1[63]) begin
            Buffer_63 <= io_weightIn_payload;
          end
          wrPointer <= (wrPointer + 6'h01);
        end
      end
      if(io_clear) begin
        spLenCnt <= 6'h0;
        kChDimCnt <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(kChDimValid) begin
            kChDimCnt <= 6'h0;
            if(spLenValid) begin
              spLenCnt <= 6'h0;
            end else begin
              spLenCnt <= (spLenCnt + 6'h01);
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
  input  wire [5:0]    spLen,
  input  wire [2:0]    loopLen,
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
  wire       [2:0]    tmp_pSumArea_last;
  wire       [5:0]    tmp_when_PPUnit_l69;
  wire       [2:0]    tmp_when_PPUnit_l73;
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
  reg        [31:0]   macSumArea_macSumReg;
  wire                macSumArea_macSumEn;
  reg                 macSumArea_macSumValid;
  reg        [31:0]   pSumArea_pAddData;
  reg        [31:0]   pSumArea_pSumReg;
  wire                pSumArea_pSumEn;
  reg                 pSumArea_pSumValid;
  reg        [5:0]    pSumArea_spLenCnt;
  reg        [2:0]    pSumArea_loopCnt;
  wire                pSumArea_last;
  wire                when_PPUnit_l69;
  wire                when_PPUnit_l73;
  reg        [7:0]    quantArea_quantReg;
  wire                quantArea_quantEn;
  reg                 quantArea_quantValid;
  reg        [7:0]    reluArea_reluReg;
  wire                reluArea_reluEn;
  reg                 reluArea_reluValid;
  wire                when_PPUnit_l128;

  assign tmp_pSumArea_last = (loopLen - 3'b001);
  assign tmp_when_PPUnit_l69 = (spLen - 6'h01);
  assign tmp_when_PPUnit_l73 = (loopLen - 3'b001);
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
      6'b000000 : tmp_pSumArea_pAddData = lfBuffer_0;
      6'b000001 : tmp_pSumArea_pAddData = lfBuffer_1;
      6'b000010 : tmp_pSumArea_pAddData = lfBuffer_2;
      6'b000011 : tmp_pSumArea_pAddData = lfBuffer_3;
      6'b000100 : tmp_pSumArea_pAddData = lfBuffer_4;
      6'b000101 : tmp_pSumArea_pAddData = lfBuffer_5;
      6'b000110 : tmp_pSumArea_pAddData = lfBuffer_6;
      6'b000111 : tmp_pSumArea_pAddData = lfBuffer_7;
      6'b001000 : tmp_pSumArea_pAddData = lfBuffer_8;
      6'b001001 : tmp_pSumArea_pAddData = lfBuffer_9;
      6'b001010 : tmp_pSumArea_pAddData = lfBuffer_10;
      6'b001011 : tmp_pSumArea_pAddData = lfBuffer_11;
      6'b001100 : tmp_pSumArea_pAddData = lfBuffer_12;
      6'b001101 : tmp_pSumArea_pAddData = lfBuffer_13;
      6'b001110 : tmp_pSumArea_pAddData = lfBuffer_14;
      6'b001111 : tmp_pSumArea_pAddData = lfBuffer_15;
      6'b010000 : tmp_pSumArea_pAddData = lfBuffer_16;
      6'b010001 : tmp_pSumArea_pAddData = lfBuffer_17;
      6'b010010 : tmp_pSumArea_pAddData = lfBuffer_18;
      6'b010011 : tmp_pSumArea_pAddData = lfBuffer_19;
      6'b010100 : tmp_pSumArea_pAddData = lfBuffer_20;
      6'b010101 : tmp_pSumArea_pAddData = lfBuffer_21;
      6'b010110 : tmp_pSumArea_pAddData = lfBuffer_22;
      6'b010111 : tmp_pSumArea_pAddData = lfBuffer_23;
      6'b011000 : tmp_pSumArea_pAddData = lfBuffer_24;
      6'b011001 : tmp_pSumArea_pAddData = lfBuffer_25;
      6'b011010 : tmp_pSumArea_pAddData = lfBuffer_26;
      6'b011011 : tmp_pSumArea_pAddData = lfBuffer_27;
      6'b011100 : tmp_pSumArea_pAddData = lfBuffer_28;
      6'b011101 : tmp_pSumArea_pAddData = lfBuffer_29;
      6'b011110 : tmp_pSumArea_pAddData = lfBuffer_30;
      6'b011111 : tmp_pSumArea_pAddData = lfBuffer_31;
      6'b100000 : tmp_pSumArea_pAddData = lfBuffer_32;
      6'b100001 : tmp_pSumArea_pAddData = lfBuffer_33;
      6'b100010 : tmp_pSumArea_pAddData = lfBuffer_34;
      6'b100011 : tmp_pSumArea_pAddData = lfBuffer_35;
      6'b100100 : tmp_pSumArea_pAddData = lfBuffer_36;
      6'b100101 : tmp_pSumArea_pAddData = lfBuffer_37;
      6'b100110 : tmp_pSumArea_pAddData = lfBuffer_38;
      6'b100111 : tmp_pSumArea_pAddData = lfBuffer_39;
      6'b101000 : tmp_pSumArea_pAddData = lfBuffer_40;
      6'b101001 : tmp_pSumArea_pAddData = lfBuffer_41;
      6'b101010 : tmp_pSumArea_pAddData = lfBuffer_42;
      6'b101011 : tmp_pSumArea_pAddData = lfBuffer_43;
      6'b101100 : tmp_pSumArea_pAddData = lfBuffer_44;
      6'b101101 : tmp_pSumArea_pAddData = lfBuffer_45;
      6'b101110 : tmp_pSumArea_pAddData = lfBuffer_46;
      6'b101111 : tmp_pSumArea_pAddData = lfBuffer_47;
      6'b110000 : tmp_pSumArea_pAddData = lfBuffer_48;
      6'b110001 : tmp_pSumArea_pAddData = lfBuffer_49;
      6'b110010 : tmp_pSumArea_pAddData = lfBuffer_50;
      6'b110011 : tmp_pSumArea_pAddData = lfBuffer_51;
      6'b110100 : tmp_pSumArea_pAddData = lfBuffer_52;
      6'b110101 : tmp_pSumArea_pAddData = lfBuffer_53;
      6'b110110 : tmp_pSumArea_pAddData = lfBuffer_54;
      6'b110111 : tmp_pSumArea_pAddData = lfBuffer_55;
      6'b111000 : tmp_pSumArea_pAddData = lfBuffer_56;
      6'b111001 : tmp_pSumArea_pAddData = lfBuffer_57;
      6'b111010 : tmp_pSumArea_pAddData = lfBuffer_58;
      6'b111011 : tmp_pSumArea_pAddData = lfBuffer_59;
      6'b111100 : tmp_pSumArea_pAddData = lfBuffer_60;
      6'b111101 : tmp_pSumArea_pAddData = lfBuffer_61;
      6'b111110 : tmp_pSumArea_pAddData = lfBuffer_62;
      default : tmp_pSumArea_pAddData = lfBuffer_63;
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

  assign when_PPUnit_l69 = (pSumArea_spLenCnt < tmp_when_PPUnit_l69);
  assign when_PPUnit_l73 = (pSumArea_loopCnt < tmp_when_PPUnit_l73);
  assign quantArea_quantEn = ((pSumArea_pSumValid && pSumArea_last) && (! clear));
  assign reluArea_reluEn = (quantArea_quantValid && (! clear));
  assign when_PPUnit_l128 = (($signed(quantArea_quantReg) < $signed(8'h0)) && relu);
  assign featureOut_payload = reluArea_reluReg;
  assign featureOut_valid = reluArea_reluValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macSumArea_macSumReg <= 32'h0;
      macSumArea_macSumValid <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      pSumArea_pSumValid <= 1'b0;
      pSumArea_spLenCnt <= 6'h0;
      pSumArea_loopCnt <= 3'b000;
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
        pSumArea_spLenCnt <= 6'h0;
        pSumArea_loopCnt <= 3'b000;
      end else begin
        if(pSumArea_pSumEn) begin
          if(when_PPUnit_l69) begin
            pSumArea_spLenCnt <= (pSumArea_spLenCnt + 6'h01);
          end else begin
            pSumArea_spLenCnt <= 6'h0;
            if(when_PPUnit_l73) begin
              pSumArea_loopCnt <= (pSumArea_loopCnt + 3'b001);
            end else begin
              pSumArea_loopCnt <= 3'b000;
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
        if(when_PPUnit_l128) begin
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
  wire                when_PECore_l58;
  wire                when_PECore_l63;
  wire                when_PECore_l68;

  assign tmp_macReg = {{16{macData[15]}}, macData};
  assign weight_fire = (weight_valid && weight_ready);
  assign featureIn_fire = (featureIn_valid && featureIn_ready);
  assign macEn = (weight_fire && featureIn_fire);
  always @(*) begin
    mulData = 16'h0;
    if(!clear) begin
      if(macEn) begin
        if(when_PECore_l58) begin
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
        if(when_PECore_l63) begin
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
  assign when_PECore_l58 = mode[0];
  assign when_PECore_l63 = mode[1];
  assign when_PECore_l68 = mode[2];
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
          if(when_PECore_l68) begin
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
