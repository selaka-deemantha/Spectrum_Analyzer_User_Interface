// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Mon Jan 26 23:36:59 2026
// Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
gfYsdA==
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
