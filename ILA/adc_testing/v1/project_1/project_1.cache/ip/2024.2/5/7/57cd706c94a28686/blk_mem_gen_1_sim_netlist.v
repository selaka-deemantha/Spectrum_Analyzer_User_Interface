// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 23:37:51 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29072)
`pragma protect data_block
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
tLE=
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
