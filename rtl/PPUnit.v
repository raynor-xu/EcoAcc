// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PPUnit
// Git hash  : 59115ab351cdde95c1001826ec9ef39681809d26

`timescale 1ns/1ps

module PPUnit (
  input  wire [1:0]    mode,
  input  wire [5:0]    spLen,
  input  wire          mulIn_valid,
  input  wire [15:0]   mulIn_payload_0,
  input  wire [15:0]   mulIn_payload_1,
  input  wire [15:0]   mulIn_payload_2,
  input  wire [15:0]   mulIn_payload_3,
  input  wire [15:0]   mulIn_payload_4,
  input  wire [15:0]   mulIn_payload_5,
  input  wire [15:0]   mulIn_payload_6,
  input  wire [15:0]   mulIn_payload_7,
  output wire          sumOut_valid,
  output wire [18:0]   sumOut_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [18:0]   adderTree_1_dataOut;
  wire       [5:0]    tmp_spCounter_valueNext;
  wire       [0:0]    tmp_spCounter_valueNext_1;
  wire       [5:0]    tmp_when_PPUnit_l33;
  reg        [18:0]   tmp_tmp_sumReg;
  reg        [18:0]   sumReg;
  reg                 spCounter_willIncrement;
  reg                 spCounter_willClear;
  reg        [5:0]    spCounter_valueNext;
  reg        [5:0]    spCounter_value;
  wire                spCounter_willOverflowIfInc;
  wire                spCounter_willOverflow;
  reg        [18:0]   pSumBuffer_0;
  reg        [18:0]   pSumBuffer_1;
  reg        [18:0]   pSumBuffer_2;
  reg        [18:0]   pSumBuffer_3;
  reg        [18:0]   pSumBuffer_4;
  reg        [18:0]   pSumBuffer_5;
  reg        [18:0]   pSumBuffer_6;
  reg        [18:0]   pSumBuffer_7;
  reg        [18:0]   pSumBuffer_8;
  reg        [18:0]   pSumBuffer_9;
  reg        [18:0]   pSumBuffer_10;
  reg        [18:0]   pSumBuffer_11;
  reg        [18:0]   pSumBuffer_12;
  reg        [18:0]   pSumBuffer_13;
  reg        [18:0]   pSumBuffer_14;
  reg        [18:0]   pSumBuffer_15;
  reg        [18:0]   pSumBuffer_16;
  reg        [18:0]   pSumBuffer_17;
  reg        [18:0]   pSumBuffer_18;
  reg        [18:0]   pSumBuffer_19;
  reg        [18:0]   pSumBuffer_20;
  reg        [18:0]   pSumBuffer_21;
  reg        [18:0]   pSumBuffer_22;
  reg        [18:0]   pSumBuffer_23;
  reg        [18:0]   pSumBuffer_24;
  reg        [18:0]   pSumBuffer_25;
  reg        [18:0]   pSumBuffer_26;
  reg        [18:0]   pSumBuffer_27;
  reg        [18:0]   pSumBuffer_28;
  reg        [18:0]   pSumBuffer_29;
  reg        [18:0]   pSumBuffer_30;
  reg        [18:0]   pSumBuffer_31;
  reg        [18:0]   pSumBuffer_32;
  reg        [18:0]   pSumBuffer_33;
  reg        [18:0]   pSumBuffer_34;
  reg        [18:0]   pSumBuffer_35;
  reg        [18:0]   pSumBuffer_36;
  reg        [18:0]   pSumBuffer_37;
  reg        [18:0]   pSumBuffer_38;
  reg        [18:0]   pSumBuffer_39;
  reg        [18:0]   pSumBuffer_40;
  reg        [18:0]   pSumBuffer_41;
  reg        [18:0]   pSumBuffer_42;
  reg        [18:0]   pSumBuffer_43;
  reg        [18:0]   pSumBuffer_44;
  reg        [18:0]   pSumBuffer_45;
  reg        [18:0]   pSumBuffer_46;
  reg        [18:0]   pSumBuffer_47;
  reg        [18:0]   pSumBuffer_48;
  reg        [18:0]   pSumBuffer_49;
  reg        [18:0]   pSumBuffer_50;
  reg        [18:0]   pSumBuffer_51;
  reg        [18:0]   pSumBuffer_52;
  reg        [18:0]   pSumBuffer_53;
  reg        [18:0]   pSumBuffer_54;
  reg        [18:0]   pSumBuffer_55;
  reg        [18:0]   pSumBuffer_56;
  reg        [18:0]   pSumBuffer_57;
  reg        [18:0]   pSumBuffer_58;
  reg        [18:0]   pSumBuffer_59;
  reg        [18:0]   pSumBuffer_60;
  reg        [18:0]   pSumBuffer_61;
  reg        [18:0]   pSumBuffer_62;
  reg        [18:0]   pSumBuffer_63;
  reg                 tmp_sumOut_valid;
  wire                when_PPUnit_l33;
  wire       [18:0]   tmp_sumReg;
  wire       [63:0]   tmp_1;
  wire                tmp_2;
  wire                tmp_3;
  wire                tmp_4;
  wire                tmp_5;
  wire                tmp_6;
  wire                tmp_7;
  wire                tmp_8;
  wire                tmp_9;
  wire                tmp_10;
  wire                tmp_11;
  wire                tmp_12;
  wire                tmp_13;
  wire                tmp_14;
  wire                tmp_15;
  wire                tmp_16;
  wire                tmp_17;
  wire                tmp_18;
  wire                tmp_19;
  wire                tmp_20;
  wire                tmp_21;
  wire                tmp_22;
  wire                tmp_23;
  wire                tmp_24;
  wire                tmp_25;
  wire                tmp_26;
  wire                tmp_27;
  wire                tmp_28;
  wire                tmp_29;
  wire                tmp_30;
  wire                tmp_31;
  wire                tmp_32;
  wire                tmp_33;
  wire                tmp_34;
  wire                tmp_35;
  wire                tmp_36;
  wire                tmp_37;
  wire                tmp_38;
  wire                tmp_39;
  wire                tmp_40;
  wire                tmp_41;
  wire                tmp_42;
  wire                tmp_43;
  wire                tmp_44;
  wire                tmp_45;
  wire                tmp_46;
  wire                tmp_47;
  wire                tmp_48;
  wire                tmp_49;
  wire                tmp_50;
  wire                tmp_51;
  wire                tmp_52;
  wire                tmp_53;
  wire                tmp_54;
  wire                tmp_55;
  wire                tmp_56;
  wire                tmp_57;
  wire                tmp_58;
  wire                tmp_59;
  wire                tmp_60;
  wire                tmp_61;
  wire                tmp_62;
  wire                tmp_63;
  wire                tmp_64;
  wire                tmp_65;
  wire       [18:0]   tmp_pSumBuffer_0;
  wire       [1215:0] tmp_pSumBuffer_0_1;

  assign tmp_spCounter_valueNext_1 = spCounter_willIncrement;
  assign tmp_spCounter_valueNext = {5'd0, tmp_spCounter_valueNext_1};
  assign tmp_when_PPUnit_l33 = (spLen - 6'h01);
  AdderTree adderTree_1 (
    .dataIn_0 (mulIn_payload_0[15:0]    ), //i
    .dataIn_1 (mulIn_payload_1[15:0]    ), //i
    .dataIn_2 (mulIn_payload_2[15:0]    ), //i
    .dataIn_3 (mulIn_payload_3[15:0]    ), //i
    .dataIn_4 (mulIn_payload_4[15:0]    ), //i
    .dataIn_5 (mulIn_payload_5[15:0]    ), //i
    .dataIn_6 (mulIn_payload_6[15:0]    ), //i
    .dataIn_7 (mulIn_payload_7[15:0]    ), //i
    .dataOut  (adderTree_1_dataOut[18:0])  //o
  );
  always @(*) begin
    case(spCounter_value)
      6'b000000 : tmp_tmp_sumReg = pSumBuffer_0;
      6'b000001 : tmp_tmp_sumReg = pSumBuffer_1;
      6'b000010 : tmp_tmp_sumReg = pSumBuffer_2;
      6'b000011 : tmp_tmp_sumReg = pSumBuffer_3;
      6'b000100 : tmp_tmp_sumReg = pSumBuffer_4;
      6'b000101 : tmp_tmp_sumReg = pSumBuffer_5;
      6'b000110 : tmp_tmp_sumReg = pSumBuffer_6;
      6'b000111 : tmp_tmp_sumReg = pSumBuffer_7;
      6'b001000 : tmp_tmp_sumReg = pSumBuffer_8;
      6'b001001 : tmp_tmp_sumReg = pSumBuffer_9;
      6'b001010 : tmp_tmp_sumReg = pSumBuffer_10;
      6'b001011 : tmp_tmp_sumReg = pSumBuffer_11;
      6'b001100 : tmp_tmp_sumReg = pSumBuffer_12;
      6'b001101 : tmp_tmp_sumReg = pSumBuffer_13;
      6'b001110 : tmp_tmp_sumReg = pSumBuffer_14;
      6'b001111 : tmp_tmp_sumReg = pSumBuffer_15;
      6'b010000 : tmp_tmp_sumReg = pSumBuffer_16;
      6'b010001 : tmp_tmp_sumReg = pSumBuffer_17;
      6'b010010 : tmp_tmp_sumReg = pSumBuffer_18;
      6'b010011 : tmp_tmp_sumReg = pSumBuffer_19;
      6'b010100 : tmp_tmp_sumReg = pSumBuffer_20;
      6'b010101 : tmp_tmp_sumReg = pSumBuffer_21;
      6'b010110 : tmp_tmp_sumReg = pSumBuffer_22;
      6'b010111 : tmp_tmp_sumReg = pSumBuffer_23;
      6'b011000 : tmp_tmp_sumReg = pSumBuffer_24;
      6'b011001 : tmp_tmp_sumReg = pSumBuffer_25;
      6'b011010 : tmp_tmp_sumReg = pSumBuffer_26;
      6'b011011 : tmp_tmp_sumReg = pSumBuffer_27;
      6'b011100 : tmp_tmp_sumReg = pSumBuffer_28;
      6'b011101 : tmp_tmp_sumReg = pSumBuffer_29;
      6'b011110 : tmp_tmp_sumReg = pSumBuffer_30;
      6'b011111 : tmp_tmp_sumReg = pSumBuffer_31;
      6'b100000 : tmp_tmp_sumReg = pSumBuffer_32;
      6'b100001 : tmp_tmp_sumReg = pSumBuffer_33;
      6'b100010 : tmp_tmp_sumReg = pSumBuffer_34;
      6'b100011 : tmp_tmp_sumReg = pSumBuffer_35;
      6'b100100 : tmp_tmp_sumReg = pSumBuffer_36;
      6'b100101 : tmp_tmp_sumReg = pSumBuffer_37;
      6'b100110 : tmp_tmp_sumReg = pSumBuffer_38;
      6'b100111 : tmp_tmp_sumReg = pSumBuffer_39;
      6'b101000 : tmp_tmp_sumReg = pSumBuffer_40;
      6'b101001 : tmp_tmp_sumReg = pSumBuffer_41;
      6'b101010 : tmp_tmp_sumReg = pSumBuffer_42;
      6'b101011 : tmp_tmp_sumReg = pSumBuffer_43;
      6'b101100 : tmp_tmp_sumReg = pSumBuffer_44;
      6'b101101 : tmp_tmp_sumReg = pSumBuffer_45;
      6'b101110 : tmp_tmp_sumReg = pSumBuffer_46;
      6'b101111 : tmp_tmp_sumReg = pSumBuffer_47;
      6'b110000 : tmp_tmp_sumReg = pSumBuffer_48;
      6'b110001 : tmp_tmp_sumReg = pSumBuffer_49;
      6'b110010 : tmp_tmp_sumReg = pSumBuffer_50;
      6'b110011 : tmp_tmp_sumReg = pSumBuffer_51;
      6'b110100 : tmp_tmp_sumReg = pSumBuffer_52;
      6'b110101 : tmp_tmp_sumReg = pSumBuffer_53;
      6'b110110 : tmp_tmp_sumReg = pSumBuffer_54;
      6'b110111 : tmp_tmp_sumReg = pSumBuffer_55;
      6'b111000 : tmp_tmp_sumReg = pSumBuffer_56;
      6'b111001 : tmp_tmp_sumReg = pSumBuffer_57;
      6'b111010 : tmp_tmp_sumReg = pSumBuffer_58;
      6'b111011 : tmp_tmp_sumReg = pSumBuffer_59;
      6'b111100 : tmp_tmp_sumReg = pSumBuffer_60;
      6'b111101 : tmp_tmp_sumReg = pSumBuffer_61;
      6'b111110 : tmp_tmp_sumReg = pSumBuffer_62;
      default : tmp_tmp_sumReg = pSumBuffer_63;
    endcase
  end

  always @(*) begin
    spCounter_willIncrement = 1'b0;
    if(mulIn_valid) begin
      if(!when_PPUnit_l33) begin
        spCounter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    spCounter_willClear = 1'b0;
    if(mulIn_valid) begin
      if(when_PPUnit_l33) begin
        spCounter_willClear = 1'b1;
      end
    end
  end

  assign spCounter_willOverflowIfInc = (spCounter_value == 6'h3f);
  assign spCounter_willOverflow = (spCounter_willOverflowIfInc && spCounter_willIncrement);
  always @(*) begin
    spCounter_valueNext = (spCounter_value + tmp_spCounter_valueNext);
    if(spCounter_willClear) begin
      spCounter_valueNext = 6'h0;
    end
  end

  assign sumOut_payload = sumReg;
  assign sumOut_valid = tmp_sumOut_valid;
  assign when_PPUnit_l33 = (spCounter_value == tmp_when_PPUnit_l33);
  assign tmp_sumReg = tmp_tmp_sumReg;
  assign tmp_1 = ({63'd0,1'b1} <<< spCounter_value);
  assign tmp_2 = tmp_1[0];
  assign tmp_3 = tmp_1[1];
  assign tmp_4 = tmp_1[2];
  assign tmp_5 = tmp_1[3];
  assign tmp_6 = tmp_1[4];
  assign tmp_7 = tmp_1[5];
  assign tmp_8 = tmp_1[6];
  assign tmp_9 = tmp_1[7];
  assign tmp_10 = tmp_1[8];
  assign tmp_11 = tmp_1[9];
  assign tmp_12 = tmp_1[10];
  assign tmp_13 = tmp_1[11];
  assign tmp_14 = tmp_1[12];
  assign tmp_15 = tmp_1[13];
  assign tmp_16 = tmp_1[14];
  assign tmp_17 = tmp_1[15];
  assign tmp_18 = tmp_1[16];
  assign tmp_19 = tmp_1[17];
  assign tmp_20 = tmp_1[18];
  assign tmp_21 = tmp_1[19];
  assign tmp_22 = tmp_1[20];
  assign tmp_23 = tmp_1[21];
  assign tmp_24 = tmp_1[22];
  assign tmp_25 = tmp_1[23];
  assign tmp_26 = tmp_1[24];
  assign tmp_27 = tmp_1[25];
  assign tmp_28 = tmp_1[26];
  assign tmp_29 = tmp_1[27];
  assign tmp_30 = tmp_1[28];
  assign tmp_31 = tmp_1[29];
  assign tmp_32 = tmp_1[30];
  assign tmp_33 = tmp_1[31];
  assign tmp_34 = tmp_1[32];
  assign tmp_35 = tmp_1[33];
  assign tmp_36 = tmp_1[34];
  assign tmp_37 = tmp_1[35];
  assign tmp_38 = tmp_1[36];
  assign tmp_39 = tmp_1[37];
  assign tmp_40 = tmp_1[38];
  assign tmp_41 = tmp_1[39];
  assign tmp_42 = tmp_1[40];
  assign tmp_43 = tmp_1[41];
  assign tmp_44 = tmp_1[42];
  assign tmp_45 = tmp_1[43];
  assign tmp_46 = tmp_1[44];
  assign tmp_47 = tmp_1[45];
  assign tmp_48 = tmp_1[46];
  assign tmp_49 = tmp_1[47];
  assign tmp_50 = tmp_1[48];
  assign tmp_51 = tmp_1[49];
  assign tmp_52 = tmp_1[50];
  assign tmp_53 = tmp_1[51];
  assign tmp_54 = tmp_1[52];
  assign tmp_55 = tmp_1[53];
  assign tmp_56 = tmp_1[54];
  assign tmp_57 = tmp_1[55];
  assign tmp_58 = tmp_1[56];
  assign tmp_59 = tmp_1[57];
  assign tmp_60 = tmp_1[58];
  assign tmp_61 = tmp_1[59];
  assign tmp_62 = tmp_1[60];
  assign tmp_63 = tmp_1[61];
  assign tmp_64 = tmp_1[62];
  assign tmp_65 = tmp_1[63];
  assign tmp_pSumBuffer_0 = ($signed(tmp_sumReg) + $signed(adderTree_1_dataOut));
  assign tmp_pSumBuffer_0_1 = 1216'h0;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      sumReg <= 19'h0;
      spCounter_value <= 6'h0;
      pSumBuffer_0 <= 19'h0;
      pSumBuffer_1 <= 19'h0;
      pSumBuffer_2 <= 19'h0;
      pSumBuffer_3 <= 19'h0;
      pSumBuffer_4 <= 19'h0;
      pSumBuffer_5 <= 19'h0;
      pSumBuffer_6 <= 19'h0;
      pSumBuffer_7 <= 19'h0;
      pSumBuffer_8 <= 19'h0;
      pSumBuffer_9 <= 19'h0;
      pSumBuffer_10 <= 19'h0;
      pSumBuffer_11 <= 19'h0;
      pSumBuffer_12 <= 19'h0;
      pSumBuffer_13 <= 19'h0;
      pSumBuffer_14 <= 19'h0;
      pSumBuffer_15 <= 19'h0;
      pSumBuffer_16 <= 19'h0;
      pSumBuffer_17 <= 19'h0;
      pSumBuffer_18 <= 19'h0;
      pSumBuffer_19 <= 19'h0;
      pSumBuffer_20 <= 19'h0;
      pSumBuffer_21 <= 19'h0;
      pSumBuffer_22 <= 19'h0;
      pSumBuffer_23 <= 19'h0;
      pSumBuffer_24 <= 19'h0;
      pSumBuffer_25 <= 19'h0;
      pSumBuffer_26 <= 19'h0;
      pSumBuffer_27 <= 19'h0;
      pSumBuffer_28 <= 19'h0;
      pSumBuffer_29 <= 19'h0;
      pSumBuffer_30 <= 19'h0;
      pSumBuffer_31 <= 19'h0;
      pSumBuffer_32 <= 19'h0;
      pSumBuffer_33 <= 19'h0;
      pSumBuffer_34 <= 19'h0;
      pSumBuffer_35 <= 19'h0;
      pSumBuffer_36 <= 19'h0;
      pSumBuffer_37 <= 19'h0;
      pSumBuffer_38 <= 19'h0;
      pSumBuffer_39 <= 19'h0;
      pSumBuffer_40 <= 19'h0;
      pSumBuffer_41 <= 19'h0;
      pSumBuffer_42 <= 19'h0;
      pSumBuffer_43 <= 19'h0;
      pSumBuffer_44 <= 19'h0;
      pSumBuffer_45 <= 19'h0;
      pSumBuffer_46 <= 19'h0;
      pSumBuffer_47 <= 19'h0;
      pSumBuffer_48 <= 19'h0;
      pSumBuffer_49 <= 19'h0;
      pSumBuffer_50 <= 19'h0;
      pSumBuffer_51 <= 19'h0;
      pSumBuffer_52 <= 19'h0;
      pSumBuffer_53 <= 19'h0;
      pSumBuffer_54 <= 19'h0;
      pSumBuffer_55 <= 19'h0;
      pSumBuffer_56 <= 19'h0;
      pSumBuffer_57 <= 19'h0;
      pSumBuffer_58 <= 19'h0;
      pSumBuffer_59 <= 19'h0;
      pSumBuffer_60 <= 19'h0;
      pSumBuffer_61 <= 19'h0;
      pSumBuffer_62 <= 19'h0;
      pSumBuffer_63 <= 19'h0;
      tmp_sumOut_valid <= 1'b0;
    end else begin
      spCounter_value <= spCounter_valueNext;
      tmp_sumOut_valid <= ((mode == 2'b10) && mulIn_valid);
      if(mulIn_valid) begin
        case(mode)
          2'b00 : begin
            if(tmp_2) begin
              pSumBuffer_0 <= adderTree_1_dataOut;
            end
            if(tmp_3) begin
              pSumBuffer_1 <= adderTree_1_dataOut;
            end
            if(tmp_4) begin
              pSumBuffer_2 <= adderTree_1_dataOut;
            end
            if(tmp_5) begin
              pSumBuffer_3 <= adderTree_1_dataOut;
            end
            if(tmp_6) begin
              pSumBuffer_4 <= adderTree_1_dataOut;
            end
            if(tmp_7) begin
              pSumBuffer_5 <= adderTree_1_dataOut;
            end
            if(tmp_8) begin
              pSumBuffer_6 <= adderTree_1_dataOut;
            end
            if(tmp_9) begin
              pSumBuffer_7 <= adderTree_1_dataOut;
            end
            if(tmp_10) begin
              pSumBuffer_8 <= adderTree_1_dataOut;
            end
            if(tmp_11) begin
              pSumBuffer_9 <= adderTree_1_dataOut;
            end
            if(tmp_12) begin
              pSumBuffer_10 <= adderTree_1_dataOut;
            end
            if(tmp_13) begin
              pSumBuffer_11 <= adderTree_1_dataOut;
            end
            if(tmp_14) begin
              pSumBuffer_12 <= adderTree_1_dataOut;
            end
            if(tmp_15) begin
              pSumBuffer_13 <= adderTree_1_dataOut;
            end
            if(tmp_16) begin
              pSumBuffer_14 <= adderTree_1_dataOut;
            end
            if(tmp_17) begin
              pSumBuffer_15 <= adderTree_1_dataOut;
            end
            if(tmp_18) begin
              pSumBuffer_16 <= adderTree_1_dataOut;
            end
            if(tmp_19) begin
              pSumBuffer_17 <= adderTree_1_dataOut;
            end
            if(tmp_20) begin
              pSumBuffer_18 <= adderTree_1_dataOut;
            end
            if(tmp_21) begin
              pSumBuffer_19 <= adderTree_1_dataOut;
            end
            if(tmp_22) begin
              pSumBuffer_20 <= adderTree_1_dataOut;
            end
            if(tmp_23) begin
              pSumBuffer_21 <= adderTree_1_dataOut;
            end
            if(tmp_24) begin
              pSumBuffer_22 <= adderTree_1_dataOut;
            end
            if(tmp_25) begin
              pSumBuffer_23 <= adderTree_1_dataOut;
            end
            if(tmp_26) begin
              pSumBuffer_24 <= adderTree_1_dataOut;
            end
            if(tmp_27) begin
              pSumBuffer_25 <= adderTree_1_dataOut;
            end
            if(tmp_28) begin
              pSumBuffer_26 <= adderTree_1_dataOut;
            end
            if(tmp_29) begin
              pSumBuffer_27 <= adderTree_1_dataOut;
            end
            if(tmp_30) begin
              pSumBuffer_28 <= adderTree_1_dataOut;
            end
            if(tmp_31) begin
              pSumBuffer_29 <= adderTree_1_dataOut;
            end
            if(tmp_32) begin
              pSumBuffer_30 <= adderTree_1_dataOut;
            end
            if(tmp_33) begin
              pSumBuffer_31 <= adderTree_1_dataOut;
            end
            if(tmp_34) begin
              pSumBuffer_32 <= adderTree_1_dataOut;
            end
            if(tmp_35) begin
              pSumBuffer_33 <= adderTree_1_dataOut;
            end
            if(tmp_36) begin
              pSumBuffer_34 <= adderTree_1_dataOut;
            end
            if(tmp_37) begin
              pSumBuffer_35 <= adderTree_1_dataOut;
            end
            if(tmp_38) begin
              pSumBuffer_36 <= adderTree_1_dataOut;
            end
            if(tmp_39) begin
              pSumBuffer_37 <= adderTree_1_dataOut;
            end
            if(tmp_40) begin
              pSumBuffer_38 <= adderTree_1_dataOut;
            end
            if(tmp_41) begin
              pSumBuffer_39 <= adderTree_1_dataOut;
            end
            if(tmp_42) begin
              pSumBuffer_40 <= adderTree_1_dataOut;
            end
            if(tmp_43) begin
              pSumBuffer_41 <= adderTree_1_dataOut;
            end
            if(tmp_44) begin
              pSumBuffer_42 <= adderTree_1_dataOut;
            end
            if(tmp_45) begin
              pSumBuffer_43 <= adderTree_1_dataOut;
            end
            if(tmp_46) begin
              pSumBuffer_44 <= adderTree_1_dataOut;
            end
            if(tmp_47) begin
              pSumBuffer_45 <= adderTree_1_dataOut;
            end
            if(tmp_48) begin
              pSumBuffer_46 <= adderTree_1_dataOut;
            end
            if(tmp_49) begin
              pSumBuffer_47 <= adderTree_1_dataOut;
            end
            if(tmp_50) begin
              pSumBuffer_48 <= adderTree_1_dataOut;
            end
            if(tmp_51) begin
              pSumBuffer_49 <= adderTree_1_dataOut;
            end
            if(tmp_52) begin
              pSumBuffer_50 <= adderTree_1_dataOut;
            end
            if(tmp_53) begin
              pSumBuffer_51 <= adderTree_1_dataOut;
            end
            if(tmp_54) begin
              pSumBuffer_52 <= adderTree_1_dataOut;
            end
            if(tmp_55) begin
              pSumBuffer_53 <= adderTree_1_dataOut;
            end
            if(tmp_56) begin
              pSumBuffer_54 <= adderTree_1_dataOut;
            end
            if(tmp_57) begin
              pSumBuffer_55 <= adderTree_1_dataOut;
            end
            if(tmp_58) begin
              pSumBuffer_56 <= adderTree_1_dataOut;
            end
            if(tmp_59) begin
              pSumBuffer_57 <= adderTree_1_dataOut;
            end
            if(tmp_60) begin
              pSumBuffer_58 <= adderTree_1_dataOut;
            end
            if(tmp_61) begin
              pSumBuffer_59 <= adderTree_1_dataOut;
            end
            if(tmp_62) begin
              pSumBuffer_60 <= adderTree_1_dataOut;
            end
            if(tmp_63) begin
              pSumBuffer_61 <= adderTree_1_dataOut;
            end
            if(tmp_64) begin
              pSumBuffer_62 <= adderTree_1_dataOut;
            end
            if(tmp_65) begin
              pSumBuffer_63 <= adderTree_1_dataOut;
            end
          end
          2'b01 : begin
            if(tmp_2) begin
              pSumBuffer_0 <= tmp_pSumBuffer_0;
            end
            if(tmp_3) begin
              pSumBuffer_1 <= tmp_pSumBuffer_0;
            end
            if(tmp_4) begin
              pSumBuffer_2 <= tmp_pSumBuffer_0;
            end
            if(tmp_5) begin
              pSumBuffer_3 <= tmp_pSumBuffer_0;
            end
            if(tmp_6) begin
              pSumBuffer_4 <= tmp_pSumBuffer_0;
            end
            if(tmp_7) begin
              pSumBuffer_5 <= tmp_pSumBuffer_0;
            end
            if(tmp_8) begin
              pSumBuffer_6 <= tmp_pSumBuffer_0;
            end
            if(tmp_9) begin
              pSumBuffer_7 <= tmp_pSumBuffer_0;
            end
            if(tmp_10) begin
              pSumBuffer_8 <= tmp_pSumBuffer_0;
            end
            if(tmp_11) begin
              pSumBuffer_9 <= tmp_pSumBuffer_0;
            end
            if(tmp_12) begin
              pSumBuffer_10 <= tmp_pSumBuffer_0;
            end
            if(tmp_13) begin
              pSumBuffer_11 <= tmp_pSumBuffer_0;
            end
            if(tmp_14) begin
              pSumBuffer_12 <= tmp_pSumBuffer_0;
            end
            if(tmp_15) begin
              pSumBuffer_13 <= tmp_pSumBuffer_0;
            end
            if(tmp_16) begin
              pSumBuffer_14 <= tmp_pSumBuffer_0;
            end
            if(tmp_17) begin
              pSumBuffer_15 <= tmp_pSumBuffer_0;
            end
            if(tmp_18) begin
              pSumBuffer_16 <= tmp_pSumBuffer_0;
            end
            if(tmp_19) begin
              pSumBuffer_17 <= tmp_pSumBuffer_0;
            end
            if(tmp_20) begin
              pSumBuffer_18 <= tmp_pSumBuffer_0;
            end
            if(tmp_21) begin
              pSumBuffer_19 <= tmp_pSumBuffer_0;
            end
            if(tmp_22) begin
              pSumBuffer_20 <= tmp_pSumBuffer_0;
            end
            if(tmp_23) begin
              pSumBuffer_21 <= tmp_pSumBuffer_0;
            end
            if(tmp_24) begin
              pSumBuffer_22 <= tmp_pSumBuffer_0;
            end
            if(tmp_25) begin
              pSumBuffer_23 <= tmp_pSumBuffer_0;
            end
            if(tmp_26) begin
              pSumBuffer_24 <= tmp_pSumBuffer_0;
            end
            if(tmp_27) begin
              pSumBuffer_25 <= tmp_pSumBuffer_0;
            end
            if(tmp_28) begin
              pSumBuffer_26 <= tmp_pSumBuffer_0;
            end
            if(tmp_29) begin
              pSumBuffer_27 <= tmp_pSumBuffer_0;
            end
            if(tmp_30) begin
              pSumBuffer_28 <= tmp_pSumBuffer_0;
            end
            if(tmp_31) begin
              pSumBuffer_29 <= tmp_pSumBuffer_0;
            end
            if(tmp_32) begin
              pSumBuffer_30 <= tmp_pSumBuffer_0;
            end
            if(tmp_33) begin
              pSumBuffer_31 <= tmp_pSumBuffer_0;
            end
            if(tmp_34) begin
              pSumBuffer_32 <= tmp_pSumBuffer_0;
            end
            if(tmp_35) begin
              pSumBuffer_33 <= tmp_pSumBuffer_0;
            end
            if(tmp_36) begin
              pSumBuffer_34 <= tmp_pSumBuffer_0;
            end
            if(tmp_37) begin
              pSumBuffer_35 <= tmp_pSumBuffer_0;
            end
            if(tmp_38) begin
              pSumBuffer_36 <= tmp_pSumBuffer_0;
            end
            if(tmp_39) begin
              pSumBuffer_37 <= tmp_pSumBuffer_0;
            end
            if(tmp_40) begin
              pSumBuffer_38 <= tmp_pSumBuffer_0;
            end
            if(tmp_41) begin
              pSumBuffer_39 <= tmp_pSumBuffer_0;
            end
            if(tmp_42) begin
              pSumBuffer_40 <= tmp_pSumBuffer_0;
            end
            if(tmp_43) begin
              pSumBuffer_41 <= tmp_pSumBuffer_0;
            end
            if(tmp_44) begin
              pSumBuffer_42 <= tmp_pSumBuffer_0;
            end
            if(tmp_45) begin
              pSumBuffer_43 <= tmp_pSumBuffer_0;
            end
            if(tmp_46) begin
              pSumBuffer_44 <= tmp_pSumBuffer_0;
            end
            if(tmp_47) begin
              pSumBuffer_45 <= tmp_pSumBuffer_0;
            end
            if(tmp_48) begin
              pSumBuffer_46 <= tmp_pSumBuffer_0;
            end
            if(tmp_49) begin
              pSumBuffer_47 <= tmp_pSumBuffer_0;
            end
            if(tmp_50) begin
              pSumBuffer_48 <= tmp_pSumBuffer_0;
            end
            if(tmp_51) begin
              pSumBuffer_49 <= tmp_pSumBuffer_0;
            end
            if(tmp_52) begin
              pSumBuffer_50 <= tmp_pSumBuffer_0;
            end
            if(tmp_53) begin
              pSumBuffer_51 <= tmp_pSumBuffer_0;
            end
            if(tmp_54) begin
              pSumBuffer_52 <= tmp_pSumBuffer_0;
            end
            if(tmp_55) begin
              pSumBuffer_53 <= tmp_pSumBuffer_0;
            end
            if(tmp_56) begin
              pSumBuffer_54 <= tmp_pSumBuffer_0;
            end
            if(tmp_57) begin
              pSumBuffer_55 <= tmp_pSumBuffer_0;
            end
            if(tmp_58) begin
              pSumBuffer_56 <= tmp_pSumBuffer_0;
            end
            if(tmp_59) begin
              pSumBuffer_57 <= tmp_pSumBuffer_0;
            end
            if(tmp_60) begin
              pSumBuffer_58 <= tmp_pSumBuffer_0;
            end
            if(tmp_61) begin
              pSumBuffer_59 <= tmp_pSumBuffer_0;
            end
            if(tmp_62) begin
              pSumBuffer_60 <= tmp_pSumBuffer_0;
            end
            if(tmp_63) begin
              pSumBuffer_61 <= tmp_pSumBuffer_0;
            end
            if(tmp_64) begin
              pSumBuffer_62 <= tmp_pSumBuffer_0;
            end
            if(tmp_65) begin
              pSumBuffer_63 <= tmp_pSumBuffer_0;
            end
          end
          2'b10 : begin
            sumReg <= ($signed(tmp_sumReg) + $signed(adderTree_1_dataOut));
          end
          default : begin
            pSumBuffer_0 <= tmp_pSumBuffer_0_1[18 : 0];
            pSumBuffer_1 <= tmp_pSumBuffer_0_1[37 : 19];
            pSumBuffer_2 <= tmp_pSumBuffer_0_1[56 : 38];
            pSumBuffer_3 <= tmp_pSumBuffer_0_1[75 : 57];
            pSumBuffer_4 <= tmp_pSumBuffer_0_1[94 : 76];
            pSumBuffer_5 <= tmp_pSumBuffer_0_1[113 : 95];
            pSumBuffer_6 <= tmp_pSumBuffer_0_1[132 : 114];
            pSumBuffer_7 <= tmp_pSumBuffer_0_1[151 : 133];
            pSumBuffer_8 <= tmp_pSumBuffer_0_1[170 : 152];
            pSumBuffer_9 <= tmp_pSumBuffer_0_1[189 : 171];
            pSumBuffer_10 <= tmp_pSumBuffer_0_1[208 : 190];
            pSumBuffer_11 <= tmp_pSumBuffer_0_1[227 : 209];
            pSumBuffer_12 <= tmp_pSumBuffer_0_1[246 : 228];
            pSumBuffer_13 <= tmp_pSumBuffer_0_1[265 : 247];
            pSumBuffer_14 <= tmp_pSumBuffer_0_1[284 : 266];
            pSumBuffer_15 <= tmp_pSumBuffer_0_1[303 : 285];
            pSumBuffer_16 <= tmp_pSumBuffer_0_1[322 : 304];
            pSumBuffer_17 <= tmp_pSumBuffer_0_1[341 : 323];
            pSumBuffer_18 <= tmp_pSumBuffer_0_1[360 : 342];
            pSumBuffer_19 <= tmp_pSumBuffer_0_1[379 : 361];
            pSumBuffer_20 <= tmp_pSumBuffer_0_1[398 : 380];
            pSumBuffer_21 <= tmp_pSumBuffer_0_1[417 : 399];
            pSumBuffer_22 <= tmp_pSumBuffer_0_1[436 : 418];
            pSumBuffer_23 <= tmp_pSumBuffer_0_1[455 : 437];
            pSumBuffer_24 <= tmp_pSumBuffer_0_1[474 : 456];
            pSumBuffer_25 <= tmp_pSumBuffer_0_1[493 : 475];
            pSumBuffer_26 <= tmp_pSumBuffer_0_1[512 : 494];
            pSumBuffer_27 <= tmp_pSumBuffer_0_1[531 : 513];
            pSumBuffer_28 <= tmp_pSumBuffer_0_1[550 : 532];
            pSumBuffer_29 <= tmp_pSumBuffer_0_1[569 : 551];
            pSumBuffer_30 <= tmp_pSumBuffer_0_1[588 : 570];
            pSumBuffer_31 <= tmp_pSumBuffer_0_1[607 : 589];
            pSumBuffer_32 <= tmp_pSumBuffer_0_1[626 : 608];
            pSumBuffer_33 <= tmp_pSumBuffer_0_1[645 : 627];
            pSumBuffer_34 <= tmp_pSumBuffer_0_1[664 : 646];
            pSumBuffer_35 <= tmp_pSumBuffer_0_1[683 : 665];
            pSumBuffer_36 <= tmp_pSumBuffer_0_1[702 : 684];
            pSumBuffer_37 <= tmp_pSumBuffer_0_1[721 : 703];
            pSumBuffer_38 <= tmp_pSumBuffer_0_1[740 : 722];
            pSumBuffer_39 <= tmp_pSumBuffer_0_1[759 : 741];
            pSumBuffer_40 <= tmp_pSumBuffer_0_1[778 : 760];
            pSumBuffer_41 <= tmp_pSumBuffer_0_1[797 : 779];
            pSumBuffer_42 <= tmp_pSumBuffer_0_1[816 : 798];
            pSumBuffer_43 <= tmp_pSumBuffer_0_1[835 : 817];
            pSumBuffer_44 <= tmp_pSumBuffer_0_1[854 : 836];
            pSumBuffer_45 <= tmp_pSumBuffer_0_1[873 : 855];
            pSumBuffer_46 <= tmp_pSumBuffer_0_1[892 : 874];
            pSumBuffer_47 <= tmp_pSumBuffer_0_1[911 : 893];
            pSumBuffer_48 <= tmp_pSumBuffer_0_1[930 : 912];
            pSumBuffer_49 <= tmp_pSumBuffer_0_1[949 : 931];
            pSumBuffer_50 <= tmp_pSumBuffer_0_1[968 : 950];
            pSumBuffer_51 <= tmp_pSumBuffer_0_1[987 : 969];
            pSumBuffer_52 <= tmp_pSumBuffer_0_1[1006 : 988];
            pSumBuffer_53 <= tmp_pSumBuffer_0_1[1025 : 1007];
            pSumBuffer_54 <= tmp_pSumBuffer_0_1[1044 : 1026];
            pSumBuffer_55 <= tmp_pSumBuffer_0_1[1063 : 1045];
            pSumBuffer_56 <= tmp_pSumBuffer_0_1[1082 : 1064];
            pSumBuffer_57 <= tmp_pSumBuffer_0_1[1101 : 1083];
            pSumBuffer_58 <= tmp_pSumBuffer_0_1[1120 : 1102];
            pSumBuffer_59 <= tmp_pSumBuffer_0_1[1139 : 1121];
            pSumBuffer_60 <= tmp_pSumBuffer_0_1[1158 : 1140];
            pSumBuffer_61 <= tmp_pSumBuffer_0_1[1177 : 1159];
            pSumBuffer_62 <= tmp_pSumBuffer_0_1[1196 : 1178];
            pSumBuffer_63 <= tmp_pSumBuffer_0_1[1215 : 1197];
          end
        endcase
      end
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
