// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : LWBuffer
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module LWBuffer (
  input  wire          io_clear,
  input  wire [5:0]    io_wSize,
  input  wire [5:0]    io_spLen,
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
  wire       [5:0]    tmp_wSizeValid;
  wire       [6:0]    tmp_io_weightOut_valid;
  wire       [6:0]    tmp_io_weightOut_valid_1;
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
  reg        [5:0]    wSizeCnt;
  wire                spLenValid;
  wire                wSizeValid;
  wire                io_weightOut_fire;
  wire                when_LWBuffer_l47;
  wire                io_weightIn_fire;
  wire       [63:0]   tmp_1;
  wire                when_LWBuffer_l93;

  assign tmp_spLenValid = (io_spLen - 6'h01);
  assign tmp_wSizeValid = (io_spLen - 6'h01);
  assign tmp_io_weightOut_valid = (7'h40 - tmp_io_weightOut_valid_1);
  assign tmp_io_weightOut_valid_1 = {1'd0, validWeight};
  assign tmp_validWeight = (validWeight - io_wSize);
  assign tmp_rdPointer = (rdPointer - io_wSize);
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
  assign wSizeValid = (wSizeCnt == tmp_wSizeValid);
  assign io_weightIn_ready = (io_wSize <= validWeight);
  assign io_weightOut_valid = (tmp_io_weightOut_valid != 7'h0);
  assign io_weightOut_payload = tmp_io_weightOut_payload;
  assign io_weightOut_fire = (io_weightOut_valid && io_weightOut_ready);
  assign when_LWBuffer_l47 = (spLenValid && wSizeValid);
  assign io_weightIn_fire = (io_weightIn_valid && io_weightIn_ready);
  assign tmp_1 = ({63'd0,1'b1} <<< wrPointer);
  assign when_LWBuffer_l93 = (wSizeValid && (! spLenValid));
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
      wSizeCnt <= 6'h0;
    end else begin
      if(io_clear) begin
        validWeight <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(when_LWBuffer_l47) begin
            if(io_weightIn_fire) begin
              validWeight <= (tmp_validWeight + 6'h01);
            end else begin
              validWeight <= (validWeight - io_wSize);
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
        wSizeCnt <= 6'h0;
      end else begin
        if(io_weightOut_fire) begin
          if(wSizeValid) begin
            wSizeCnt <= 6'h0;
            if(spLenValid) begin
              spLenCnt <= 6'h0;
            end else begin
              spLenCnt <= (spLenCnt + 6'h01);
            end
          end else begin
            wSizeCnt <= (wSizeCnt + 6'h01);
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
