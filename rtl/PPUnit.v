// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PPUnit
// Git hash  : e35bdecefc87ce5144043b767ddb0a1d0eee2a79

`timescale 1ns/1ps

module PPUnit (
  input  wire          reluEn,
  input  wire          lastEn,
  input  wire [1:0]    mode,
  input  wire          biasIn_valid,
  output reg           biasIn_ready,
  input  wire [31:0]   biasIn_payload,
  input  wire          pSumIn_valid,
  output reg           pSumIn_ready,
  input  wire [31:0]   pSumIn_payload,
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
  output reg           pSumOut_valid,
  output wire [31:0]   pSumOut_payload,
  output wire          resultOut_valid,
  output wire [7:0]    resultOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [34:0]   macSumArea_adderTree_dataOut;
  wire       [23:0]   tmp_quantArea_quantReg;
  reg        [31:0]   macSumArea_macSumReg;
  wire                macSumArea_macValid;
  reg                 macSumArea_macSumValid;
  reg        [31:0]   pSumArea_pAddData;
  reg        [31:0]   pSumArea_pSumReg;
  reg        [7:0]    quantArea_quantReg;
  reg                 quantArea_quantValid;
  wire                when_PPUnit_l90;
  reg        [7:0]    reluArea_reluReg;
  reg                 reluArea_reluValid;
  wire                when_PPUnit_l102;

  assign tmp_quantArea_quantReg = (pSumArea_pSumReg >>> 4'd8);
  AdderTree macSumArea_adderTree (
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
  assign macSumArea_macValid = (((((((macIn_0_valid || macIn_1_valid) || macIn_2_valid) || macIn_3_valid) || macIn_4_valid) || macIn_5_valid) || macIn_6_valid) || macIn_7_valid);
  always @(*) begin
    if(macSumArea_macSumValid) begin
      case(mode)
        2'b00 : begin
          pSumArea_pAddData = 32'h0;
        end
        2'b01 : begin
          pSumArea_pAddData = pSumIn_payload;
        end
        2'b10 : begin
          pSumArea_pAddData = biasIn_payload;
        end
        default : begin
          pSumArea_pAddData = ($signed(pSumIn_payload) + $signed(biasIn_payload));
        end
      endcase
    end else begin
      pSumArea_pAddData = 32'h0;
    end
  end

  always @(*) begin
    if(macSumArea_macSumValid) begin
      case(mode)
        2'b00 : begin
          pSumIn_ready = 1'b0;
        end
        2'b01 : begin
          pSumIn_ready = 1'b1;
        end
        2'b10 : begin
          pSumIn_ready = 1'b0;
        end
        default : begin
          pSumIn_ready = 1'b1;
        end
      endcase
    end else begin
      pSumIn_ready = 1'b0;
    end
  end

  always @(*) begin
    if(macSumArea_macSumValid) begin
      case(mode)
        2'b00 : begin
          biasIn_ready = 1'b0;
        end
        2'b01 : begin
          biasIn_ready = 1'b0;
        end
        2'b10 : begin
          biasIn_ready = 1'b1;
        end
        default : begin
          biasIn_ready = 1'b1;
        end
      endcase
    end else begin
      biasIn_ready = 1'b0;
    end
  end

  always @(*) begin
    if(macSumArea_macSumValid) begin
      pSumOut_valid = 1'b1;
    end else begin
      pSumOut_valid = 1'b0;
    end
  end

  assign pSumOut_payload = pSumArea_pSumReg;
  assign when_PPUnit_l90 = (pSumOut_valid && lastEn);
  assign when_PPUnit_l102 = (($signed(quantArea_quantReg) < $signed(8'h0)) && reluEn);
  assign resultOut_payload = reluArea_reluReg;
  assign resultOut_valid = reluArea_reluValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macSumArea_macSumReg <= 32'h0;
      macSumArea_macSumValid <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      quantArea_quantReg <= 8'h0;
      quantArea_quantValid <= 1'b0;
      reluArea_reluReg <= 8'h0;
      reluArea_reluValid <= 1'b0;
    end else begin
      macSumArea_macSumValid <= macSumArea_macValid;
      if(macSumArea_macValid) begin
        macSumArea_macSumReg <= macSumArea_adderTree_dataOut[31:0];
      end
      if(macSumArea_macSumValid) begin
        pSumArea_pSumReg <= ($signed(macSumArea_macSumReg) + $signed(pSumArea_pAddData));
      end
      quantArea_quantValid <= (pSumOut_valid && lastEn);
      if(when_PPUnit_l90) begin
        quantArea_quantReg <= tmp_quantArea_quantReg[7:0];
      end
      reluArea_reluValid <= quantArea_quantValid;
      if(when_PPUnit_l102) begin
        reluArea_reluReg <= 8'h0;
      end else begin
        reluArea_reluReg <= quantArea_quantReg;
      end
    end
  end


endmodule

module AdderTree (
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
