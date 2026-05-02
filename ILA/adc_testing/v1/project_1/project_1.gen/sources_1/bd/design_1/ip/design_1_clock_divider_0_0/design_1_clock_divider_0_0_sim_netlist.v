// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Fri Feb  6 12:12:49 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_clock_divider_0_0/design_1_clock_divider_0_0_sim_netlist.v
// Design      : design_1_clock_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_clock_divider_0_0,clock_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clock_divider,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module design_1_clock_divider_0_0
   (i_adc_clk,
    i_reset,
    o_led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_adc_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_adc_clk, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_adc_clk, INSERT_VIP 0" *) input i_adc_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input i_reset;
  output o_led;

  wire i_adc_clk;
  wire i_reset;
  wire o_led;

  design_1_clock_divider_0_0_clock_divider inst
       (.i_adc_clk(i_adc_clk),
        .i_reset(i_reset),
        .o_led(o_led));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module design_1_clock_divider_0_0_clock_divider
   (o_led,
    i_adc_clk,
    i_reset);
  output o_led;
  input i_adc_clk;
  input i_reset;

  wire i_adc_clk;
  wire i_reset;
  wire o_led;
  wire \r_clk_div[0]_i_2_n_0 ;
  wire \r_clk_div_reg[0]_i_1_n_0 ;
  wire \r_clk_div_reg[0]_i_1_n_1 ;
  wire \r_clk_div_reg[0]_i_1_n_2 ;
  wire \r_clk_div_reg[0]_i_1_n_3 ;
  wire \r_clk_div_reg[0]_i_1_n_4 ;
  wire \r_clk_div_reg[0]_i_1_n_5 ;
  wire \r_clk_div_reg[0]_i_1_n_6 ;
  wire \r_clk_div_reg[0]_i_1_n_7 ;
  wire \r_clk_div_reg[12]_i_1_n_0 ;
  wire \r_clk_div_reg[12]_i_1_n_1 ;
  wire \r_clk_div_reg[12]_i_1_n_2 ;
  wire \r_clk_div_reg[12]_i_1_n_3 ;
  wire \r_clk_div_reg[12]_i_1_n_4 ;
  wire \r_clk_div_reg[12]_i_1_n_5 ;
  wire \r_clk_div_reg[12]_i_1_n_6 ;
  wire \r_clk_div_reg[12]_i_1_n_7 ;
  wire \r_clk_div_reg[16]_i_1_n_0 ;
  wire \r_clk_div_reg[16]_i_1_n_1 ;
  wire \r_clk_div_reg[16]_i_1_n_2 ;
  wire \r_clk_div_reg[16]_i_1_n_3 ;
  wire \r_clk_div_reg[16]_i_1_n_4 ;
  wire \r_clk_div_reg[16]_i_1_n_5 ;
  wire \r_clk_div_reg[16]_i_1_n_6 ;
  wire \r_clk_div_reg[16]_i_1_n_7 ;
  wire \r_clk_div_reg[20]_i_1_n_0 ;
  wire \r_clk_div_reg[20]_i_1_n_1 ;
  wire \r_clk_div_reg[20]_i_1_n_2 ;
  wire \r_clk_div_reg[20]_i_1_n_3 ;
  wire \r_clk_div_reg[20]_i_1_n_4 ;
  wire \r_clk_div_reg[20]_i_1_n_5 ;
  wire \r_clk_div_reg[20]_i_1_n_6 ;
  wire \r_clk_div_reg[20]_i_1_n_7 ;
  wire \r_clk_div_reg[25]_i_1_n_3 ;
  wire \r_clk_div_reg[25]_i_1_n_6 ;
  wire \r_clk_div_reg[25]_i_1_n_7 ;
  wire \r_clk_div_reg[4]_i_1_n_0 ;
  wire \r_clk_div_reg[4]_i_1_n_1 ;
  wire \r_clk_div_reg[4]_i_1_n_2 ;
  wire \r_clk_div_reg[4]_i_1_n_3 ;
  wire \r_clk_div_reg[4]_i_1_n_4 ;
  wire \r_clk_div_reg[4]_i_1_n_5 ;
  wire \r_clk_div_reg[4]_i_1_n_6 ;
  wire \r_clk_div_reg[4]_i_1_n_7 ;
  wire \r_clk_div_reg[8]_i_1_n_0 ;
  wire \r_clk_div_reg[8]_i_1_n_1 ;
  wire \r_clk_div_reg[8]_i_1_n_2 ;
  wire \r_clk_div_reg[8]_i_1_n_3 ;
  wire \r_clk_div_reg[8]_i_1_n_4 ;
  wire \r_clk_div_reg[8]_i_1_n_5 ;
  wire \r_clk_div_reg[8]_i_1_n_6 ;
  wire \r_clk_div_reg[8]_i_1_n_7 ;
  wire \r_clk_div_reg_n_0_[0] ;
  wire \r_clk_div_reg_n_0_[10] ;
  wire \r_clk_div_reg_n_0_[11] ;
  wire \r_clk_div_reg_n_0_[12] ;
  wire \r_clk_div_reg_n_0_[13] ;
  wire \r_clk_div_reg_n_0_[14] ;
  wire \r_clk_div_reg_n_0_[15] ;
  wire \r_clk_div_reg_n_0_[16] ;
  wire \r_clk_div_reg_n_0_[17] ;
  wire \r_clk_div_reg_n_0_[18] ;
  wire \r_clk_div_reg_n_0_[19] ;
  wire \r_clk_div_reg_n_0_[1] ;
  wire \r_clk_div_reg_n_0_[20] ;
  wire \r_clk_div_reg_n_0_[21] ;
  wire \r_clk_div_reg_n_0_[22] ;
  wire \r_clk_div_reg_n_0_[23] ;
  wire \r_clk_div_reg_n_0_[24] ;
  wire \r_clk_div_reg_n_0_[2] ;
  wire \r_clk_div_reg_n_0_[3] ;
  wire \r_clk_div_reg_n_0_[4] ;
  wire \r_clk_div_reg_n_0_[5] ;
  wire \r_clk_div_reg_n_0_[6] ;
  wire \r_clk_div_reg_n_0_[7] ;
  wire \r_clk_div_reg_n_0_[8] ;
  wire \r_clk_div_reg_n_0_[9] ;
  wire [3:1]\NLW_r_clk_div_reg[25]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_r_clk_div_reg[25]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \r_clk_div[0]_i_2 
       (.I0(\r_clk_div_reg_n_0_[0] ),
        .O(\r_clk_div[0]_i_2_n_0 ));
  FDCE \r_clk_div_reg[0] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[0]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[0] ));
  CARRY4 \r_clk_div_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_clk_div_reg[0]_i_1_n_0 ,\r_clk_div_reg[0]_i_1_n_1 ,\r_clk_div_reg[0]_i_1_n_2 ,\r_clk_div_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_clk_div_reg[0]_i_1_n_4 ,\r_clk_div_reg[0]_i_1_n_5 ,\r_clk_div_reg[0]_i_1_n_6 ,\r_clk_div_reg[0]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[3] ,\r_clk_div_reg_n_0_[2] ,\r_clk_div_reg_n_0_[1] ,\r_clk_div[0]_i_2_n_0 }));
  FDCE \r_clk_div_reg[10] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[8]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[10] ));
  FDCE \r_clk_div_reg[11] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[8]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[11] ));
  FDCE \r_clk_div_reg[12] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[12]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[12] ));
  CARRY4 \r_clk_div_reg[12]_i_1 
       (.CI(\r_clk_div_reg[8]_i_1_n_0 ),
        .CO({\r_clk_div_reg[12]_i_1_n_0 ,\r_clk_div_reg[12]_i_1_n_1 ,\r_clk_div_reg[12]_i_1_n_2 ,\r_clk_div_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_clk_div_reg[12]_i_1_n_4 ,\r_clk_div_reg[12]_i_1_n_5 ,\r_clk_div_reg[12]_i_1_n_6 ,\r_clk_div_reg[12]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[15] ,\r_clk_div_reg_n_0_[14] ,\r_clk_div_reg_n_0_[13] ,\r_clk_div_reg_n_0_[12] }));
  FDCE \r_clk_div_reg[13] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[12]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[13] ));
  FDCE \r_clk_div_reg[14] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[12]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[14] ));
  FDCE \r_clk_div_reg[15] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[12]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[15] ));
  FDCE \r_clk_div_reg[16] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[16]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[16] ));
  CARRY4 \r_clk_div_reg[16]_i_1 
       (.CI(\r_clk_div_reg[12]_i_1_n_0 ),
        .CO({\r_clk_div_reg[16]_i_1_n_0 ,\r_clk_div_reg[16]_i_1_n_1 ,\r_clk_div_reg[16]_i_1_n_2 ,\r_clk_div_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_clk_div_reg[16]_i_1_n_4 ,\r_clk_div_reg[16]_i_1_n_5 ,\r_clk_div_reg[16]_i_1_n_6 ,\r_clk_div_reg[16]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[19] ,\r_clk_div_reg_n_0_[18] ,\r_clk_div_reg_n_0_[17] ,\r_clk_div_reg_n_0_[16] }));
  FDCE \r_clk_div_reg[17] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[16]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[17] ));
  FDCE \r_clk_div_reg[18] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[16]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[18] ));
  FDCE \r_clk_div_reg[19] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[16]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[19] ));
  FDCE \r_clk_div_reg[1] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[0]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[1] ));
  FDCE \r_clk_div_reg[20] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[20]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[20] ));
  CARRY4 \r_clk_div_reg[20]_i_1 
       (.CI(\r_clk_div_reg[16]_i_1_n_0 ),
        .CO({\r_clk_div_reg[20]_i_1_n_0 ,\r_clk_div_reg[20]_i_1_n_1 ,\r_clk_div_reg[20]_i_1_n_2 ,\r_clk_div_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_clk_div_reg[20]_i_1_n_4 ,\r_clk_div_reg[20]_i_1_n_5 ,\r_clk_div_reg[20]_i_1_n_6 ,\r_clk_div_reg[20]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[23] ,\r_clk_div_reg_n_0_[22] ,\r_clk_div_reg_n_0_[21] ,\r_clk_div_reg_n_0_[20] }));
  FDCE \r_clk_div_reg[21] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[20]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[21] ));
  FDCE \r_clk_div_reg[22] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[20]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[22] ));
  FDCE \r_clk_div_reg[23] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[20]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[23] ));
  FDCE \r_clk_div_reg[24] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[25]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[24] ));
  FDCE \r_clk_div_reg[25] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[25]_i_1_n_6 ),
        .Q(o_led));
  CARRY4 \r_clk_div_reg[25]_i_1 
       (.CI(\r_clk_div_reg[20]_i_1_n_0 ),
        .CO({\NLW_r_clk_div_reg[25]_i_1_CO_UNCONNECTED [3:1],\r_clk_div_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_clk_div_reg[25]_i_1_O_UNCONNECTED [3:2],\r_clk_div_reg[25]_i_1_n_6 ,\r_clk_div_reg[25]_i_1_n_7 }),
        .S({1'b0,1'b0,o_led,\r_clk_div_reg_n_0_[24] }));
  FDCE \r_clk_div_reg[2] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[0]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[2] ));
  FDCE \r_clk_div_reg[3] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[0]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[3] ));
  FDCE \r_clk_div_reg[4] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[4]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[4] ));
  CARRY4 \r_clk_div_reg[4]_i_1 
       (.CI(\r_clk_div_reg[0]_i_1_n_0 ),
        .CO({\r_clk_div_reg[4]_i_1_n_0 ,\r_clk_div_reg[4]_i_1_n_1 ,\r_clk_div_reg[4]_i_1_n_2 ,\r_clk_div_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_clk_div_reg[4]_i_1_n_4 ,\r_clk_div_reg[4]_i_1_n_5 ,\r_clk_div_reg[4]_i_1_n_6 ,\r_clk_div_reg[4]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[7] ,\r_clk_div_reg_n_0_[6] ,\r_clk_div_reg_n_0_[5] ,\r_clk_div_reg_n_0_[4] }));
  FDCE \r_clk_div_reg[5] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[4]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[5] ));
  FDCE \r_clk_div_reg[6] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[4]_i_1_n_5 ),
        .Q(\r_clk_div_reg_n_0_[6] ));
  FDCE \r_clk_div_reg[7] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[4]_i_1_n_4 ),
        .Q(\r_clk_div_reg_n_0_[7] ));
  FDCE \r_clk_div_reg[8] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[8]_i_1_n_7 ),
        .Q(\r_clk_div_reg_n_0_[8] ));
  CARRY4 \r_clk_div_reg[8]_i_1 
       (.CI(\r_clk_div_reg[4]_i_1_n_0 ),
        .CO({\r_clk_div_reg[8]_i_1_n_0 ,\r_clk_div_reg[8]_i_1_n_1 ,\r_clk_div_reg[8]_i_1_n_2 ,\r_clk_div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_clk_div_reg[8]_i_1_n_4 ,\r_clk_div_reg[8]_i_1_n_5 ,\r_clk_div_reg[8]_i_1_n_6 ,\r_clk_div_reg[8]_i_1_n_7 }),
        .S({\r_clk_div_reg_n_0_[11] ,\r_clk_div_reg_n_0_[10] ,\r_clk_div_reg_n_0_[9] ,\r_clk_div_reg_n_0_[8] }));
  FDCE \r_clk_div_reg[9] 
       (.C(i_adc_clk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\r_clk_div_reg[8]_i_1_n_6 ),
        .Q(\r_clk_div_reg_n_0_[9] ));
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
