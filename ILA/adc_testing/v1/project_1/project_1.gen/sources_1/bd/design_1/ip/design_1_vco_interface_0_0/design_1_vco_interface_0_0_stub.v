// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Feb  6 12:14:33 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_vco_interface_0_0/design_1_vco_interface_0_0_stub.v
// Design      : design_1_vco_interface_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_vco_interface_0_0,vco_interface,{}" *) (* CORE_GENERATION_INFO = "design_1_vco_interface_0_0,vco_interface,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=vco_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,P_VCO_REG_COUNT=46,P_VCO_FREQ_COUNT_DOWN=61,P_VCO_FREQ_COUNT_UP=348,P_VCO_REG_WAIT_TIME=10,P_VCO_FREQ_WAIT_TIME=300000}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "vco_interface,Vivado 2024.2" *) 
module design_1_vco_interface_0_0(i_vco_clk, i_vco_start, reset, i_next_freq_req, 
  o_vco_le, o_vco_clk, o_vco_data, o_vco_prog_done, o_vco_freq)
/* synthesis syn_black_box black_box_pad_pin="i_vco_start,reset,i_next_freq_req,o_vco_le,o_vco_clk,o_vco_data,o_vco_prog_done,o_vco_freq[12:0]" */
/* synthesis syn_force_seq_prim="i_vco_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_vco_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_vco_clk, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input i_vco_clk /* synthesis syn_isclock = 1 */;
  input i_vco_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input i_next_freq_req;
  output o_vco_le;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 o_vco_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_vco_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_vco_interface_0_0_o_vco_clk, INSERT_VIP 0" *) output o_vco_clk;
  output o_vco_data;
  output o_vco_prog_done;
  output [12:0]o_vco_freq;
endmodule
