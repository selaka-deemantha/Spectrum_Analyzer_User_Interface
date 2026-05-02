// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 23:37:52 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29040)
`pragma protect data_block
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
ztLrbyrbu4DI0kHrAEZ0AttqDvdg4S4YfjPL
`pragma protect end_protected
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
