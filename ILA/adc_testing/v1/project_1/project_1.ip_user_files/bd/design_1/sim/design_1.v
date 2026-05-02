//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Feb  6 12:10:57 2026
//Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Reset,
    adc_clk,
    adc_data,
    fpga_clk,
    led_div,
    led_sclk,
    led_sdio,
    sclk,
    sdio,
    sw_1,
    sw_2,
    window_enable);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK, CLK_DOMAIN design_1_adc_clk, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input adc_clk;
  input [13:0]adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPGA_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPGA_CLK, CLK_DOMAIN design_1_fpga_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input fpga_clk;
  output led_div;
  output led_sclk;
  output led_sdio;
  output sclk;
  output sdio;
  input sw_1;
  input sw_2;
  input window_enable;

  wire Reset;
  wire adc_clk;
  wire [13:0]adc_data;
  wire [13:0]adc_interface_0_adc_data_original;
  wire adc_interface_0_adc_data_original_valid;
  wire [15:0]adc_interface_0_adc_signed_debug;
  wire [31:0]adc_interface_0_m_axis_tdata;
  wire adc_interface_0_m_axis_tlast;
  wire adc_interface_0_m_axis_tvalid;
  wire adc_interface_0_o_adc_vco_req_next_freq;
  wire [15:0]adc_interface_0_win_coeff_out;
  wire clk_wiz_0_clk_out1;
  wire fpga_clk;
  wire led_div;
  wire led_sclk;
  wire led_sdio;
  wire [12:0]vco_interface_0_o_vco_freq;
  wire vco_interface_0_o_vco_prog_done;
  wire window_enable;
  wire [63:0]xfft_0_m_axis_data_tdata;
  wire xfft_0_m_axis_data_tlast;
  wire xfft_0_m_axis_data_tvalid;
  wire xfft_0_s_axis_data_tready;
  wire [63:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [15:0]xlconstant_1_dout;
  wire [31:0]xlconstant_2_dout;

  assign led_sclk = sw_1;
  assign led_sdio = sw_2;
  assign sclk = led_sclk;
  assign sdio = led_sdio;
  design_1_adc_interface_0_0 adc_interface_0
       (.adc_data_original(adc_interface_0_adc_data_original),
        .adc_data_original_valid(adc_interface_0_adc_data_original_valid),
        .adc_signed_debug(adc_interface_0_adc_signed_debug),
        .i_adc_data(adc_data),
        .i_adc_dco(adc_clk),
        .i_adc_reset(Reset),
        .i_adc_vco_prog_done(vco_interface_0_o_vco_prog_done),
        .i_adc_vco_prog_freq(vco_interface_0_o_vco_freq),
        .m_axis_clk(clk_wiz_0_clk_out1),
        .m_axis_tdata(adc_interface_0_m_axis_tdata),
        .m_axis_tlast(adc_interface_0_m_axis_tlast),
        .m_axis_tready(xfft_0_s_axis_data_tready),
        .m_axis_tvalid(adc_interface_0_m_axis_tvalid),
        .o_adc_vco_req_next_freq(adc_interface_0_o_adc_vco_req_next_freq),
        .win_coeff_out(adc_interface_0_win_coeff_out),
        .window_enable(window_enable));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(fpga_clk),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_clock_divider_0_0 clock_divider_0
       (.i_adc_clk(adc_clk),
        .i_reset(Reset),
        .o_led(led_div));
  design_1_ila_0_1 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(adc_interface_0_m_axis_tdata),
        .probe1(adc_interface_0_m_axis_tlast),
        .probe10(xfft_0_m_axis_data_tvalid),
        .probe2(adc_interface_0_m_axis_tvalid),
        .probe3(adc_interface_0_adc_signed_debug),
        .probe4(adc_interface_0_win_coeff_out),
        .probe5(adc_data),
        .probe6(adc_interface_0_adc_data_original),
        .probe7(adc_interface_0_adc_data_original_valid),
        .probe8(xfft_0_m_axis_data_tdata),
        .probe9(xfft_0_m_axis_data_tlast));
  design_1_vco_interface_0_0 vco_interface_0
       (.i_next_freq_req(adc_interface_0_o_adc_vco_req_next_freq),
        .i_vco_clk(clk_wiz_0_clk_out1),
        .i_vco_start(xlconstant_0_dout),
        .o_vco_freq(vco_interface_0_o_vco_freq),
        .o_vco_prog_done(vco_interface_0_o_vco_prog_done),
        .reset(Reset));
  design_1_xfft_0_0 xfft_0
       (.aclk(clk_wiz_0_clk_out1),
        .m_axis_data_tdata(xfft_0_m_axis_data_tdata),
        .m_axis_data_tlast(xfft_0_m_axis_data_tlast),
        .m_axis_data_tready(xlconstant_0_dout),
        .m_axis_data_tvalid(xfft_0_m_axis_data_tvalid),
        .s_axis_config_tdata(xlconstant_1_dout),
        .s_axis_config_tvalid(xlconstant_0_dout),
        .s_axis_data_tdata(xlconcat_0_dout),
        .s_axis_data_tlast(adc_interface_0_m_axis_tlast),
        .s_axis_data_tready(xfft_0_s_axis_data_tready),
        .s_axis_data_tvalid(adc_interface_0_m_axis_tvalid));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(adc_interface_0_m_axis_tdata),
        .In1(xlconstant_2_dout),
        .dout(xlconcat_0_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
