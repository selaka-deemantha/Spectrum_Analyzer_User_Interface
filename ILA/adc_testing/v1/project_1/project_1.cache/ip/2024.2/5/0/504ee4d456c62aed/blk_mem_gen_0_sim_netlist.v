// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 23:36:58 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.51805 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18944)
`pragma protect data_block
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
cV1NFOPctLzaCezQMhcIXIcnlBo=
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
