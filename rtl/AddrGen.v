// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : AddrGen
// Git hash  : 02491fef150ddb695e806a8318f17cf1104f38a0

`timescale 1ns/1ps

module AddrGen (
  output wire [9:0]    spLen,
  output wire [5:0]    kChDim,
  input  wire          convParm_valid,
  input  wire [2:0]    convParm_payload_mode,
  input  wire          convParm_payload_actEn,
  input  wire          convParm_payload_bnEn,
  input  wire [7:0]    convParm_payload_fHeight,
  input  wire [7:0]    convParm_payload_fWidth,
  input  wire [7:0]    convParm_payload_chIn,
  input  wire [7:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [1:0]    convParm_payload_stride,
  input  wire [1:0]    convParm_payload_pad,
  input  wire [15:0]   convParm_payload_finBaseAddr,
  input  wire [15:0]   convParm_payload_foutBaseAddr,
  input  wire [15:0]   convParm_payload_wBaseAddr,
  output wire          wAddr_valid,
  input  wire          wAddr_ready,
  output wire [15:0]   wAddr_payload,
  output wire          finAddr_valid,
  input  wire          finAddr_ready,
  output reg  [15:0]   finAddr_payload,
  output wire          foutAddr_valid,
  input  wire          foutAddr_ready,
  output wire [15:0]   foutAddr_payload,
  input  wire          clk,
  input  wire          reset
);
  localparam CONV2D = 3'd0;
  localparam DEEPCONV = 3'd1;
  localparam POINTCONV = 3'd2;
  localparam FC = 3'd3;
  localparam MAXPOOL = 3'd4;
  localparam AVERAGPOOL = 3'd5;

  wire       [7:0]    _chInBlock;
  wire       [7:0]    _chInBlock_1;
  wire       [7:0]    _chOutBlock;
  wire       [7:0]    _chOutBlock_1;
  wire       [7:0]    _foutHeight;
  wire       [7:0]    _foutHeight_1;
  wire       [7:0]    _foutHeight_2;
  wire       [7:0]    _foutHeight_3;
  wire       [7:0]    _foutHeight_4;
  wire       [3:0]    _foutHeight_5;
  wire       [7:0]    _foutWidth;
  wire       [7:0]    _foutWidth_1;
  wire       [7:0]    _foutWidth_2;
  wire       [7:0]    _foutWidth_3;
  wire       [7:0]    _foutWidth_4;
  wire       [3:0]    _foutWidth_5;
  wire       [10:0]   _hLen;
  wire       [5:0]    _wAddrGenArea_rsCounterReload;
  wire       [19:0]   _wAddrGenArea_wNIdex;
  wire       [14:0]   _wAddrGenArea_wNIdex_1;
  wire       [8:0]    _wAddrGenArea_wNIdex_2;
  wire       [8:0]    _wAddrGenArea_wNIdex_3;
  wire       [8:0]    _wAddrGenArea_wNIdex_4;
  wire       [13:0]   _wAddrGenArea_wWHIdex;
  wire       [23:0]   _wAddr_payload;
  wire       [23:0]   _wAddr_payload_1;
  wire       [15:0]   _wAddr_payload_2;
  wire       [15:0]   _wAddr_payload_3;
  wire       [15:0]   _wAddr_payload_4;
  wire       [15:0]   _wAddr_payload_5;
  wire       [23:0]   _wAddr_payload_6;
  wire       [15:0]   _wAddr_payload_7;
  wire       [8:0]    _when_AddrGen_l98;
  wire       [9:0]    _finAddrArea_finHIdex;
  wire       [9:0]    _finAddrArea_finHIdex_1;
  wire       [7:0]    _finAddrArea_finHIdex_2;
  wire       [9:0]    _finAddrArea_finHIdex_3;
  wire       [9:0]    _finAddrArea_finWIdex;
  wire       [9:0]    _finAddrArea_finWIdex_1;
  wire       [9:0]    _finAddrArea_finWIdex_2;
  wire       [7:0]    _when_AddrGen_l180;
  wire       [7:0]    _when_AddrGen_l180_1;
  wire       [7:0]    _when_AddrGen_l180_2;
  wire       [7:0]    _when_AddrGen_l180_3;
  wire       [7:0]    _when_AddrGen_l180_4;
  wire       [7:0]    _when_AddrGen_l180_5;
  wire       [23:0]   _finAddr_payload;
  wire       [23:0]   _finAddr_payload_1;
  wire       [15:0]   _finAddr_payload_2;
  wire       [15:0]   _finAddr_payload_3;
  wire       [15:0]   _finAddr_payload_4;
  wire       [15:0]   _finAddr_payload_5;
  wire       [23:0]   _finAddr_payload_6;
  wire       [15:0]   _finAddr_payload_7;
  wire       [7:0]    _when_AddrGen_l213;
  wire       [7:0]    _finAddrArea_hCounter;
  wire       [7:0]    _foutAddrArea_hCounterReload;
  wire       [7:0]    _foutAddrArea_hCounterReload_1;
  wire       [20:0]   _foutAddrArea_hwcCounterReload;
  wire       [20:0]   _foutAddrArea_hwcCounterReload_1;
  wire       [15:0]   _foutAddrArea_hwcCounterReload_2;
  wire       [23:0]   _foutAddr_payload;
  wire       [23:0]   _foutAddr_payload_1;
  wire       [23:0]   _foutAddr_payload_2;
  wire       [23:0]   _foutAddr_payload_3;
  wire       [20:0]   _foutAddr_payload_4;
  wire       [15:0]   _foutAddr_payload_5;
  wire       [15:0]   _spLen;
  reg        [2:0]    convParm_mode;
  reg                 convParm_actEn;
  reg                 convParm_bnEn;
  reg        [7:0]    convParm_fHeight;
  reg        [7:0]    convParm_fWidth;
  reg        [7:0]    convParm_chIn;
  reg        [7:0]    convParm_chOut;
  reg        [2:0]    convParm_kSize;
  reg        [1:0]    convParm_stride;
  reg        [1:0]    convParm_pad;
  reg        [15:0]   convParm_finBaseAddr;
  reg        [15:0]   convParm_foutBaseAddr;
  reg        [15:0]   convParm_wBaseAddr;
  reg                 busy;
  wire       [4:0]    chInBlock;
  wire       [4:0]    chOutBlock;
  wire       [5:0]    kChDim_1;
  wire       [7:0]    foutHeight;
  wire       [7:0]    foutWidth;
  wire       [7:0]    hLen;
  reg                 wAddrGenArea_wAddrDone;
  reg        [4:0]    wAddrGenArea_nCounter;
  reg        [7:0]    wAddrGenArea_pCounter;
  reg        [4:0]    wAddrGenArea_cCounter;
  reg        [8:0]    wAddrGenArea_rsCounter;
  reg        [2:0]    wAddrGenArea_kaCounter;
  wire       [4:0]    wAddrGenArea_nCounterReload;
  reg        [7:0]    wAddrGenArea_pCounterReload;
  wire       [4:0]    wAddrGenArea_cCounterReload;
  wire       [5:0]    wAddrGenArea_rsCounterReload;
  wire       [2:0]    wAddrGenArea_kaCounterReload;
  reg                 wAddrGenArea_valid;
  wire       [7:0]    wAddrGenArea_wNIdex;
  wire       [7:0]    wAddrGenArea_wWHIdex;
  wire       [7:0]    wAddrGenArea_wCIdex;
  wire                wAddr_fire;
  wire                when_AddrGen_l94;
  wire                when_AddrGen_l98;
  wire                when_AddrGen_l102;
  wire                when_AddrGen_l106;
  wire                when_AddrGen_l110;
  reg        [15:0]   finAddrArea_finBaseAddr;
  reg                 finAddrArea_finAddrDone;
  reg        [7:0]    finAddrArea_pCounter;
  reg        [4:0]    finAddrArea_nCounter;
  reg        [7:0]    finAddrArea_hCounter;
  reg        [7:0]    finAddrArea_wCounter;
  reg        [7:0]    finAddrArea_cCounter;
  reg        [2:0]    finAddrArea_sCounter;
  reg        [2:0]    finAddrArea_rCounter;
  wire       [7:0]    finAddrArea_hRemain;
  reg        [7:0]    finAddrArea_pCounterReload;
  wire       [4:0]    finAddrArea_nCounterReload;
  reg        [7:0]    finAddrArea_hCounterReload;
  wire       [7:0]    finAddrArea_wCounterReload;
  wire       [4:0]    finAddrArea_cCounterReload;
  wire       [2:0]    finAddrArea_rCounterReload;
  wire       [2:0]    finAddrArea_sCounterReload;
  reg                 finAddrArea_valid;
  reg                 finAddrArea_padFlag;
  wire       [7:0]    finAddrArea_finHIdex;
  wire       [7:0]    finAddrArea_finWIdex;
  wire                when_AddrGen_l180;
  wire                finAddr_fire;
  wire                when_AddrGen_l205;
  wire                when_AddrGen_l209;
  wire                when_AddrGen_l213;
  wire                when_AddrGen_l217;
  wire                when_AddrGen_l221;
  wire                when_AddrGen_l225;
  wire                when_AddrGen_l229;
  reg        [15:0]   foutAddrArea_foutBaseAddr;
  reg                 foutAddrArea_foutAddrDone;
  reg        [7:0]    foutAddrArea_pCounter;
  reg        [23:0]   foutAddrArea_hwcCounter;
  wire       [7:0]    foutAddrArea_hRemain;
  reg        [7:0]    foutAddrArea_pCounterReload;
  reg        [7:0]    foutAddrArea_hCounterReload;
  wire       [23:0]   foutAddrArea_hwcCounterReload;
  reg                 foutAddrArea_valid;
  wire                when_AddrGen_l287;
  wire                when_AddrGen_l288;
  wire                when_AddrGen_l292;
  wire                when_AddrGen_l309;
  `ifndef SYNTHESIS
  reg [79:0] convParm_payload_mode_string;
  reg [79:0] convParm_mode_string;
  `endif


  assign _chInBlock = (_chInBlock_1 - 8'h01);
  assign _chInBlock_1 = (convParm_chIn + 8'h08);
  assign _chOutBlock = (_chOutBlock_1 - 8'h01);
  assign _chOutBlock_1 = (convParm_chOut + 8'h08);
  assign _foutHeight = (_foutHeight_1 / convParm_stride);
  assign _foutHeight_1 = (_foutHeight_2 + _foutHeight_4);
  assign _foutHeight_2 = (convParm_fHeight - _foutHeight_3);
  assign _foutHeight_3 = {5'd0, convParm_kSize};
  assign _foutHeight_5 = (2'b10 * convParm_pad);
  assign _foutHeight_4 = {4'd0, _foutHeight_5};
  assign _foutWidth = (_foutWidth_1 / convParm_stride);
  assign _foutWidth_1 = (_foutWidth_2 + _foutWidth_4);
  assign _foutWidth_2 = (convParm_fWidth - _foutWidth_3);
  assign _foutWidth_3 = {5'd0, convParm_kSize};
  assign _foutWidth_5 = (2'b10 * convParm_pad);
  assign _foutWidth_4 = {4'd0, _foutWidth_5};
  assign _hLen = (11'h400 / foutWidth);
  assign _wAddrGenArea_rsCounterReload = (convParm_kSize * convParm_kSize);
  assign _wAddrGenArea_wNIdex = (_wAddrGenArea_wNIdex_1 * wAddrGenArea_cCounterReload);
  assign _wAddrGenArea_wNIdex_1 = (_wAddrGenArea_wNIdex_2 * wAddrGenArea_rsCounterReload);
  assign _wAddrGenArea_wNIdex_2 = (_wAddrGenArea_wNIdex_3 + _wAddrGenArea_wNIdex_4);
  assign _wAddrGenArea_wNIdex_3 = (wAddrGenArea_nCounter * 4'b1000);
  assign _wAddrGenArea_wNIdex_4 = {6'd0, wAddrGenArea_kaCounter};
  assign _wAddrGenArea_wWHIdex = (wAddrGenArea_rsCounter * wAddrGenArea_cCounterReload);
  assign _wAddr_payload = (_wAddr_payload_1 + _wAddr_payload_6);
  assign _wAddr_payload_2 = (_wAddr_payload_3 + _wAddr_payload_5);
  assign _wAddr_payload_1 = {8'd0, _wAddr_payload_2};
  assign _wAddr_payload_3 = (convParm_wBaseAddr + _wAddr_payload_4);
  assign _wAddr_payload_4 = {8'd0, wAddrGenArea_wCIdex};
  assign _wAddr_payload_5 = (wAddrGenArea_wWHIdex * wAddrGenArea_wCIdex);
  assign _wAddr_payload_6 = (_wAddr_payload_7 * wAddrGenArea_wNIdex);
  assign _wAddr_payload_7 = (wAddrGenArea_wCIdex * wAddrGenArea_wNIdex);
  assign _when_AddrGen_l98 = {3'd0, wAddrGenArea_rsCounterReload};
  assign _finAddrArea_finHIdex = (_finAddrArea_finHIdex_1 + _finAddrArea_finHIdex_3);
  assign _finAddrArea_finHIdex_1 = (_finAddrArea_finHIdex_2 * convParm_stride);
  assign _finAddrArea_finHIdex_2 = (finAddrArea_hCounter + finAddrArea_pCounter);
  assign _finAddrArea_finHIdex_3 = {7'd0, finAddrArea_sCounter};
  assign _finAddrArea_finWIdex = (_finAddrArea_finWIdex_1 + _finAddrArea_finWIdex_2);
  assign _finAddrArea_finWIdex_1 = (finAddrArea_wCounter * convParm_stride);
  assign _finAddrArea_finWIdex_2 = {7'd0, finAddrArea_rCounter};
  assign _when_AddrGen_l180 = {6'd0, convParm_pad};
  assign _when_AddrGen_l180_1 = (convParm_fHeight + _when_AddrGen_l180_2);
  assign _when_AddrGen_l180_2 = {6'd0, convParm_pad};
  assign _when_AddrGen_l180_3 = {6'd0, convParm_pad};
  assign _when_AddrGen_l180_4 = (convParm_fWidth + _when_AddrGen_l180_5);
  assign _when_AddrGen_l180_5 = {6'd0, convParm_pad};
  assign _finAddr_payload = (_finAddr_payload_1 + _finAddr_payload_6);
  assign _finAddr_payload_2 = (_finAddr_payload_3 + _finAddr_payload_5);
  assign _finAddr_payload_1 = {8'd0, _finAddr_payload_2};
  assign _finAddr_payload_3 = (finAddrArea_finBaseAddr + _finAddr_payload_4);
  assign _finAddr_payload_4 = {8'd0, finAddrArea_cCounter};
  assign _finAddr_payload_5 = (finAddrArea_finWIdex * finAddrArea_cCounter);
  assign _finAddr_payload_6 = (_finAddr_payload_7 * finAddrArea_cCounter);
  assign _finAddr_payload_7 = (finAddrArea_finHIdex * finAddrArea_finWIdex);
  assign _when_AddrGen_l213 = {3'd0, finAddrArea_cCounterReload};
  assign _finAddrArea_hCounter = {6'd0, convParm_stride};
  assign _foutAddrArea_hCounterReload = (hLen - 8'h01);
  assign _foutAddrArea_hCounterReload_1 = (foutAddrArea_hRemain - 8'h01);
  assign _foutAddrArea_hwcCounterReload = (_foutAddrArea_hwcCounterReload_1 - 21'h000001);
  assign _foutAddrArea_hwcCounterReload_1 = (_foutAddrArea_hwcCounterReload_2 * chOutBlock);
  assign _foutAddrArea_hwcCounterReload_2 = (foutAddrArea_hCounterReload * foutWidth);
  assign _foutAddr_payload = (_foutAddr_payload_1 + _foutAddr_payload_3);
  assign _foutAddr_payload_1 = (_foutAddr_payload_2 + foutAddrArea_hwcCounter);
  assign _foutAddr_payload_2 = {8'd0, foutAddrArea_foutBaseAddr};
  assign _foutAddr_payload_4 = (_foutAddr_payload_5 * chOutBlock);
  assign _foutAddr_payload_3 = {3'd0, _foutAddr_payload_4};
  assign _foutAddr_payload_5 = (foutAddrArea_pCounter * foutHeight);
  assign _spLen = (foutAddrArea_hCounterReload * foutWidth);
  `ifndef SYNTHESIS
  always @(*) begin
    case(convParm_payload_mode)
      CONV2D : convParm_payload_mode_string = "CONV2D    ";
      DEEPCONV : convParm_payload_mode_string = "DEEPCONV  ";
      POINTCONV : convParm_payload_mode_string = "POINTCONV ";
      FC : convParm_payload_mode_string = "FC        ";
      MAXPOOL : convParm_payload_mode_string = "MAXPOOL   ";
      AVERAGPOOL : convParm_payload_mode_string = "AVERAGPOOL";
      default : convParm_payload_mode_string = "??????????";
    endcase
  end
  always @(*) begin
    case(convParm_mode)
      CONV2D : convParm_mode_string = "CONV2D    ";
      DEEPCONV : convParm_mode_string = "DEEPCONV  ";
      POINTCONV : convParm_mode_string = "POINTCONV ";
      FC : convParm_mode_string = "FC        ";
      MAXPOOL : convParm_mode_string = "MAXPOOL   ";
      AVERAGPOOL : convParm_mode_string = "AVERAGPOOL";
      default : convParm_mode_string = "??????????";
    endcase
  end
  `endif

  assign chInBlock = (_chInBlock >>> 2'd3);
  assign chOutBlock = (_chOutBlock >>> 2'd3);
  assign kChDim_1 = (convParm_kSize * convParm_kSize);
  assign foutHeight = (_foutHeight + 8'h01);
  assign foutWidth = (_foutWidth + 8'h01);
  assign hLen = _hLen[7:0];
  assign kChDim = kChDim_1;
  always @(*) begin
    case(convParm_mode)
      CONV2D : begin
        wAddrGenArea_pCounterReload = (foutHeight - 8'h01);
      end
      default : begin
        wAddrGenArea_pCounterReload = 8'h0;
      end
    endcase
  end

  assign wAddrGenArea_nCounterReload = (chOutBlock - 5'h01);
  assign wAddrGenArea_cCounterReload = (chInBlock - 5'h01);
  assign wAddrGenArea_rsCounterReload = (_wAddrGenArea_rsCounterReload - 6'h01);
  assign wAddrGenArea_kaCounterReload = 3'b111;
  assign wAddr_valid = wAddrGenArea_valid;
  assign wAddrGenArea_wNIdex = _wAddrGenArea_wNIdex[7:0];
  assign wAddrGenArea_wWHIdex = _wAddrGenArea_wWHIdex[7:0];
  assign wAddrGenArea_wCIdex = {3'd0, wAddrGenArea_cCounter};
  assign wAddr_payload = _wAddr_payload[15:0];
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign when_AddrGen_l94 = (wAddrGenArea_kaCounter < wAddrGenArea_kaCounterReload);
  assign when_AddrGen_l98 = (wAddrGenArea_rsCounter < _when_AddrGen_l98);
  assign when_AddrGen_l102 = (wAddrGenArea_cCounter < wAddrGenArea_cCounterReload);
  assign when_AddrGen_l106 = (wAddrGenArea_pCounter < wAddrGenArea_pCounterReload);
  assign when_AddrGen_l110 = (wAddrGenArea_nCounter < wAddrGenArea_nCounterReload);
  assign finAddrArea_hRemain = (foutHeight - finAddrArea_pCounter);
  always @(*) begin
    case(convParm_mode)
      CONV2D : begin
        finAddrArea_pCounterReload = (foutHeight - hLen);
      end
      default : begin
        finAddrArea_pCounterReload = 8'h0;
      end
    endcase
  end

  always @(*) begin
    case(convParm_mode)
      CONV2D : begin
        finAddrArea_hCounterReload = ((hLen < finAddrArea_hRemain) ? hLen : finAddrArea_hRemain);
      end
      default : begin
        finAddrArea_hCounterReload = (foutHeight - 8'h01);
      end
    endcase
  end

  assign finAddrArea_nCounterReload = (chOutBlock - 5'h01);
  assign finAddrArea_wCounterReload = (foutWidth - 8'h01);
  assign finAddrArea_cCounterReload = (chInBlock - 5'h01);
  assign finAddrArea_rCounterReload = (convParm_kSize - 3'b001);
  assign finAddrArea_sCounterReload = (convParm_kSize - 3'b001);
  assign finAddr_valid = finAddrArea_valid;
  assign finAddrArea_finHIdex = _finAddrArea_finHIdex[7:0];
  assign finAddrArea_finWIdex = _finAddrArea_finWIdex[7:0];
  assign when_AddrGen_l180 = ((((finAddrArea_finHIdex < _when_AddrGen_l180) || (_when_AddrGen_l180_1 <= finAddrArea_finHIdex)) || (finAddrArea_finWIdex < _when_AddrGen_l180_3)) || (_when_AddrGen_l180_4 <= finAddrArea_finWIdex));
  always @(*) begin
    if(when_AddrGen_l180) begin
      finAddrArea_padFlag = 1'b1;
    end else begin
      finAddrArea_padFlag = 1'b0;
    end
  end

  always @(*) begin
    if(finAddrArea_padFlag) begin
      finAddr_payload = 16'h0;
    end else begin
      finAddr_payload = _finAddr_payload[15:0];
    end
  end

  assign finAddr_fire = (finAddr_valid && finAddr_ready);
  assign when_AddrGen_l205 = (finAddrArea_rCounter < finAddrArea_rCounterReload);
  assign when_AddrGen_l209 = (finAddrArea_sCounter < finAddrArea_sCounterReload);
  assign when_AddrGen_l213 = (finAddrArea_cCounter < _when_AddrGen_l213);
  assign when_AddrGen_l217 = (finAddrArea_wCounter < finAddrArea_wCounterReload);
  assign when_AddrGen_l221 = (finAddrArea_hCounter < finAddrArea_hCounterReload);
  assign when_AddrGen_l225 = (finAddrArea_nCounter < finAddrArea_nCounterReload);
  assign when_AddrGen_l229 = (finAddrArea_pCounter < finAddrArea_pCounterReload);
  assign foutAddrArea_hRemain = (foutHeight - foutAddrArea_pCounter);
  always @(*) begin
    case(convParm_mode)
      CONV2D : begin
        foutAddrArea_pCounterReload = (foutHeight - hLen);
      end
      default : begin
        foutAddrArea_pCounterReload = 8'h0;
      end
    endcase
  end

  always @(*) begin
    case(convParm_mode)
      CONV2D : begin
        foutAddrArea_hCounterReload = ((hLen < foutAddrArea_hRemain) ? _foutAddrArea_hCounterReload : _foutAddrArea_hCounterReload_1);
      end
      default : begin
        foutAddrArea_hCounterReload = (foutHeight - 8'h01);
      end
    endcase
  end

  assign foutAddrArea_hwcCounterReload = {3'd0, _foutAddrArea_hwcCounterReload};
  assign foutAddr_valid = foutAddrArea_valid;
  assign foutAddr_payload = _foutAddr_payload[15:0];
  assign when_AddrGen_l287 = (foutAddr_ready && foutAddr_valid);
  assign when_AddrGen_l288 = (foutAddrArea_hwcCounter < foutAddrArea_hwcCounterReload);
  assign when_AddrGen_l292 = (foutAddrArea_pCounter < foutAddrArea_pCounterReload);
  assign spLen = _spLen[9:0];
  assign when_AddrGen_l309 = ((wAddrGenArea_wAddrDone && finAddrArea_finAddrDone) && foutAddrArea_foutAddrDone);
  always @(posedge clk) begin
    if(convParm_valid) begin
      convParm_mode <= convParm_payload_mode;
      convParm_actEn <= convParm_payload_actEn;
      convParm_bnEn <= convParm_payload_bnEn;
      convParm_fHeight <= convParm_payload_fHeight;
      convParm_fWidth <= convParm_payload_fWidth;
      convParm_chIn <= convParm_payload_chIn;
      convParm_chOut <= convParm_payload_chOut;
      convParm_kSize <= convParm_payload_kSize;
      convParm_stride <= convParm_payload_stride;
      convParm_pad <= convParm_payload_pad;
      convParm_finBaseAddr <= convParm_payload_finBaseAddr;
      convParm_foutBaseAddr <= convParm_payload_foutBaseAddr;
      convParm_wBaseAddr <= convParm_payload_wBaseAddr;
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
      wAddrGenArea_nCounter <= 5'h0;
      wAddrGenArea_pCounter <= 8'h0;
      wAddrGenArea_cCounter <= 5'h0;
      wAddrGenArea_rsCounter <= 9'h0;
      wAddrGenArea_kaCounter <= 3'b000;
      wAddrGenArea_valid <= 1'b0;
      finAddrArea_finAddrDone <= 1'b0;
      finAddrArea_pCounter <= 8'h0;
      finAddrArea_nCounter <= 5'h0;
      finAddrArea_hCounter <= 8'h0;
      finAddrArea_wCounter <= 8'h0;
      finAddrArea_cCounter <= 8'h0;
      finAddrArea_sCounter <= 3'b000;
      finAddrArea_rCounter <= 3'b000;
      finAddrArea_valid <= 1'b0;
      foutAddrArea_foutAddrDone <= 1'b0;
      foutAddrArea_pCounter <= 8'h0;
      foutAddrArea_hwcCounter <= 24'h0;
      foutAddrArea_valid <= 1'b0;
    end else begin
      if(convParm_valid) begin
        wAddrGenArea_nCounter <= 5'h0;
        wAddrGenArea_cCounter <= 5'h0;
        wAddrGenArea_kaCounter <= 3'b000;
        wAddrGenArea_rsCounter <= 9'h0;
        wAddrGenArea_valid <= 1'b1;
      end else begin
        if(wAddr_fire) begin
          if(when_AddrGen_l94) begin
            wAddrGenArea_kaCounter <= (wAddrGenArea_kaCounter + 3'b001);
          end else begin
            wAddrGenArea_kaCounter <= 3'b000;
            if(when_AddrGen_l98) begin
              wAddrGenArea_rsCounter <= (wAddrGenArea_rsCounter + 9'h001);
            end else begin
              wAddrGenArea_rsCounter <= 9'h0;
              if(when_AddrGen_l102) begin
                wAddrGenArea_cCounter <= (wAddrGenArea_cCounter + 5'h01);
              end else begin
                wAddrGenArea_cCounter <= 5'h0;
                if(when_AddrGen_l106) begin
                  wAddrGenArea_pCounter <= (wAddrGenArea_pCounter + hLen);
                end else begin
                  wAddrGenArea_pCounter <= 8'h0;
                  if(when_AddrGen_l110) begin
                    wAddrGenArea_nCounter <= (wAddrGenArea_nCounter + 5'h01);
                  end else begin
                    wAddrGenArea_nCounter <= 5'h0;
                    wAddrGenArea_wAddrDone <= 1'b1;
                    wAddrGenArea_valid <= 1'b0;
                  end
                end
              end
            end
          end
        end
      end
      if(convParm_valid) begin
        finAddrArea_nCounter <= 5'h0;
        finAddrArea_hCounter <= 8'h0;
        finAddrArea_wCounter <= 8'h0;
        finAddrArea_cCounter <= 8'h0;
        finAddrArea_sCounter <= 3'b000;
        finAddrArea_rCounter <= 3'b000;
        finAddrArea_valid <= 1'b1;
      end else begin
        if(finAddr_fire) begin
          if(when_AddrGen_l205) begin
            finAddrArea_rCounter <= (finAddrArea_rCounter + 3'b001);
          end else begin
            finAddrArea_rCounter <= 3'b000;
            if(when_AddrGen_l209) begin
              finAddrArea_sCounter <= (finAddrArea_sCounter + 3'b001);
            end else begin
              finAddrArea_sCounter <= 3'b000;
              if(when_AddrGen_l213) begin
                finAddrArea_cCounter <= (finAddrArea_cCounter + 8'h01);
              end else begin
                finAddrArea_cCounter <= 8'h0;
                if(when_AddrGen_l217) begin
                  finAddrArea_wCounter <= (finAddrArea_wCounter + 8'h01);
                end else begin
                  finAddrArea_wCounter <= 8'h0;
                  if(when_AddrGen_l221) begin
                    finAddrArea_hCounter <= (finAddrArea_hCounter + _finAddrArea_hCounter);
                  end else begin
                    finAddrArea_hCounter <= 8'h0;
                    if(when_AddrGen_l225) begin
                      finAddrArea_nCounter <= (finAddrArea_nCounter + 5'h01);
                    end else begin
                      finAddrArea_nCounter <= 5'h0;
                      if(when_AddrGen_l229) begin
                        finAddrArea_pCounter <= (finAddrArea_pCounter + hLen);
                      end else begin
                        finAddrArea_nCounter <= 5'h0;
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
      end
      if(convParm_valid) begin
        foutAddrArea_hwcCounter <= 24'h0;
        foutAddrArea_valid <= 1'b1;
        foutAddrArea_foutAddrDone <= 1'b0;
      end else begin
        if(when_AddrGen_l287) begin
          if(when_AddrGen_l288) begin
            foutAddrArea_hwcCounter <= (foutAddrArea_hwcCounter + 24'h000001);
          end else begin
            foutAddrArea_hwcCounter <= 24'h0;
            if(when_AddrGen_l292) begin
              foutAddrArea_pCounter <= (foutAddrArea_pCounter + hLen);
            end else begin
              foutAddrArea_pCounter <= 8'h0;
              foutAddrArea_foutAddrDone <= 1'b1;
              foutAddrArea_valid <= 1'b0;
            end
          end
        end
      end
      if(convParm_valid) begin
        busy <= 1'b1;
      end else begin
        if(when_AddrGen_l309) begin
          busy <= 1'b0;
        end
      end
    end
  end


endmodule
