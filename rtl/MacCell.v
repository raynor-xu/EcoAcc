// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : MacCell
// Git hash  : 59115ab351cdde95c1001826ec9ef39681809d26

`timescale 1ns/1ps

module MacCell (
  input  wire          en,
  input  wire [5:0]    spLen,
  input  wire [7:0]    featureIn,
  input  wire          weightIn_valid,
  input  wire [7:0]    weightIn_payload_0,
  input  wire [7:0]    weightIn_payload_1,
  input  wire [7:0]    weightIn_payload_2,
  input  wire [7:0]    weightIn_payload_3,
  input  wire [7:0]    weightIn_payload_4,
  input  wire [7:0]    weightIn_payload_5,
  input  wire [7:0]    weightIn_payload_6,
  input  wire [7:0]    weightIn_payload_7,
  output wire          mulOut_valid,
  output wire [15:0]   mulOut_payload_0,
  output wire [15:0]   mulOut_payload_1,
  output wire [15:0]   mulOut_payload_2,
  output wire [15:0]   mulOut_payload_3,
  output wire [15:0]   mulOut_payload_4,
  output wire [15:0]   mulOut_payload_5,
  output wire [15:0]   mulOut_payload_6,
  output wire [15:0]   mulOut_payload_7,
  input  wire          clk,
  input  wire          reset
);

  wire       [5:0]    tmp_spCounter_valueNext;
  wire       [0:0]    tmp_spCounter_valueNext_1;
  reg        [7:0]    tmp_mulReg_0;
  reg        [7:0]    tmp_mulReg_1;
  reg        [7:0]    tmp_mulReg_2;
  reg        [7:0]    tmp_mulReg_3;
  reg        [7:0]    tmp_mulReg_4;
  reg        [7:0]    tmp_mulReg_5;
  reg        [7:0]    tmp_mulReg_6;
  reg        [7:0]    tmp_mulReg_7;
  reg        [15:0]   mulReg_0;
  reg        [15:0]   mulReg_1;
  reg        [15:0]   mulReg_2;
  reg        [15:0]   mulReg_3;
  reg        [15:0]   mulReg_4;
  reg        [15:0]   mulReg_5;
  reg        [15:0]   mulReg_6;
  reg        [15:0]   mulReg_7;
  reg        [7:0]    weight_0_0;
  reg        [7:0]    weight_0_1;
  reg        [7:0]    weight_0_2;
  reg        [7:0]    weight_0_3;
  reg        [7:0]    weight_0_4;
  reg        [7:0]    weight_0_5;
  reg        [7:0]    weight_0_6;
  reg        [7:0]    weight_0_7;
  reg        [7:0]    weight_1_0;
  reg        [7:0]    weight_1_1;
  reg        [7:0]    weight_1_2;
  reg        [7:0]    weight_1_3;
  reg        [7:0]    weight_1_4;
  reg        [7:0]    weight_1_5;
  reg        [7:0]    weight_1_6;
  reg        [7:0]    weight_1_7;
  reg        [0:0]    weightWp;
  reg        [0:0]    weightRp;
  reg                 spCounter_willIncrement;
  reg                 spCounter_willClear;
  reg        [5:0]    spCounter_valueNext;
  reg        [5:0]    spCounter_value;
  wire                spCounter_willOverflowIfInc;
  wire                spCounter_willOverflow;
  wire       [1:0]    tmp_1;
  wire                tmp_2;
  wire                tmp_3;
  wire                when_MacCell_l38;
  reg                 en_regNext;

  assign tmp_spCounter_valueNext_1 = spCounter_willIncrement;
  assign tmp_spCounter_valueNext = {5'd0, tmp_spCounter_valueNext_1};
  always @(*) begin
    case(weightRp)
      1'b0 : begin
        tmp_mulReg_0 = weight_0_0;
        tmp_mulReg_1 = weight_0_1;
        tmp_mulReg_2 = weight_0_2;
        tmp_mulReg_3 = weight_0_3;
        tmp_mulReg_4 = weight_0_4;
        tmp_mulReg_5 = weight_0_5;
        tmp_mulReg_6 = weight_0_6;
        tmp_mulReg_7 = weight_0_7;
      end
      default : begin
        tmp_mulReg_0 = weight_1_0;
        tmp_mulReg_1 = weight_1_1;
        tmp_mulReg_2 = weight_1_2;
        tmp_mulReg_3 = weight_1_3;
        tmp_mulReg_4 = weight_1_4;
        tmp_mulReg_5 = weight_1_5;
        tmp_mulReg_6 = weight_1_6;
        tmp_mulReg_7 = weight_1_7;
      end
    endcase
  end

  always @(*) begin
    spCounter_willIncrement = 1'b0;
    if(en) begin
      if(!when_MacCell_l38) begin
        spCounter_willIncrement = 1'b1;
      end
    end
  end

  always @(*) begin
    spCounter_willClear = 1'b0;
    if(en) begin
      if(when_MacCell_l38) begin
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

  assign tmp_1 = ({1'd0,1'b1} <<< weightWp);
  assign tmp_2 = tmp_1[0];
  assign tmp_3 = tmp_1[1];
  assign when_MacCell_l38 = (spCounter_value == spLen);
  assign mulOut_payload_0 = mulReg_0;
  assign mulOut_payload_1 = mulReg_1;
  assign mulOut_payload_2 = mulReg_2;
  assign mulOut_payload_3 = mulReg_3;
  assign mulOut_payload_4 = mulReg_4;
  assign mulOut_payload_5 = mulReg_5;
  assign mulOut_payload_6 = mulReg_6;
  assign mulOut_payload_7 = mulReg_7;
  assign mulOut_valid = en_regNext;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      mulReg_0 <= 16'h0;
      mulReg_1 <= 16'h0;
      mulReg_2 <= 16'h0;
      mulReg_3 <= 16'h0;
      mulReg_4 <= 16'h0;
      mulReg_5 <= 16'h0;
      mulReg_6 <= 16'h0;
      mulReg_7 <= 16'h0;
      weight_0_0 <= 8'h0;
      weight_0_1 <= 8'h0;
      weight_0_2 <= 8'h0;
      weight_0_3 <= 8'h0;
      weight_0_4 <= 8'h0;
      weight_0_5 <= 8'h0;
      weight_0_6 <= 8'h0;
      weight_0_7 <= 8'h0;
      weight_1_0 <= 8'h0;
      weight_1_1 <= 8'h0;
      weight_1_2 <= 8'h0;
      weight_1_3 <= 8'h0;
      weight_1_4 <= 8'h0;
      weight_1_5 <= 8'h0;
      weight_1_6 <= 8'h0;
      weight_1_7 <= 8'h0;
      weightWp <= 1'b0;
      weightRp <= 1'b0;
      spCounter_value <= 6'h0;
      en_regNext <= 1'b0;
    end else begin
      spCounter_value <= spCounter_valueNext;
      if(weightIn_valid) begin
        if(tmp_2) begin
          weight_0_0 <= weightIn_payload_0;
        end
        if(tmp_3) begin
          weight_1_0 <= weightIn_payload_0;
        end
        if(tmp_2) begin
          weight_0_1 <= weightIn_payload_1;
        end
        if(tmp_3) begin
          weight_1_1 <= weightIn_payload_1;
        end
        if(tmp_2) begin
          weight_0_2 <= weightIn_payload_2;
        end
        if(tmp_3) begin
          weight_1_2 <= weightIn_payload_2;
        end
        if(tmp_2) begin
          weight_0_3 <= weightIn_payload_3;
        end
        if(tmp_3) begin
          weight_1_3 <= weightIn_payload_3;
        end
        if(tmp_2) begin
          weight_0_4 <= weightIn_payload_4;
        end
        if(tmp_3) begin
          weight_1_4 <= weightIn_payload_4;
        end
        if(tmp_2) begin
          weight_0_5 <= weightIn_payload_5;
        end
        if(tmp_3) begin
          weight_1_5 <= weightIn_payload_5;
        end
        if(tmp_2) begin
          weight_0_6 <= weightIn_payload_6;
        end
        if(tmp_3) begin
          weight_1_6 <= weightIn_payload_6;
        end
        if(tmp_2) begin
          weight_0_7 <= weightIn_payload_7;
        end
        if(tmp_3) begin
          weight_1_7 <= weightIn_payload_7;
        end
        weightWp <= (~ weightWp);
      end
      if(en) begin
        mulReg_0 <= ($signed(tmp_mulReg_0) * $signed(featureIn));
        mulReg_1 <= ($signed(tmp_mulReg_1) * $signed(featureIn));
        mulReg_2 <= ($signed(tmp_mulReg_2) * $signed(featureIn));
        mulReg_3 <= ($signed(tmp_mulReg_3) * $signed(featureIn));
        mulReg_4 <= ($signed(tmp_mulReg_4) * $signed(featureIn));
        mulReg_5 <= ($signed(tmp_mulReg_5) * $signed(featureIn));
        mulReg_6 <= ($signed(tmp_mulReg_6) * $signed(featureIn));
        mulReg_7 <= ($signed(tmp_mulReg_7) * $signed(featureIn));
        if(when_MacCell_l38) begin
          weightRp <= (~ weightRp);
        end
      end
      en_regNext <= en;
    end
  end


endmodule
