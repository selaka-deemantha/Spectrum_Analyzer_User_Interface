// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sun Feb  1 15:23:57 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/selaka/Desktop/axi_lite_test/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_rgb2vga_0_0/design_1_rgb2vga_0_0_stub.v
// Design      : design_1_rgb2vga_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_rgb2vga_0_0,rgb2vga,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "rgb2vga,Vivado 2024.2" *) 
module design_1_rgb2vga_0_0(rgb_pData, rgb_pVDE, rgb_pHSync, rgb_pVSync, 
  PixelClk, vga_pRed, vga_pGreen, vga_pBlue, vga_pHSync, vga_pVSync)
/* synthesis syn_black_box black_box_pad_pin="rgb_pData[23:0],rgb_pVDE,rgb_pHSync,rgb_pVSync,vga_pRed[4:0],vga_pGreen[5:0],vga_pBlue[4:0],vga_pHSync,vga_pVSync" */
/* synthesis syn_force_seq_prim="PixelClk" */;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 vid_in DATA" *) (* x_interface_mode = "slave vid_in" *) input [23:0]rgb_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 vid_in ACTIVE_VIDEO" *) input rgb_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 vid_in HSYNC" *) input rgb_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 vid_in VSYNC" *) input rgb_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) (* x_interface_mode = "slave signal_clock" *) (* x_interface_parameter = "XIL_INTERFACENAME signal_clock, ASSOCIATED_BUSIF vid_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_axi_dynclk_0_0_PXL_CLK_O, INSERT_VIP 0" *) input PixelClk /* synthesis syn_isclock = 1 */;
  output [4:0]vga_pRed;
  output [5:0]vga_pGreen;
  output [4:0]vga_pBlue;
  output vga_pHSync;
  output vga_pVSync;
endmodule
