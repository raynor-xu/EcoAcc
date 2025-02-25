// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : MacCell
// Git hash  : 02491fef150ddb695e806a8318f17cf1104f38a0

`timescale 1ns/1ps

module MacCell (
  input  wire          en,
  input  wire [7:0]    featureIn_0,
  input  wire [7:0]    featureIn_1,
  input  wire [7:0]    featureIn_2,
  input  wire [7:0]    featureIn_3,
  input  wire [7:0]    featureIn_4,
  input  wire [7:0]    featureIn_5,
  input  wire [7:0]    featureIn_6,
  input  wire [7:0]    featureIn_7,
  input  wire [7:0]    weight_0,
  input  wire [7:0]    weight_1,
  input  wire [7:0]    weight_2,
  input  wire [7:0]    weight_3,
  input  wire [7:0]    weight_4,
  input  wire [7:0]    weight_5,
  input  wire [7:0]    weight_6,
  input  wire [7:0]    weight_7,
  output wire [15:0]   mulOut_0,
  output wire [15:0]   mulOut_1,
  output wire [15:0]   mulOut_2,
  output wire [15:0]   mulOut_3,
  output wire [15:0]   mulOut_4,
  output wire [15:0]   mulOut_5,
  output wire [15:0]   mulOut_6,
  output wire [15:0]   mulOut_7,
  output wire [31:0]   pSumOut,
  input  wire          clk,
  input  wire          reset
);

  wire       [18:0]   adderTree_1_dataOut;
  reg        [15:0]   mulReg_0;
  reg        [15:0]   mulReg_1;
  reg        [15:0]   mulReg_2;
  reg        [15:0]   mulReg_3;
  reg        [15:0]   mulReg_4;
  reg        [15:0]   mulReg_5;
  reg        [15:0]   mulReg_6;
  reg        [15:0]   mulReg_7;
  reg        [31:0]   pSumReg;

  AdderTree adderTree_1 (
    .dataIn_0 (mulReg_0[15:0]           ), //i
    .dataIn_1 (mulReg_1[15:0]           ), //i
    .dataIn_2 (mulReg_2[15:0]           ), //i
    .dataIn_3 (mulReg_3[15:0]           ), //i
    .dataIn_4 (mulReg_4[15:0]           ), //i
    .dataIn_5 (mulReg_5[15:0]           ), //i
    .dataIn_6 (mulReg_6[15:0]           ), //i
    .dataIn_7 (mulReg_7[15:0]           ), //i
    .dataOut  (adderTree_1_dataOut[18:0])  //o
  );
  assign pSumOut = pSumReg;
  assign mulOut_0 = mulReg_0;
  assign mulOut_1 = mulReg_1;
  assign mulOut_2 = mulReg_2;
  assign mulOut_3 = mulReg_3;
  assign mulOut_4 = mulReg_4;
  assign mulOut_5 = mulReg_5;
  assign mulOut_6 = mulReg_6;
  assign mulOut_7 = mulReg_7;
  always @(posedge clk) begin
    if(en) begin
      mulReg_0 <= ($signed(weight_0) * $signed(featureIn_0));
      mulReg_1 <= ($signed(weight_1) * $signed(featureIn_1));
      mulReg_2 <= ($signed(weight_2) * $signed(featureIn_2));
      mulReg_3 <= ($signed(weight_3) * $signed(featureIn_3));
      mulReg_4 <= ($signed(weight_4) * $signed(featureIn_4));
      mulReg_5 <= ($signed(weight_5) * $signed(featureIn_5));
      mulReg_6 <= ($signed(weight_6) * $signed(featureIn_6));
      mulReg_7 <= ($signed(weight_7) * $signed(featureIn_7));
      pSumReg <= {{13{adderTree_1_dataOut[18]}}, adderTree_1_dataOut};
    end else begin
      mulReg_0 <= 16'h0;
      mulReg_1 <= 16'h0;
      mulReg_2 <= 16'h0;
      mulReg_3 <= 16'h0;
      mulReg_4 <= 16'h0;
      mulReg_5 <= 16'h0;
      mulReg_6 <= 16'h0;
      mulReg_7 <= 16'h0;
      pSumReg <= 32'h0;
    end
  end


endmodule

module AdderTree (
  input  wire [15:0]   dataIn_0,
  input  wire [15:0]   dataIn_1,
  input  wire [15:0]   dataIn_2,
  input  wire [15:0]   dataIn_3,
  input  wire [15:0]   dataIn_4,
  input  wire [15:0]   dataIn_5,
  input  wire [15:0]   dataIn_6,
  input  wire [15:0]   dataIn_7,
  output wire [18:0]   dataOut
);

  wire       [17:0]   tmp_dataOut;
  wire       [17:0]   tmp_dataOut_1;
  wire       [16:0]   tmp_dataOut_2;
  wire       [16:0]   tmp_dataOut_3;
  wire       [15:0]   tmp_dataOut_4;
  wire       [16:0]   tmp_dataOut_5;
  wire       [15:0]   tmp_dataOut_6;
  wire       [17:0]   tmp_dataOut_7;
  wire       [16:0]   tmp_dataOut_8;
  wire       [16:0]   tmp_dataOut_9;
  wire       [15:0]   tmp_dataOut_10;
  wire       [16:0]   tmp_dataOut_11;
  wire       [15:0]   tmp_dataOut_12;

  assign tmp_dataOut = ($signed(tmp_dataOut_1) + $signed(tmp_dataOut_7));
  assign tmp_dataOut_2 = ($signed(tmp_dataOut_3) + $signed(tmp_dataOut_5));
  assign tmp_dataOut_1 = {{1{tmp_dataOut_2[16]}}, tmp_dataOut_2};
  assign tmp_dataOut_4 = ($signed(dataIn_0) + $signed(dataIn_1));
  assign tmp_dataOut_3 = {{1{tmp_dataOut_4[15]}}, tmp_dataOut_4};
  assign tmp_dataOut_6 = ($signed(dataIn_2) + $signed(dataIn_3));
  assign tmp_dataOut_5 = {{1{tmp_dataOut_6[15]}}, tmp_dataOut_6};
  assign tmp_dataOut_8 = ($signed(tmp_dataOut_9) + $signed(tmp_dataOut_11));
  assign tmp_dataOut_7 = {{1{tmp_dataOut_8[16]}}, tmp_dataOut_8};
  assign tmp_dataOut_10 = ($signed(dataIn_4) + $signed(dataIn_5));
  assign tmp_dataOut_9 = {{1{tmp_dataOut_10[15]}}, tmp_dataOut_10};
  assign tmp_dataOut_12 = ($signed(dataIn_6) + $signed(dataIn_7));
  assign tmp_dataOut_11 = {{1{tmp_dataOut_12[15]}}, tmp_dataOut_12};
  assign dataOut = {{1{tmp_dataOut[17]}}, tmp_dataOut};

endmodule
