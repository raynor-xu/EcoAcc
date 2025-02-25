// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PEArray
// Git hash  : 02491fef150ddb695e806a8318f17cf1104f38a0

`timescale 1ns/1ps

module PEArray (
  input  wire          clear,
  input  wire [1:0]    peMode_1,
  input  wire [2:0]    ppuParm_mode,
  input  wire          ppuParm_reluEn,
  input  wire [5:0]    ppuParm_spLen,
  input  wire [4:0]    ppuParm_loopLen,
  input  wire [9:0]    ppuParm_multiplier,
  input  wire [3:0]    ppuParm_shift,
  input  wire [7:0]    ppuParm_zeroPoint,
  input  wire [9:0]    spLen,
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
  localparam MAC = 2'd0;
  localparam MUL = 2'd1;
  localparam BYPASS = 2'd2;
  localparam CONV2D = 3'd0;
  localparam DEEPCONV = 3'd1;
  localparam POINTCONV = 3'd2;
  localparam FC = 3'd3;
  localparam MAXPOOL = 3'd4;
  localparam AVERAGPOOL = 3'd5;

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
  `ifndef SYNTHESIS
  reg [47:0] peMode_1_string;
  reg [79:0] ppuParm_mode_string;
  `endif


  PECore peCores_0_0 (
    .clear             (clear                                 ), //i
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .mode              (peMode_1[1:0]                         ), //i
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
    .parm_mode          (ppuParm_mode[2:0]               ), //i
    .parm_reluEn        (ppuParm_reluEn                  ), //i
    .parm_spLen         (ppuParm_spLen[5:0]              ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]            ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]         ), //i
    .parm_shift         (ppuParm_shift[3:0]              ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]          ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
    .parm_mode          (ppuParm_mode[2:0]                 ), //i
    .parm_reluEn        (ppuParm_reluEn                    ), //i
    .parm_spLen         (ppuParm_spLen[5:0]                ), //i
    .parm_loopLen       (ppuParm_loopLen[4:0]              ), //i
    .parm_multiplier    (ppuParm_multiplier[9:0]           ), //i
    .parm_shift         (ppuParm_shift[3:0]                ), //i
    .parm_zeroPoint     (ppuParm_zeroPoint[7:0]            ), //i
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
  `ifndef SYNTHESIS
  always @(*) begin
    case(peMode_1)
      MAC : peMode_1_string = "MAC   ";
      MUL : peMode_1_string = "MUL   ";
      BYPASS : peMode_1_string = "BYPASS";
      default : peMode_1_string = "??????";
    endcase
  end
  always @(*) begin
    case(ppuParm_mode)
      CONV2D : ppuParm_mode_string = "CONV2D    ";
      DEEPCONV : ppuParm_mode_string = "DEEPCONV  ";
      POINTCONV : ppuParm_mode_string = "POINTCONV ";
      FC : ppuParm_mode_string = "FC        ";
      MAXPOOL : ppuParm_mode_string = "MAXPOOL   ";
      AVERAGPOOL : ppuParm_mode_string = "AVERAGPOOL";
      default : ppuParm_mode_string = "??????????";
    endcase
  end
  `endif

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
  input  wire [2:0]    parm_mode,
  input  wire          parm_reluEn,
  input  wire [5:0]    parm_spLen,
  input  wire [4:0]    parm_loopLen,
  input  wire [9:0]    parm_multiplier,
  input  wire [3:0]    parm_shift,
  input  wire [7:0]    parm_zeroPoint,
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
  localparam CONV2D = 3'd0;
  localparam DEEPCONV = 3'd1;
  localparam POINTCONV = 3'd2;
  localparam FC = 3'd3;
  localparam MAXPOOL = 3'd4;
  localparam AVERAGPOOL = 3'd5;

  reg        [31:0]   macSumArea_adderTree_dataIn_0;
  reg        [31:0]   macSumArea_adderTree_dataIn_1;
  reg        [31:0]   macSumArea_adderTree_dataIn_2;
  reg        [31:0]   macSumArea_adderTree_dataIn_3;
  reg        [31:0]   macSumArea_adderTree_dataIn_4;
  reg        [31:0]   macSumArea_adderTree_dataIn_5;
  reg        [31:0]   macSumArea_adderTree_dataIn_6;
  reg        [31:0]   macSumArea_adderTree_dataIn_7;
  wire       [34:0]   macSumArea_adderTree_dataOut;
  wire       [4:0]    tmp_pSumArea_last;
  wire       [5:0]    tmp_when_PPUnit_l75;
  wire       [4:0]    tmp_when_PPUnit_l79;
  reg        [31:0]   tmp_pSumArea_pAddData;
  reg        [31:0]   tmp_bufArea_bufReg;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_1;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_2;
  wire       [41:0]   tmp_tmp_when_PPUnit_l170_3;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_4;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_5;
  wire       [41:0]   tmp_tmp_when_PPUnit_l170_6;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_7;
  wire       [3:0]    tmp_tmp_when_PPUnit_l170_8;
  wire       [56:0]   tmp_tmp_when_PPUnit_l170_9;
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
  reg        [31:0]   macSumArea_macSumReg;
  wire                macSumArea_macSumEn;
  reg                 macSumArea_macSumValid;
  reg        [31:0]   pSumArea_pAddData;
  reg        [31:0]   pSumArea_pSumReg;
  wire                pSumArea_pSumEn;
  reg                 pSumArea_pSumValid;
  reg        [5:0]    pSumArea_spLenCnt;
  reg        [4:0]    pSumArea_loopCnt;
  wire                pSumArea_last;
  wire                when_PPUnit_l75;
  wire                when_PPUnit_l79;
  wire                bufArea_bufEn;
  reg        [31:0]   bufArea_macInReg_0;
  reg        [31:0]   bufArea_macInReg_1;
  reg        [31:0]   bufArea_macInReg_2;
  reg        [31:0]   bufArea_macInReg_3;
  reg        [31:0]   bufArea_macInReg_4;
  reg        [31:0]   bufArea_macInReg_5;
  reg        [31:0]   bufArea_macInReg_6;
  reg        [31:0]   bufArea_macInReg_7;
  reg        [2:0]    bufArea_cnt;
  wire       [31:0]   bufArea_bufReg;
  wire                bufArea_bufValid;
  wire                when_PPUnit_l122;
  reg        [7:0]    quantArea_quantReg;
  reg                 quantArea_quantEn;
  reg        [31:0]   quantArea_rawData;
  reg                 quantArea_quantValid;
  wire       [56:0]   tmp_when_PPUnit_l170;
  reg        [7:0]    tmp_quantArea_quantReg;
  wire                when_PPUnit_l170;
  wire                when_PPUnit_l172;
  reg        [7:0]    reluArea_reluReg;
  wire                reluArea_reluEn;
  reg                 reluArea_reluValid;
  wire                when_PPUnit_l193;
  `ifndef SYNTHESIS
  reg [79:0] parm_mode_string;
  `endif


  assign tmp_pSumArea_last = (parm_loopLen - 5'h01);
  assign tmp_when_PPUnit_l75 = (parm_spLen - 6'h01);
  assign tmp_when_PPUnit_l79 = (parm_loopLen - 5'h01);
  assign tmp_tmp_when_PPUnit_l170 = ($signed(tmp_tmp_when_PPUnit_l170_1) >>> parm_shift);
  assign tmp_tmp_when_PPUnit_l170_1 = ($signed(tmp_tmp_when_PPUnit_l170_2) + $signed(tmp_tmp_when_PPUnit_l170_4));
  assign tmp_tmp_when_PPUnit_l170_3 = ($signed(quantArea_rawData) * $signed(parm_multiplier));
  assign tmp_tmp_when_PPUnit_l170_2 = {{15{tmp_tmp_when_PPUnit_l170_3[41]}}, tmp_tmp_when_PPUnit_l170_3};
  assign tmp_tmp_when_PPUnit_l170_4 = ((parm_shift == 4'b0000) ? tmp_tmp_when_PPUnit_l170_5 : tmp_tmp_when_PPUnit_l170_7);
  assign tmp_tmp_when_PPUnit_l170_6 = 42'h0;
  assign tmp_tmp_when_PPUnit_l170_5 = {{15{tmp_tmp_when_PPUnit_l170_6[41]}}, tmp_tmp_when_PPUnit_l170_6};
  assign tmp_tmp_when_PPUnit_l170_7 = ({{15{42'h00000000001[41]}},42'h00000000001} <<< tmp_tmp_when_PPUnit_l170_8);
  assign tmp_tmp_when_PPUnit_l170_8 = (parm_shift - 4'b0001);
  assign tmp_tmp_when_PPUnit_l170_9 = {{49{parm_zeroPoint[7]}}, parm_zeroPoint};
  AdderTree_7 macSumArea_adderTree (
    .dataIn_0 (macSumArea_adderTree_dataIn_0[31:0]), //i
    .dataIn_1 (macSumArea_adderTree_dataIn_1[31:0]), //i
    .dataIn_2 (macSumArea_adderTree_dataIn_2[31:0]), //i
    .dataIn_3 (macSumArea_adderTree_dataIn_3[31:0]), //i
    .dataIn_4 (macSumArea_adderTree_dataIn_4[31:0]), //i
    .dataIn_5 (macSumArea_adderTree_dataIn_5[31:0]), //i
    .dataIn_6 (macSumArea_adderTree_dataIn_6[31:0]), //i
    .dataIn_7 (macSumArea_adderTree_dataIn_7[31:0]), //i
    .dataOut  (macSumArea_adderTree_dataOut[34:0] )  //o
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
      default : tmp_pSumArea_pAddData = lfBuffer_48;
    endcase
  end

  always @(*) begin
    case(bufArea_cnt)
      3'b000 : tmp_bufArea_bufReg = bufArea_macInReg_0;
      3'b001 : tmp_bufArea_bufReg = bufArea_macInReg_1;
      3'b010 : tmp_bufArea_bufReg = bufArea_macInReg_2;
      3'b011 : tmp_bufArea_bufReg = bufArea_macInReg_3;
      3'b100 : tmp_bufArea_bufReg = bufArea_macInReg_4;
      3'b101 : tmp_bufArea_bufReg = bufArea_macInReg_5;
      3'b110 : tmp_bufArea_bufReg = bufArea_macInReg_6;
      default : tmp_bufArea_bufReg = bufArea_macInReg_7;
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(parm_mode)
      CONV2D : parm_mode_string = "CONV2D    ";
      DEEPCONV : parm_mode_string = "DEEPCONV  ";
      POINTCONV : parm_mode_string = "POINTCONV ";
      FC : parm_mode_string = "FC        ";
      MAXPOOL : parm_mode_string = "MAXPOOL   ";
      AVERAGPOOL : parm_mode_string = "AVERAGPOOL";
      default : parm_mode_string = "??????????";
    endcase
  end
  `endif

  assign macSumArea_macSumEn = (((((((((macIn_0_valid || macIn_1_valid) || macIn_2_valid) || macIn_3_valid) || macIn_4_valid) || macIn_5_valid) || macIn_6_valid) || macIn_7_valid) && (! clear)) && (parm_mode == CONV2D));
  always @(*) begin
    macSumArea_adderTree_dataIn_0 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_0 = macIn_0_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_1 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_1 = macIn_1_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_2 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_2 = macIn_2_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_3 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_3 = macIn_3_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_4 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_4 = macIn_4_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_5 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_5 = macIn_5_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_6 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_6 = macIn_6_payload;
    end
  end

  always @(*) begin
    macSumArea_adderTree_dataIn_7 = 32'h0;
    if(macSumArea_macSumEn) begin
      macSumArea_adderTree_dataIn_7 = macIn_7_payload;
    end
  end

  assign pSumArea_pSumEn = (macSumArea_macSumValid && (! clear));
  assign pSumArea_last = (pSumArea_loopCnt == tmp_pSumArea_last);
  always @(*) begin
    pSumArea_pAddData = 32'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_mode)
          FC : begin
            pSumArea_pAddData = 32'h0;
          end
          CONV2D : begin
            pSumArea_pAddData = tmp_pSumArea_pAddData;
          end
          default : begin
            pSumArea_pAddData = 32'h0;
          end
        endcase
      end
    end
  end

  assign when_PPUnit_l75 = (pSumArea_spLenCnt < tmp_when_PPUnit_l75);
  assign when_PPUnit_l79 = (pSumArea_loopCnt < tmp_when_PPUnit_l79);
  assign bufArea_bufEn = (((parm_mode != CONV2D) && (((((((macIn_0_valid || macIn_1_valid) || macIn_2_valid) || macIn_3_valid) || macIn_4_valid) || macIn_5_valid) || macIn_6_valid) || macIn_7_valid)) && (! clear));
  assign bufArea_bufReg = tmp_bufArea_bufReg;
  assign bufArea_bufValid = (bufArea_cnt != 3'b111);
  assign when_PPUnit_l122 = (bufArea_cnt != 3'b111);
  always @(*) begin
    case(parm_mode)
      CONV2D : begin
        quantArea_quantEn = ((pSumArea_pSumValid && pSumArea_last) && (! clear));
      end
      default : begin
        quantArea_quantEn = (bufArea_bufValid && (! clear));
      end
    endcase
  end

  always @(*) begin
    case(parm_mode)
      CONV2D : begin
        quantArea_rawData = pSumArea_pSumReg;
      end
      default : begin
        quantArea_rawData = bufArea_bufReg;
      end
    endcase
  end

  assign tmp_when_PPUnit_l170 = ($signed(tmp_tmp_when_PPUnit_l170) + $signed(tmp_tmp_when_PPUnit_l170_9));
  assign when_PPUnit_l170 = ($signed(57'h1ffffffffffff80) < $signed(tmp_when_PPUnit_l170));
  always @(*) begin
    if(when_PPUnit_l170) begin
      tmp_quantArea_quantReg = 8'h80;
    end else begin
      if(when_PPUnit_l172) begin
        tmp_quantArea_quantReg = 8'h7f;
      end else begin
        tmp_quantArea_quantReg = tmp_when_PPUnit_l170[7:0];
      end
    end
  end

  assign when_PPUnit_l172 = ($signed(tmp_when_PPUnit_l170) < $signed(57'h00000000000007f));
  assign reluArea_reluEn = (quantArea_quantValid && (! clear));
  assign when_PPUnit_l193 = (($signed(quantArea_quantReg) < $signed(8'h0)) && reluArea_reluEn);
  assign featureOut_payload = reluArea_reluReg;
  assign featureOut_valid = reluArea_reluValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macSumArea_macSumReg <= 32'h0;
      macSumArea_macSumValid <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      pSumArea_pSumValid <= 1'b0;
      pSumArea_spLenCnt <= 6'h0;
      pSumArea_loopCnt <= 5'h0;
      bufArea_cnt <= 3'b111;
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
        pSumArea_loopCnt <= 5'h0;
      end else begin
        if(pSumArea_pSumEn) begin
          if(when_PPUnit_l75) begin
            pSumArea_spLenCnt <= (pSumArea_spLenCnt + 6'h01);
          end else begin
            pSumArea_spLenCnt <= 6'h0;
            if(when_PPUnit_l79) begin
              pSumArea_loopCnt <= (pSumArea_loopCnt + 5'h01);
            end else begin
              pSumArea_loopCnt <= 5'h0;
            end
          end
          pSumArea_pSumReg <= ($signed(macSumArea_macSumReg) + $signed(pSumArea_pAddData));
        end
      end
      if(bufArea_bufEn) begin
        bufArea_cnt <= 3'b000;
      end else begin
        if(when_PPUnit_l122) begin
          bufArea_cnt <= (bufArea_cnt + 3'b001);
        end
      end
      quantArea_quantValid <= quantArea_quantEn;
      if(quantArea_quantEn) begin
        quantArea_quantReg <= tmp_quantArea_quantReg;
      end
      reluArea_reluValid <= reluArea_reluEn;
      if(reluArea_reluEn) begin
        if(when_PPUnit_l193) begin
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
    end
    if(bufArea_bufEn) begin
      bufArea_macInReg_0 <= macIn_0_payload;
      bufArea_macInReg_1 <= macIn_1_payload;
      bufArea_macInReg_2 <= macIn_2_payload;
      bufArea_macInReg_3 <= macIn_3_payload;
      bufArea_macInReg_4 <= macIn_4_payload;
      bufArea_macInReg_5 <= macIn_5_payload;
      bufArea_macInReg_6 <= macIn_6_payload;
      bufArea_macInReg_7 <= macIn_7_payload;
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
