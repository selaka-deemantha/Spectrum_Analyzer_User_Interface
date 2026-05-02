// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_1 (
  adc_data,
  Reset,
  adc_clk,
  fpga_clk,
  sw_1,
  sw_2,
  sdio,
  sclk,
  led_div,
  led_sclk,
  led_sdio,
  window_enable
);

  (* X_INTERFACE_IGNORE = "true" *)
  input [13:0]adc_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input Reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.ADC_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_CLK, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_adc_clk, INSERT_VIP 0" *)
  input adc_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FPGA_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.FPGA_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FPGA_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_fpga_clk, INSERT_VIP 0" *)
  input fpga_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  input sw_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input sw_2;
  (* X_INTERFACE_IGNORE = "true" *)
  output sdio;
  (* X_INTERFACE_IGNORE = "true" *)
  output sclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output led_div;
  (* X_INTERFACE_IGNORE = "true" *)
  output led_sclk;
  (* X_INTERFACE_IGNORE = "true" *)
  output led_sdio;
  (* X_INTERFACE_IGNORE = "true" *)
  input window_enable;

  // stub module has no contents

endmodule
