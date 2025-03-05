// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : MacCell
// Git hash  : 448312bfab8768ffb1b983059b5e807f9245ea71

`timescale 1ns/1ps

module MacCell (
  input  wire          clear,
  input  wire [9:0]    parm_loopLen,
  input  wire [9:0]    parm_spLen,
  input  wire [2:0]    parm_macMode,
  input  wire [1:0]    parm_actMode,
  input  wire [9:0]    parm_scaleParm_multiplier,
  input  wire [3:0]    parm_scaleParm_shift,
  input  wire [7:0]    parm_scaleParm_zeroPoint,
  input  wire [7:0]    weight_0,
  input  wire [7:0]    weight_1,
  input  wire [7:0]    weight_2,
  input  wire [7:0]    weight_3,
  input  wire [7:0]    weight_4,
  input  wire [7:0]    weight_5,
  input  wire [7:0]    weight_6,
  input  wire [7:0]    weight_7,
  input  wire [7:0]    weight_8,
  input  wire [7:0]    weight_9,
  input  wire [7:0]    weight_10,
  input  wire [7:0]    weight_11,
  input  wire [7:0]    weight_12,
  input  wire [7:0]    weight_13,
  input  wire [7:0]    weight_14,
  input  wire [7:0]    weight_15,
  input  wire          feature_valid,
  input  wire [7:0]    feature_payload_0,
  input  wire [7:0]    feature_payload_1,
  input  wire [7:0]    feature_payload_2,
  input  wire [7:0]    feature_payload_3,
  input  wire [7:0]    feature_payload_4,
  input  wire [7:0]    feature_payload_5,
  input  wire [7:0]    feature_payload_6,
  input  wire [7:0]    feature_payload_7,
  input  wire [7:0]    feature_payload_8,
  input  wire [7:0]    feature_payload_9,
  input  wire [7:0]    feature_payload_10,
  input  wire [7:0]    feature_payload_11,
  input  wire [7:0]    feature_payload_12,
  input  wire [7:0]    feature_payload_13,
  input  wire [7:0]    feature_payload_14,
  input  wire [7:0]    feature_payload_15,
  output wire          result_valid,
  output wire [7:0]    result_payload,
  input  wire          clk,
  input  wire          reset
);
  localparam CONV2D = 3'd0;
  localparam DWCONV = 3'd1;
  localparam PWCONV = 3'd2;
  localparam FC = 3'd3;
  localparam MAXPOOL = 3'd4;
  localparam AVERAGPOOL = 3'd5;
  localparam NONE = 2'd0;
  localparam RELU = 2'd1;
  localparam RELU6 = 2'd2;
  localparam SIGMOID = 2'd3;

  reg        [15:0]   pSumArea_adderTree_dataIn_0;
  reg        [15:0]   pSumArea_adderTree_dataIn_1;
  reg        [15:0]   pSumArea_adderTree_dataIn_2;
  reg        [15:0]   pSumArea_adderTree_dataIn_3;
  reg        [15:0]   pSumArea_adderTree_dataIn_4;
  reg        [15:0]   pSumArea_adderTree_dataIn_5;
  reg        [15:0]   pSumArea_adderTree_dataIn_6;
  reg        [15:0]   pSumArea_adderTree_dataIn_7;
  reg        [15:0]   pSumArea_adderTree_dataIn_8;
  reg        [15:0]   pSumArea_adderTree_dataIn_9;
  reg        [15:0]   pSumArea_adderTree_dataIn_10;
  reg        [15:0]   pSumArea_adderTree_dataIn_11;
  reg        [15:0]   pSumArea_adderTree_dataIn_12;
  reg        [15:0]   pSumArea_adderTree_dataIn_13;
  reg        [15:0]   pSumArea_adderTree_dataIn_14;
  reg        [15:0]   pSumArea_adderTree_dataIn_15;
  reg        [31:0]   lfBuffer_spinal_port0;
  wire       [19:0]   pSumArea_adderTree_dataOut;
  wire       [9:0]    _accArea_last;
  wire       [9:0]    _when_MacCell_l165;
  wire       [9:0]    _when_MacCell_l169;
  wire       [31:0]   _lfBuffer_port;
  wire       [31:0]   _lfBuffer_port_1;
  wire       [31:0]   _lfBuffer_port_2;
  wire       [31:0]   _lfBuffer_port_3;
  wire       [31:0]   _lfBuffer_port_4;
  wire       [56:0]   __when_MacCell_l258;
  wire       [56:0]   __when_MacCell_l258_1;
  wire       [56:0]   __when_MacCell_l258_2;
  wire       [41:0]   __when_MacCell_l258_3;
  wire       [56:0]   __when_MacCell_l258_4;
  wire       [56:0]   __when_MacCell_l258_5;
  wire       [41:0]   __when_MacCell_l258_6;
  wire       [56:0]   __when_MacCell_l258_7;
  wire       [56:0]   __when_MacCell_l258_8;
  wire       [3:0]    __when_MacCell_l258_9;
  wire       [56:0]   __when_MacCell_l258_10;
  reg                 _1;
  reg                 _2;
  reg                 _3;
  reg                 _4;
  reg        [9:0]    spLenCnt;
  reg        [9:0]    loopLenCnt;
  wire                mulArea_mulEn;
  wire                mulArea_mulVaild;
  reg        [15:0]   mulArea_mulReg_0;
  reg        [15:0]   mulArea_mulReg_1;
  reg        [15:0]   mulArea_mulReg_2;
  reg        [15:0]   mulArea_mulReg_3;
  reg        [15:0]   mulArea_mulReg_4;
  reg        [15:0]   mulArea_mulReg_5;
  reg        [15:0]   mulArea_mulReg_6;
  reg        [15:0]   mulArea_mulReg_7;
  reg        [15:0]   mulArea_mulReg_8;
  reg        [15:0]   mulArea_mulReg_9;
  reg        [15:0]   mulArea_mulReg_10;
  reg        [15:0]   mulArea_mulReg_11;
  reg        [15:0]   mulArea_mulReg_12;
  reg        [15:0]   mulArea_mulReg_13;
  reg        [15:0]   mulArea_mulReg_14;
  reg        [15:0]   mulArea_mulReg_15;
  reg                 mulArea_mulEn_regNext;
  wire                pSumArea_pSumEn;
  wire                pSumArea_pSumValid;
  reg        [31:0]   pSumArea_pSumReg;
  reg        [31:0]   pSumArea_lfBReg;
  reg                 pSumArea_pSumEn_regNext;
  wire                accArea_accEn;
  wire                accArea_accValid;
  reg        [31:0]   accArea_accReg;
  wire                accArea_last;
  reg                 _accArea_accValid;
  wire                when_MacCell_l165;
  wire                when_MacCell_l169;
  wire                when_MacCell_l177;
  wire                when_MacCell_l186;
  wire                when_MacCell_l190;
  wire                quantArea_quantEn;
  wire                quantArea_quantValid;
  reg        [7:0]    quantArea_quantReg;
  wire       [31:0]   quantArea_rawData;
  reg                 quantArea_quantEn_regNext;
  wire       [56:0]   _when_MacCell_l258;
  reg        [7:0]    _quantArea_quantReg;
  wire                when_MacCell_l258;
  wire                when_MacCell_l260;
  wire                actArea_actEn;
  wire                actArea_actValid;
  reg        [7:0]    actArea_actReg;
  reg                 actArea_actEn_regNext;
  wire                when_MacCell_l300;
  `ifndef SYNTHESIS
  reg [79:0] parm_macMode_string;
  reg [55:0] parm_actMode_string;
  `endif

  reg [31:0] lfBuffer [0:1023];

  assign _accArea_last = (parm_loopLen - 10'h001);
  assign _when_MacCell_l165 = (parm_spLen - 10'h001);
  assign _when_MacCell_l169 = (parm_loopLen - 10'h001);
  assign _lfBuffer_port_2 = ($signed(pSumArea_lfBReg) + $signed(pSumArea_pSumReg));
  assign __when_MacCell_l258 = ($signed(__when_MacCell_l258_1) >>> parm_scaleParm_shift);
  assign __when_MacCell_l258_1 = ($signed(__when_MacCell_l258_2) + $signed(__when_MacCell_l258_4));
  assign __when_MacCell_l258_3 = ($signed(quantArea_rawData) * $signed(parm_scaleParm_multiplier));
  assign __when_MacCell_l258_2 = {{15{__when_MacCell_l258_3[41]}}, __when_MacCell_l258_3};
  assign __when_MacCell_l258_4 = ((parm_scaleParm_shift == 4'b0000) ? __when_MacCell_l258_5 : __when_MacCell_l258_7);
  assign __when_MacCell_l258_6 = 42'h0;
  assign __when_MacCell_l258_5 = {{15{__when_MacCell_l258_6[41]}}, __when_MacCell_l258_6};
  assign __when_MacCell_l258_7 = __when_MacCell_l258_8;
  assign __when_MacCell_l258_8 = ({15'd0,42'h00000000001} <<< __when_MacCell_l258_9);
  assign __when_MacCell_l258_9 = (parm_scaleParm_shift - 4'b0001);
  assign __when_MacCell_l258_10 = {{49{parm_scaleParm_zeroPoint[7]}}, parm_scaleParm_zeroPoint};
  assign _lfBuffer_port = pSumArea_pSumReg;
  assign _lfBuffer_port_1 = _lfBuffer_port_2;
  assign _lfBuffer_port_3 = pSumArea_pSumReg;
  assign _lfBuffer_port_4 = pSumArea_pSumReg;
  always @(posedge clk) begin
    if(pSumArea_pSumEn) begin
      lfBuffer_spinal_port0 <= lfBuffer[spLenCnt];
    end
  end

  always @(posedge clk) begin
    if(_4) begin
      lfBuffer[spLenCnt] <= _lfBuffer_port;
    end
  end

  always @(posedge clk) begin
    if(_3) begin
      lfBuffer[spLenCnt] <= _lfBuffer_port_1;
    end
  end

  always @(posedge clk) begin
    if(_2) begin
      lfBuffer[spLenCnt] <= _lfBuffer_port_3;
    end
  end

  always @(posedge clk) begin
    if(_1) begin
      lfBuffer[spLenCnt] <= _lfBuffer_port_4;
    end
  end

  AdderTree pSumArea_adderTree (
    .dataIn_0  (pSumArea_adderTree_dataIn_0[15:0] ), //i
    .dataIn_1  (pSumArea_adderTree_dataIn_1[15:0] ), //i
    .dataIn_2  (pSumArea_adderTree_dataIn_2[15:0] ), //i
    .dataIn_3  (pSumArea_adderTree_dataIn_3[15:0] ), //i
    .dataIn_4  (pSumArea_adderTree_dataIn_4[15:0] ), //i
    .dataIn_5  (pSumArea_adderTree_dataIn_5[15:0] ), //i
    .dataIn_6  (pSumArea_adderTree_dataIn_6[15:0] ), //i
    .dataIn_7  (pSumArea_adderTree_dataIn_7[15:0] ), //i
    .dataIn_8  (pSumArea_adderTree_dataIn_8[15:0] ), //i
    .dataIn_9  (pSumArea_adderTree_dataIn_9[15:0] ), //i
    .dataIn_10 (pSumArea_adderTree_dataIn_10[15:0]), //i
    .dataIn_11 (pSumArea_adderTree_dataIn_11[15:0]), //i
    .dataIn_12 (pSumArea_adderTree_dataIn_12[15:0]), //i
    .dataIn_13 (pSumArea_adderTree_dataIn_13[15:0]), //i
    .dataIn_14 (pSumArea_adderTree_dataIn_14[15:0]), //i
    .dataIn_15 (pSumArea_adderTree_dataIn_15[15:0]), //i
    .dataOut   (pSumArea_adderTree_dataOut[19:0]  )  //o
  );
  `ifndef SYNTHESIS
  always @(*) begin
    case(parm_macMode)
      CONV2D : parm_macMode_string = "CONV2D    ";
      DWCONV : parm_macMode_string = "DWCONV    ";
      PWCONV : parm_macMode_string = "PWCONV    ";
      FC : parm_macMode_string = "FC        ";
      MAXPOOL : parm_macMode_string = "MAXPOOL   ";
      AVERAGPOOL : parm_macMode_string = "AVERAGPOOL";
      default : parm_macMode_string = "??????????";
    endcase
  end
  always @(*) begin
    case(parm_actMode)
      NONE : parm_actMode_string = "NONE   ";
      RELU : parm_actMode_string = "RELU   ";
      RELU6 : parm_actMode_string = "RELU6  ";
      SIGMOID : parm_actMode_string = "SIGMOID";
      default : parm_actMode_string = "???????";
    endcase
  end
  `endif

  always @(*) begin
    _1 = 1'b0;
    if(!clear) begin
      if(accArea_accEn) begin
        case(parm_macMode)
          CONV2D, FC, AVERAGPOOL, DWCONV : begin
          end
          MAXPOOL : begin
            if(!when_MacCell_l186) begin
              if(when_MacCell_l190) begin
                _1 = 1'b1;
              end
            end
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    _2 = 1'b0;
    if(!clear) begin
      if(accArea_accEn) begin
        case(parm_macMode)
          CONV2D, FC, AVERAGPOOL, DWCONV : begin
          end
          MAXPOOL : begin
            if(when_MacCell_l186) begin
              _2 = 1'b1;
            end
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    _3 = 1'b0;
    if(!clear) begin
      if(accArea_accEn) begin
        case(parm_macMode)
          CONV2D, FC, AVERAGPOOL, DWCONV : begin
            if(!when_MacCell_l177) begin
              _3 = 1'b1;
            end
          end
          MAXPOOL : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    _4 = 1'b0;
    if(!clear) begin
      if(accArea_accEn) begin
        case(parm_macMode)
          CONV2D, FC, AVERAGPOOL, DWCONV : begin
            if(when_MacCell_l177) begin
              _4 = 1'b1;
            end
          end
          MAXPOOL : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign mulArea_mulEn = feature_valid;
  assign mulArea_mulVaild = mulArea_mulEn_regNext;
  assign pSumArea_pSumEn = mulArea_mulVaild;
  assign pSumArea_pSumValid = pSumArea_pSumEn_regNext;
  always @(*) begin
    pSumArea_adderTree_dataIn_0 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_0 = mulArea_mulReg_0;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_1 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_1 = mulArea_mulReg_1;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_2 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_2 = mulArea_mulReg_2;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_3 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_3 = mulArea_mulReg_3;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_4 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_4 = mulArea_mulReg_4;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_5 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_5 = mulArea_mulReg_5;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_6 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_6 = mulArea_mulReg_6;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_7 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_7 = mulArea_mulReg_7;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_8 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_8 = mulArea_mulReg_8;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_9 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_9 = mulArea_mulReg_9;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_10 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_10 = mulArea_mulReg_10;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_11 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_11 = mulArea_mulReg_11;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_12 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_12 = mulArea_mulReg_12;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_13 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_13 = mulArea_mulReg_13;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_14 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_14 = mulArea_mulReg_14;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  always @(*) begin
    pSumArea_adderTree_dataIn_15 = 16'h0;
    if(!clear) begin
      if(pSumArea_pSumEn) begin
        case(parm_macMode)
          CONV2D, FC : begin
            pSumArea_adderTree_dataIn_15 = mulArea_mulReg_15;
          end
          AVERAGPOOL, DWCONV : begin
          end
          default : begin
          end
        endcase
      end
    end
  end

  assign accArea_accEn = pSumArea_pSumValid;
  assign accArea_accValid = _accArea_accValid;
  assign accArea_last = (loopLenCnt == _accArea_last);
  assign when_MacCell_l165 = (spLenCnt < _when_MacCell_l165);
  assign when_MacCell_l169 = (loopLenCnt < _when_MacCell_l169);
  assign when_MacCell_l177 = (loopLenCnt == 10'h0);
  assign when_MacCell_l186 = (loopLenCnt == 10'h0);
  assign when_MacCell_l190 = ($signed(pSumArea_lfBReg) < $signed(pSumArea_pSumReg));
  assign quantArea_quantEn = accArea_accValid;
  assign quantArea_rawData = accArea_accReg;
  assign quantArea_quantValid = quantArea_quantEn_regNext;
  assign _when_MacCell_l258 = ($signed(__when_MacCell_l258) + $signed(__when_MacCell_l258_10));
  assign when_MacCell_l258 = ($signed(57'h1ffffffffffff80) < $signed(_when_MacCell_l258));
  always @(*) begin
    if(when_MacCell_l258) begin
      _quantArea_quantReg = 8'h80;
    end else begin
      if(when_MacCell_l260) begin
        _quantArea_quantReg = 8'h7f;
      end else begin
        _quantArea_quantReg = _when_MacCell_l258[7:0];
      end
    end
  end

  assign when_MacCell_l260 = ($signed(_when_MacCell_l258) < $signed(57'h00000000000007f));
  assign actArea_actEn = quantArea_quantValid;
  assign actArea_actValid = actArea_actEn_regNext;
  assign when_MacCell_l300 = ($signed(quantArea_quantReg) < $signed(8'h0));
  assign result_payload = actArea_actReg;
  assign result_valid = actArea_actValid;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      spLenCnt <= 10'h0;
      loopLenCnt <= 10'h0;
      mulArea_mulReg_0 <= 16'h0;
      mulArea_mulReg_1 <= 16'h0;
      mulArea_mulReg_2 <= 16'h0;
      mulArea_mulReg_3 <= 16'h0;
      mulArea_mulReg_4 <= 16'h0;
      mulArea_mulReg_5 <= 16'h0;
      mulArea_mulReg_6 <= 16'h0;
      mulArea_mulReg_7 <= 16'h0;
      mulArea_mulReg_8 <= 16'h0;
      mulArea_mulReg_9 <= 16'h0;
      mulArea_mulReg_10 <= 16'h0;
      mulArea_mulReg_11 <= 16'h0;
      mulArea_mulReg_12 <= 16'h0;
      mulArea_mulReg_13 <= 16'h0;
      mulArea_mulReg_14 <= 16'h0;
      mulArea_mulReg_15 <= 16'h0;
      mulArea_mulEn_regNext <= 1'b0;
      pSumArea_pSumReg <= 32'h0;
      pSumArea_lfBReg <= 32'h0;
      pSumArea_pSumEn_regNext <= 1'b0;
      accArea_accReg <= 32'h0;
      _accArea_accValid <= 1'b0;
      quantArea_quantReg <= 8'h0;
      quantArea_quantEn_regNext <= 1'b0;
      actArea_actReg <= 8'h0;
      actArea_actEn_regNext <= 1'b0;
    end else begin
      mulArea_mulEn_regNext <= mulArea_mulEn;
      if(clear) begin
        mulArea_mulReg_0 <= 16'h0;
        mulArea_mulReg_1 <= 16'h0;
        mulArea_mulReg_2 <= 16'h0;
        mulArea_mulReg_3 <= 16'h0;
        mulArea_mulReg_4 <= 16'h0;
        mulArea_mulReg_5 <= 16'h0;
        mulArea_mulReg_6 <= 16'h0;
        mulArea_mulReg_7 <= 16'h0;
        mulArea_mulReg_8 <= 16'h0;
        mulArea_mulReg_9 <= 16'h0;
        mulArea_mulReg_10 <= 16'h0;
        mulArea_mulReg_11 <= 16'h0;
        mulArea_mulReg_12 <= 16'h0;
        mulArea_mulReg_13 <= 16'h0;
        mulArea_mulReg_14 <= 16'h0;
        mulArea_mulReg_15 <= 16'h0;
      end else begin
        if(mulArea_mulEn) begin
          case(parm_macMode)
            CONV2D, FC : begin
              mulArea_mulReg_0 <= ($signed(weight_0) * $signed(feature_payload_0));
              mulArea_mulReg_1 <= ($signed(weight_1) * $signed(feature_payload_1));
              mulArea_mulReg_2 <= ($signed(weight_2) * $signed(feature_payload_2));
              mulArea_mulReg_3 <= ($signed(weight_3) * $signed(feature_payload_3));
              mulArea_mulReg_4 <= ($signed(weight_4) * $signed(feature_payload_4));
              mulArea_mulReg_5 <= ($signed(weight_5) * $signed(feature_payload_5));
              mulArea_mulReg_6 <= ($signed(weight_6) * $signed(feature_payload_6));
              mulArea_mulReg_7 <= ($signed(weight_7) * $signed(feature_payload_7));
              mulArea_mulReg_8 <= ($signed(weight_8) * $signed(feature_payload_8));
              mulArea_mulReg_9 <= ($signed(weight_9) * $signed(feature_payload_9));
              mulArea_mulReg_10 <= ($signed(weight_10) * $signed(feature_payload_10));
              mulArea_mulReg_11 <= ($signed(weight_11) * $signed(feature_payload_11));
              mulArea_mulReg_12 <= ($signed(weight_12) * $signed(feature_payload_12));
              mulArea_mulReg_13 <= ($signed(weight_13) * $signed(feature_payload_13));
              mulArea_mulReg_14 <= ($signed(weight_14) * $signed(feature_payload_14));
              mulArea_mulReg_15 <= ($signed(weight_15) * $signed(feature_payload_15));
            end
            DWCONV, PWCONV : begin
              mulArea_mulReg_0 <= ($signed(weight_0) * $signed(feature_payload_0));
            end
            MAXPOOL : begin
              mulArea_mulReg_0 <= {{8{feature_payload_0[7]}}, feature_payload_0};
            end
            default : begin
            end
          endcase
        end
      end
      pSumArea_pSumEn_regNext <= pSumArea_pSumEn;
      pSumArea_lfBReg <= lfBuffer_spinal_port0;
      if(clear) begin
        pSumArea_pSumReg <= 32'h0;
      end else begin
        if(pSumArea_pSumEn) begin
          case(parm_macMode)
            CONV2D, FC : begin
              pSumArea_pSumReg <= {{12{pSumArea_adderTree_dataOut[19]}}, pSumArea_adderTree_dataOut};
            end
            AVERAGPOOL, DWCONV : begin
              pSumArea_pSumReg <= {{16{mulArea_mulReg_0[15]}}, mulArea_mulReg_0};
            end
            default : begin
              pSumArea_pSumReg <= 32'h0;
            end
          endcase
        end
      end
      _accArea_accValid <= (accArea_accEn && accArea_last);
      if(clear) begin
        spLenCnt <= 10'h0;
        loopLenCnt <= 10'h0;
        accArea_accReg <= 32'h0;
      end else begin
        if(accArea_accEn) begin
          if(when_MacCell_l165) begin
            spLenCnt <= (spLenCnt + 10'h001);
          end else begin
            spLenCnt <= 10'h0;
            if(when_MacCell_l169) begin
              loopLenCnt <= (loopLenCnt + 10'h001);
            end else begin
              loopLenCnt <= 10'h0;
            end
          end
          case(parm_macMode)
            CONV2D, FC, AVERAGPOOL, DWCONV : begin
              if(when_MacCell_l177) begin
                accArea_accReg <= pSumArea_pSumReg;
              end else begin
                accArea_accReg <= ($signed(pSumArea_lfBReg) + $signed(pSumArea_pSumReg));
              end
            end
            MAXPOOL : begin
              if(when_MacCell_l186) begin
                accArea_accReg <= pSumArea_pSumReg;
              end else begin
                if(when_MacCell_l190) begin
                  accArea_accReg <= pSumArea_pSumReg;
                end else begin
                  accArea_accReg <= pSumArea_lfBReg;
                end
              end
            end
            default : begin
            end
          endcase
        end
      end
      quantArea_quantEn_regNext <= quantArea_quantEn;
      if(quantArea_quantEn) begin
        quantArea_quantReg <= _quantArea_quantReg;
      end
      actArea_actEn_regNext <= actArea_actEn;
      if(actArea_actEn) begin
        case(parm_actMode)
          NONE : begin
            actArea_actReg <= quantArea_quantReg;
          end
          RELU : begin
            if(when_MacCell_l300) begin
              actArea_actReg <= 8'h0;
            end else begin
              actArea_actReg <= quantArea_quantReg;
            end
          end
          RELU6 : begin
          end
          default : begin
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
  input  wire [15:0]   dataIn_8,
  input  wire [15:0]   dataIn_9,
  input  wire [15:0]   dataIn_10,
  input  wire [15:0]   dataIn_11,
  input  wire [15:0]   dataIn_12,
  input  wire [15:0]   dataIn_13,
  input  wire [15:0]   dataIn_14,
  input  wire [15:0]   dataIn_15,
  output wire [19:0]   dataOut
);

  wire       [18:0]   _dataOut;
  wire       [18:0]   _dataOut_1;
  wire       [17:0]   _dataOut_2;
  wire       [17:0]   _dataOut_3;
  wire       [16:0]   _dataOut_4;
  wire       [16:0]   _dataOut_5;
  wire       [15:0]   _dataOut_6;
  wire       [16:0]   _dataOut_7;
  wire       [15:0]   _dataOut_8;
  wire       [17:0]   _dataOut_9;
  wire       [16:0]   _dataOut_10;
  wire       [16:0]   _dataOut_11;
  wire       [15:0]   _dataOut_12;
  wire       [16:0]   _dataOut_13;
  wire       [15:0]   _dataOut_14;
  wire       [18:0]   _dataOut_15;
  wire       [17:0]   _dataOut_16;
  wire       [17:0]   _dataOut_17;
  wire       [16:0]   _dataOut_18;
  wire       [16:0]   _dataOut_19;
  wire       [15:0]   _dataOut_20;
  wire       [16:0]   _dataOut_21;
  wire       [15:0]   _dataOut_22;
  wire       [17:0]   _dataOut_23;
  wire       [16:0]   _dataOut_24;
  wire       [16:0]   _dataOut_25;
  wire       [15:0]   _dataOut_26;
  wire       [16:0]   _dataOut_27;
  wire       [15:0]   _dataOut_28;

  assign _dataOut = ($signed(_dataOut_1) + $signed(_dataOut_15));
  assign _dataOut_2 = ($signed(_dataOut_3) + $signed(_dataOut_9));
  assign _dataOut_1 = {{1{_dataOut_2[17]}}, _dataOut_2};
  assign _dataOut_4 = ($signed(_dataOut_5) + $signed(_dataOut_7));
  assign _dataOut_3 = {{1{_dataOut_4[16]}}, _dataOut_4};
  assign _dataOut_6 = ($signed(dataIn_0) + $signed(dataIn_1));
  assign _dataOut_5 = {{1{_dataOut_6[15]}}, _dataOut_6};
  assign _dataOut_8 = ($signed(dataIn_2) + $signed(dataIn_3));
  assign _dataOut_7 = {{1{_dataOut_8[15]}}, _dataOut_8};
  assign _dataOut_10 = ($signed(_dataOut_11) + $signed(_dataOut_13));
  assign _dataOut_9 = {{1{_dataOut_10[16]}}, _dataOut_10};
  assign _dataOut_12 = ($signed(dataIn_4) + $signed(dataIn_5));
  assign _dataOut_11 = {{1{_dataOut_12[15]}}, _dataOut_12};
  assign _dataOut_14 = ($signed(dataIn_6) + $signed(dataIn_7));
  assign _dataOut_13 = {{1{_dataOut_14[15]}}, _dataOut_14};
  assign _dataOut_16 = ($signed(_dataOut_17) + $signed(_dataOut_23));
  assign _dataOut_15 = {{1{_dataOut_16[17]}}, _dataOut_16};
  assign _dataOut_18 = ($signed(_dataOut_19) + $signed(_dataOut_21));
  assign _dataOut_17 = {{1{_dataOut_18[16]}}, _dataOut_18};
  assign _dataOut_20 = ($signed(dataIn_8) + $signed(dataIn_9));
  assign _dataOut_19 = {{1{_dataOut_20[15]}}, _dataOut_20};
  assign _dataOut_22 = ($signed(dataIn_10) + $signed(dataIn_11));
  assign _dataOut_21 = {{1{_dataOut_22[15]}}, _dataOut_22};
  assign _dataOut_24 = ($signed(_dataOut_25) + $signed(_dataOut_27));
  assign _dataOut_23 = {{1{_dataOut_24[16]}}, _dataOut_24};
  assign _dataOut_26 = ($signed(dataIn_12) + $signed(dataIn_13));
  assign _dataOut_25 = {{1{_dataOut_26[15]}}, _dataOut_26};
  assign _dataOut_28 = ($signed(dataIn_14) + $signed(dataIn_15));
  assign _dataOut_27 = {{1{_dataOut_28[15]}}, _dataOut_28};
  assign dataOut = {{1{_dataOut[18]}}, _dataOut};

endmodule
