-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Feb  6 12:14:33 2026
-- Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_vco_interface_0_0/design_1_vco_interface_0_0_stub.vhdl
-- Design      : design_1_vco_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_vco_interface_0_0 is
  Port ( 
    i_vco_clk : in STD_LOGIC;
    i_vco_start : in STD_LOGIC;
    reset : in STD_LOGIC;
    i_next_freq_req : in STD_LOGIC;
    o_vco_le : out STD_LOGIC;
    o_vco_clk : out STD_LOGIC;
    o_vco_data : out STD_LOGIC;
    o_vco_prog_done : out STD_LOGIC;
    o_vco_freq : out STD_LOGIC_VECTOR ( 12 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_vco_interface_0_0 : entity is "design_1_vco_interface_0_0,vco_interface,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_vco_interface_0_0 : entity is "design_1_vco_interface_0_0,vco_interface,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=vco_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,P_VCO_REG_COUNT=46,P_VCO_FREQ_COUNT_DOWN=61,P_VCO_FREQ_COUNT_UP=348,P_VCO_REG_WAIT_TIME=10,P_VCO_FREQ_WAIT_TIME=300000}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_vco_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_vco_interface_0_0 : entity is "module_ref";
end design_1_vco_interface_0_0;

architecture stub of design_1_vco_interface_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_vco_clk,i_vco_start,reset,i_next_freq_req,o_vco_le,o_vco_clk,o_vco_data,o_vco_prog_done,o_vco_freq[12:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_vco_clk : signal is "xilinx.com:signal:clock:1.0 i_vco_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_vco_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_vco_clk : signal is "XIL_INTERFACENAME i_vco_clk, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_vco_clk : signal is "xilinx.com:signal:clock:1.0 o_vco_clk CLK";
  attribute X_INTERFACE_MODE of o_vco_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of o_vco_clk : signal is "XIL_INTERFACENAME o_vco_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_vco_interface_0_0_o_vco_clk, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "vco_interface,Vivado 2024.2";
begin
end;
