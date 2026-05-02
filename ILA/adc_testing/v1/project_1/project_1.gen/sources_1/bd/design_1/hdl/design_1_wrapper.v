//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Fri Feb  6 12:10:57 2026
//Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input Reset;
  input adc_clk;
  input [13:0]adc_data;
  input fpga_clk;
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
  wire fpga_clk;
  wire led_div;
  wire led_sclk;
  wire led_sdio;
  wire sclk;
  wire sdio;
  wire sw_1;
  wire sw_2;
  wire window_enable;

  design_1 design_1_i
       (.Reset(Reset),
        .adc_clk(adc_clk),
        .adc_data(adc_data),
        .fpga_clk(fpga_clk),
        .led_div(led_div),
        .led_sclk(led_sclk),
        .led_sdio(led_sdio),
        .sclk(sclk),
        .sdio(sdio),
        .sw_1(sw_1),
        .sw_2(sw_2),
        .window_enable(window_enable));
endmodule
