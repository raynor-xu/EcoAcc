// Generator : SpinalHDL v1.10.2a    git head : a348a60b7e8b6a455c72e1536ec3d74a2ea16935
// Component : MemoryArray
// Git hash  : c1b78a6fd474ca7d54b0c55d7f29f5b9e076a20e

`timescale 1ns/1ps

module MemoryArray (
  input  wire [12:0]   ports_0_addr,
  input  wire [63:0]   ports_0_wData,
  output wire [63:0]   ports_0_rData,
  input  wire          ports_0_wr,
  input  wire          ports_0_en,
  input  wire [12:0]   ports_1_addr,
  input  wire [63:0]   ports_1_wData,
  output wire [63:0]   ports_1_rData,
  input  wire          ports_1_wr,
  input  wire          ports_1_en,
  input  wire [12:0]   ports_2_addr,
  input  wire [63:0]   ports_2_wData,
  output wire [63:0]   ports_2_rData,
  input  wire          ports_2_wr,
  input  wire          ports_2_en,
  input  wire [12:0]   ports_3_addr,
  input  wire [63:0]   ports_3_wData,
  output wire [63:0]   ports_3_rData,
  input  wire          ports_3_wr,
  input  wire          ports_3_en,
  input  wire          clk,
  input  wire          reset
);

  reg        [8:0]    rams_0_port_addr;
  reg        [63:0]   rams_0_port_wData;
  reg                 rams_0_port_wr;
  reg                 rams_0_port_en;
  reg        [8:0]    rams_1_port_addr;
  reg        [63:0]   rams_1_port_wData;
  reg                 rams_1_port_wr;
  reg                 rams_1_port_en;
  reg        [8:0]    rams_2_port_addr;
  reg        [63:0]   rams_2_port_wData;
  reg                 rams_2_port_wr;
  reg                 rams_2_port_en;
  reg        [8:0]    rams_3_port_addr;
  reg        [63:0]   rams_3_port_wData;
  reg                 rams_3_port_wr;
  reg                 rams_3_port_en;
  reg        [8:0]    rams_4_port_addr;
  reg        [63:0]   rams_4_port_wData;
  reg                 rams_4_port_wr;
  reg                 rams_4_port_en;
  reg        [8:0]    rams_5_port_addr;
  reg        [63:0]   rams_5_port_wData;
  reg                 rams_5_port_wr;
  reg                 rams_5_port_en;
  reg        [8:0]    rams_6_port_addr;
  reg        [63:0]   rams_6_port_wData;
  reg                 rams_6_port_wr;
  reg                 rams_6_port_en;
  reg        [8:0]    rams_7_port_addr;
  reg        [63:0]   rams_7_port_wData;
  reg                 rams_7_port_wr;
  reg                 rams_7_port_en;
  reg        [8:0]    rams_8_port_addr;
  reg        [63:0]   rams_8_port_wData;
  reg                 rams_8_port_wr;
  reg                 rams_8_port_en;
  reg        [8:0]    rams_9_port_addr;
  reg        [63:0]   rams_9_port_wData;
  reg                 rams_9_port_wr;
  reg                 rams_9_port_en;
  reg        [8:0]    rams_10_port_addr;
  reg        [63:0]   rams_10_port_wData;
  reg                 rams_10_port_wr;
  reg                 rams_10_port_en;
  reg        [8:0]    rams_11_port_addr;
  reg        [63:0]   rams_11_port_wData;
  reg                 rams_11_port_wr;
  reg                 rams_11_port_en;
  reg        [8:0]    rams_12_port_addr;
  reg        [63:0]   rams_12_port_wData;
  reg                 rams_12_port_wr;
  reg                 rams_12_port_en;
  reg        [8:0]    rams_13_port_addr;
  reg        [63:0]   rams_13_port_wData;
  reg                 rams_13_port_wr;
  reg                 rams_13_port_en;
  reg        [8:0]    rams_14_port_addr;
  reg        [63:0]   rams_14_port_wData;
  reg                 rams_14_port_wr;
  reg                 rams_14_port_en;
  reg        [8:0]    rams_15_port_addr;
  reg        [63:0]   rams_15_port_wData;
  reg                 rams_15_port_wr;
  reg                 rams_15_port_en;
  wire       [63:0]   rams_0_port_rData;
  wire       [63:0]   rams_1_port_rData;
  wire       [63:0]   rams_2_port_rData;
  wire       [63:0]   rams_3_port_rData;
  wire       [63:0]   rams_4_port_rData;
  wire       [63:0]   rams_5_port_rData;
  wire       [63:0]   rams_6_port_rData;
  wire       [63:0]   rams_7_port_rData;
  wire       [63:0]   rams_8_port_rData;
  wire       [63:0]   rams_9_port_rData;
  wire       [63:0]   rams_10_port_rData;
  wire       [63:0]   rams_11_port_rData;
  wire       [63:0]   rams_12_port_rData;
  wire       [63:0]   rams_13_port_rData;
  wire       [63:0]   rams_14_port_rData;
  wire       [63:0]   rams_15_port_rData;
  wire       [3:0]    portRamIndices_0;
  wire       [3:0]    portRamIndices_1;
  wire       [3:0]    portRamIndices_2;
  wire       [3:0]    portRamIndices_3;
  wire       [8:0]    portLocalAddr_0;
  wire       [8:0]    portLocalAddr_1;
  wire       [8:0]    portLocalAddr_2;
  wire       [8:0]    portLocalAddr_3;
  reg        [63:0]   readDataMuxes_0;
  reg        [63:0]   readDataMuxes_1;
  reg        [63:0]   readDataMuxes_2;
  reg        [63:0]   readDataMuxes_3;
  wire                when_MemoryArray_l47;
  wire                when_MemoryArray_l47_1;
  wire                when_MemoryArray_l47_2;
  wire                when_MemoryArray_l47_3;
  wire                when_MemoryArray_l47_4;
  wire                when_MemoryArray_l47_5;
  wire                when_MemoryArray_l47_6;
  wire                when_MemoryArray_l47_7;
  wire                when_MemoryArray_l47_8;
  wire                when_MemoryArray_l47_9;
  wire                when_MemoryArray_l47_10;
  wire                when_MemoryArray_l47_11;
  wire                when_MemoryArray_l47_12;
  wire                when_MemoryArray_l47_13;
  wire                when_MemoryArray_l47_14;
  wire                when_MemoryArray_l47_15;
  wire                when_MemoryArray_l47_16;
  wire                when_MemoryArray_l47_17;
  wire                when_MemoryArray_l47_18;
  wire                when_MemoryArray_l47_19;
  wire                when_MemoryArray_l47_20;
  wire                when_MemoryArray_l47_21;
  wire                when_MemoryArray_l47_22;
  wire                when_MemoryArray_l47_23;
  wire                when_MemoryArray_l47_24;
  wire                when_MemoryArray_l47_25;
  wire                when_MemoryArray_l47_26;
  wire                when_MemoryArray_l47_27;
  wire                when_MemoryArray_l47_28;
  wire                when_MemoryArray_l47_29;
  wire                when_MemoryArray_l47_30;
  wire                when_MemoryArray_l47_31;
  wire                when_MemoryArray_l47_32;
  wire                when_MemoryArray_l47_33;
  wire                when_MemoryArray_l47_34;
  wire                when_MemoryArray_l47_35;
  wire                when_MemoryArray_l47_36;
  wire                when_MemoryArray_l47_37;
  wire                when_MemoryArray_l47_38;
  wire                when_MemoryArray_l47_39;
  wire                when_MemoryArray_l47_40;
  wire                when_MemoryArray_l47_41;
  wire                when_MemoryArray_l47_42;
  wire                when_MemoryArray_l47_43;
  wire                when_MemoryArray_l47_44;
  wire                when_MemoryArray_l47_45;
  wire                when_MemoryArray_l47_46;
  wire                when_MemoryArray_l47_47;
  wire                when_MemoryArray_l47_48;
  wire                when_MemoryArray_l47_49;
  wire                when_MemoryArray_l47_50;
  wire                when_MemoryArray_l47_51;
  wire                when_MemoryArray_l47_52;
  wire                when_MemoryArray_l47_53;
  wire                when_MemoryArray_l47_54;
  wire                when_MemoryArray_l47_55;
  wire                when_MemoryArray_l47_56;
  wire                when_MemoryArray_l47_57;
  wire                when_MemoryArray_l47_58;
  wire                when_MemoryArray_l47_59;
  wire                when_MemoryArray_l47_60;
  wire                when_MemoryArray_l47_61;
  wire                when_MemoryArray_l47_62;
  wire                when_MemoryArray_l47_63;
  wire                when_MemoryArray_l72;
  wire                when_MemoryArray_l83;
  wire                when_MemoryArray_l83_1;
  wire                when_MemoryArray_l83_2;
  wire                when_MemoryArray_l72_1;
  wire                when_MemoryArray_l83_3;
  wire                when_MemoryArray_l83_4;
  wire                when_MemoryArray_l83_5;
  wire                when_MemoryArray_l72_2;
  wire                when_MemoryArray_l83_6;
  wire                when_MemoryArray_l83_7;
  wire                when_MemoryArray_l83_8;
  wire                when_MemoryArray_l72_3;
  wire                when_MemoryArray_l83_9;
  wire                when_MemoryArray_l83_10;
  wire                when_MemoryArray_l83_11;
  wire                when_MemoryArray_l72_4;
  wire                when_MemoryArray_l83_12;
  wire                when_MemoryArray_l83_13;
  wire                when_MemoryArray_l83_14;
  wire                when_MemoryArray_l72_5;
  wire                when_MemoryArray_l83_15;
  wire                when_MemoryArray_l83_16;
  wire                when_MemoryArray_l83_17;
  wire                when_MemoryArray_l72_6;
  wire                when_MemoryArray_l83_18;
  wire                when_MemoryArray_l83_19;
  wire                when_MemoryArray_l83_20;
  wire                when_MemoryArray_l72_7;
  wire                when_MemoryArray_l83_21;
  wire                when_MemoryArray_l83_22;
  wire                when_MemoryArray_l83_23;
  wire                when_MemoryArray_l72_8;
  wire                when_MemoryArray_l83_24;
  wire                when_MemoryArray_l83_25;
  wire                when_MemoryArray_l83_26;
  wire                when_MemoryArray_l72_9;
  wire                when_MemoryArray_l83_27;
  wire                when_MemoryArray_l83_28;
  wire                when_MemoryArray_l83_29;
  wire                when_MemoryArray_l72_10;
  wire                when_MemoryArray_l83_30;
  wire                when_MemoryArray_l83_31;
  wire                when_MemoryArray_l83_32;
  wire                when_MemoryArray_l72_11;
  wire                when_MemoryArray_l83_33;
  wire                when_MemoryArray_l83_34;
  wire                when_MemoryArray_l83_35;
  wire                when_MemoryArray_l72_12;
  wire                when_MemoryArray_l83_36;
  wire                when_MemoryArray_l83_37;
  wire                when_MemoryArray_l83_38;
  wire                when_MemoryArray_l72_13;
  wire                when_MemoryArray_l83_39;
  wire                when_MemoryArray_l83_40;
  wire                when_MemoryArray_l83_41;
  wire                when_MemoryArray_l72_14;
  wire                when_MemoryArray_l83_42;
  wire                when_MemoryArray_l83_43;
  wire                when_MemoryArray_l83_44;
  wire                when_MemoryArray_l72_15;
  wire                when_MemoryArray_l83_45;
  wire                when_MemoryArray_l83_46;
  wire                when_MemoryArray_l83_47;

  SignalPortRam rams_0 (
    .port_addr  (rams_0_port_addr[8:0]  ), //i
    .port_wData (rams_0_port_wData[63:0]), //i
    .port_rData (rams_0_port_rData[63:0]), //o
    .port_wr    (rams_0_port_wr         ), //i
    .port_en    (rams_0_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_1 (
    .port_addr  (rams_1_port_addr[8:0]  ), //i
    .port_wData (rams_1_port_wData[63:0]), //i
    .port_rData (rams_1_port_rData[63:0]), //o
    .port_wr    (rams_1_port_wr         ), //i
    .port_en    (rams_1_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_2 (
    .port_addr  (rams_2_port_addr[8:0]  ), //i
    .port_wData (rams_2_port_wData[63:0]), //i
    .port_rData (rams_2_port_rData[63:0]), //o
    .port_wr    (rams_2_port_wr         ), //i
    .port_en    (rams_2_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_3 (
    .port_addr  (rams_3_port_addr[8:0]  ), //i
    .port_wData (rams_3_port_wData[63:0]), //i
    .port_rData (rams_3_port_rData[63:0]), //o
    .port_wr    (rams_3_port_wr         ), //i
    .port_en    (rams_3_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_4 (
    .port_addr  (rams_4_port_addr[8:0]  ), //i
    .port_wData (rams_4_port_wData[63:0]), //i
    .port_rData (rams_4_port_rData[63:0]), //o
    .port_wr    (rams_4_port_wr         ), //i
    .port_en    (rams_4_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_5 (
    .port_addr  (rams_5_port_addr[8:0]  ), //i
    .port_wData (rams_5_port_wData[63:0]), //i
    .port_rData (rams_5_port_rData[63:0]), //o
    .port_wr    (rams_5_port_wr         ), //i
    .port_en    (rams_5_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_6 (
    .port_addr  (rams_6_port_addr[8:0]  ), //i
    .port_wData (rams_6_port_wData[63:0]), //i
    .port_rData (rams_6_port_rData[63:0]), //o
    .port_wr    (rams_6_port_wr         ), //i
    .port_en    (rams_6_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_7 (
    .port_addr  (rams_7_port_addr[8:0]  ), //i
    .port_wData (rams_7_port_wData[63:0]), //i
    .port_rData (rams_7_port_rData[63:0]), //o
    .port_wr    (rams_7_port_wr         ), //i
    .port_en    (rams_7_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_8 (
    .port_addr  (rams_8_port_addr[8:0]  ), //i
    .port_wData (rams_8_port_wData[63:0]), //i
    .port_rData (rams_8_port_rData[63:0]), //o
    .port_wr    (rams_8_port_wr         ), //i
    .port_en    (rams_8_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_9 (
    .port_addr  (rams_9_port_addr[8:0]  ), //i
    .port_wData (rams_9_port_wData[63:0]), //i
    .port_rData (rams_9_port_rData[63:0]), //o
    .port_wr    (rams_9_port_wr         ), //i
    .port_en    (rams_9_port_en         ), //i
    .clk        (clk                    ), //i
    .reset      (reset                  )  //i
  );
  SignalPortRam rams_10 (
    .port_addr  (rams_10_port_addr[8:0]  ), //i
    .port_wData (rams_10_port_wData[63:0]), //i
    .port_rData (rams_10_port_rData[63:0]), //o
    .port_wr    (rams_10_port_wr         ), //i
    .port_en    (rams_10_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  SignalPortRam rams_11 (
    .port_addr  (rams_11_port_addr[8:0]  ), //i
    .port_wData (rams_11_port_wData[63:0]), //i
    .port_rData (rams_11_port_rData[63:0]), //o
    .port_wr    (rams_11_port_wr         ), //i
    .port_en    (rams_11_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  SignalPortRam rams_12 (
    .port_addr  (rams_12_port_addr[8:0]  ), //i
    .port_wData (rams_12_port_wData[63:0]), //i
    .port_rData (rams_12_port_rData[63:0]), //o
    .port_wr    (rams_12_port_wr         ), //i
    .port_en    (rams_12_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  SignalPortRam rams_13 (
    .port_addr  (rams_13_port_addr[8:0]  ), //i
    .port_wData (rams_13_port_wData[63:0]), //i
    .port_rData (rams_13_port_rData[63:0]), //o
    .port_wr    (rams_13_port_wr         ), //i
    .port_en    (rams_13_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  SignalPortRam rams_14 (
    .port_addr  (rams_14_port_addr[8:0]  ), //i
    .port_wData (rams_14_port_wData[63:0]), //i
    .port_rData (rams_14_port_rData[63:0]), //o
    .port_wr    (rams_14_port_wr         ), //i
    .port_en    (rams_14_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  SignalPortRam rams_15 (
    .port_addr  (rams_15_port_addr[8:0]  ), //i
    .port_wData (rams_15_port_wData[63:0]), //i
    .port_rData (rams_15_port_rData[63:0]), //o
    .port_wr    (rams_15_port_wr         ), //i
    .port_en    (rams_15_port_en         ), //i
    .clk        (clk                     ), //i
    .reset      (reset                   )  //i
  );
  assign portRamIndices_0 = ports_0_addr[12 : 9];
  assign portRamIndices_1 = ports_1_addr[12 : 9];
  assign portRamIndices_2 = ports_2_addr[12 : 9];
  assign portRamIndices_3 = ports_3_addr[12 : 9];
  assign portLocalAddr_0 = ports_0_addr[8 : 0];
  assign portLocalAddr_1 = ports_1_addr[8 : 0];
  assign portLocalAddr_2 = ports_2_addr[8 : 0];
  assign portLocalAddr_3 = ports_3_addr[8 : 0];
  always @(*) begin
    readDataMuxes_0 = 64'h0;
    if(when_MemoryArray_l47) begin
      readDataMuxes_0 = rams_0_port_rData;
    end
    if(when_MemoryArray_l47_1) begin
      readDataMuxes_0 = rams_1_port_rData;
    end
    if(when_MemoryArray_l47_2) begin
      readDataMuxes_0 = rams_2_port_rData;
    end
    if(when_MemoryArray_l47_3) begin
      readDataMuxes_0 = rams_3_port_rData;
    end
    if(when_MemoryArray_l47_4) begin
      readDataMuxes_0 = rams_4_port_rData;
    end
    if(when_MemoryArray_l47_5) begin
      readDataMuxes_0 = rams_5_port_rData;
    end
    if(when_MemoryArray_l47_6) begin
      readDataMuxes_0 = rams_6_port_rData;
    end
    if(when_MemoryArray_l47_7) begin
      readDataMuxes_0 = rams_7_port_rData;
    end
    if(when_MemoryArray_l47_8) begin
      readDataMuxes_0 = rams_8_port_rData;
    end
    if(when_MemoryArray_l47_9) begin
      readDataMuxes_0 = rams_9_port_rData;
    end
    if(when_MemoryArray_l47_10) begin
      readDataMuxes_0 = rams_10_port_rData;
    end
    if(when_MemoryArray_l47_11) begin
      readDataMuxes_0 = rams_11_port_rData;
    end
    if(when_MemoryArray_l47_12) begin
      readDataMuxes_0 = rams_12_port_rData;
    end
    if(when_MemoryArray_l47_13) begin
      readDataMuxes_0 = rams_13_port_rData;
    end
    if(when_MemoryArray_l47_14) begin
      readDataMuxes_0 = rams_14_port_rData;
    end
    if(when_MemoryArray_l47_15) begin
      readDataMuxes_0 = rams_15_port_rData;
    end
  end

  assign when_MemoryArray_l47 = (4'b0000 == portRamIndices_0);
  assign when_MemoryArray_l47_1 = (4'b0001 == portRamIndices_0);
  assign when_MemoryArray_l47_2 = (4'b0010 == portRamIndices_0);
  assign when_MemoryArray_l47_3 = (4'b0011 == portRamIndices_0);
  assign when_MemoryArray_l47_4 = (4'b0100 == portRamIndices_0);
  assign when_MemoryArray_l47_5 = (4'b0101 == portRamIndices_0);
  assign when_MemoryArray_l47_6 = (4'b0110 == portRamIndices_0);
  assign when_MemoryArray_l47_7 = (4'b0111 == portRamIndices_0);
  assign when_MemoryArray_l47_8 = (4'b1000 == portRamIndices_0);
  assign when_MemoryArray_l47_9 = (4'b1001 == portRamIndices_0);
  assign when_MemoryArray_l47_10 = (4'b1010 == portRamIndices_0);
  assign when_MemoryArray_l47_11 = (4'b1011 == portRamIndices_0);
  assign when_MemoryArray_l47_12 = (4'b1100 == portRamIndices_0);
  assign when_MemoryArray_l47_13 = (4'b1101 == portRamIndices_0);
  assign when_MemoryArray_l47_14 = (4'b1110 == portRamIndices_0);
  assign when_MemoryArray_l47_15 = (4'b1111 == portRamIndices_0);
  always @(*) begin
    readDataMuxes_1 = 64'h0;
    if(when_MemoryArray_l47_16) begin
      readDataMuxes_1 = rams_0_port_rData;
    end
    if(when_MemoryArray_l47_17) begin
      readDataMuxes_1 = rams_1_port_rData;
    end
    if(when_MemoryArray_l47_18) begin
      readDataMuxes_1 = rams_2_port_rData;
    end
    if(when_MemoryArray_l47_19) begin
      readDataMuxes_1 = rams_3_port_rData;
    end
    if(when_MemoryArray_l47_20) begin
      readDataMuxes_1 = rams_4_port_rData;
    end
    if(when_MemoryArray_l47_21) begin
      readDataMuxes_1 = rams_5_port_rData;
    end
    if(when_MemoryArray_l47_22) begin
      readDataMuxes_1 = rams_6_port_rData;
    end
    if(when_MemoryArray_l47_23) begin
      readDataMuxes_1 = rams_7_port_rData;
    end
    if(when_MemoryArray_l47_24) begin
      readDataMuxes_1 = rams_8_port_rData;
    end
    if(when_MemoryArray_l47_25) begin
      readDataMuxes_1 = rams_9_port_rData;
    end
    if(when_MemoryArray_l47_26) begin
      readDataMuxes_1 = rams_10_port_rData;
    end
    if(when_MemoryArray_l47_27) begin
      readDataMuxes_1 = rams_11_port_rData;
    end
    if(when_MemoryArray_l47_28) begin
      readDataMuxes_1 = rams_12_port_rData;
    end
    if(when_MemoryArray_l47_29) begin
      readDataMuxes_1 = rams_13_port_rData;
    end
    if(when_MemoryArray_l47_30) begin
      readDataMuxes_1 = rams_14_port_rData;
    end
    if(when_MemoryArray_l47_31) begin
      readDataMuxes_1 = rams_15_port_rData;
    end
  end

  assign when_MemoryArray_l47_16 = (4'b0000 == portRamIndices_1);
  assign when_MemoryArray_l47_17 = (4'b0001 == portRamIndices_1);
  assign when_MemoryArray_l47_18 = (4'b0010 == portRamIndices_1);
  assign when_MemoryArray_l47_19 = (4'b0011 == portRamIndices_1);
  assign when_MemoryArray_l47_20 = (4'b0100 == portRamIndices_1);
  assign when_MemoryArray_l47_21 = (4'b0101 == portRamIndices_1);
  assign when_MemoryArray_l47_22 = (4'b0110 == portRamIndices_1);
  assign when_MemoryArray_l47_23 = (4'b0111 == portRamIndices_1);
  assign when_MemoryArray_l47_24 = (4'b1000 == portRamIndices_1);
  assign when_MemoryArray_l47_25 = (4'b1001 == portRamIndices_1);
  assign when_MemoryArray_l47_26 = (4'b1010 == portRamIndices_1);
  assign when_MemoryArray_l47_27 = (4'b1011 == portRamIndices_1);
  assign when_MemoryArray_l47_28 = (4'b1100 == portRamIndices_1);
  assign when_MemoryArray_l47_29 = (4'b1101 == portRamIndices_1);
  assign when_MemoryArray_l47_30 = (4'b1110 == portRamIndices_1);
  assign when_MemoryArray_l47_31 = (4'b1111 == portRamIndices_1);
  always @(*) begin
    readDataMuxes_2 = 64'h0;
    if(when_MemoryArray_l47_32) begin
      readDataMuxes_2 = rams_0_port_rData;
    end
    if(when_MemoryArray_l47_33) begin
      readDataMuxes_2 = rams_1_port_rData;
    end
    if(when_MemoryArray_l47_34) begin
      readDataMuxes_2 = rams_2_port_rData;
    end
    if(when_MemoryArray_l47_35) begin
      readDataMuxes_2 = rams_3_port_rData;
    end
    if(when_MemoryArray_l47_36) begin
      readDataMuxes_2 = rams_4_port_rData;
    end
    if(when_MemoryArray_l47_37) begin
      readDataMuxes_2 = rams_5_port_rData;
    end
    if(when_MemoryArray_l47_38) begin
      readDataMuxes_2 = rams_6_port_rData;
    end
    if(when_MemoryArray_l47_39) begin
      readDataMuxes_2 = rams_7_port_rData;
    end
    if(when_MemoryArray_l47_40) begin
      readDataMuxes_2 = rams_8_port_rData;
    end
    if(when_MemoryArray_l47_41) begin
      readDataMuxes_2 = rams_9_port_rData;
    end
    if(when_MemoryArray_l47_42) begin
      readDataMuxes_2 = rams_10_port_rData;
    end
    if(when_MemoryArray_l47_43) begin
      readDataMuxes_2 = rams_11_port_rData;
    end
    if(when_MemoryArray_l47_44) begin
      readDataMuxes_2 = rams_12_port_rData;
    end
    if(when_MemoryArray_l47_45) begin
      readDataMuxes_2 = rams_13_port_rData;
    end
    if(when_MemoryArray_l47_46) begin
      readDataMuxes_2 = rams_14_port_rData;
    end
    if(when_MemoryArray_l47_47) begin
      readDataMuxes_2 = rams_15_port_rData;
    end
  end

  assign when_MemoryArray_l47_32 = (4'b0000 == portRamIndices_2);
  assign when_MemoryArray_l47_33 = (4'b0001 == portRamIndices_2);
  assign when_MemoryArray_l47_34 = (4'b0010 == portRamIndices_2);
  assign when_MemoryArray_l47_35 = (4'b0011 == portRamIndices_2);
  assign when_MemoryArray_l47_36 = (4'b0100 == portRamIndices_2);
  assign when_MemoryArray_l47_37 = (4'b0101 == portRamIndices_2);
  assign when_MemoryArray_l47_38 = (4'b0110 == portRamIndices_2);
  assign when_MemoryArray_l47_39 = (4'b0111 == portRamIndices_2);
  assign when_MemoryArray_l47_40 = (4'b1000 == portRamIndices_2);
  assign when_MemoryArray_l47_41 = (4'b1001 == portRamIndices_2);
  assign when_MemoryArray_l47_42 = (4'b1010 == portRamIndices_2);
  assign when_MemoryArray_l47_43 = (4'b1011 == portRamIndices_2);
  assign when_MemoryArray_l47_44 = (4'b1100 == portRamIndices_2);
  assign when_MemoryArray_l47_45 = (4'b1101 == portRamIndices_2);
  assign when_MemoryArray_l47_46 = (4'b1110 == portRamIndices_2);
  assign when_MemoryArray_l47_47 = (4'b1111 == portRamIndices_2);
  always @(*) begin
    readDataMuxes_3 = 64'h0;
    if(when_MemoryArray_l47_48) begin
      readDataMuxes_3 = rams_0_port_rData;
    end
    if(when_MemoryArray_l47_49) begin
      readDataMuxes_3 = rams_1_port_rData;
    end
    if(when_MemoryArray_l47_50) begin
      readDataMuxes_3 = rams_2_port_rData;
    end
    if(when_MemoryArray_l47_51) begin
      readDataMuxes_3 = rams_3_port_rData;
    end
    if(when_MemoryArray_l47_52) begin
      readDataMuxes_3 = rams_4_port_rData;
    end
    if(when_MemoryArray_l47_53) begin
      readDataMuxes_3 = rams_5_port_rData;
    end
    if(when_MemoryArray_l47_54) begin
      readDataMuxes_3 = rams_6_port_rData;
    end
    if(when_MemoryArray_l47_55) begin
      readDataMuxes_3 = rams_7_port_rData;
    end
    if(when_MemoryArray_l47_56) begin
      readDataMuxes_3 = rams_8_port_rData;
    end
    if(when_MemoryArray_l47_57) begin
      readDataMuxes_3 = rams_9_port_rData;
    end
    if(when_MemoryArray_l47_58) begin
      readDataMuxes_3 = rams_10_port_rData;
    end
    if(when_MemoryArray_l47_59) begin
      readDataMuxes_3 = rams_11_port_rData;
    end
    if(when_MemoryArray_l47_60) begin
      readDataMuxes_3 = rams_12_port_rData;
    end
    if(when_MemoryArray_l47_61) begin
      readDataMuxes_3 = rams_13_port_rData;
    end
    if(when_MemoryArray_l47_62) begin
      readDataMuxes_3 = rams_14_port_rData;
    end
    if(when_MemoryArray_l47_63) begin
      readDataMuxes_3 = rams_15_port_rData;
    end
  end

  assign when_MemoryArray_l47_48 = (4'b0000 == portRamIndices_3);
  assign when_MemoryArray_l47_49 = (4'b0001 == portRamIndices_3);
  assign when_MemoryArray_l47_50 = (4'b0010 == portRamIndices_3);
  assign when_MemoryArray_l47_51 = (4'b0011 == portRamIndices_3);
  assign when_MemoryArray_l47_52 = (4'b0100 == portRamIndices_3);
  assign when_MemoryArray_l47_53 = (4'b0101 == portRamIndices_3);
  assign when_MemoryArray_l47_54 = (4'b0110 == portRamIndices_3);
  assign when_MemoryArray_l47_55 = (4'b0111 == portRamIndices_3);
  assign when_MemoryArray_l47_56 = (4'b1000 == portRamIndices_3);
  assign when_MemoryArray_l47_57 = (4'b1001 == portRamIndices_3);
  assign when_MemoryArray_l47_58 = (4'b1010 == portRamIndices_3);
  assign when_MemoryArray_l47_59 = (4'b1011 == portRamIndices_3);
  assign when_MemoryArray_l47_60 = (4'b1100 == portRamIndices_3);
  assign when_MemoryArray_l47_61 = (4'b1101 == portRamIndices_3);
  assign when_MemoryArray_l47_62 = (4'b1110 == portRamIndices_3);
  assign when_MemoryArray_l47_63 = (4'b1111 == portRamIndices_3);
  always @(*) begin
    rams_0_port_addr = 9'h0;
    if(when_MemoryArray_l72) begin
      rams_0_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83) begin
      rams_0_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_1) begin
      rams_0_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_2) begin
      rams_0_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_0_port_en = 1'b0;
    if(when_MemoryArray_l72) begin
      rams_0_port_en = 1'b1;
    end
    if(when_MemoryArray_l83) begin
      rams_0_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_1) begin
      rams_0_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_2) begin
      rams_0_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_0_port_wr = 1'b0;
    if(when_MemoryArray_l72) begin
      rams_0_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83) begin
      rams_0_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_1) begin
      rams_0_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_2) begin
      rams_0_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_0_port_wData = 64'h0;
    if(when_MemoryArray_l72) begin
      rams_0_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83) begin
      rams_0_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_1) begin
      rams_0_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_2) begin
      rams_0_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0000));
  assign when_MemoryArray_l83 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0000));
  assign when_MemoryArray_l83_1 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0000));
  assign when_MemoryArray_l83_2 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0000));
  always @(*) begin
    rams_1_port_addr = 9'h0;
    if(when_MemoryArray_l72_1) begin
      rams_1_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_3) begin
      rams_1_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_4) begin
      rams_1_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_5) begin
      rams_1_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_1_port_en = 1'b0;
    if(when_MemoryArray_l72_1) begin
      rams_1_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_3) begin
      rams_1_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_4) begin
      rams_1_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_5) begin
      rams_1_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_1_port_wr = 1'b0;
    if(when_MemoryArray_l72_1) begin
      rams_1_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_3) begin
      rams_1_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_4) begin
      rams_1_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_5) begin
      rams_1_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_1_port_wData = 64'h0;
    if(when_MemoryArray_l72_1) begin
      rams_1_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_3) begin
      rams_1_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_4) begin
      rams_1_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_5) begin
      rams_1_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_1 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0001));
  assign when_MemoryArray_l83_3 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0001));
  assign when_MemoryArray_l83_4 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0001));
  assign when_MemoryArray_l83_5 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0001));
  always @(*) begin
    rams_2_port_addr = 9'h0;
    if(when_MemoryArray_l72_2) begin
      rams_2_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_6) begin
      rams_2_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_7) begin
      rams_2_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_8) begin
      rams_2_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_2_port_en = 1'b0;
    if(when_MemoryArray_l72_2) begin
      rams_2_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_6) begin
      rams_2_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_7) begin
      rams_2_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_8) begin
      rams_2_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_2_port_wr = 1'b0;
    if(when_MemoryArray_l72_2) begin
      rams_2_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_6) begin
      rams_2_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_7) begin
      rams_2_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_8) begin
      rams_2_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_2_port_wData = 64'h0;
    if(when_MemoryArray_l72_2) begin
      rams_2_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_6) begin
      rams_2_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_7) begin
      rams_2_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_8) begin
      rams_2_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_2 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0010));
  assign when_MemoryArray_l83_6 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0010));
  assign when_MemoryArray_l83_7 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0010));
  assign when_MemoryArray_l83_8 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0010));
  always @(*) begin
    rams_3_port_addr = 9'h0;
    if(when_MemoryArray_l72_3) begin
      rams_3_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_9) begin
      rams_3_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_10) begin
      rams_3_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_11) begin
      rams_3_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_3_port_en = 1'b0;
    if(when_MemoryArray_l72_3) begin
      rams_3_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_9) begin
      rams_3_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_10) begin
      rams_3_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_11) begin
      rams_3_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_3_port_wr = 1'b0;
    if(when_MemoryArray_l72_3) begin
      rams_3_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_9) begin
      rams_3_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_10) begin
      rams_3_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_11) begin
      rams_3_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_3_port_wData = 64'h0;
    if(when_MemoryArray_l72_3) begin
      rams_3_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_9) begin
      rams_3_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_10) begin
      rams_3_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_11) begin
      rams_3_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_3 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0011));
  assign when_MemoryArray_l83_9 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0011));
  assign when_MemoryArray_l83_10 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0011));
  assign when_MemoryArray_l83_11 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0011));
  always @(*) begin
    rams_4_port_addr = 9'h0;
    if(when_MemoryArray_l72_4) begin
      rams_4_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_12) begin
      rams_4_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_13) begin
      rams_4_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_14) begin
      rams_4_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_4_port_en = 1'b0;
    if(when_MemoryArray_l72_4) begin
      rams_4_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_12) begin
      rams_4_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_13) begin
      rams_4_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_14) begin
      rams_4_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_4_port_wr = 1'b0;
    if(when_MemoryArray_l72_4) begin
      rams_4_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_12) begin
      rams_4_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_13) begin
      rams_4_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_14) begin
      rams_4_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_4_port_wData = 64'h0;
    if(when_MemoryArray_l72_4) begin
      rams_4_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_12) begin
      rams_4_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_13) begin
      rams_4_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_14) begin
      rams_4_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_4 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0100));
  assign when_MemoryArray_l83_12 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0100));
  assign when_MemoryArray_l83_13 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0100));
  assign when_MemoryArray_l83_14 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0100));
  always @(*) begin
    rams_5_port_addr = 9'h0;
    if(when_MemoryArray_l72_5) begin
      rams_5_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_15) begin
      rams_5_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_16) begin
      rams_5_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_17) begin
      rams_5_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_5_port_en = 1'b0;
    if(when_MemoryArray_l72_5) begin
      rams_5_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_15) begin
      rams_5_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_16) begin
      rams_5_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_17) begin
      rams_5_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_5_port_wr = 1'b0;
    if(when_MemoryArray_l72_5) begin
      rams_5_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_15) begin
      rams_5_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_16) begin
      rams_5_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_17) begin
      rams_5_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_5_port_wData = 64'h0;
    if(when_MemoryArray_l72_5) begin
      rams_5_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_15) begin
      rams_5_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_16) begin
      rams_5_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_17) begin
      rams_5_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_5 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0101));
  assign when_MemoryArray_l83_15 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0101));
  assign when_MemoryArray_l83_16 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0101));
  assign when_MemoryArray_l83_17 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0101));
  always @(*) begin
    rams_6_port_addr = 9'h0;
    if(when_MemoryArray_l72_6) begin
      rams_6_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_18) begin
      rams_6_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_19) begin
      rams_6_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_20) begin
      rams_6_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_6_port_en = 1'b0;
    if(when_MemoryArray_l72_6) begin
      rams_6_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_18) begin
      rams_6_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_19) begin
      rams_6_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_20) begin
      rams_6_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_6_port_wr = 1'b0;
    if(when_MemoryArray_l72_6) begin
      rams_6_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_18) begin
      rams_6_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_19) begin
      rams_6_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_20) begin
      rams_6_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_6_port_wData = 64'h0;
    if(when_MemoryArray_l72_6) begin
      rams_6_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_18) begin
      rams_6_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_19) begin
      rams_6_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_20) begin
      rams_6_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_6 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0110));
  assign when_MemoryArray_l83_18 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0110));
  assign when_MemoryArray_l83_19 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0110));
  assign when_MemoryArray_l83_20 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0110));
  always @(*) begin
    rams_7_port_addr = 9'h0;
    if(when_MemoryArray_l72_7) begin
      rams_7_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_21) begin
      rams_7_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_22) begin
      rams_7_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_23) begin
      rams_7_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_7_port_en = 1'b0;
    if(when_MemoryArray_l72_7) begin
      rams_7_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_21) begin
      rams_7_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_22) begin
      rams_7_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_23) begin
      rams_7_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_7_port_wr = 1'b0;
    if(when_MemoryArray_l72_7) begin
      rams_7_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_21) begin
      rams_7_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_22) begin
      rams_7_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_23) begin
      rams_7_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_7_port_wData = 64'h0;
    if(when_MemoryArray_l72_7) begin
      rams_7_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_21) begin
      rams_7_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_22) begin
      rams_7_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_23) begin
      rams_7_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_7 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b0111));
  assign when_MemoryArray_l83_21 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b0111));
  assign when_MemoryArray_l83_22 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b0111));
  assign when_MemoryArray_l83_23 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b0111));
  always @(*) begin
    rams_8_port_addr = 9'h0;
    if(when_MemoryArray_l72_8) begin
      rams_8_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_24) begin
      rams_8_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_25) begin
      rams_8_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_26) begin
      rams_8_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_8_port_en = 1'b0;
    if(when_MemoryArray_l72_8) begin
      rams_8_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_24) begin
      rams_8_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_25) begin
      rams_8_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_26) begin
      rams_8_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_8_port_wr = 1'b0;
    if(when_MemoryArray_l72_8) begin
      rams_8_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_24) begin
      rams_8_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_25) begin
      rams_8_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_26) begin
      rams_8_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_8_port_wData = 64'h0;
    if(when_MemoryArray_l72_8) begin
      rams_8_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_24) begin
      rams_8_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_25) begin
      rams_8_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_26) begin
      rams_8_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_8 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1000));
  assign when_MemoryArray_l83_24 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1000));
  assign when_MemoryArray_l83_25 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1000));
  assign when_MemoryArray_l83_26 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1000));
  always @(*) begin
    rams_9_port_addr = 9'h0;
    if(when_MemoryArray_l72_9) begin
      rams_9_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_27) begin
      rams_9_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_28) begin
      rams_9_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_29) begin
      rams_9_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_9_port_en = 1'b0;
    if(when_MemoryArray_l72_9) begin
      rams_9_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_27) begin
      rams_9_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_28) begin
      rams_9_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_29) begin
      rams_9_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_9_port_wr = 1'b0;
    if(when_MemoryArray_l72_9) begin
      rams_9_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_27) begin
      rams_9_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_28) begin
      rams_9_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_29) begin
      rams_9_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_9_port_wData = 64'h0;
    if(when_MemoryArray_l72_9) begin
      rams_9_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_27) begin
      rams_9_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_28) begin
      rams_9_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_29) begin
      rams_9_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_9 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1001));
  assign when_MemoryArray_l83_27 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1001));
  assign when_MemoryArray_l83_28 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1001));
  assign when_MemoryArray_l83_29 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1001));
  always @(*) begin
    rams_10_port_addr = 9'h0;
    if(when_MemoryArray_l72_10) begin
      rams_10_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_30) begin
      rams_10_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_31) begin
      rams_10_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_32) begin
      rams_10_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_10_port_en = 1'b0;
    if(when_MemoryArray_l72_10) begin
      rams_10_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_30) begin
      rams_10_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_31) begin
      rams_10_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_32) begin
      rams_10_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_10_port_wr = 1'b0;
    if(when_MemoryArray_l72_10) begin
      rams_10_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_30) begin
      rams_10_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_31) begin
      rams_10_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_32) begin
      rams_10_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_10_port_wData = 64'h0;
    if(when_MemoryArray_l72_10) begin
      rams_10_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_30) begin
      rams_10_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_31) begin
      rams_10_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_32) begin
      rams_10_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_10 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1010));
  assign when_MemoryArray_l83_30 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1010));
  assign when_MemoryArray_l83_31 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1010));
  assign when_MemoryArray_l83_32 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1010));
  always @(*) begin
    rams_11_port_addr = 9'h0;
    if(when_MemoryArray_l72_11) begin
      rams_11_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_33) begin
      rams_11_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_34) begin
      rams_11_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_35) begin
      rams_11_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_11_port_en = 1'b0;
    if(when_MemoryArray_l72_11) begin
      rams_11_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_33) begin
      rams_11_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_34) begin
      rams_11_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_35) begin
      rams_11_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_11_port_wr = 1'b0;
    if(when_MemoryArray_l72_11) begin
      rams_11_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_33) begin
      rams_11_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_34) begin
      rams_11_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_35) begin
      rams_11_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_11_port_wData = 64'h0;
    if(when_MemoryArray_l72_11) begin
      rams_11_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_33) begin
      rams_11_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_34) begin
      rams_11_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_35) begin
      rams_11_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_11 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1011));
  assign when_MemoryArray_l83_33 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1011));
  assign when_MemoryArray_l83_34 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1011));
  assign when_MemoryArray_l83_35 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1011));
  always @(*) begin
    rams_12_port_addr = 9'h0;
    if(when_MemoryArray_l72_12) begin
      rams_12_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_36) begin
      rams_12_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_37) begin
      rams_12_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_38) begin
      rams_12_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_12_port_en = 1'b0;
    if(when_MemoryArray_l72_12) begin
      rams_12_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_36) begin
      rams_12_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_37) begin
      rams_12_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_38) begin
      rams_12_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_12_port_wr = 1'b0;
    if(when_MemoryArray_l72_12) begin
      rams_12_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_36) begin
      rams_12_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_37) begin
      rams_12_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_38) begin
      rams_12_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_12_port_wData = 64'h0;
    if(when_MemoryArray_l72_12) begin
      rams_12_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_36) begin
      rams_12_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_37) begin
      rams_12_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_38) begin
      rams_12_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_12 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1100));
  assign when_MemoryArray_l83_36 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1100));
  assign when_MemoryArray_l83_37 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1100));
  assign when_MemoryArray_l83_38 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1100));
  always @(*) begin
    rams_13_port_addr = 9'h0;
    if(when_MemoryArray_l72_13) begin
      rams_13_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_39) begin
      rams_13_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_40) begin
      rams_13_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_41) begin
      rams_13_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_13_port_en = 1'b0;
    if(when_MemoryArray_l72_13) begin
      rams_13_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_39) begin
      rams_13_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_40) begin
      rams_13_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_41) begin
      rams_13_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_13_port_wr = 1'b0;
    if(when_MemoryArray_l72_13) begin
      rams_13_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_39) begin
      rams_13_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_40) begin
      rams_13_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_41) begin
      rams_13_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_13_port_wData = 64'h0;
    if(when_MemoryArray_l72_13) begin
      rams_13_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_39) begin
      rams_13_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_40) begin
      rams_13_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_41) begin
      rams_13_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_13 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1101));
  assign when_MemoryArray_l83_39 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1101));
  assign when_MemoryArray_l83_40 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1101));
  assign when_MemoryArray_l83_41 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1101));
  always @(*) begin
    rams_14_port_addr = 9'h0;
    if(when_MemoryArray_l72_14) begin
      rams_14_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_42) begin
      rams_14_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_43) begin
      rams_14_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_44) begin
      rams_14_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_14_port_en = 1'b0;
    if(when_MemoryArray_l72_14) begin
      rams_14_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_42) begin
      rams_14_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_43) begin
      rams_14_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_44) begin
      rams_14_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_14_port_wr = 1'b0;
    if(when_MemoryArray_l72_14) begin
      rams_14_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_42) begin
      rams_14_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_43) begin
      rams_14_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_44) begin
      rams_14_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_14_port_wData = 64'h0;
    if(when_MemoryArray_l72_14) begin
      rams_14_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_42) begin
      rams_14_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_43) begin
      rams_14_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_44) begin
      rams_14_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_14 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1110));
  assign when_MemoryArray_l83_42 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1110));
  assign when_MemoryArray_l83_43 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1110));
  assign when_MemoryArray_l83_44 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1110));
  always @(*) begin
    rams_15_port_addr = 9'h0;
    if(when_MemoryArray_l72_15) begin
      rams_15_port_addr = portLocalAddr_0;
    end
    if(when_MemoryArray_l83_45) begin
      rams_15_port_addr = portLocalAddr_1;
    end
    if(when_MemoryArray_l83_46) begin
      rams_15_port_addr = portLocalAddr_2;
    end
    if(when_MemoryArray_l83_47) begin
      rams_15_port_addr = portLocalAddr_3;
    end
  end

  always @(*) begin
    rams_15_port_en = 1'b0;
    if(when_MemoryArray_l72_15) begin
      rams_15_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_45) begin
      rams_15_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_46) begin
      rams_15_port_en = 1'b1;
    end
    if(when_MemoryArray_l83_47) begin
      rams_15_port_en = 1'b1;
    end
  end

  always @(*) begin
    rams_15_port_wr = 1'b0;
    if(when_MemoryArray_l72_15) begin
      rams_15_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_45) begin
      rams_15_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_46) begin
      rams_15_port_wr = 1'b1;
    end
    if(when_MemoryArray_l83_47) begin
      rams_15_port_wr = 1'b1;
    end
  end

  always @(*) begin
    rams_15_port_wData = 64'h0;
    if(when_MemoryArray_l72_15) begin
      rams_15_port_wData = ports_0_wData;
    end
    if(when_MemoryArray_l83_45) begin
      rams_15_port_wData = ports_1_wData;
    end
    if(when_MemoryArray_l83_46) begin
      rams_15_port_wData = ports_2_wData;
    end
    if(when_MemoryArray_l83_47) begin
      rams_15_port_wData = ports_3_wData;
    end
  end

  assign when_MemoryArray_l72_15 = ((ports_0_en && ports_0_wr) && (ports_0_addr[12 : 9] == 4'b1111));
  assign when_MemoryArray_l83_45 = ((ports_1_en && ports_1_wr) && (ports_1_addr[12 : 9] == 4'b1111));
  assign when_MemoryArray_l83_46 = ((ports_2_en && ports_2_wr) && (ports_2_addr[12 : 9] == 4'b1111));
  assign when_MemoryArray_l83_47 = ((ports_3_en && ports_3_wr) && (ports_3_addr[12 : 9] == 4'b1111));
  assign ports_0_rData = readDataMuxes_0;
  assign ports_1_rData = readDataMuxes_1;
  assign ports_2_rData = readDataMuxes_2;
  assign ports_3_rData = readDataMuxes_3;

endmodule

//SignalPortRam_15 replaced by SignalPortRam

//SignalPortRam_14 replaced by SignalPortRam

//SignalPortRam_13 replaced by SignalPortRam

//SignalPortRam_12 replaced by SignalPortRam

//SignalPortRam_11 replaced by SignalPortRam

//SignalPortRam_10 replaced by SignalPortRam

//SignalPortRam_9 replaced by SignalPortRam

//SignalPortRam_8 replaced by SignalPortRam

//SignalPortRam_7 replaced by SignalPortRam

//SignalPortRam_6 replaced by SignalPortRam

//SignalPortRam_5 replaced by SignalPortRam

//SignalPortRam_4 replaced by SignalPortRam

//SignalPortRam_3 replaced by SignalPortRam

//SignalPortRam_2 replaced by SignalPortRam

//SignalPortRam_1 replaced by SignalPortRam

module SignalPortRam (
  input  wire [8:0]    port_addr,
  input  wire [63:0]   port_wData,
  output wire [63:0]   port_rData,
  input  wire          port_wr,
  input  wire          port_en,
  input  wire          clk,
  input  wire          reset
);

  reg        [63:0]   ram_spinal_port1;
  reg                 _1;
  wire                when_SignalPortRam_l19;
  reg [63:0] ram [0:511];

  always @(posedge clk) begin
    if(_1) begin
      ram[port_addr] <= port_wData;
    end
  end

  always @(posedge clk) begin
    if(port_en) begin
      ram_spinal_port1 <= ram[port_addr];
    end
  end

  always @(*) begin
    _1 = 1'b0;
    if(when_SignalPortRam_l19) begin
      _1 = 1'b1;
    end
  end

  assign when_SignalPortRam_l19 = (port_en && port_wr);
  assign port_rData = ram_spinal_port1;

endmodule
