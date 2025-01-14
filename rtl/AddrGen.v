// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : AddrGen
// Git hash  : 6848bf3caac7a8094d8184558d05ae7481201133

`timescale 1ns/1ps

module AddrGen (
  input  wire          convParm_valid,
  output wire          convParm_ready,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [12:0]   convParm_payload_fHeight,
  input  wire [12:0]   convParm_payload_fWidth,
  input  wire [3:0]    convParm_payload_kSize,
  input  wire [8:0]    convParm_payload_chIn,
  input  wire [8:0]    convParm_payload_chOut,
  input  wire [2:0]    convParm_payload_pad,
  input  wire [3:0]    convParm_payload_stride,
  input  wire [5:0]    convParm_payload_spLen,
  output wire          wAddr_valid,
  input  wire          wAddr_ready,
  output wire [14:0]   wAddr_payload,
  output wire          finAddr_valid,
  input  wire          finAddr_ready,
  output reg  [14:0]   finAddr_payload,
  output wire          foutAddr_valid,
  input  wire          foutAddr_ready,
  output wire [14:0]   foutAddr_payload,
  input  wire          clk,
  input  wire          reset
);

  wire       [25:0]   _wAddrGenArea_baseCounterReload;
  wire       [16:0]   _wAddrGenArea_baseCounterReload_1;
  wire       [7:0]    _wAddrGenArea_baseCounterReload_2;
  wire       [25:0]   _when_AddrGen_l42;
  wire       [25:0]   _when_AddrGen_l42_1;
  wire       [8:0]    _finAddrArea_kCounterReload;
  wire       [8:0]    _finAddrArea_kCounterReload_1;
  wire       [12:0]   _finAddrArea_wCounterReload;
  wire       [12:0]   _finAddrArea_wCounterReload_1;
  wire       [12:0]   _finAddrArea_wCounterReload_2;
  wire       [12:0]   _finAddrArea_wCounterReload_3;
  wire       [12:0]   _finAddrArea_wCounterReload_4;
  wire       [4:0]    _finAddrArea_wCounterReload_5;
  wire       [12:0]   _finAddrArea_hCounterReload;
  wire       [12:0]   _finAddrArea_hCounterReload_1;
  wire       [12:0]   _finAddrArea_hCounterReload_2;
  wire       [12:0]   _finAddrArea_hCounterReload_3;
  wire       [12:0]   _finAddrArea_hCounterReload_4;
  wire       [4:0]    _finAddrArea_hCounterReload_5;
  wire       [8:0]    _finAddrArea_cCounterReload;
  wire       [8:0]    _finAddrArea_cCounterReload_1;
  wire       [12:0]   _when_AddrGen_l75;
  wire       [12:0]   _when_AddrGen_l75_1;
  wire       [12:0]   _finAddrArea_spLenCounterReload;
  wire       [16:0]   _finAddrArea_wBias;
  wire       [12:0]   _finAddrArea_wBias_1;
  wire       [12:0]   _finAddrArea_wBias_2;
  wire       [16:0]   _finAddrArea_wBias_3;
  wire       [16:0]   _finAddrArea_hBias;
  wire       [16:0]   _finAddrArea_hBias_1;
  wire       [16:0]   _finAddrArea_wMap;
  wire       [16:0]   _finAddrArea_hMap;
  wire       [16:0]   _finAddrArea_wPadFlag;
  wire       [16:0]   _finAddrArea_wPadFlag_1;
  wire       [12:0]   _finAddrArea_wPadFlag_2;
  wire       [12:0]   _finAddrArea_wPadFlag_3;
  wire       [16:0]   _finAddrArea_hPadFlag;
  wire       [16:0]   _finAddrArea_hPadFlag_1;
  wire       [12:0]   _finAddrArea_hPadFlag_2;
  wire       [12:0]   _finAddrArea_hPadFlag_3;
  wire       [31:0]   _finAddr_payload;
  wire       [31:0]   _finAddr_payload_1;
  wire       [29:0]   _finAddr_payload_2;
  wire       [29:0]   _finAddr_payload_3;
  wire       [16:0]   _finAddr_payload_4;
  wire       [16:0]   _finAddr_payload_5;
  wire       [29:0]   _finAddr_payload_6;
  wire       [31:0]   _finAddr_payload_7;
  wire       [25:0]   _finAddr_payload_8;
  wire       [5:0]    _when_AddrGen_l117;
  wire       [3:0]    _when_AddrGen_l121;
  wire       [3:0]    _when_AddrGen_l125;
  wire       [8:0]    _when_AddrGen_l129;
  wire       [5:0]    _when_AddrGen_l129_1;
  wire       [12:0]   _when_AddrGen_l133;
  wire       [12:0]   _finAddrArea_hCounter;
  wire       [12:0]   _when_AddrGen_l137;
  wire       [12:0]   _finAddrArea_wCounter;
  wire       [9:0]    _finAddrArea_wCounter_1;
  wire       [9:0]    _when_AddrGen_l141;
  wire       [5:0]    _when_AddrGen_l141_1;
  wire       [12:0]   _foutAddrArea_wCounterReload;
  wire       [12:0]   _foutAddrArea_wCounterReload_1;
  wire       [12:0]   _foutAddrArea_wCounterReload_2;
  wire       [12:0]   _foutAddrArea_wCounterReload_3;
  wire       [12:0]   _foutAddrArea_wCounterReload_4;
  wire       [4:0]    _foutAddrArea_wCounterReload_5;
  wire       [12:0]   _foutAddrArea_hCounterReload;
  wire       [12:0]   _foutAddrArea_hCounterReload_1;
  wire       [12:0]   _foutAddrArea_hCounterReload_2;
  wire       [12:0]   _foutAddrArea_hCounterReload_3;
  wire       [12:0]   _foutAddrArea_hCounterReload_4;
  wire       [4:0]    _foutAddrArea_hCounterReload_5;
  wire       [8:0]    _foutAddrArea_chOCounterReload;
  wire       [8:0]    _foutAddrArea_chOCounterReload_1;
  wire       [14:0]   _foutAddr_payload;
  wire       [14:0]   _foutAddr_payload_1;
  wire       [14:0]   _foutAddr_payload_2;
  wire       [14:0]   _foutAddr_payload_3;
  wire       [25:0]   _foutAddr_payload_4;
  wire       [14:0]   _foutAddr_payload_5;
  wire       [31:0]   _foutAddr_payload_6;
  wire       [25:0]   _foutAddr_payload_7;
  wire       [12:0]   _when_AddrGen_l189;
  wire       [12:0]   _when_AddrGen_l193;
  wire       [8:0]    _when_AddrGen_l197;
  wire       [5:0]    _when_AddrGen_l197_1;
  wire                convParm_fire;
  reg        [1:0]    convParm_mode;
  reg        [14:0]   convParm_finBaseAddr;
  reg        [14:0]   convParm_foutBaseAddr;
  reg        [14:0]   convParm_wBaseAddr;
  reg        [12:0]   convParm_fHeight;
  reg        [12:0]   convParm_fWidth;
  reg        [3:0]    convParm_kSize;
  reg        [8:0]    convParm_chIn;
  reg        [8:0]    convParm_chOut;
  reg        [2:0]    convParm_pad;
  reg        [3:0]    convParm_stride;
  reg        [5:0]    convParm_spLen;
  reg                 busy;
  reg        [14:0]   wAddrGenArea_wBaseAddr;
  reg                 wAddrGenArea_wAddrDone;
  reg        [14:0]   wAddrGenArea_baseCounter;
  reg                 wAddrGenArea_valid;
  reg        [25:0]   wAddrGenArea_baseCounterReload;
  wire                wAddr_fire;
  wire                when_AddrGen_l42;
  reg        [14:0]   finAddrArea_finBaseAddr;
  reg                 finAddrArea_finAddrDone;
  reg        [9:0]    finAddrArea_kCounter;
  reg        [12:0]   finAddrArea_wCounter;
  reg        [12:0]   finAddrArea_hCounter;
  reg        [8:0]    finAddrArea_cCounter;
  reg        [3:0]    finAddrArea_rCounter;
  reg        [3:0]    finAddrArea_sCounter;
  reg        [5:0]    finAddrArea_spLenCounter;
  wire       [5:0]    finAddrArea_kCounterReload;
  wire       [12:0]   finAddrArea_wCounterReload;
  wire       [12:0]   finAddrArea_hCounterReload;
  wire       [5:0]    finAddrArea_cCounterReload;
  reg        [5:0]    finAddrArea_spLenCounterReload;
  wire                when_AddrGen_l75;
  reg                 finAddrArea_valid;
  wire       [16:0]   finAddrArea_wBias;
  wire       [16:0]   finAddrArea_hBias;
  wire       [16:0]   finAddrArea_wMap;
  wire       [16:0]   finAddrArea_hMap;
  wire                finAddrArea_wPadFlag;
  wire                finAddrArea_hPadFlag;
  wire                finAddrArea_padFlag;
  wire                finAddr_fire;
  wire                when_AddrGen_l117;
  wire                when_AddrGen_l121;
  wire                when_AddrGen_l125;
  wire                when_AddrGen_l129;
  wire                when_AddrGen_l133;
  wire                when_AddrGen_l137;
  wire                when_AddrGen_l141;
  reg        [14:0]   foutAddrArea_foutBaseAddr;
  reg                 foutAddrArea_foutAddrDone;
  reg        [12:0]   foutAddrArea_wCounter;
  reg        [12:0]   foutAddrArea_hCounter;
  reg        [8:0]    foutAddrArea_chOCounter;
  wire       [12:0]   foutAddrArea_wCounterReload;
  wire       [12:0]   foutAddrArea_hCounterReload;
  wire       [5:0]    foutAddrArea_chOCounterReload;
  reg                 foutAddrArea_valid;
  wire                when_AddrGen_l188;
  wire                when_AddrGen_l189;
  wire                when_AddrGen_l193;
  wire                when_AddrGen_l197;
  wire                when_AddrGen_l219;

  assign _wAddrGenArea_baseCounterReload = (_wAddrGenArea_baseCounterReload_1 * convParm_payload_chOut);
  assign _wAddrGenArea_baseCounterReload_1 = (_wAddrGenArea_baseCounterReload_2 * convParm_payload_chIn);
  assign _wAddrGenArea_baseCounterReload_2 = (convParm_payload_kSize * convParm_payload_kSize);
  assign _when_AddrGen_l42 = {11'd0, wAddrGenArea_baseCounter};
  assign _when_AddrGen_l42_1 = (wAddrGenArea_baseCounterReload - 26'h0000001);
  assign _finAddrArea_kCounterReload = (_finAddrArea_kCounterReload_1 - 9'h001);
  assign _finAddrArea_kCounterReload_1 = (convParm_chOut + 9'h008);
  assign _finAddrArea_wCounterReload = (_finAddrArea_wCounterReload_1 / convParm_stride);
  assign _finAddrArea_wCounterReload_1 = (_finAddrArea_wCounterReload_2 + _finAddrArea_wCounterReload_4);
  assign _finAddrArea_wCounterReload_2 = (convParm_fWidth - _finAddrArea_wCounterReload_3);
  assign _finAddrArea_wCounterReload_3 = {9'd0, convParm_kSize};
  assign _finAddrArea_wCounterReload_5 = (2'b10 * convParm_pad);
  assign _finAddrArea_wCounterReload_4 = {8'd0, _finAddrArea_wCounterReload_5};
  assign _finAddrArea_hCounterReload = (_finAddrArea_hCounterReload_1 / convParm_stride);
  assign _finAddrArea_hCounterReload_1 = (_finAddrArea_hCounterReload_2 + _finAddrArea_hCounterReload_4);
  assign _finAddrArea_hCounterReload_2 = (convParm_fHeight - _finAddrArea_hCounterReload_3);
  assign _finAddrArea_hCounterReload_3 = {9'd0, convParm_kSize};
  assign _finAddrArea_hCounterReload_5 = (2'b10 * convParm_pad);
  assign _finAddrArea_hCounterReload_4 = {8'd0, _finAddrArea_hCounterReload_5};
  assign _finAddrArea_cCounterReload = (_finAddrArea_cCounterReload_1 - 9'h001);
  assign _finAddrArea_cCounterReload_1 = (convParm_chIn + 9'h008);
  assign _when_AddrGen_l75 = {7'd0, convParm_spLen};
  assign _when_AddrGen_l75_1 = (finAddrArea_wCounterReload - finAddrArea_wCounter);
  assign _finAddrArea_spLenCounterReload = (finAddrArea_wCounterReload - finAddrArea_wCounter);
  assign _finAddrArea_wBias = (_finAddrArea_wBias_1 * convParm_stride);
  assign _finAddrArea_wBias_1 = (_finAddrArea_wBias_2 + finAddrArea_wCounter);
  assign _finAddrArea_wBias_2 = {7'd0, finAddrArea_spLenCounter};
  assign _finAddrArea_wBias_3 = {13'd0, finAddrArea_sCounter};
  assign _finAddrArea_hBias = (finAddrArea_hCounter * convParm_stride);
  assign _finAddrArea_hBias_1 = {13'd0, finAddrArea_rCounter};
  assign _finAddrArea_wMap = {14'd0, convParm_pad};
  assign _finAddrArea_hMap = {14'd0, convParm_pad};
  assign _finAddrArea_wPadFlag = {14'd0, convParm_pad};
  assign _finAddrArea_wPadFlag_2 = (_finAddrArea_wPadFlag_3 + convParm_fWidth);
  assign _finAddrArea_wPadFlag_1 = {4'd0, _finAddrArea_wPadFlag_2};
  assign _finAddrArea_wPadFlag_3 = {10'd0, convParm_pad};
  assign _finAddrArea_hPadFlag = {14'd0, convParm_pad};
  assign _finAddrArea_hPadFlag_2 = (_finAddrArea_hPadFlag_3 + convParm_fHeight);
  assign _finAddrArea_hPadFlag_1 = {4'd0, _finAddrArea_hPadFlag_2};
  assign _finAddrArea_hPadFlag_3 = {10'd0, convParm_pad};
  assign _finAddr_payload = (_finAddr_payload_1 + _finAddr_payload_7);
  assign _finAddr_payload_2 = (_finAddr_payload_3 + _finAddr_payload_6);
  assign _finAddr_payload_1 = {2'd0, _finAddr_payload_2};
  assign _finAddr_payload_4 = (_finAddr_payload_5 + finAddrArea_wMap);
  assign _finAddr_payload_3 = {13'd0, _finAddr_payload_4};
  assign _finAddr_payload_5 = {2'd0, finAddrArea_finBaseAddr};
  assign _finAddr_payload_6 = (convParm_fWidth * finAddrArea_hMap);
  assign _finAddr_payload_7 = (_finAddr_payload_8 * finAddrArea_kCounterReload);
  assign _finAddr_payload_8 = (convParm_fWidth * convParm_fHeight);
  assign _when_AddrGen_l117 = (finAddrArea_spLenCounterReload - 6'h01);
  assign _when_AddrGen_l121 = (convParm_kSize - 4'b0001);
  assign _when_AddrGen_l125 = (convParm_kSize - 4'b0001);
  assign _when_AddrGen_l129_1 = (finAddrArea_cCounterReload - 6'h01);
  assign _when_AddrGen_l129 = {3'd0, _when_AddrGen_l129_1};
  assign _when_AddrGen_l133 = (finAddrArea_hCounterReload - 13'h0001);
  assign _finAddrArea_hCounter = {9'd0, convParm_stride};
  assign _when_AddrGen_l137 = (finAddrArea_wCounterReload - 13'h0001);
  assign _finAddrArea_wCounter_1 = (convParm_stride * convParm_spLen);
  assign _finAddrArea_wCounter = {3'd0, _finAddrArea_wCounter_1};
  assign _when_AddrGen_l141_1 = (finAddrArea_kCounterReload - 6'h01);
  assign _when_AddrGen_l141 = {4'd0, _when_AddrGen_l141_1};
  assign _foutAddrArea_wCounterReload = (_foutAddrArea_wCounterReload_1 / convParm_stride);
  assign _foutAddrArea_wCounterReload_1 = (_foutAddrArea_wCounterReload_2 + _foutAddrArea_wCounterReload_4);
  assign _foutAddrArea_wCounterReload_2 = (convParm_fWidth - _foutAddrArea_wCounterReload_3);
  assign _foutAddrArea_wCounterReload_3 = {9'd0, convParm_kSize};
  assign _foutAddrArea_wCounterReload_5 = (2'b10 * convParm_pad);
  assign _foutAddrArea_wCounterReload_4 = {8'd0, _foutAddrArea_wCounterReload_5};
  assign _foutAddrArea_hCounterReload = (_foutAddrArea_hCounterReload_1 / convParm_stride);
  assign _foutAddrArea_hCounterReload_1 = (_foutAddrArea_hCounterReload_2 + _foutAddrArea_hCounterReload_4);
  assign _foutAddrArea_hCounterReload_2 = (convParm_fHeight - _foutAddrArea_hCounterReload_3);
  assign _foutAddrArea_hCounterReload_3 = {9'd0, convParm_kSize};
  assign _foutAddrArea_hCounterReload_5 = (2'b10 * convParm_pad);
  assign _foutAddrArea_hCounterReload_4 = {8'd0, _foutAddrArea_hCounterReload_5};
  assign _foutAddrArea_chOCounterReload = (_foutAddrArea_chOCounterReload_1 - 9'h001);
  assign _foutAddrArea_chOCounterReload_1 = (convParm_chOut + 9'h008);
  assign _foutAddr_payload = (_foutAddr_payload_1 + _foutAddr_payload_3);
  assign _foutAddr_payload_1 = (foutAddrArea_foutBaseAddr + _foutAddr_payload_2);
  assign _foutAddr_payload_2 = {2'd0, foutAddrArea_wCounter};
  assign _foutAddr_payload_4 = (foutAddrArea_hCounter * foutAddrArea_wCounterReload);
  assign _foutAddr_payload_3 = _foutAddr_payload_4[14:0];
  assign _foutAddr_payload_6 = (_foutAddr_payload_7 * foutAddrArea_chOCounterReload);
  assign _foutAddr_payload_5 = _foutAddr_payload_6[14:0];
  assign _foutAddr_payload_7 = (foutAddrArea_wCounterReload * foutAddrArea_hCounterReload);
  assign _when_AddrGen_l189 = (foutAddrArea_wCounterReload - 13'h0001);
  assign _when_AddrGen_l193 = (foutAddrArea_hCounterReload - 13'h0001);
  assign _when_AddrGen_l197_1 = (foutAddrArea_chOCounterReload - 6'h01);
  assign _when_AddrGen_l197 = {3'd0, _when_AddrGen_l197_1};
  assign convParm_fire = (convParm_valid && convParm_ready);
  assign wAddr_valid = wAddrGenArea_valid;
  assign wAddr_payload = (wAddrGenArea_wBaseAddr + wAddrGenArea_baseCounter);
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign when_AddrGen_l42 = (_when_AddrGen_l42 < _when_AddrGen_l42_1);
  assign finAddrArea_kCounterReload = (_finAddrArea_kCounterReload >>> 2'd3);
  assign finAddrArea_wCounterReload = (_finAddrArea_wCounterReload + 13'h0001);
  assign finAddrArea_hCounterReload = (_finAddrArea_hCounterReload + 13'h0001);
  assign finAddrArea_cCounterReload = (_finAddrArea_cCounterReload >>> 2'd3);
  assign when_AddrGen_l75 = (_when_AddrGen_l75 <= _when_AddrGen_l75_1);
  always @(*) begin
    if(when_AddrGen_l75) begin
      finAddrArea_spLenCounterReload = convParm_spLen;
    end else begin
      finAddrArea_spLenCounterReload = _finAddrArea_spLenCounterReload[5:0];
    end
  end

  assign finAddrArea_wBias = (_finAddrArea_wBias + _finAddrArea_wBias_3);
  assign finAddrArea_hBias = (_finAddrArea_hBias + _finAddrArea_hBias_1);
  assign finAddrArea_wMap = (finAddrArea_wBias - _finAddrArea_wMap);
  assign finAddrArea_hMap = (finAddrArea_hBias - _finAddrArea_hMap);
  assign finAddrArea_wPadFlag = ((finAddrArea_wBias < _finAddrArea_wPadFlag) || (_finAddrArea_wPadFlag_1 <= finAddrArea_wBias));
  assign finAddrArea_hPadFlag = ((finAddrArea_hBias < _finAddrArea_hPadFlag) || (_finAddrArea_hPadFlag_1 <= finAddrArea_hBias));
  assign finAddrArea_padFlag = (finAddrArea_wPadFlag || finAddrArea_hPadFlag);
  assign finAddr_valid = finAddrArea_valid;
  always @(*) begin
    if(finAddrArea_padFlag) begin
      finAddr_payload = 15'h0;
    end else begin
      finAddr_payload = _finAddr_payload[14:0];
    end
  end

  assign finAddr_fire = (finAddr_valid && finAddr_ready);
  assign when_AddrGen_l117 = (finAddrArea_spLenCounter < _when_AddrGen_l117);
  assign when_AddrGen_l121 = (finAddrArea_sCounter < _when_AddrGen_l121);
  assign when_AddrGen_l125 = (finAddrArea_rCounter < _when_AddrGen_l125);
  assign when_AddrGen_l129 = (finAddrArea_cCounter < _when_AddrGen_l129);
  assign when_AddrGen_l133 = (finAddrArea_hCounter < _when_AddrGen_l133);
  assign when_AddrGen_l137 = (finAddrArea_wCounter < _when_AddrGen_l137);
  assign when_AddrGen_l141 = (finAddrArea_kCounter < _when_AddrGen_l141);
  assign foutAddrArea_wCounterReload = (_foutAddrArea_wCounterReload + 13'h0001);
  assign foutAddrArea_hCounterReload = (_foutAddrArea_hCounterReload + 13'h0001);
  assign foutAddrArea_chOCounterReload = (_foutAddrArea_chOCounterReload >>> 2'd3);
  assign foutAddr_valid = foutAddrArea_valid;
  assign foutAddr_payload = (_foutAddr_payload + _foutAddr_payload_5);
  assign when_AddrGen_l188 = (foutAddr_ready && foutAddr_valid);
  assign when_AddrGen_l189 = (foutAddrArea_wCounter < _when_AddrGen_l189);
  assign when_AddrGen_l193 = (foutAddrArea_hCounter < _when_AddrGen_l193);
  assign when_AddrGen_l197 = (foutAddrArea_chOCounter < _when_AddrGen_l197);
  assign convParm_ready = (! busy);
  assign when_AddrGen_l219 = ((wAddrGenArea_wAddrDone && finAddrArea_finAddrDone) && foutAddrArea_foutAddrDone);
  always @(posedge clk) begin
    if(convParm_fire) begin
      convParm_mode <= convParm_payload_mode;
      convParm_finBaseAddr <= convParm_payload_finBaseAddr;
      convParm_foutBaseAddr <= convParm_payload_foutBaseAddr;
      convParm_wBaseAddr <= convParm_payload_wBaseAddr;
      convParm_fHeight <= convParm_payload_fHeight;
      convParm_fWidth <= convParm_payload_fWidth;
      convParm_kSize <= convParm_payload_kSize;
      convParm_chIn <= convParm_payload_chIn;
      convParm_chOut <= convParm_payload_chOut;
      convParm_pad <= convParm_payload_pad;
      convParm_stride <= convParm_payload_stride;
      convParm_spLen <= convParm_payload_spLen;
    end
    if(convParm_fire) begin
      wAddrGenArea_wBaseAddr <= convParm_payload_wBaseAddr;
    end
    if(convParm_fire) begin
      wAddrGenArea_baseCounterReload <= (_wAddrGenArea_baseCounterReload / 4'b1000);
    end
    if(convParm_fire) begin
      finAddrArea_finBaseAddr <= convParm_payload_finBaseAddr;
    end
    if(convParm_fire) begin
      foutAddrArea_foutBaseAddr <= convParm_payload_foutBaseAddr;
    end
  end

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      busy <= 1'b0;
      wAddrGenArea_wAddrDone <= 1'b0;
      wAddrGenArea_baseCounter <= 15'h0;
      wAddrGenArea_valid <= 1'b0;
      finAddrArea_finAddrDone <= 1'b0;
      finAddrArea_kCounter <= 10'h0;
      finAddrArea_wCounter <= 13'h0;
      finAddrArea_hCounter <= 13'h0;
      finAddrArea_cCounter <= 9'h0;
      finAddrArea_rCounter <= 4'b0000;
      finAddrArea_sCounter <= 4'b0000;
      finAddrArea_spLenCounter <= 6'h0;
      finAddrArea_valid <= 1'b0;
      foutAddrArea_foutAddrDone <= 1'b0;
      foutAddrArea_wCounter <= 13'h0;
      foutAddrArea_hCounter <= 13'h0;
      foutAddrArea_chOCounter <= 9'h0;
      foutAddrArea_valid <= 1'b0;
    end else begin
      if(convParm_fire) begin
        wAddrGenArea_baseCounter <= 15'h0;
        wAddrGenArea_valid <= 1'b1;
      end else begin
        if(wAddr_fire) begin
          if(when_AddrGen_l42) begin
            wAddrGenArea_baseCounter <= (wAddrGenArea_baseCounter + 15'h0001);
          end else begin
            wAddrGenArea_baseCounter <= 15'h0;
            wAddrGenArea_wAddrDone <= 1'b1;
            wAddrGenArea_valid <= 1'b0;
          end
        end
      end
      if(convParm_fire) begin
        finAddrArea_kCounter <= 10'h0;
        finAddrArea_wCounter <= 13'h0;
        finAddrArea_hCounter <= 13'h0;
        finAddrArea_cCounter <= 9'h0;
        finAddrArea_rCounter <= 4'b0000;
        finAddrArea_sCounter <= 4'b0000;
        finAddrArea_spLenCounter <= 6'h0;
        finAddrArea_valid <= 1'b1;
      end else begin
        if(finAddr_fire) begin
          if(when_AddrGen_l117) begin
            finAddrArea_spLenCounter <= (finAddrArea_spLenCounter + 6'h01);
          end else begin
            finAddrArea_spLenCounter <= 6'h0;
            if(when_AddrGen_l121) begin
              finAddrArea_sCounter <= (finAddrArea_sCounter + 4'b0001);
            end else begin
              finAddrArea_sCounter <= 4'b0000;
              if(when_AddrGen_l125) begin
                finAddrArea_rCounter <= (finAddrArea_rCounter + 4'b0001);
              end else begin
                finAddrArea_rCounter <= 4'b0000;
                if(when_AddrGen_l129) begin
                  finAddrArea_cCounter <= (finAddrArea_cCounter + 9'h001);
                end else begin
                  finAddrArea_cCounter <= 9'h0;
                  if(when_AddrGen_l133) begin
                    finAddrArea_hCounter <= (finAddrArea_hCounter + _finAddrArea_hCounter);
                  end else begin
                    finAddrArea_hCounter <= 13'h0;
                    if(when_AddrGen_l137) begin
                      finAddrArea_wCounter <= (finAddrArea_wCounter + _finAddrArea_wCounter);
                    end else begin
                      finAddrArea_wCounter <= 13'h0;
                      if(when_AddrGen_l141) begin
                        finAddrArea_kCounter <= (finAddrArea_kCounter + 10'h001);
                      end else begin
                        finAddrArea_kCounter <= 10'h0;
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
      if(convParm_fire) begin
        foutAddrArea_wCounter <= 13'h0;
        foutAddrArea_hCounter <= 13'h0;
        foutAddrArea_chOCounter <= 9'h0;
        foutAddrArea_valid <= 1'b1;
        foutAddrArea_foutAddrDone <= 1'b0;
      end else begin
        if(when_AddrGen_l188) begin
          if(when_AddrGen_l189) begin
            foutAddrArea_wCounter <= (foutAddrArea_wCounter + 13'h0001);
          end else begin
            foutAddrArea_wCounter <= 13'h0;
            if(when_AddrGen_l193) begin
              foutAddrArea_hCounter <= (foutAddrArea_hCounter + 13'h0001);
            end else begin
              foutAddrArea_hCounter <= 13'h0;
              if(when_AddrGen_l197) begin
                foutAddrArea_chOCounter <= (foutAddrArea_chOCounter + 9'h001);
              end else begin
                foutAddrArea_chOCounter <= 9'h0;
                foutAddrArea_foutAddrDone <= 1'b1;
                foutAddrArea_valid <= 1'b0;
              end
            end
          end
        end
      end
      if(convParm_fire) begin
        busy <= 1'b1;
      end else begin
        if(when_AddrGen_l219) begin
          busy <= 1'b0;
        end
      end
    end
  end


endmodule
