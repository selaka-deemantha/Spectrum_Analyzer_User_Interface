-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Feb  6 12:12:53 2026
-- Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_adc_interface_0_0/design_1_adc_interface_0_0_stub.vhdl
-- Design      : design_1_adc_interface_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_adc_interface_0_0 is
  Port ( 
    i_adc_reset : in STD_LOGIC;
    i_adc_dco : in STD_LOGIC;
    i_adc_data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    i_adc_vco_prog_done : in STD_LOGIC;
    i_adc_vco_prog_freq : in STD_LOGIC_VECTOR ( 12 downto 0 );
    o_adc_vco_req_next_freq : out STD_LOGIC;
    o_adc_vco_prog_freq : out STD_LOGIC_VECTOR ( 12 downto 0 );
    m_axis_clk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    adc_signed_debug : out STD_LOGIC_VECTOR ( 15 downto 0 );
    win_coeff_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_data_original : out STD_LOGIC_VECTOR ( 13 downto 0 );
    adc_data_original_valid : out STD_LOGIC;
    window_enable : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_interface_0_0 : entity is "design_1_adc_interface_0_0,adc_interface,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1_adc_interface_0_0 : entity is "design_1_adc_interface_0_0,adc_interface,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=adc_interface,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,ADC_WIDTH=14,FFT_POINTS=1024,WINDOW_WIDTH=16,P_VCO_STABLE=80,WIN_EN=0}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_interface_0_0 : entity is "module_ref";
end design_1_adc_interface_0_0;

architecture stub of design_1_adc_interface_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "i_adc_reset,i_adc_dco,i_adc_data[13:0],i_adc_vco_prog_done,i_adc_vco_prog_freq[12:0],o_adc_vco_req_next_freq,o_adc_vco_prog_freq[12:0],m_axis_clk,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tlast,m_axis_tready,adc_signed_debug[15:0],win_coeff_out[15:0],adc_data_original[13:0],adc_data_original_valid,window_enable";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_adc_reset : signal is "xilinx.com:signal:reset:1.0 i_adc_reset RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_adc_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_adc_reset : signal is "XIL_INTERFACENAME i_adc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_clk : signal is "xilinx.com:signal:clock:1.0 m_axis_clk CLK";
  attribute X_INTERFACE_MODE of m_axis_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m_axis_clk : signal is "XIL_INTERFACENAME m_axis_clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "adc_interface,Vivado 2024.2";
begin
end;
