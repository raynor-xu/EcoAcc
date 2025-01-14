// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : AdderTree
// Git hash  : 59115ab351cdde95c1001826ec9ef39681809d26

`timescale 1ns/1ps

module AdderTree (
  input  wire [7:0]    io_dataIn_0,
  input  wire [7:0]    io_dataIn_1,
  input  wire [7:0]    io_dataIn_2,
  input  wire [7:0]    io_dataIn_3,
  input  wire [7:0]    io_dataIn_4,
  input  wire [7:0]    io_dataIn_5,
  input  wire [7:0]    io_dataIn_6,
  input  wire [7:0]    io_dataIn_7,
  input  wire [7:0]    io_dataIn_8,
  input  wire [7:0]    io_dataIn_9,
  input  wire [7:0]    io_dataIn_10,
  input  wire [7:0]    io_dataIn_11,
  input  wire [7:0]    io_dataIn_12,
  input  wire [7:0]    io_dataIn_13,
  input  wire [7:0]    io_dataIn_14,
  input  wire [7:0]    io_dataIn_15,
  output wire [11:0]   io_dataOut
);

  wire       [10:0]   tmp_io_dataOut;
  wire       [10:0]   tmp_io_dataOut_1;
  wire       [9:0]    tmp_io_dataOut_2;
  wire       [9:0]    tmp_io_dataOut_3;
  wire       [8:0]    tmp_io_dataOut_4;
  wire       [8:0]    tmp_io_dataOut_5;
  wire       [7:0]    tmp_io_dataOut_6;
  wire       [8:0]    tmp_io_dataOut_7;
  wire       [7:0]    tmp_io_dataOut_8;
  wire       [9:0]    tmp_io_dataOut_9;
  wire       [8:0]    tmp_io_dataOut_10;
  wire       [8:0]    tmp_io_dataOut_11;
  wire       [7:0]    tmp_io_dataOut_12;
  wire       [8:0]    tmp_io_dataOut_13;
  wire       [7:0]    tmp_io_dataOut_14;
  wire       [10:0]   tmp_io_dataOut_15;
  wire       [9:0]    tmp_io_dataOut_16;
  wire       [9:0]    tmp_io_dataOut_17;
  wire       [8:0]    tmp_io_dataOut_18;
  wire       [8:0]    tmp_io_dataOut_19;
  wire       [7:0]    tmp_io_dataOut_20;
  wire       [8:0]    tmp_io_dataOut_21;
  wire       [7:0]    tmp_io_dataOut_22;
  wire       [9:0]    tmp_io_dataOut_23;
  wire       [8:0]    tmp_io_dataOut_24;
  wire       [8:0]    tmp_io_dataOut_25;
  wire       [7:0]    tmp_io_dataOut_26;
  wire       [8:0]    tmp_io_dataOut_27;
  wire       [7:0]    tmp_io_dataOut_28;

  assign tmp_io_dataOut = ($signed(tmp_io_dataOut_1) + $signed(tmp_io_dataOut_15));
  assign tmp_io_dataOut_2 = ($signed(tmp_io_dataOut_3) + $signed(tmp_io_dataOut_9));
  assign tmp_io_dataOut_1 = {{1{tmp_io_dataOut_2[9]}}, tmp_io_dataOut_2};
  assign tmp_io_dataOut_4 = ($signed(tmp_io_dataOut_5) + $signed(tmp_io_dataOut_7));
  assign tmp_io_dataOut_3 = {{1{tmp_io_dataOut_4[8]}}, tmp_io_dataOut_4};
  assign tmp_io_dataOut_6 = ($signed(io_dataIn_0) + $signed(io_dataIn_1));
  assign tmp_io_dataOut_5 = {{1{tmp_io_dataOut_6[7]}}, tmp_io_dataOut_6};
  assign tmp_io_dataOut_8 = ($signed(io_dataIn_2) + $signed(io_dataIn_3));
  assign tmp_io_dataOut_7 = {{1{tmp_io_dataOut_8[7]}}, tmp_io_dataOut_8};
  assign tmp_io_dataOut_10 = ($signed(tmp_io_dataOut_11) + $signed(tmp_io_dataOut_13));
  assign tmp_io_dataOut_9 = {{1{tmp_io_dataOut_10[8]}}, tmp_io_dataOut_10};
  assign tmp_io_dataOut_12 = ($signed(io_dataIn_4) + $signed(io_dataIn_5));
  assign tmp_io_dataOut_11 = {{1{tmp_io_dataOut_12[7]}}, tmp_io_dataOut_12};
  assign tmp_io_dataOut_14 = ($signed(io_dataIn_6) + $signed(io_dataIn_7));
  assign tmp_io_dataOut_13 = {{1{tmp_io_dataOut_14[7]}}, tmp_io_dataOut_14};
  assign tmp_io_dataOut_16 = ($signed(tmp_io_dataOut_17) + $signed(tmp_io_dataOut_23));
  assign tmp_io_dataOut_15 = {{1{tmp_io_dataOut_16[9]}}, tmp_io_dataOut_16};
  assign tmp_io_dataOut_18 = ($signed(tmp_io_dataOut_19) + $signed(tmp_io_dataOut_21));
  assign tmp_io_dataOut_17 = {{1{tmp_io_dataOut_18[8]}}, tmp_io_dataOut_18};
  assign tmp_io_dataOut_20 = ($signed(io_dataIn_8) + $signed(io_dataIn_9));
  assign tmp_io_dataOut_19 = {{1{tmp_io_dataOut_20[7]}}, tmp_io_dataOut_20};
  assign tmp_io_dataOut_22 = ($signed(io_dataIn_10) + $signed(io_dataIn_11));
  assign tmp_io_dataOut_21 = {{1{tmp_io_dataOut_22[7]}}, tmp_io_dataOut_22};
  assign tmp_io_dataOut_24 = ($signed(tmp_io_dataOut_25) + $signed(tmp_io_dataOut_27));
  assign tmp_io_dataOut_23 = {{1{tmp_io_dataOut_24[8]}}, tmp_io_dataOut_24};
  assign tmp_io_dataOut_26 = ($signed(io_dataIn_12) + $signed(io_dataIn_13));
  assign tmp_io_dataOut_25 = {{1{tmp_io_dataOut_26[7]}}, tmp_io_dataOut_26};
  assign tmp_io_dataOut_28 = ($signed(io_dataIn_14) + $signed(io_dataIn_15));
  assign tmp_io_dataOut_27 = {{1{tmp_io_dataOut_28[7]}}, tmp_io_dataOut_28};
  assign io_dataOut = {{1{tmp_io_dataOut[10]}}, tmp_io_dataOut};

endmodule
