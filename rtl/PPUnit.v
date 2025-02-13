// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PPUnit
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module PPUnit (
  input  wire          clear,
  input  wire          relu,
  input  wire          last,
  input  wire [1:0]    mode,
  input  wire [5:0]    spLen,
  input  wire          biasIn_valid,
  output reg           biasIn_ready,
  input  wire [31:0]   biasIn_payload,
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
  output wire          resultOut_valid,
  output wire [7:0]    resultOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [34:0]   macSumArea_adderTree_dataOut;
  wire       [5:0]    tmp_when_PPUnit_l65;
  reg        [31:0]   tmp_tmp_pSumArea_pAddData;
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
  wire                when_PPUnit_l65;
  wire       [31:0]   tmp_pSumArea_pAddData;
  reg        [7:0]    quantArea_quantReg;
  wire                quantArea_quantEn;
  reg                 quantArea_quantValid;
  reg        [7:0]    reluArea_reluReg;
  wire                reluArea_reluEn;
  reg                 reluArea_reluValid;
  wire                when_PPUnit_l119;

  assign tmp_when_PPUnit_l65 = (spLen - 6'h01);
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
  always @(*) begin
    case(pSumArea_spLenCnt)
      6'b000000 : tmp_tmp_pSumArea_pAddData = lfBuffer_0;
      6'b000001 : tmp_tmp_pSumArea_pAddData = lfBuffer_1;
      6'b000010 : tmp_tmp_pSumArea_pAddData = lfBuffer_2;
      6'b000011 : tmp_tmp_pSumArea_pAddData = lfBuffer_3;
      6'b000100 : tmp_tmp_pSumArea_pAddData = lfBuffer_4;
      6'b000101 : tmp_tmp_pSumArea_pAddData = lfBuffer_5;
      6'b000110 : tmp_tmp_pSumArea_pAddData = lfBuffer_6;
      6'b000111 : tmp_tmp_pSumArea_pAddData = lfBuffer_7;
      6'b001000 : tmp_tmp_pSumArea_pAddData = lfBuffer_8;
      6'b001001 : tmp_tmp_pSumArea_pAddData = lfBuffer_9;
      6'b001010 : tmp_tmp_pSumArea_pAddData = lfBuffer_10;
      6'b001011 : tmp_tmp_pSumArea_pAddData = lfBuffer_11;
      6'b001100 : tmp_tmp_pSumArea_pAddData = lfBuffer_12;
      6'b001101 : tmp_tmp_pSumArea_pAddData = lfBuffer_13;
      6'b001110 : tmp_tmp_pSumArea_pAddData = lfBuffer_14;
      6'b001111 : tmp_tmp_pSumArea_pAddData = lfBuffer_15;
      6'b010000 : tmp_tmp_pSumArea_pAddData = lfBuffer_16;
      6'b010001 : tmp_tmp_pSumArea_pAddData = lfBuffer_17;
      6'b010010 : tmp_tmp_pSumArea_pAddData = lfBuffer_18;
      6'b010011 : tmp_tmp_pSumArea_pAddData = lfBuffer_19;
      6'b010100 : tmp_tmp_pSumArea_pAddData = lfBuffer_20;
      6'b010101 : tmp_tmp_pSumArea_pAddData = lfBuffer_21;
      6'b010110 : tmp_tmp_pSumArea_pAddData = lfBuffer_22;
      6'b010111 : tmp_tmp_pSumArea_pAddData = lfBuffer_23;
      6'b011000 : tmp_tmp_pSumArea_pAddData = lfBuffer_24;
      6'b011001 : tmp_tmp_pSumArea_pAddData = lfBuffer_25;
      6'b011010 : tmp_tmp_pSumArea_pAddData = lfBuffer_26;
      6'b011011 : tmp_tmp_pSumArea_pAddData = lfBuffer_27;
      6'b011100 : tmp_tmp_pSumArea_pAddData = lfBuffer_28;
      6'b011101 : tmp_tmp_pSumArea_pAddData = lfBuffer_29;
      6'b011110 : tmp_tmp_pSumArea_pAddData = lfBuffer_30;
      6'b011111 : tmp_tmp_pSumArea_pAddData = lfBuffer_31;
      6'b100000 : tmp_tmp_pSumArea_pAddData = lfBuffer_32;
      6'b100001 : tmp_tmp_pSumArea_pAddData = lfBuffer_33;
      6'b100010 : tmp_tmp_pSumArea_pAddData = lfBuffer_34;
      6'b100011 : tmp_tmp_pSumArea_pAddData = lfBuffer_35;
      6'b100100 : tmp_tmp_pSumArea_pAddData = lfBuffer_36;
      6'b100101 : tmp_tmp_pSumArea_pAddData = lfBuffer_37;
      6'b100110 : tmp_tmp_pSumArea_pAddData = lfBuffer_38;
      6'b100111 : tmp_tmp_pSumArea_pAddData = lfBuffer_39;
      6'b101000 : tmp_tmp_pSumArea_pAddData = lfBuffer_40;
      6'b101001 : tmp_tmp_pSumArea_pAddData = lfBuffer_41;
      6'b101010 : tmp_tmp_pSumArea_pAddData = lfBuffer_42;
      6'b101011 : tmp_tmp_pSumArea_pAddData = lfBuffer_43;
      6'b101100 : tmp_tmp_pSumArea_pAddData = lfBuffer_44;
      6'b101101 : tmp_tmp_pSumArea_pAddData = lfBuffer_45;
      6'b101110 : tmp_tmp_pSumArea_pAddData = lfBuffer_46;
      6'b101111 : tmp_tmp_pSumArea_pAddData = lfBuffer_47;
      6'b110000 : tmp_tmp_pSumArea_pAddData = lfBuffer_48;
      6'b110001 : tmp_tmp_pSumArea_pAddData = lfBuffer_49;
      6'b110010 : tmp_tmp_pSumArea_pAddData = lfBuffer_50;
      6'b110011 : tmp_tmp_pSumArea_pAddData = lfBuffer_51;
      6'b110100 : tmp_tmp_pSumArea_pAddData = lfBuffer_52;
      6'b110101 : tmp_tmp_pSumArea_pAddData = lfBuffer_53;
      6'b110110 : tmp_tmp_pSumArea_pAddData = lfBuffer_54;
      6'b110111 : tmp_tmp_pSumArea_pAddData = lfBuffer_55;
      6'b111000 : tmp_tmp_pSumArea_pAddData = lfBuffer_56;
      6'b111001 : tmp_tmp_pSumArea_pAddData = lfBuffer_57;
      6'b111010 : tmp_tmp_pSumArea_pAddData = lfBuffer_58;
      6'b111011 : tmp_tmp_pSumArea_pAddData = lfBuffer_59;
      6'b111100 : tmp_tmp_pSumArea_pAddData = lfBuffer_60;
      6'b111101 : tmp_tmp_pSumArea_pAddData = lfBuffer_61;
      6'b111110 : tmp_tmp_pSumArea_pAddData = lfBuffer_62;
      default : tmp_tmp_pSumArea_pAddData = lfBuffer_63;
    endcase
  end

  assign macSumArea_macSumEn = ((((((((macIn_0_valid || macIn_1_valid) || macIn_2_valid) || macIn_3_valid) || macIn_4_valid) || macIn_5_valid) || macIn_6_valid) || macIn_7_valid) && (! clear));
  assign pSumArea_pSumEn = (macSumArea_macSumValid && (! clear));
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
            pSumArea_pAddData = biasIn_payload;
          end
          default : begin
            pSumArea_pAddData = ($signed(tmp_pSumArea_pAddData) + $signed(biasIn_payload));
          end
        endcase
      end
    end
  end

  always @(*) begin
    biasIn_ready = 1'b0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
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
      end
    end
  end

  assign when_PPUnit_l65 = (pSumArea_spLenCnt < tmp_when_PPUnit_l65);
  assign tmp_pSumArea_pAddData = tmp_tmp_pSumArea_pAddData;
  assign quantArea_quantEn = ((pSumArea_pSumValid && last) && (! clear));
  assign reluArea_reluEn = (quantArea_quantValid && (! clear));
  assign when_PPUnit_l119 = (($signed(quantArea_quantReg) < $signed(8'h0)) && relu);
  assign resultOut_payload = reluArea_reluReg;
  assign resultOut_valid = reluArea_reluValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      macSumArea_macSumReg <= 32'h0;
      macSumArea_macSumValid <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      pSumArea_pSumValid <= 1'b0;
      pSumArea_spLenCnt <= 6'h0;
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
      end else begin
        if(pSumArea_pSumEn) begin
          if(when_PPUnit_l65) begin
            pSumArea_spLenCnt <= (pSumArea_spLenCnt + 6'h01);
          end else begin
            pSumArea_spLenCnt <= 6'h0;
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
        if(when_PPUnit_l119) begin
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
