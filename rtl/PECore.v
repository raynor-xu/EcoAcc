// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : PECore

`timescale 1ns/1ps

module PECore (
  input  wire          clear,
  input  wire          shift,
  input  wire [1:0]    mode,
  input  wire          featureIn_valid,
  input  wire [7:0]    featureIn_payload,
  input  wire          weightIn_valid,
  input  wire [7:0]    weightIn_payload,
  input  wire [31:0]   pSumIn,
  output wire [31:0]   pSumOut,
  input  wire          clk,
  input  wire          reset
);

  wire                lwb_io_push_ready;
  wire                lwb_io_pop_valid;
  wire       [7:0]    lwb_io_pop_payload;
  wire       [11:0]   lwb_io_occupancy;
  wire       [11:0]   lwb_io_availability;
  wire       [31:0]   tmp_pSum;
  wire                weight_valid;
  wire                weight_ready;
  wire       [7:0]    weight_payload;
  wire       [7:0]    feature;
  reg        [31:0]   pSum;
  wire                mulEn;
  wire       [15:0]   fwMul;
  wire                weightIn_toStream_valid;
  wire                weightIn_toStream_ready;
  wire       [7:0]    weightIn_toStream_payload;

  assign tmp_pSum = {{16{fwMul[15]}}, fwMul};
  StreamFifo lwb (
    .io_push_valid   (weightIn_toStream_valid       ), //i
    .io_push_ready   (lwb_io_push_ready             ), //o
    .io_push_payload (weightIn_toStream_payload[7:0]), //i
    .io_pop_valid    (lwb_io_pop_valid              ), //o
    .io_pop_ready    (weight_ready                  ), //i
    .io_pop_payload  (lwb_io_pop_payload[7:0]       ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (lwb_io_occupancy[11:0]        ), //o
    .io_availability (lwb_io_availability[11:0]     ), //o
    .clk             (clk                           ), //i
    .reset           (reset                         )  //i
  );
  assign mulEn = ((($signed(feature) != $signed(8'h0)) && ($signed(weight_payload) != $signed(8'h0))) && featureIn_valid);
  assign fwMul = ($signed(feature) * $signed(weight_payload));
  assign weightIn_toStream_valid = weightIn_valid;
  assign weightIn_toStream_payload = weightIn_payload;
  assign weightIn_toStream_ready = lwb_io_push_ready;
  assign weight_valid = lwb_io_pop_valid;
  assign weight_payload = lwb_io_pop_payload;
  assign feature = featureIn_payload;
  assign weight_ready = (featureIn_valid && (mode != 2'b11));
  assign pSumOut = pSum;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      pSum <= 32'h0;
    end else begin
      if(clear) begin
        pSum <= 32'h0;
      end else begin
        if(shift) begin
          pSum <= pSumIn;
        end else begin
          if(mulEn) begin
            case(mode)
              2'b00 : begin
                pSum <= ($signed(pSum) + $signed(tmp_pSum));
              end
              2'b01 : begin
                pSum <= {{16{fwMul[15]}}, fwMul};
              end
              default : begin
                pSum <= 32'h0;
              end
            endcase
          end
        end
      end
    end
  end


endmodule

module StreamFifo (
  input  wire          io_push_valid,
  output wire          io_push_ready,
  input  wire [7:0]    io_push_payload,
  output wire          io_pop_valid,
  input  wire          io_pop_ready,
  output wire [7:0]    io_pop_payload,
  input  wire          io_flush,
  output wire [11:0]   io_occupancy,
  output wire [11:0]   io_availability,
  input  wire          clk,
  input  wire          reset
);

  reg        [7:0]    logic_ram_spinal_port1;
  wire       [7:0]    tmp_logic_ram_port;
  reg                 tmp_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [11:0]   logic_ptr_push;
  reg        [11:0]   logic_ptr_pop;
  wire       [11:0]   logic_ptr_occupancy;
  wire       [11:0]   logic_ptr_popOnIo;
  wire                when_Stream_l1248;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [10:0]   logic_push_onRam_write_payload_address;
  wire       [7:0]    logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [10:0]   logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [10:0]   logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [10:0]   logic_pop_addressGen_rData;
  wire                when_Stream_l375;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [10:0]   logic_pop_sync_readPort_cmd_payload;
  wire       [7:0]    logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [7:0]    logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [11:0]   logic_pop_sync_popReg;
  reg [7:0] logic_ram [0:2047];

  assign tmp_logic_ram_port = logic_push_onRam_write_payload_data;
  always @(posedge clk) begin
    if(tmp_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= tmp_logic_ram_port;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      logic_ram_spinal_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    tmp_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      tmp_1 = 1'b1;
    end
  end

  assign when_Stream_l1248 = (logic_ptr_doPush != logic_ptr_doPop);
  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 12'h800) == 12'h0);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[10:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[10:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if(when_Stream_l375) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign when_Stream_l375 = (! logic_pop_sync_readArbitation_valid);
  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = logic_ram_spinal_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (12'h800 - logic_ptr_occupancy);
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      logic_ptr_push <= 12'h0;
      logic_ptr_pop <= 12'h0;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 12'h0;
    end else begin
      if(when_Stream_l1248) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 12'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 12'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 12'h0;
        logic_ptr_pop <= 12'h0;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 12'h0;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule
