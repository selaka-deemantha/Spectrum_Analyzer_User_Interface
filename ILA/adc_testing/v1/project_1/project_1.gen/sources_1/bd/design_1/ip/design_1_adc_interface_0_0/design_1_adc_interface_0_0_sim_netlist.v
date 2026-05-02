// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Feb  6 12:12:53 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_adc_interface_0_0/design_1_adc_interface_0_0_sim_netlist.v
// Design      : design_1_adc_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_adc_interface_0_0,adc_interface,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "adc_interface,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_adc_interface_0_0
   (i_adc_reset,
    i_adc_dco,
    i_adc_data,
    i_adc_vco_prog_done,
    i_adc_vco_prog_freq,
    o_adc_vco_req_next_freq,
    o_adc_vco_prog_freq,
    m_axis_clk,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    adc_signed_debug,
    win_coeff_out,
    adc_data_original,
    adc_data_original_valid,
    window_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_adc_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_adc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_adc_reset;
  input i_adc_dco;
  input [13:0]i_adc_data;
  input i_adc_vco_prog_done;
  input [12:0]i_adc_vco_prog_freq;
  output o_adc_vco_req_next_freq;
  output [12:0]o_adc_vco_prog_freq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m_axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  output [15:0]adc_signed_debug;
  output [15:0]win_coeff_out;
  output [13:0]adc_data_original;
  output adc_data_original_valid;
  input window_enable;

  wire \<const0> ;
  wire [13:0]adc_data_original;
  wire adc_data_original_valid;
  wire [13:0]\^adc_signed_debug ;
  wire [13:0]i_adc_data;
  wire i_adc_dco;
  wire i_adc_reset;
  wire i_adc_vco_prog_done;
  wire [12:0]i_adc_vco_prog_freq;
  wire m_axis_clk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [12:0]o_adc_vco_prog_freq;
  wire o_adc_vco_req_next_freq;
  wire [15:0]win_coeff_out;
  wire window_enable;
  wire [15:14]NLW_inst_adc_signed_debug_UNCONNECTED;

  assign adc_signed_debug[15] = \<const0> ;
  assign adc_signed_debug[14] = \<const0> ;
  assign adc_signed_debug[13:0] = \^adc_signed_debug [13:0];
  GND GND
       (.G(\<const0> ));
  (* ADC_WIDTH = "14" *) 
  (* BUFFERING = "3'b010" *) 
  (* FFT_POINTS = "1024" *) 
  (* IDLE = "3'b000" *) 
  (* P_VCO_STABLE = "80" *) 
  (* REQ_PROG = "3'b100" *) 
  (* SAMPLING = "3'b011" *) 
  (* WAITING = "3'b001" *) 
  (* WINDOW_WIDTH = "16" *) 
  (* WIN_EN = "0" *) 
  design_1_adc_interface_0_0_adc_interface inst
       (.adc_data_original(adc_data_original),
        .adc_data_original_valid(adc_data_original_valid),
        .adc_signed_debug({NLW_inst_adc_signed_debug_UNCONNECTED[15:14],\^adc_signed_debug }),
        .i_adc_data(i_adc_data),
        .i_adc_dco(i_adc_dco),
        .i_adc_reset(i_adc_reset),
        .i_adc_vco_prog_done(i_adc_vco_prog_done),
        .i_adc_vco_prog_freq(i_adc_vco_prog_freq),
        .m_axis_clk(m_axis_clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .o_adc_vco_prog_freq(o_adc_vco_prog_freq),
        .o_adc_vco_req_next_freq(o_adc_vco_req_next_freq),
        .win_coeff_out(win_coeff_out),
        .window_enable(window_enable));
endmodule

(* ADC_WIDTH = "14" *) (* BUFFERING = "3'b010" *) (* FFT_POINTS = "1024" *) 
(* IDLE = "3'b000" *) (* ORIG_REF_NAME = "adc_interface" *) (* P_VCO_STABLE = "80" *) 
(* REQ_PROG = "3'b100" *) (* SAMPLING = "3'b011" *) (* WAITING = "3'b001" *) 
(* WINDOW_WIDTH = "16" *) (* WIN_EN = "0" *) 
module design_1_adc_interface_0_0_adc_interface
   (i_adc_reset,
    i_adc_dco,
    i_adc_data,
    i_adc_vco_prog_done,
    i_adc_vco_prog_freq,
    o_adc_vco_req_next_freq,
    o_adc_vco_prog_freq,
    m_axis_clk,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tready,
    adc_signed_debug,
    win_coeff_out,
    adc_data_original,
    adc_data_original_valid,
    window_enable);
  input i_adc_reset;
  input i_adc_dco;
  input [13:0]i_adc_data;
  input i_adc_vco_prog_done;
  input [12:0]i_adc_vco_prog_freq;
  output o_adc_vco_req_next_freq;
  output [12:0]o_adc_vco_prog_freq;
  input m_axis_clk;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  input m_axis_tready;
  output [15:0]adc_signed_debug;
  output [15:0]win_coeff_out;
  output [13:0]adc_data_original;
  output adc_data_original_valid;
  input window_enable;

  wire \<const0> ;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [13:0]adc_data_original;
  wire adc_data_original_valid;
  wire adc_data_original_valid_i_1_n_0;
  wire \axi_rd_addr[0]_i_1_n_0 ;
  wire \axi_rd_addr[1]_i_1_n_0 ;
  wire \axi_rd_addr[2]_i_1_n_0 ;
  wire \axi_rd_addr[3]_i_1_n_0 ;
  wire \axi_rd_addr[3]_i_2_n_0 ;
  wire \axi_rd_addr[4]_i_1_n_0 ;
  wire \axi_rd_addr[5]_i_1_n_0 ;
  wire \axi_rd_addr[5]_i_2_n_0 ;
  wire \axi_rd_addr[6]_i_1_n_0 ;
  wire \axi_rd_addr[7]_i_1_n_0 ;
  wire \axi_rd_addr[8]_i_1_n_0 ;
  wire \axi_rd_addr[9]_i_1_n_0 ;
  wire \axi_rd_addr[9]_i_2_n_0 ;
  wire \axi_rd_addr_reg_n_0_[0] ;
  wire \axi_rd_addr_reg_n_0_[1] ;
  wire \axi_rd_addr_reg_n_0_[2] ;
  wire \axi_rd_addr_reg_n_0_[3] ;
  wire \axi_rd_addr_reg_n_0_[4] ;
  wire \axi_rd_addr_reg_n_0_[5] ;
  wire \axi_rd_addr_reg_n_0_[6] ;
  wire \axi_rd_addr_reg_n_0_[7] ;
  wire \axi_rd_addr_reg_n_0_[8] ;
  wire \axi_rd_addr_reg_n_0_[9] ;
  wire buffer_done;
  wire buffer_done_i_2_n_0;
  wire buffer_done_reg_n_0;
  wire buffer_done_sync0;
  wire buffer_done_sync1;
  wire [13:0]i_adc_data;
  wire i_adc_dco;
  wire i_adc_reset;
  wire i_adc_vco_prog_done;
  wire [12:0]i_adc_vco_prog_freq;
  wire m_axis_clk;
  wire [31:14]\^m_axis_tdata ;
  wire \m_axis_tdata[31]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [12:0]o_adc_vco_prog_freq;
  wire o_adc_vco_req_next_freq;
  wire o_adc_vco_req_next_freq_i_1_n_0;
  wire p_0_in;
  wire [6:0]wait_cnt;
  wire \wait_cnt[6]_i_1_n_0 ;
  wire \wait_cnt_reg_n_0_[0] ;
  wire \wait_cnt_reg_n_0_[1] ;
  wire \wait_cnt_reg_n_0_[2] ;
  wire \wait_cnt_reg_n_0_[3] ;
  wire \wait_cnt_reg_n_0_[4] ;
  wire \wait_cnt_reg_n_0_[5] ;
  wire \wait_cnt_reg_n_0_[6] ;
  wire \win_addr[0]_i_1_n_0 ;
  wire \win_addr[1]_i_1_n_0 ;
  wire \win_addr[2]_i_1_n_0 ;
  wire \win_addr[3]_i_1_n_0 ;
  wire \win_addr[4]_i_1_n_0 ;
  wire \win_addr[5]_i_1_n_0 ;
  wire \win_addr[6]_i_1_n_0 ;
  wire \win_addr[7]_i_1_n_0 ;
  wire \win_addr[8]_i_1_n_0 ;
  wire \win_addr[9]_i_1_n_0 ;
  wire \win_addr[9]_i_2_n_0 ;
  wire \win_addr[9]_i_3_n_0 ;
  wire [9:0]win_addr_reg;
  wire [15:0]win_coeff_out;
  wire [9:0]win_data_addr;
  wire \win_data_addr_reg_n_0_[0] ;
  wire \win_data_addr_reg_n_0_[1] ;
  wire \win_data_addr_reg_n_0_[2] ;
  wire \win_data_addr_reg_n_0_[3] ;
  wire \win_data_addr_reg_n_0_[4] ;
  wire \win_data_addr_reg_n_0_[5] ;
  wire \win_data_addr_reg_n_0_[6] ;
  wire \win_data_addr_reg_n_0_[7] ;
  wire \win_data_addr_reg_n_0_[8] ;
  wire \win_data_addr_reg_n_0_[9] ;
  wire win_data_din0_i_2_n_0;
  wire win_data_din0_i_3_n_0;
  wire win_data_din0_n_100;
  wire win_data_din0_n_101;
  wire win_data_din0_n_102;
  wire win_data_din0_n_103;
  wire win_data_din0_n_104;
  wire win_data_din0_n_105;
  wire win_data_din0_n_74;
  wire win_data_din0_n_75;
  wire win_data_din0_n_76;
  wire win_data_din0_n_77;
  wire win_data_din0_n_78;
  wire win_data_din0_n_79;
  wire win_data_din0_n_80;
  wire win_data_din0_n_81;
  wire win_data_din0_n_82;
  wire win_data_din0_n_83;
  wire win_data_din0_n_84;
  wire win_data_din0_n_85;
  wire win_data_din0_n_86;
  wire win_data_din0_n_87;
  wire win_data_din0_n_88;
  wire win_data_din0_n_89;
  wire win_data_din0_n_90;
  wire win_data_din0_n_91;
  wire win_data_din0_n_92;
  wire win_data_din0_n_93;
  wire win_data_din0_n_94;
  wire win_data_din0_n_95;
  wire win_data_din0_n_96;
  wire win_data_din0_n_97;
  wire win_data_din0_n_98;
  wire win_data_din0_n_99;
  wire [31:0]win_data_dout;
  wire win_data_we;
  wire win_data_we_i_1_n_0;
  wire win_data_we_reg_n_0;
  wire window_enable;
  wire NLW_win_data_din0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_win_data_din0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_win_data_din0_OVERFLOW_UNCONNECTED;
  wire NLW_win_data_din0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_win_data_din0_PATTERNDETECT_UNCONNECTED;
  wire NLW_win_data_din0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_win_data_din0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_win_data_din0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_win_data_din0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_win_data_din0_P_UNCONNECTED;
  wire [47:0]NLW_win_data_din0_PCOUT_UNCONNECTED;
  wire [31:0]NLW_windowed_data_bram_douta_UNCONNECTED;

  assign adc_signed_debug[15] = \<const0> ;
  assign adc_signed_debug[14] = \<const0> ;
  assign adc_signed_debug[13:0] = i_adc_data;
  assign m_axis_tdata[31:14] = \^m_axis_tdata [31:14];
  assign m_axis_tdata[13:0] = adc_data_original;
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(i_adc_vco_prog_done),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(i_adc_vco_prog_done),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h57550000)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\wait_cnt_reg_n_0_[6] ),
        .I1(\wait_cnt_reg_n_0_[5] ),
        .I2(\wait_cnt_reg_n_0_[4] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEFFFF0F000F00)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\wait_cnt_reg_n_0_[4] ),
        .I1(\wait_cnt_reg_n_0_[5] ),
        .I2(buffer_done_sync1),
        .I3(win_data_we),
        .I4(\FSM_onehot_state[2]_i_2_n_0 ),
        .I5(\FSM_onehot_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\wait_cnt_reg_n_0_[2] ),
        .I1(\wait_cnt_reg_n_0_[0] ),
        .I2(\wait_cnt_reg_n_0_[1] ),
        .I3(\wait_cnt_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\wait_cnt_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(win_data_we),
        .I1(buffer_done_sync1),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\axi_rd_addr_reg_n_0_[0] ),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_state[4]_i_3_n_0 ),
        .I3(m_axis_tvalid),
        .I4(m_axis_tready),
        .I5(\axi_rd_addr_reg_n_0_[0] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(\axi_rd_addr_reg_n_0_[1] ),
        .I1(\axi_rd_addr_reg_n_0_[2] ),
        .I2(\axi_rd_addr_reg_n_0_[3] ),
        .I3(\axi_rd_addr_reg_n_0_[5] ),
        .I4(\axi_rd_addr_reg_n_0_[4] ),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\axi_rd_addr_reg_n_0_[7] ),
        .I1(\axi_rd_addr_reg_n_0_[6] ),
        .I2(\axi_rd_addr_reg_n_0_[9] ),
        .I3(\axi_rd_addr_reg_n_0_[8] ),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(i_adc_reset),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(win_data_we));
  (* FSM_ENCODED_STATES = "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'hFD0C)) 
    adc_data_original_valid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(i_adc_reset),
        .I3(adc_data_original_valid),
        .O(adc_data_original_valid_i_1_n_0));
  FDRE adc_data_original_valid_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .D(adc_data_original_valid_i_1_n_0),
        .Q(adc_data_original_valid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \axi_rd_addr[0]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[7] ),
        .I1(\axi_rd_addr_reg_n_0_[6] ),
        .I2(\axi_rd_addr_reg_n_0_[9] ),
        .I3(\axi_rd_addr_reg_n_0_[8] ),
        .I4(\FSM_onehot_state[4]_i_2_n_0 ),
        .I5(\axi_rd_addr_reg_n_0_[0] ),
        .O(\axi_rd_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FFBF00)) 
    \axi_rd_addr[1]_i_1 
       (.I0(\axi_rd_addr[3]_i_2_n_0 ),
        .I1(\axi_rd_addr_reg_n_0_[3] ),
        .I2(\axi_rd_addr_reg_n_0_[2] ),
        .I3(\axi_rd_addr_reg_n_0_[1] ),
        .I4(\axi_rd_addr_reg_n_0_[0] ),
        .O(\axi_rd_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3C34CCCC)) 
    \axi_rd_addr[2]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[3] ),
        .I1(\axi_rd_addr_reg_n_0_[2] ),
        .I2(\axi_rd_addr_reg_n_0_[0] ),
        .I3(\axi_rd_addr[3]_i_2_n_0 ),
        .I4(\axi_rd_addr_reg_n_0_[1] ),
        .O(\axi_rd_addr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6C64CCCC)) 
    \axi_rd_addr[3]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[2] ),
        .I1(\axi_rd_addr_reg_n_0_[3] ),
        .I2(\axi_rd_addr_reg_n_0_[0] ),
        .I3(\axi_rd_addr[3]_i_2_n_0 ),
        .I4(\axi_rd_addr_reg_n_0_[1] ),
        .O(\axi_rd_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_rd_addr[3]_i_2 
       (.I0(\axi_rd_addr_reg_n_0_[8] ),
        .I1(\axi_rd_addr_reg_n_0_[9] ),
        .I2(\axi_rd_addr_reg_n_0_[6] ),
        .I3(\axi_rd_addr_reg_n_0_[7] ),
        .I4(\axi_rd_addr_reg_n_0_[5] ),
        .I5(\axi_rd_addr_reg_n_0_[4] ),
        .O(\axi_rd_addr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCCCC3C34)) 
    \axi_rd_addr[4]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[5] ),
        .I1(\axi_rd_addr_reg_n_0_[4] ),
        .I2(\axi_rd_addr_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(\axi_rd_addr[5]_i_2_n_0 ),
        .O(\axi_rd_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCCCC6C64)) 
    \axi_rd_addr[5]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[4] ),
        .I1(\axi_rd_addr_reg_n_0_[5] ),
        .I2(\axi_rd_addr_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[4]_i_3_n_0 ),
        .I4(\axi_rd_addr[5]_i_2_n_0 ),
        .O(\axi_rd_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \axi_rd_addr[5]_i_2 
       (.I0(\axi_rd_addr_reg_n_0_[3] ),
        .I1(\axi_rd_addr_reg_n_0_[2] ),
        .I2(\axi_rd_addr_reg_n_0_[1] ),
        .O(\axi_rd_addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF7F00FF0000)) 
    \axi_rd_addr[6]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[9] ),
        .I1(\axi_rd_addr_reg_n_0_[8] ),
        .I2(\axi_rd_addr_reg_n_0_[7] ),
        .I3(\FSM_onehot_state[4]_i_2_n_0 ),
        .I4(\axi_rd_addr_reg_n_0_[0] ),
        .I5(\axi_rd_addr_reg_n_0_[6] ),
        .O(\axi_rd_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFFF55000000)) 
    \axi_rd_addr[7]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\axi_rd_addr_reg_n_0_[9] ),
        .I2(\axi_rd_addr_reg_n_0_[8] ),
        .I3(\axi_rd_addr_reg_n_0_[0] ),
        .I4(\axi_rd_addr_reg_n_0_[6] ),
        .I5(\axi_rd_addr_reg_n_0_[7] ),
        .O(\axi_rd_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF01CF0F0F0F0F0F0)) 
    \axi_rd_addr[8]_i_1 
       (.I0(\axi_rd_addr_reg_n_0_[9] ),
        .I1(\axi_rd_addr_reg_n_0_[0] ),
        .I2(\axi_rd_addr_reg_n_0_[8] ),
        .I3(\FSM_onehot_state[4]_i_2_n_0 ),
        .I4(\axi_rd_addr_reg_n_0_[7] ),
        .I5(\axi_rd_addr_reg_n_0_[6] ),
        .O(\axi_rd_addr[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_rd_addr[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .O(\axi_rd_addr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFF7FF08000000)) 
    \axi_rd_addr[9]_i_2 
       (.I0(\axi_rd_addr_reg_n_0_[6] ),
        .I1(\axi_rd_addr_reg_n_0_[7] ),
        .I2(\FSM_onehot_state[4]_i_2_n_0 ),
        .I3(\axi_rd_addr_reg_n_0_[8] ),
        .I4(\axi_rd_addr_reg_n_0_[0] ),
        .I5(\axi_rd_addr_reg_n_0_[9] ),
        .O(\axi_rd_addr[9]_i_2_n_0 ));
  FDCE \axi_rd_addr_reg[0] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[0]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[0] ));
  FDCE \axi_rd_addr_reg[1] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[1]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[1] ));
  FDCE \axi_rd_addr_reg[2] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[2]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[2] ));
  FDCE \axi_rd_addr_reg[3] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[3]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[3] ));
  FDCE \axi_rd_addr_reg[4] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[4]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[4] ));
  FDCE \axi_rd_addr_reg[5] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[5]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[5] ));
  FDCE \axi_rd_addr_reg[6] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[6]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[6] ));
  FDCE \axi_rd_addr_reg[7] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[7]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[7] ));
  FDCE \axi_rd_addr_reg[8] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[8]_i_1_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[8] ));
  FDCE \axi_rd_addr_reg[9] 
       (.C(m_axis_clk),
        .CE(\axi_rd_addr[9]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(\axi_rd_addr[9]_i_2_n_0 ),
        .Q(\axi_rd_addr_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    buffer_done_i_1
       (.I0(win_addr_reg[9]),
        .I1(win_data_we),
        .I2(win_addr_reg[8]),
        .I3(win_addr_reg[6]),
        .I4(buffer_done_i_2_n_0),
        .I5(win_addr_reg[7]),
        .O(buffer_done));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    buffer_done_i_2
       (.I0(win_addr_reg[4]),
        .I1(win_addr_reg[2]),
        .I2(win_addr_reg[0]),
        .I3(win_addr_reg[1]),
        .I4(win_addr_reg[3]),
        .I5(win_addr_reg[5]),
        .O(buffer_done_i_2_n_0));
  FDRE buffer_done_reg
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(buffer_done),
        .Q(buffer_done_reg_n_0),
        .R(i_adc_reset));
  FDCE buffer_done_sync0_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(buffer_done_reg_n_0),
        .Q(buffer_done_sync0));
  FDCE buffer_done_sync1_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(buffer_done_sync0),
        .Q(buffer_done_sync1));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(i_adc_reset),
        .O(\m_axis_tdata[31]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[0]),
        .Q(adc_data_original[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[10]),
        .Q(adc_data_original[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[11]),
        .Q(adc_data_original[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[12]),
        .Q(adc_data_original[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[13]),
        .Q(adc_data_original[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[14]),
        .Q(\^m_axis_tdata [14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[15]),
        .Q(\^m_axis_tdata [15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[16]),
        .Q(\^m_axis_tdata [16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[17]),
        .Q(\^m_axis_tdata [17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[18]),
        .Q(\^m_axis_tdata [18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[19]),
        .Q(\^m_axis_tdata [19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[1]),
        .Q(adc_data_original[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[20]),
        .Q(\^m_axis_tdata [20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[21]),
        .Q(\^m_axis_tdata [21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[22]),
        .Q(\^m_axis_tdata [22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[23]),
        .Q(\^m_axis_tdata [23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[24] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[24]),
        .Q(\^m_axis_tdata [24]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[25] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[25]),
        .Q(\^m_axis_tdata [25]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[26] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[26]),
        .Q(\^m_axis_tdata [26]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[27] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[27]),
        .Q(\^m_axis_tdata [27]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[28] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[28]),
        .Q(\^m_axis_tdata [28]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[29] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[29]),
        .Q(\^m_axis_tdata [29]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[2]),
        .Q(adc_data_original[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[30] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[30]),
        .Q(\^m_axis_tdata [30]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[31] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[31]),
        .Q(\^m_axis_tdata [31]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[3]),
        .Q(adc_data_original[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[4]),
        .Q(adc_data_original[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[5]),
        .Q(adc_data_original[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[6]),
        .Q(adc_data_original[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[7]),
        .Q(adc_data_original[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[8]),
        .Q(adc_data_original[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(m_axis_clk),
        .CE(\m_axis_tdata[31]_i_1_n_0 ),
        .D(win_data_dout[9]),
        .Q(adc_data_original[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h808080FF80808000)) 
    m_axis_tlast_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(m_axis_tvalid),
        .I2(m_axis_tready),
        .I3(\FSM_onehot_state[4]_i_1_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(m_axis_tlast),
        .O(m_axis_tlast_i_1_n_0));
  FDCE m_axis_tlast_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tlast));
  LUT3 #(
    .INIT(8'hBA)) 
    m_axis_tvalid_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(m_axis_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  FDCE m_axis_tvalid_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid));
  FDCE \o_adc_vco_prog_freq_reg[0] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[0]),
        .Q(o_adc_vco_prog_freq[0]));
  FDCE \o_adc_vco_prog_freq_reg[10] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[10]),
        .Q(o_adc_vco_prog_freq[10]));
  FDCE \o_adc_vco_prog_freq_reg[11] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[11]),
        .Q(o_adc_vco_prog_freq[11]));
  FDCE \o_adc_vco_prog_freq_reg[12] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[12]),
        .Q(o_adc_vco_prog_freq[12]));
  FDCE \o_adc_vco_prog_freq_reg[1] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[1]),
        .Q(o_adc_vco_prog_freq[1]));
  FDCE \o_adc_vco_prog_freq_reg[2] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[2]),
        .Q(o_adc_vco_prog_freq[2]));
  FDCE \o_adc_vco_prog_freq_reg[3] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[3]),
        .Q(o_adc_vco_prog_freq[3]));
  FDCE \o_adc_vco_prog_freq_reg[4] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[4]),
        .Q(o_adc_vco_prog_freq[4]));
  FDCE \o_adc_vco_prog_freq_reg[5] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[5]),
        .Q(o_adc_vco_prog_freq[5]));
  FDCE \o_adc_vco_prog_freq_reg[6] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[6]),
        .Q(o_adc_vco_prog_freq[6]));
  FDCE \o_adc_vco_prog_freq_reg[7] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[7]),
        .Q(o_adc_vco_prog_freq[7]));
  FDCE \o_adc_vco_prog_freq_reg[8] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[8]),
        .Q(o_adc_vco_prog_freq[8]));
  FDCE \o_adc_vco_prog_freq_reg[9] 
       (.C(m_axis_clk),
        .CE(1'b1),
        .CLR(i_adc_reset),
        .D(i_adc_vco_prog_freq[9]),
        .Q(o_adc_vco_prog_freq[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    o_adc_vco_req_next_freq_i_1
       (.I0(i_adc_vco_prog_done),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state[4]_i_1_n_0 ),
        .O(o_adc_vco_req_next_freq_i_1_n_0));
  FDPE o_adc_vco_req_next_freq_reg
       (.C(m_axis_clk),
        .CE(1'b1),
        .D(o_adc_vco_req_next_freq_i_1_n_0),
        .PRE(i_adc_reset),
        .Q(o_adc_vco_req_next_freq));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\wait_cnt_reg_n_0_[0] ),
        .O(wait_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h48)) 
    \wait_cnt[1]_i_1 
       (.I0(\wait_cnt_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\wait_cnt_reg_n_0_[1] ),
        .O(wait_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \wait_cnt[2]_i_1 
       (.I0(\wait_cnt_reg_n_0_[0] ),
        .I1(\wait_cnt_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\wait_cnt_reg_n_0_[2] ),
        .O(wait_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7F008000)) 
    \wait_cnt[3]_i_1 
       (.I0(\wait_cnt_reg_n_0_[1] ),
        .I1(\wait_cnt_reg_n_0_[0] ),
        .I2(\wait_cnt_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_cnt_reg_n_0_[3] ),
        .O(wait_cnt[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \wait_cnt[4]_i_1 
       (.I0(\wait_cnt_reg_n_0_[2] ),
        .I1(\wait_cnt_reg_n_0_[0] ),
        .I2(\wait_cnt_reg_n_0_[1] ),
        .I3(\wait_cnt_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\wait_cnt_reg_n_0_[4] ),
        .O(wait_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \wait_cnt[5]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\wait_cnt_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\wait_cnt_reg_n_0_[5] ),
        .O(wait_cnt[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0008AAAA)) 
    \wait_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\wait_cnt_reg_n_0_[4] ),
        .I3(\wait_cnt_reg_n_0_[5] ),
        .I4(\wait_cnt_reg_n_0_[6] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\wait_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDF002000)) 
    \wait_cnt[6]_i_2 
       (.I0(\wait_cnt_reg_n_0_[4] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\wait_cnt_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\wait_cnt_reg_n_0_[6] ),
        .O(wait_cnt[6]));
  FDCE \wait_cnt_reg[0] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[0]),
        .Q(\wait_cnt_reg_n_0_[0] ));
  FDCE \wait_cnt_reg[1] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[1]),
        .Q(\wait_cnt_reg_n_0_[1] ));
  FDCE \wait_cnt_reg[2] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[2]),
        .Q(\wait_cnt_reg_n_0_[2] ));
  FDCE \wait_cnt_reg[3] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[3]),
        .Q(\wait_cnt_reg_n_0_[3] ));
  FDCE \wait_cnt_reg[4] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[4]),
        .Q(\wait_cnt_reg_n_0_[4] ));
  FDCE \wait_cnt_reg[5] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[5]),
        .Q(\wait_cnt_reg_n_0_[5] ));
  FDCE \wait_cnt_reg[6] 
       (.C(m_axis_clk),
        .CE(\wait_cnt[6]_i_1_n_0 ),
        .CLR(i_adc_reset),
        .D(wait_cnt[6]),
        .Q(\wait_cnt_reg_n_0_[6] ));
  LUT1 #(
    .INIT(2'h1)) 
    \win_addr[0]_i_1 
       (.I0(win_addr_reg[0]),
        .O(\win_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \win_addr[1]_i_1 
       (.I0(win_addr_reg[0]),
        .I1(win_addr_reg[1]),
        .O(\win_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \win_addr[2]_i_1 
       (.I0(win_addr_reg[1]),
        .I1(win_addr_reg[0]),
        .I2(win_addr_reg[2]),
        .O(\win_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \win_addr[3]_i_1 
       (.I0(win_addr_reg[2]),
        .I1(win_addr_reg[0]),
        .I2(win_addr_reg[1]),
        .I3(win_addr_reg[3]),
        .O(\win_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \win_addr[4]_i_1 
       (.I0(win_addr_reg[3]),
        .I1(win_addr_reg[1]),
        .I2(win_addr_reg[0]),
        .I3(win_addr_reg[2]),
        .I4(win_addr_reg[4]),
        .O(\win_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \win_addr[5]_i_1 
       (.I0(win_addr_reg[4]),
        .I1(win_addr_reg[2]),
        .I2(win_addr_reg[0]),
        .I3(win_addr_reg[1]),
        .I4(win_addr_reg[3]),
        .I5(win_addr_reg[5]),
        .O(\win_addr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \win_addr[6]_i_1 
       (.I0(buffer_done_i_2_n_0),
        .I1(win_addr_reg[6]),
        .O(\win_addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \win_addr[7]_i_1 
       (.I0(win_addr_reg[6]),
        .I1(buffer_done_i_2_n_0),
        .I2(win_addr_reg[7]),
        .O(\win_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \win_addr[8]_i_1 
       (.I0(win_addr_reg[7]),
        .I1(buffer_done_i_2_n_0),
        .I2(win_addr_reg[6]),
        .I3(win_addr_reg[8]),
        .O(\win_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \win_addr[9]_i_1 
       (.I0(win_data_we),
        .I1(i_adc_reset),
        .I2(\win_addr[9]_i_3_n_0 ),
        .I3(win_addr_reg[9]),
        .O(\win_addr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \win_addr[9]_i_2 
       (.I0(win_addr_reg[8]),
        .I1(win_addr_reg[6]),
        .I2(buffer_done_i_2_n_0),
        .I3(win_addr_reg[7]),
        .I4(win_addr_reg[9]),
        .O(\win_addr[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \win_addr[9]_i_3 
       (.I0(win_addr_reg[7]),
        .I1(buffer_done_i_2_n_0),
        .I2(win_addr_reg[6]),
        .I3(win_addr_reg[8]),
        .O(\win_addr[9]_i_3_n_0 ));
  FDRE \win_addr_reg[0] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[0]_i_1_n_0 ),
        .Q(win_addr_reg[0]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[1] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[1]_i_1_n_0 ),
        .Q(win_addr_reg[1]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[2] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[2]_i_1_n_0 ),
        .Q(win_addr_reg[2]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[3] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[3]_i_1_n_0 ),
        .Q(win_addr_reg[3]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[4] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[4]_i_1_n_0 ),
        .Q(win_addr_reg[4]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[5] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[5]_i_1_n_0 ),
        .Q(win_addr_reg[5]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[6] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[6]_i_1_n_0 ),
        .Q(win_addr_reg[6]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[7] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[7]_i_1_n_0 ),
        .Q(win_addr_reg[7]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[8] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[8]_i_1_n_0 ),
        .Q(win_addr_reg[8]),
        .R(\win_addr[9]_i_1_n_0 ));
  FDRE \win_addr_reg[9] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(\win_addr[9]_i_2_n_0 ),
        .Q(win_addr_reg[9]),
        .R(\win_addr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[0]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[0]),
        .O(win_data_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[1]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[1]),
        .O(win_data_addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[2]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[2]),
        .O(win_data_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[3]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[3]),
        .O(win_data_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[4]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[4]),
        .O(win_data_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[5]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[5]),
        .O(win_data_addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[6]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[6]),
        .O(win_data_addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[7]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[7]),
        .O(win_data_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[8]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[8]),
        .O(win_data_addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \win_data_addr[9]_i_1 
       (.I0(win_data_we),
        .I1(win_addr_reg[9]),
        .O(win_data_addr[9]));
  FDRE \win_data_addr_reg[0] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[0]),
        .Q(\win_data_addr_reg_n_0_[0] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[1] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[1]),
        .Q(\win_data_addr_reg_n_0_[1] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[2] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[2]),
        .Q(\win_data_addr_reg_n_0_[2] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[3] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[3]),
        .Q(\win_data_addr_reg_n_0_[3] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[4] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[4]),
        .Q(\win_data_addr_reg_n_0_[4] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[5] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[5]),
        .Q(\win_data_addr_reg_n_0_[5] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[6] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[6]),
        .Q(\win_data_addr_reg_n_0_[6] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[7] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[7]),
        .Q(\win_data_addr_reg_n_0_[7] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[8] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[8]),
        .Q(\win_data_addr_reg_n_0_[8] ),
        .R(i_adc_reset));
  FDRE \win_data_addr_reg[9] 
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_addr[9]),
        .Q(\win_data_addr_reg_n_0_[9] ),
        .R(i_adc_reset));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    win_data_din0
       (.A({win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out[15],win_coeff_out}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_win_data_din0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,i_adc_data}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_win_data_din0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_adc_data}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_win_data_din0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_win_data_din0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(p_0_in),
        .CLK(i_adc_dco),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_win_data_din0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,win_data_din0_i_3_n_0,win_data_din0_i_3_n_0,1'b0,window_enable,1'b0,window_enable}),
        .OVERFLOW(NLW_win_data_din0_OVERFLOW_UNCONNECTED),
        .P({NLW_win_data_din0_P_UNCONNECTED[47:32],win_data_din0_n_74,win_data_din0_n_75,win_data_din0_n_76,win_data_din0_n_77,win_data_din0_n_78,win_data_din0_n_79,win_data_din0_n_80,win_data_din0_n_81,win_data_din0_n_82,win_data_din0_n_83,win_data_din0_n_84,win_data_din0_n_85,win_data_din0_n_86,win_data_din0_n_87,win_data_din0_n_88,win_data_din0_n_89,win_data_din0_n_90,win_data_din0_n_91,win_data_din0_n_92,win_data_din0_n_93,win_data_din0_n_94,win_data_din0_n_95,win_data_din0_n_96,win_data_din0_n_97,win_data_din0_n_98,win_data_din0_n_99,win_data_din0_n_100,win_data_din0_n_101,win_data_din0_n_102,win_data_din0_n_103,win_data_din0_n_104,win_data_din0_n_105}),
        .PATTERNBDETECT(NLW_win_data_din0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_win_data_din0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_win_data_din0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(win_data_din0_i_2_n_0),
        .UNDERFLOW(NLW_win_data_din0_UNDERFLOW_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    win_data_din0_i_1
       (.I0(i_adc_reset),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h1)) 
    win_data_din0_i_2
       (.I0(win_data_we),
        .I1(i_adc_reset),
        .O(win_data_din0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    win_data_din0_i_3
       (.I0(window_enable),
        .O(win_data_din0_i_3_n_0));
  LUT3 #(
    .INIT(8'hAC)) 
    win_data_we_i_1
       (.I0(win_data_we_reg_n_0),
        .I1(win_data_we),
        .I2(i_adc_reset),
        .O(win_data_we_i_1_n_0));
  FDRE win_data_we_reg
       (.C(i_adc_dco),
        .CE(1'b1),
        .D(win_data_we_i_1_n_0),
        .Q(win_data_we_reg_n_0),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
  design_1_adc_interface_0_0_blk_mem_gen_0 window_coeff_bram
       (.addra(win_addr_reg),
        .clka(i_adc_dco),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(win_coeff_out),
        .ena(1'b1),
        .wea(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
  design_1_adc_interface_0_0_blk_mem_gen_1 windowed_data_bram
       (.addra({\win_data_addr_reg_n_0_[9] ,\win_data_addr_reg_n_0_[8] ,\win_data_addr_reg_n_0_[7] ,\win_data_addr_reg_n_0_[6] ,\win_data_addr_reg_n_0_[5] ,\win_data_addr_reg_n_0_[4] ,\win_data_addr_reg_n_0_[3] ,\win_data_addr_reg_n_0_[2] ,\win_data_addr_reg_n_0_[1] ,\win_data_addr_reg_n_0_[0] }),
        .addrb({\axi_rd_addr_reg_n_0_[9] ,\axi_rd_addr_reg_n_0_[8] ,\axi_rd_addr_reg_n_0_[7] ,\axi_rd_addr_reg_n_0_[6] ,\axi_rd_addr_reg_n_0_[5] ,\axi_rd_addr_reg_n_0_[4] ,\axi_rd_addr_reg_n_0_[3] ,\axi_rd_addr_reg_n_0_[2] ,\axi_rd_addr_reg_n_0_[1] ,\axi_rd_addr_reg_n_0_[0] }),
        .clka(i_adc_dco),
        .clkb(m_axis_clk),
        .dina({win_data_din0_n_74,win_data_din0_n_75,win_data_din0_n_76,win_data_din0_n_77,win_data_din0_n_78,win_data_din0_n_79,win_data_din0_n_80,win_data_din0_n_81,win_data_din0_n_82,win_data_din0_n_83,win_data_din0_n_84,win_data_din0_n_85,win_data_din0_n_86,win_data_din0_n_87,win_data_din0_n_88,win_data_din0_n_89,win_data_din0_n_90,win_data_din0_n_91,win_data_din0_n_92,win_data_din0_n_93,win_data_din0_n_94,win_data_din0_n_95,win_data_din0_n_96,win_data_din0_n_97,win_data_din0_n_98,win_data_din0_n_99,win_data_din0_n_100,win_data_din0_n_101,win_data_din0_n_102,win_data_din0_n_103,win_data_din0_n_104,win_data_din0_n_105}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_windowed_data_bram_douta_UNCONNECTED[31:0]),
        .doutb(win_data_dout),
        .ena(1'b1),
        .enb(1'b1),
        .wea(win_data_we_reg_n_0),
        .web(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_0" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
module design_1_adc_interface_0_0_blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_1" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
module design_1_adc_interface_0_0_blk_mem_gen_1
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
