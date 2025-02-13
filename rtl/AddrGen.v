// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : AddrGen
// Git hash  : 714dcda6b904f204a16646e9976a526cf6062bfd

`timescale 1ns/1ps

module AddrGen (
  input  wire          convParm_valid,
  input  wire [1:0]    convParm_payload_mode,
  input  wire [14:0]   convParm_payload_finBaseAddr,
  input  wire [14:0]   convParm_payload_foutBaseAddr,
  input  wire [14:0]   convParm_payload_wBaseAddr,
  input  wire [7:0]    convParm_payload_fHeight,
  input  wire [7:0]    convParm_payload_fWidth,
  input  wire [2:0]    convParm_payload_kSize,
  input  wire [5:0]    convParm_payload_chIn,
  input  wire [5:0]    convParm_payload_chOut,
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

  wire       [5:0]    _chInBlock;
  wire       [5:0]    _chInBlock_1;
  wire       [5:0]    _chOutBlock;
  wire       [5:0]    _chOutBlock_1;
  wire       [5:0]    _kerDim;
  wire       [7:0]    _foutHeight;
  wire       [7:0]    _foutHeight_1;
  wire       [7:0]    _foutHeight_2;
  wire       [7:0]    _foutHeight_3;
  wire       [7:0]    _foutHeight_4;
  wire       [4:0]    _foutHeight_5;
  wire       [7:0]    _foutWidth;
  wire       [7:0]    _foutWidth_1;
  wire       [7:0]    _foutWidth_2;
  wire       [7:0]    _foutWidth_3;
  wire       [7:0]    _foutWidth_4;
  wire       [4:0]    _foutWidth_5;
  wire       [15:0]   _wAddr_payload;
  wire       [15:0]   _wAddr_payload_1;
  wire       [14:0]   _wAddr_payload_2;
  wire       [14:0]   _wAddr_payload_3;
  wire       [14:0]   _wAddr_payload_4;
  wire       [14:0]   _wAddr_payload_5;
  wire       [11:0]   _wAddr_payload_6;
  wire       [15:0]   _wAddr_payload_7;
  wire       [12:0]   _wAddr_payload_8;
  wire       [6:0]    _wAddr_payload_9;
  wire       [6:0]    _wAddr_payload_10;
  wire       [6:0]    _wAddr_payload_11;
  wire       [8:0]    _when_AddrGen_l60;
  wire       [5:0]    _when_AddrGen_l60_1;
  wire       [2:0]    _when_AddrGen_l68;
  wire       [2:0]    _when_AddrGen_l72;
  wire       [22:0]   _finAddr_payload;
  wire       [22:0]   _finAddr_payload_1;
  wire       [14:0]   _finAddr_payload_2;
  wire       [14:0]   _finAddr_payload_3;
  wire       [14:0]   _finAddr_payload_4;
  wire       [14:0]   _finAddr_payload_5;
  wire       [11:0]   _finAddr_payload_6;
  wire       [11:0]   _finAddr_payload_7;
  wire       [11:0]   _finAddr_payload_8;
  wire       [22:0]   _finAddr_payload_9;
  wire       [14:0]   _finAddr_payload_10;
  wire       [11:0]   _finAddr_payload_11;
  wire       [11:0]   _finAddr_payload_12;
  wire       [11:0]   _finAddr_payload_13;
  wire       [2:0]    _when_AddrGen_l130;
  wire       [2:0]    _when_AddrGen_l134;
  wire       [5:0]    _when_AddrGen_l138;
  wire       [2:0]    _when_AddrGen_l138_1;
  wire       [7:0]    _when_AddrGen_l142;
  wire       [7:0]    _when_AddrGen_l146;
  wire       [7:0]    _finAddrArea_hCounter;
  wire       [2:0]    _when_AddrGen_l150;
  wire       [15:0]   _foutAddrArea_hwcCounterReload;
  wire       [21:0]   _foutAddr_payload;
  wire       [21:0]   _foutAddr_payload_1;
  wire       [21:0]   _when_AddrGen_l189;
  wire       [18:0]   _when_AddrGen_l189_1;
  reg        [1:0]    convParm_mode;
  reg        [14:0]   convParm_finBaseAddr;
  reg        [14:0]   convParm_foutBaseAddr;
  reg        [14:0]   convParm_wBaseAddr;
  reg        [7:0]    convParm_fHeight;
  reg        [7:0]    convParm_fWidth;
  reg        [2:0]    convParm_kSize;
  reg        [5:0]    convParm_chIn;
  reg        [5:0]    convParm_chOut;
  reg        [2:0]    convParm_pad;
  reg        [3:0]    convParm_stride;
  reg        [5:0]    convParm_spLen;
  reg                 busy;
  wire       [2:0]    chInBlock;
  wire       [2:0]    chOutBlock;
  wire       [5:0]    kerChDim;
  wire       [8:0]    kerDim;
  wire       [7:0]    foutHeight;
  wire       [7:0]    foutWidth;
  reg                 wAddrGenArea_wAddrDone;
  reg        [2:0]    wAddrGenArea_nCounter;
  reg        [2:0]    wAddrGenArea_cCounter;
  reg        [2:0]    wAddrGenArea_kaCounter;
  reg        [8:0]    wAddrGenArea_rsCounter;
  wire       [5:0]    wAddrGenArea_rsCounterReload;
  reg                 wAddrGenArea_valid;
  wire                wAddr_fire;
  wire                when_AddrGen_l60;
  wire                when_AddrGen_l64;
  wire                when_AddrGen_l68;
  wire                when_AddrGen_l72;
  reg        [14:0]   finAddrArea_finBaseAddr;
  reg                 finAddrArea_finAddrDone;
  reg        [2:0]    finAddrArea_nCounter;
  reg        [7:0]    finAddrArea_hCounter;
  reg        [7:0]    finAddrArea_wCounter;
  reg        [5:0]    finAddrArea_cCounter;
  reg        [2:0]    finAddrArea_sCounter;
  reg        [2:0]    finAddrArea_rCounter;
  reg                 finAddrArea_valid;
  wire                finAddrArea_padFlag;
  wire                finAddr_fire;
  wire                when_AddrGen_l130;
  wire                when_AddrGen_l134;
  wire                when_AddrGen_l138;
  wire                when_AddrGen_l142;
  wire                when_AddrGen_l146;
  wire                when_AddrGen_l150;
  reg        [14:0]   foutAddrArea_foutBaseAddr;
  reg                 foutAddrArea_foutAddrDone;
  reg        [21:0]   foutAddrArea_hwcCounter;
  wire       [18:0]   foutAddrArea_hwcCounterReload;
  reg                 foutAddrArea_valid;
  wire                when_AddrGen_l188;
  wire                when_AddrGen_l189;
  wire                when_AddrGen_l207;

  assign _chInBlock = (_chInBlock_1 - 6'h01);
  assign _chInBlock_1 = (convParm_chIn + 6'h08);
  assign _chOutBlock = (_chOutBlock_1 - 6'h01);
  assign _chOutBlock_1 = (convParm_chOut + 6'h08);
  assign _kerDim = (convParm_kSize * convParm_kSize);
  assign _foutHeight = (_foutHeight_1 / convParm_stride);
  assign _foutHeight_1 = (_foutHeight_2 + _foutHeight_4);
  assign _foutHeight_2 = (convParm_fHeight - _foutHeight_3);
  assign _foutHeight_3 = {5'd0, convParm_kSize};
  assign _foutHeight_5 = (2'b10 * convParm_pad);
  assign _foutHeight_4 = {3'd0, _foutHeight_5};
  assign _foutWidth = (_foutWidth_1 / convParm_stride);
  assign _foutWidth_1 = (_foutWidth_2 + _foutWidth_4);
  assign _foutWidth_2 = (convParm_fWidth - _foutWidth_3);
  assign _foutWidth_3 = {5'd0, convParm_kSize};
  assign _foutWidth_5 = (2'b10 * convParm_pad);
  assign _foutWidth_4 = {3'd0, _foutWidth_5};
  assign _wAddr_payload = (_wAddr_payload_1 + _wAddr_payload_7);
  assign _wAddr_payload_2 = (_wAddr_payload_3 + _wAddr_payload_5);
  assign _wAddr_payload_1 = {1'd0, _wAddr_payload_2};
  assign _wAddr_payload_3 = (convParm_wBaseAddr + _wAddr_payload_4);
  assign _wAddr_payload_4 = {12'd0, wAddrGenArea_cCounter};
  assign _wAddr_payload_6 = (wAddrGenArea_rsCounter * chInBlock);
  assign _wAddr_payload_5 = {3'd0, _wAddr_payload_6};
  assign _wAddr_payload_7 = (_wAddr_payload_8 * chInBlock);
  assign _wAddr_payload_8 = (_wAddr_payload_9 * wAddrGenArea_rsCounterReload);
  assign _wAddr_payload_9 = (_wAddr_payload_10 + _wAddr_payload_11);
  assign _wAddr_payload_10 = (wAddrGenArea_nCounter * 4'b1000);
  assign _wAddr_payload_11 = {4'd0, wAddrGenArea_kaCounter};
  assign _when_AddrGen_l60_1 = (wAddrGenArea_rsCounterReload - 6'h01);
  assign _when_AddrGen_l60 = {3'd0, _when_AddrGen_l60_1};
  assign _when_AddrGen_l68 = (chInBlock - 3'b001);
  assign _when_AddrGen_l72 = (chOutBlock - 3'b001);
  assign _finAddr_payload = (_finAddr_payload_1 + _finAddr_payload_9);
  assign _finAddr_payload_2 = (_finAddr_payload_3 + _finAddr_payload_5);
  assign _finAddr_payload_1 = {8'd0, _finAddr_payload_2};
  assign _finAddr_payload_3 = (finAddrArea_finBaseAddr + _finAddr_payload_4);
  assign _finAddr_payload_4 = {9'd0, finAddrArea_cCounter};
  assign _finAddr_payload_5 = (_finAddr_payload_6 * chInBlock);
  assign _finAddr_payload_6 = (_finAddr_payload_7 + _finAddr_payload_8);
  assign _finAddr_payload_7 = (finAddrArea_wCounter * convParm_stride);
  assign _finAddr_payload_8 = {9'd0, finAddrArea_rCounter};
  assign _finAddr_payload_9 = (_finAddr_payload_10 * foutWidth);
  assign _finAddr_payload_10 = (_finAddr_payload_11 * chInBlock);
  assign _finAddr_payload_11 = (_finAddr_payload_12 + _finAddr_payload_13);
  assign _finAddr_payload_12 = (finAddrArea_hCounter * convParm_stride);
  assign _finAddr_payload_13 = {9'd0, finAddrArea_sCounter};
  assign _when_AddrGen_l130 = (convParm_kSize - 3'b001);
  assign _when_AddrGen_l134 = (convParm_kSize - 3'b001);
  assign _when_AddrGen_l138_1 = (chInBlock - 3'b001);
  assign _when_AddrGen_l138 = {3'd0, _when_AddrGen_l138_1};
  assign _when_AddrGen_l142 = (foutWidth - 8'h01);
  assign _when_AddrGen_l146 = (foutHeight - 8'h01);
  assign _finAddrArea_hCounter = {4'd0, convParm_stride};
  assign _when_AddrGen_l150 = (chOutBlock - 3'b001);
  assign _foutAddrArea_hwcCounterReload = (convParm_fHeight * convParm_fWidth);
  assign _foutAddr_payload = (_foutAddr_payload_1 + foutAddrArea_hwcCounter);
  assign _foutAddr_payload_1 = {7'd0, foutAddrArea_foutBaseAddr};
  assign _when_AddrGen_l189_1 = (foutAddrArea_hwcCounterReload - 19'h00001);
  assign _when_AddrGen_l189 = {3'd0, _when_AddrGen_l189_1};
  assign chInBlock = (_chInBlock >>> 2'd3);
  assign chOutBlock = (_chOutBlock >>> 2'd3);
  assign kerChDim = (convParm_kSize * convParm_kSize);
  assign kerDim = (_kerDim * chInBlock);
  assign foutHeight = (_foutHeight + 8'h01);
  assign foutWidth = (_foutWidth + 8'h01);
  assign wAddrGenArea_rsCounterReload = (convParm_kSize * convParm_kSize);
  assign wAddr_valid = wAddrGenArea_valid;
  assign wAddr_payload = _wAddr_payload[14:0];
  assign wAddr_fire = (wAddr_valid && wAddr_ready);
  assign when_AddrGen_l60 = (wAddrGenArea_rsCounter < _when_AddrGen_l60);
  assign when_AddrGen_l64 = (wAddrGenArea_kaCounter < 3'b111);
  assign when_AddrGen_l68 = (wAddrGenArea_cCounter < _when_AddrGen_l68);
  assign when_AddrGen_l72 = (wAddrGenArea_nCounter < _when_AddrGen_l72);
  assign finAddrArea_padFlag = 1'b0;
  assign finAddr_valid = finAddrArea_valid;
  always @(*) begin
    if(finAddrArea_padFlag) begin
      finAddr_payload = 15'h0;
    end else begin
      finAddr_payload = _finAddr_payload[14:0];
    end
  end

  assign finAddr_fire = (finAddr_valid && finAddr_ready);
  assign when_AddrGen_l130 = (finAddrArea_rCounter < _when_AddrGen_l130);
  assign when_AddrGen_l134 = (finAddrArea_sCounter < _when_AddrGen_l134);
  assign when_AddrGen_l138 = (finAddrArea_cCounter < _when_AddrGen_l138);
  assign when_AddrGen_l142 = (finAddrArea_wCounter < _when_AddrGen_l142);
  assign when_AddrGen_l146 = (finAddrArea_hCounter < _when_AddrGen_l146);
  assign when_AddrGen_l150 = (finAddrArea_nCounter < _when_AddrGen_l150);
  assign foutAddrArea_hwcCounterReload = (_foutAddrArea_hwcCounterReload * chOutBlock);
  assign foutAddr_valid = foutAddrArea_valid;
  assign foutAddr_payload = _foutAddr_payload[14:0];
  assign when_AddrGen_l188 = (foutAddr_ready && foutAddr_valid);
  assign when_AddrGen_l189 = (foutAddrArea_hwcCounter < _when_AddrGen_l189);
  assign when_AddrGen_l207 = ((wAddrGenArea_wAddrDone && finAddrArea_finAddrDone) && foutAddrArea_foutAddrDone);
  always @(posedge clk) begin
    if(convParm_valid) begin
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
      wAddrGenArea_nCounter <= 3'b000;
      wAddrGenArea_cCounter <= 3'b000;
      wAddrGenArea_kaCounter <= 3'b000;
      wAddrGenArea_rsCounter <= 9'h0;
      wAddrGenArea_valid <= 1'b0;
      finAddrArea_finAddrDone <= 1'b0;
      finAddrArea_nCounter <= 3'b000;
      finAddrArea_hCounter <= 8'h0;
      finAddrArea_wCounter <= 8'h0;
      finAddrArea_cCounter <= 6'h0;
      finAddrArea_sCounter <= 3'b000;
      finAddrArea_rCounter <= 3'b000;
      finAddrArea_valid <= 1'b0;
      foutAddrArea_foutAddrDone <= 1'b0;
      foutAddrArea_hwcCounter <= 22'h0;
      foutAddrArea_valid <= 1'b0;
    end else begin
      if(convParm_valid) begin
        wAddrGenArea_nCounter <= 3'b000;
        wAddrGenArea_cCounter <= 3'b000;
        wAddrGenArea_kaCounter <= 3'b000;
        wAddrGenArea_rsCounter <= 9'h0;
        wAddrGenArea_valid <= 1'b1;
      end else begin
        if(wAddr_fire) begin
          if(when_AddrGen_l60) begin
            wAddrGenArea_rsCounter <= (wAddrGenArea_rsCounter + 9'h001);
          end else begin
            wAddrGenArea_rsCounter <= 9'h0;
            if(when_AddrGen_l64) begin
              wAddrGenArea_kaCounter <= (wAddrGenArea_kaCounter + 3'b001);
            end else begin
              wAddrGenArea_kaCounter <= 3'b000;
              if(when_AddrGen_l68) begin
                wAddrGenArea_cCounter <= (wAddrGenArea_cCounter + 3'b001);
              end else begin
                wAddrGenArea_cCounter <= 3'b000;
                if(when_AddrGen_l72) begin
                  wAddrGenArea_nCounter <= (wAddrGenArea_nCounter + 3'b001);
                end else begin
                  wAddrGenArea_nCounter <= 3'b000;
                  wAddrGenArea_wAddrDone <= 1'b1;
                  wAddrGenArea_valid <= 1'b0;
                end
              end
            end
          end
        end
      end
      if(convParm_valid) begin
        finAddrArea_nCounter <= 3'b000;
        finAddrArea_hCounter <= 8'h0;
        finAddrArea_wCounter <= 8'h0;
        finAddrArea_cCounter <= 6'h0;
        finAddrArea_sCounter <= 3'b000;
        finAddrArea_rCounter <= 3'b000;
        finAddrArea_valid <= 1'b1;
      end else begin
        if(finAddr_fire) begin
          if(when_AddrGen_l130) begin
            finAddrArea_rCounter <= (finAddrArea_rCounter + 3'b001);
          end else begin
            finAddrArea_rCounter <= 3'b000;
            if(when_AddrGen_l134) begin
              finAddrArea_sCounter <= (finAddrArea_sCounter + 3'b001);
            end else begin
              finAddrArea_sCounter <= 3'b000;
              if(when_AddrGen_l138) begin
                finAddrArea_cCounter <= (finAddrArea_cCounter + 6'h01);
              end else begin
                finAddrArea_cCounter <= 6'h0;
                if(when_AddrGen_l142) begin
                  finAddrArea_wCounter <= (finAddrArea_wCounter + 8'h01);
                end else begin
                  finAddrArea_wCounter <= 8'h0;
                  if(when_AddrGen_l146) begin
                    finAddrArea_hCounter <= (finAddrArea_hCounter + _finAddrArea_hCounter);
                  end else begin
                    finAddrArea_hCounter <= 8'h0;
                    if(when_AddrGen_l150) begin
                      finAddrArea_nCounter <= (finAddrArea_nCounter + 3'b001);
                    end else begin
                      finAddrArea_nCounter <= 3'b000;
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
      if(convParm_valid) begin
        foutAddrArea_hwcCounter <= 22'h0;
        foutAddrArea_valid <= 1'b1;
        foutAddrArea_foutAddrDone <= 1'b0;
      end else begin
        if(when_AddrGen_l188) begin
          if(when_AddrGen_l189) begin
            foutAddrArea_hwcCounter <= (foutAddrArea_hwcCounter + 22'h000001);
          end else begin
            foutAddrArea_hwcCounter <= 22'h0;
            foutAddrArea_foutAddrDone <= 1'b1;
            foutAddrArea_valid <= 1'b0;
          end
        end
      end
      if(convParm_valid) begin
        busy <= 1'b1;
      end else begin
        if(when_AddrGen_l207) begin
          busy <= 1'b0;
        end
      end
    end
  end


endmodule
