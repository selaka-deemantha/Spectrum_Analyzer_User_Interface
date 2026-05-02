// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Feb  6 12:12:53 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_adc_interface_0_0/design_1_adc_interface_0_0_stub.v
// Design      : design_1_adc_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_adc_interface_0_0,adc_interface,{}" *) (* CORE_GENERATION_INFO = "design_1_adc_interface_0_0,adc_interface,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=adc_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_WIDTH=14,FFT_POINTS=1024,WINDOW_WIDTH=16,P_VCO_STABLE=80,WIN_EN=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "adc_interface,Vivado 2024.2" *) 
module design_1_adc_interface_0_0(i_adc_reset, i_adc_dco, i_adc_data, 
  i_adc_vco_prog_done, i_adc_vco_prog_freq, o_adc_vco_req_next_freq, o_adc_vco_prog_freq, 
  m_axis_clk, m_axis_tvalid, m_axis_tdata, m_axis_tlast, m_axis_tready, adc_signed_debug, 
  win_coeff_out, adc_data_original, adc_data_original_valid, window_enable)
/* synthesis syn_black_box black_box_pad_pin="i_adc_reset,i_adc_data[13:0],i_adc_vco_prog_done,i_adc_vco_prog_freq[12:0],o_adc_vco_req_next_freq,o_adc_vco_prog_freq[12:0],m_axis_tvalid,m_axis_tdata[31:0],m_axis_tlast,m_axis_tready,adc_signed_debug[15:0],win_coeff_out[15:0],adc_data_original[13:0],adc_data_original_valid,window_enable" */
/* synthesis syn_force_seq_prim="i_adc_dco" */
/* synthesis syn_force_seq_prim="m_axis_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_adc_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_adc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_adc_reset;
  input i_adc_dco /* synthesis syn_isclock = 1 */;
  input [13:0]i_adc_data;
  input i_adc_vco_prog_done;
  input [12:0]i_adc_vco_prog_freq;
  output o_adc_vco_req_next_freq;
  output [12:0]o_adc_vco_prog_freq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input m_axis_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  output [15:0]adc_signed_debug;
  output [15:0]win_coeff_out;
  output [13:0]adc_data_original;
  output adc_data_original_valid;
  input window_enable;
endmodule
