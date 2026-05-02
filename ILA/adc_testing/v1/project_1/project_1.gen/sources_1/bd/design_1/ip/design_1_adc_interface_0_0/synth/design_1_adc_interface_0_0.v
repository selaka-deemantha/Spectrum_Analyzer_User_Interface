// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:adc_interface:1.0
// IP Revision: 1

(* X_CORE_INFO = "adc_interface,Vivado 2024.2" *)
(* CHECK_LICENSE_TYPE = "design_1_adc_interface_0_0,adc_interface,{}" *)
(* CORE_GENERATION_INFO = "design_1_adc_interface_0_0,adc_interface,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=adc_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_WIDTH=14,FFT_POINTS=1024,WINDOW_WIDTH=16,P_VCO_STABLE=80,WIN_EN=0}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_adc_interface_0_0 (
  i_adc_reset,
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
  window_enable
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_adc_reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_adc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire i_adc_reset;
input wire i_adc_dco;
input wire [13 : 0] i_adc_data;
input wire i_adc_vco_prog_done;
input wire [12 : 0] i_adc_vco_prog_freq;
output wire o_adc_vco_req_next_freq;
output wire [12 : 0] o_adc_vco_prog_freq;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
input wire m_axis_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [31 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
output wire [15 : 0] adc_signed_debug;
output wire [15 : 0] win_coeff_out;
output wire [13 : 0] adc_data_original;
output wire adc_data_original_valid;
input wire window_enable;

  adc_interface #(
    .ADC_WIDTH(14),
    .FFT_POINTS(1024),
    .WINDOW_WIDTH(16),
    .P_VCO_STABLE(80),
    .WIN_EN(0)
  ) inst (
    .i_adc_reset(i_adc_reset),
    .i_adc_dco(i_adc_dco),
    .i_adc_data(i_adc_data),
    .i_adc_vco_prog_done(i_adc_vco_prog_done),
    .i_adc_vco_prog_freq(i_adc_vco_prog_freq),
    .o_adc_vco_req_next_freq(o_adc_vco_req_next_freq),
    .o_adc_vco_prog_freq(o_adc_vco_prog_freq),
    .m_axis_clk(m_axis_clk),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .adc_signed_debug(adc_signed_debug),
    .win_coeff_out(win_coeff_out),
    .adc_data_original(adc_data_original),
    .adc_data_original_valid(adc_data_original_valid),
    .window_enable(window_enable)
  );
endmodule
