// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PEArray

`timescale 1ns/1ps

module PEArray (
  input  wire          clear,
  input  wire          shift,
  input  wire [1:0]    mode,
  input  wire          featureIn_0_valid,
  input  wire [7:0]    featureIn_0_payload,
  input  wire          featureIn_1_valid,
  input  wire [7:0]    featureIn_1_payload,
  input  wire          featureIn_2_valid,
  input  wire [7:0]    featureIn_2_payload,
  input  wire          featureIn_3_valid,
  input  wire [7:0]    featureIn_3_payload,
  input  wire          featureIn_4_valid,
  input  wire [7:0]    featureIn_4_payload,
  input  wire          featureIn_5_valid,
  input  wire [7:0]    featureIn_5_payload,
  input  wire          featureIn_6_valid,
  input  wire [7:0]    featureIn_6_payload,
  input  wire          featureIn_7_valid,
  input  wire [7:0]    featureIn_7_payload,
  input  wire          weightIn_0_valid,
  input  wire [7:0]    weightIn_0_payload,
  input  wire          weightIn_1_valid,
  input  wire [7:0]    weightIn_1_payload,
  input  wire          weightIn_2_valid,
  input  wire [7:0]    weightIn_2_payload,
  input  wire          weightIn_3_valid,
  input  wire [7:0]    weightIn_3_payload,
  input  wire          weightIn_4_valid,
  input  wire [7:0]    weightIn_4_payload,
  input  wire          weightIn_5_valid,
  input  wire [7:0]    weightIn_5_payload,
  input  wire          weightIn_6_valid,
  input  wire [7:0]    weightIn_6_payload,
  input  wire          weightIn_7_valid,
  input  wire [7:0]    weightIn_7_payload,
  input  wire [2:0]    weightSel,
  output wire [31:0]   pSumOut_0,
  output wire [31:0]   pSumOut_1,
  output wire [31:0]   pSumOut_2,
  output wire [31:0]   pSumOut_3,
  output wire [31:0]   pSumOut_4,
  output wire [31:0]   pSumOut_5,
  output wire [31:0]   pSumOut_6,
  output wire [31:0]   pSumOut_7,
  input  wire          clk,
  input  wire          reset
);

  wire                peCores_0_0_weightIn_valid;
  wire                peCores_0_1_weightIn_valid;
  wire                peCores_0_2_weightIn_valid;
  wire                peCores_0_3_weightIn_valid;
  wire                peCores_0_4_weightIn_valid;
  wire                peCores_0_5_weightIn_valid;
  wire                peCores_0_6_weightIn_valid;
  wire                peCores_0_7_weightIn_valid;
  wire                peCores_1_0_weightIn_valid;
  wire                peCores_1_1_weightIn_valid;
  wire                peCores_1_2_weightIn_valid;
  wire                peCores_1_3_weightIn_valid;
  wire                peCores_1_4_weightIn_valid;
  wire                peCores_1_5_weightIn_valid;
  wire                peCores_1_6_weightIn_valid;
  wire                peCores_1_7_weightIn_valid;
  wire                peCores_2_0_weightIn_valid;
  wire                peCores_2_1_weightIn_valid;
  wire                peCores_2_2_weightIn_valid;
  wire                peCores_2_3_weightIn_valid;
  wire                peCores_2_4_weightIn_valid;
  wire                peCores_2_5_weightIn_valid;
  wire                peCores_2_6_weightIn_valid;
  wire                peCores_2_7_weightIn_valid;
  wire                peCores_3_0_weightIn_valid;
  wire                peCores_3_1_weightIn_valid;
  wire                peCores_3_2_weightIn_valid;
  wire                peCores_3_3_weightIn_valid;
  wire                peCores_3_4_weightIn_valid;
  wire                peCores_3_5_weightIn_valid;
  wire                peCores_3_6_weightIn_valid;
  wire                peCores_3_7_weightIn_valid;
  wire                peCores_4_0_weightIn_valid;
  wire                peCores_4_1_weightIn_valid;
  wire                peCores_4_2_weightIn_valid;
  wire                peCores_4_3_weightIn_valid;
  wire                peCores_4_4_weightIn_valid;
  wire                peCores_4_5_weightIn_valid;
  wire                peCores_4_6_weightIn_valid;
  wire                peCores_4_7_weightIn_valid;
  wire                peCores_5_0_weightIn_valid;
  wire                peCores_5_1_weightIn_valid;
  wire                peCores_5_2_weightIn_valid;
  wire                peCores_5_3_weightIn_valid;
  wire                peCores_5_4_weightIn_valid;
  wire                peCores_5_5_weightIn_valid;
  wire                peCores_5_6_weightIn_valid;
  wire                peCores_5_7_weightIn_valid;
  wire                peCores_6_0_weightIn_valid;
  wire                peCores_6_1_weightIn_valid;
  wire                peCores_6_2_weightIn_valid;
  wire                peCores_6_3_weightIn_valid;
  wire                peCores_6_4_weightIn_valid;
  wire                peCores_6_5_weightIn_valid;
  wire                peCores_6_6_weightIn_valid;
  wire                peCores_6_7_weightIn_valid;
  wire                peCores_7_0_weightIn_valid;
  wire                peCores_7_1_weightIn_valid;
  wire                peCores_7_2_weightIn_valid;
  wire                peCores_7_3_weightIn_valid;
  wire                peCores_7_4_weightIn_valid;
  wire                peCores_7_5_weightIn_valid;
  wire                peCores_7_6_weightIn_valid;
  wire                peCores_7_7_weightIn_valid;
  wire       [31:0]   peCores_0_0_pSumOut;
  wire       [31:0]   peCores_0_1_pSumOut;
  wire       [31:0]   peCores_0_2_pSumOut;
  wire       [31:0]   peCores_0_3_pSumOut;
  wire       [31:0]   peCores_0_4_pSumOut;
  wire       [31:0]   peCores_0_5_pSumOut;
  wire       [31:0]   peCores_0_6_pSumOut;
  wire       [31:0]   peCores_0_7_pSumOut;
  wire       [31:0]   peCores_1_0_pSumOut;
  wire       [31:0]   peCores_1_1_pSumOut;
  wire       [31:0]   peCores_1_2_pSumOut;
  wire       [31:0]   peCores_1_3_pSumOut;
  wire       [31:0]   peCores_1_4_pSumOut;
  wire       [31:0]   peCores_1_5_pSumOut;
  wire       [31:0]   peCores_1_6_pSumOut;
  wire       [31:0]   peCores_1_7_pSumOut;
  wire       [31:0]   peCores_2_0_pSumOut;
  wire       [31:0]   peCores_2_1_pSumOut;
  wire       [31:0]   peCores_2_2_pSumOut;
  wire       [31:0]   peCores_2_3_pSumOut;
  wire       [31:0]   peCores_2_4_pSumOut;
  wire       [31:0]   peCores_2_5_pSumOut;
  wire       [31:0]   peCores_2_6_pSumOut;
  wire       [31:0]   peCores_2_7_pSumOut;
  wire       [31:0]   peCores_3_0_pSumOut;
  wire       [31:0]   peCores_3_1_pSumOut;
  wire       [31:0]   peCores_3_2_pSumOut;
  wire       [31:0]   peCores_3_3_pSumOut;
  wire       [31:0]   peCores_3_4_pSumOut;
  wire       [31:0]   peCores_3_5_pSumOut;
  wire       [31:0]   peCores_3_6_pSumOut;
  wire       [31:0]   peCores_3_7_pSumOut;
  wire       [31:0]   peCores_4_0_pSumOut;
  wire       [31:0]   peCores_4_1_pSumOut;
  wire       [31:0]   peCores_4_2_pSumOut;
  wire       [31:0]   peCores_4_3_pSumOut;
  wire       [31:0]   peCores_4_4_pSumOut;
  wire       [31:0]   peCores_4_5_pSumOut;
  wire       [31:0]   peCores_4_6_pSumOut;
  wire       [31:0]   peCores_4_7_pSumOut;
  wire       [31:0]   peCores_5_0_pSumOut;
  wire       [31:0]   peCores_5_1_pSumOut;
  wire       [31:0]   peCores_5_2_pSumOut;
  wire       [31:0]   peCores_5_3_pSumOut;
  wire       [31:0]   peCores_5_4_pSumOut;
  wire       [31:0]   peCores_5_5_pSumOut;
  wire       [31:0]   peCores_5_6_pSumOut;
  wire       [31:0]   peCores_5_7_pSumOut;
  wire       [31:0]   peCores_6_0_pSumOut;
  wire       [31:0]   peCores_6_1_pSumOut;
  wire       [31:0]   peCores_6_2_pSumOut;
  wire       [31:0]   peCores_6_3_pSumOut;
  wire       [31:0]   peCores_6_4_pSumOut;
  wire       [31:0]   peCores_6_5_pSumOut;
  wire       [31:0]   peCores_6_6_pSumOut;
  wire       [31:0]   peCores_6_7_pSumOut;
  wire       [31:0]   peCores_7_0_pSumOut;
  wire       [31:0]   peCores_7_1_pSumOut;
  wire       [31:0]   peCores_7_2_pSumOut;
  wire       [31:0]   peCores_7_3_pSumOut;
  wire       [31:0]   peCores_7_4_pSumOut;
  wire       [31:0]   peCores_7_5_pSumOut;
  wire       [31:0]   peCores_7_6_pSumOut;
  wire       [31:0]   peCores_7_7_pSumOut;

  PECore peCores_0_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_0_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_0_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_0_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_0_payload[7:0]   ), //i
    .pSumIn            (peCores_0_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_0_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_1_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_1_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_1_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_1_payload[7:0]   ), //i
    .pSumIn            (peCores_1_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_1_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_2_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_2_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_2_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_2_payload[7:0]   ), //i
    .pSumIn            (peCores_2_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_2_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_3_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_3_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_3_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_3_payload[7:0]   ), //i
    .pSumIn            (peCores_3_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_3_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_4_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_4_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_4_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_4_payload[7:0]   ), //i
    .pSumIn            (peCores_4_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_4_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_5_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_5_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_5_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_5_payload[7:0]   ), //i
    .pSumIn            (peCores_5_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_5_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_6_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_6_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_6_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_6_payload[7:0]   ), //i
    .pSumIn            (peCores_6_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_6_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_0 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_0_valid         ), //i
    .featureIn_payload (featureIn_0_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_0_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (32'h0                     ), //i
    .pSumOut           (peCores_7_0_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_1 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_1_valid         ), //i
    .featureIn_payload (featureIn_1_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_1_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_0_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_1_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_2 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_2_valid         ), //i
    .featureIn_payload (featureIn_2_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_2_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_1_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_2_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_3 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_3_valid         ), //i
    .featureIn_payload (featureIn_3_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_3_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_2_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_3_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_4 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_4_valid         ), //i
    .featureIn_payload (featureIn_4_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_4_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_3_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_4_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_5 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_5_valid         ), //i
    .featureIn_payload (featureIn_5_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_5_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_4_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_5_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_6 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_6_valid         ), //i
    .featureIn_payload (featureIn_6_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_6_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_5_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_6_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  PECore peCores_7_7 (
    .clear             (clear                     ), //i
    .shift             (shift                     ), //i
    .mode              (mode[1:0]                 ), //i
    .featureIn_valid   (featureIn_7_valid         ), //i
    .featureIn_payload (featureIn_7_payload[7:0]  ), //i
    .weightIn_valid    (peCores_7_7_weightIn_valid), //i
    .weightIn_payload  (weightIn_7_payload[7:0]   ), //i
    .pSumIn            (peCores_7_6_pSumOut[31:0] ), //i
    .pSumOut           (peCores_7_7_pSumOut[31:0] ), //o
    .clk               (clk                       ), //i
    .reset             (reset                     )  //i
  );
  assign peCores_0_0_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_1_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_2_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_3_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_4_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_5_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_6_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_0_7_weightIn_valid = (weightIn_0_valid && (weightSel == 3'b000));
  assign peCores_1_0_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_1_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_2_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_3_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_4_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_5_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_6_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_1_7_weightIn_valid = (weightIn_1_valid && (weightSel == 3'b001));
  assign peCores_2_0_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_1_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_2_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_3_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_4_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_5_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_6_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_2_7_weightIn_valid = (weightIn_2_valid && (weightSel == 3'b010));
  assign peCores_3_0_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_1_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_2_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_3_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_4_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_5_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_6_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_3_7_weightIn_valid = (weightIn_3_valid && (weightSel == 3'b011));
  assign peCores_4_0_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_1_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_2_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_3_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_4_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_5_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_6_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_4_7_weightIn_valid = (weightIn_4_valid && (weightSel == 3'b100));
  assign peCores_5_0_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_1_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_2_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_3_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_4_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_5_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_6_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_5_7_weightIn_valid = (weightIn_5_valid && (weightSel == 3'b101));
  assign peCores_6_0_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_1_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_2_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_3_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_4_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_5_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_6_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_6_7_weightIn_valid = (weightIn_6_valid && (weightSel == 3'b110));
  assign peCores_7_0_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_1_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_2_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_3_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_4_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_5_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_6_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign peCores_7_7_weightIn_valid = (weightIn_7_valid && (weightSel == 3'b111));
  assign pSumOut_0 = peCores_0_7_pSumOut;
  assign pSumOut_1 = peCores_1_7_pSumOut;
  assign pSumOut_2 = peCores_2_7_pSumOut;
  assign pSumOut_3 = peCores_3_7_pSumOut;
  assign pSumOut_4 = peCores_4_7_pSumOut;
  assign pSumOut_5 = peCores_5_7_pSumOut;
  assign pSumOut_6 = peCores_6_7_pSumOut;
  assign pSumOut_7 = peCores_7_7_pSumOut;

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
  input  wire          shift,
  input  wire [1:0]    mode,
  input  wire          featureIn_valid,
  input  wire [7:0]    featureIn_payload,
  input  wire          weightIn_valid,
  input  wire [7:0]    weightIn_payload,
  input  wire [31:0]   pSumIn,
  output wire [31:0]   pSumOut,
  input  wire          clk,
  input  wire          reset
);

  wire                lwb_io_push_ready;
  wire                lwb_io_pop_valid;
  wire       [7:0]    lwb_io_pop_payload;
  wire       [11:0]   lwb_io_occupancy;
  wire       [11:0]   lwb_io_availability;
  wire       [31:0]   tmp_pSum;
  wire                weight_valid;
  wire                weight_ready;
  wire       [7:0]    weight_payload;
  wire       [7:0]    feature;
  reg        [31:0]   pSum;
  wire                mulEn;
  wire       [15:0]   fwMul;
  wire                weightIn_toStream_valid;
  wire                weightIn_toStream_ready;
  wire       [7:0]    weightIn_toStream_payload;

  assign tmp_pSum = {{16{fwMul[15]}}, fwMul};
  StreamFifo_63 lwb (
    .io_push_valid   (weightIn_toStream_valid       ), //i
    .io_push_ready   (lwb_io_push_ready             ), //o
    .io_push_payload (weightIn_toStream_payload[7:0]), //i
    .io_pop_valid    (lwb_io_pop_valid              ), //o
    .io_pop_ready    (weight_ready                  ), //i
    .io_pop_payload  (lwb_io_pop_payload[7:0]       ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (lwb_io_occupancy[11:0]        ), //o
    .io_availability (lwb_io_availability[11:0]     ), //o
    .clk             (clk                           ), //i
    .reset           (reset                         )  //i
  );
  assign mulEn = ((($signed(feature) != $signed(8'h0)) && ($signed(weight_payload) != $signed(8'h0))) && featureIn_valid);
  assign fwMul = ($signed(feature) * $signed(weight_payload));
  assign weightIn_toStream_valid = weightIn_valid;
  assign weightIn_toStream_payload = weightIn_payload;
  assign weightIn_toStream_ready = lwb_io_push_ready;
  assign weight_valid = lwb_io_pop_valid;
  assign weight_payload = lwb_io_pop_payload;
  assign feature = featureIn_payload;
  assign weight_ready = (featureIn_valid && (mode != 2'b11));
  assign pSumOut = pSum;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pSum <= 32'h0;
    end else begin
      if(clear) begin
        pSum <= 32'h0;
      end else begin
        if(shift) begin
          pSum <= pSumIn;
        end else begin
          if(mulEn) begin
            case(mode)
              2'b00 : begin
                pSum <= ($signed(pSum) + $signed(tmp_pSum));
              end
              2'b01 : begin
                pSum <= {{16{fwMul[15]}}, fwMul};
              end
              default : begin
                pSum <= 32'h0;
              end
            endcase
          end
        end
      end
    end
  end


endmodule

//StreamFifo replaced by StreamFifo_63

//StreamFifo_1 replaced by StreamFifo_63

//StreamFifo_2 replaced by StreamFifo_63

//StreamFifo_3 replaced by StreamFifo_63

//StreamFifo_4 replaced by StreamFifo_63

//StreamFifo_5 replaced by StreamFifo_63

//StreamFifo_6 replaced by StreamFifo_63

//StreamFifo_7 replaced by StreamFifo_63

//StreamFifo_8 replaced by StreamFifo_63

//StreamFifo_9 replaced by StreamFifo_63

//StreamFifo_10 replaced by StreamFifo_63

//StreamFifo_11 replaced by StreamFifo_63

//StreamFifo_12 replaced by StreamFifo_63

//StreamFifo_13 replaced by StreamFifo_63

//StreamFifo_14 replaced by StreamFifo_63

//StreamFifo_15 replaced by StreamFifo_63

//StreamFifo_16 replaced by StreamFifo_63

//StreamFifo_17 replaced by StreamFifo_63

//StreamFifo_18 replaced by StreamFifo_63

//StreamFifo_19 replaced by StreamFifo_63

//StreamFifo_20 replaced by StreamFifo_63

//StreamFifo_21 replaced by StreamFifo_63

//StreamFifo_22 replaced by StreamFifo_63

//StreamFifo_23 replaced by StreamFifo_63

//StreamFifo_24 replaced by StreamFifo_63

//StreamFifo_25 replaced by StreamFifo_63

//StreamFifo_26 replaced by StreamFifo_63

//StreamFifo_27 replaced by StreamFifo_63

//StreamFifo_28 replaced by StreamFifo_63

//StreamFifo_29 replaced by StreamFifo_63

//StreamFifo_30 replaced by StreamFifo_63

//StreamFifo_31 replaced by StreamFifo_63

//StreamFifo_32 replaced by StreamFifo_63

//StreamFifo_33 replaced by StreamFifo_63

//StreamFifo_34 replaced by StreamFifo_63

//StreamFifo_35 replaced by StreamFifo_63

//StreamFifo_36 replaced by StreamFifo_63

//StreamFifo_37 replaced by StreamFifo_63

//StreamFifo_38 replaced by StreamFifo_63

//StreamFifo_39 replaced by StreamFifo_63

//StreamFifo_40 replaced by StreamFifo_63

//StreamFifo_41 replaced by StreamFifo_63

//StreamFifo_42 replaced by StreamFifo_63

//StreamFifo_43 replaced by StreamFifo_63

//StreamFifo_44 replaced by StreamFifo_63

//StreamFifo_45 replaced by StreamFifo_63

//StreamFifo_46 replaced by StreamFifo_63

//StreamFifo_47 replaced by StreamFifo_63

//StreamFifo_48 replaced by StreamFifo_63

//StreamFifo_49 replaced by StreamFifo_63

//StreamFifo_50 replaced by StreamFifo_63

//StreamFifo_51 replaced by StreamFifo_63

//StreamFifo_52 replaced by StreamFifo_63

//StreamFifo_53 replaced by StreamFifo_63

//StreamFifo_54 replaced by StreamFifo_63

//StreamFifo_55 replaced by StreamFifo_63

//StreamFifo_56 replaced by StreamFifo_63

//StreamFifo_57 replaced by StreamFifo_63

//StreamFifo_58 replaced by StreamFifo_63

//StreamFifo_59 replaced by StreamFifo_63

//StreamFifo_60 replaced by StreamFifo_63

//StreamFifo_61 replaced by StreamFifo_63

//StreamFifo_62 replaced by StreamFifo_63

module StreamFifo_63 (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload,
  input  wire          io_flush,
  output wire [11:0]   io_occupancy,
  output wire [11:0]   io_availability,
  input  wire          clk,
  input  wire          reset
);

  reg        [7:0]    logic_ram_spinal_port1;
  wire       [7:0]    tmp_logic_ram_port;
  reg                 tmp_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [11:0]   logic_ptr_push;
  reg        [11:0]   logic_ptr_pop;
  wire       [11:0]   logic_ptr_occupancy;
  wire       [11:0]   logic_ptr_popOnIo;
  wire                when_Stream_l1248;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [10:0]   logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [10:0]   logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [10:0]   logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [10:0]   logic_pop_addressGen_rData;
  wire                when_Stream_l375;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [10:0]   logic_pop_sync_readPort_cmd_payload;
  wire       [7:0]    logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [11:0]   logic_pop_sync_popReg;
  reg [7:0] logic_ram [0:2047];

  assign tmp_logic_ram_port = logic_push_onRam_write_payload_data;
  always @(posedge clk) begin
    if(tmp_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= tmp_logic_ram_port;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    tmp_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      tmp_1 = 1'b1;
    end
  end

  assign when_Stream_l1248 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 12'h800) == 12'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[10:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[10:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l375) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l375 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (12'h800 - logic_ptr_occupancy);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      logic_ptr_push <= 12'h0;
      logic_ptr_pop <= 12'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 12'h0;
    end else begin
      if(when_Stream_l1248) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 12'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 12'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 12'h0;
        logic_ptr_pop <= 12'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 12'h0;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule
