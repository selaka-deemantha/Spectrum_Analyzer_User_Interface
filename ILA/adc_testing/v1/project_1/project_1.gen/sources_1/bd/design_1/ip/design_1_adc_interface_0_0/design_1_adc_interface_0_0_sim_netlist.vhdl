-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Feb  6 12:12:53 2026
-- Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_adc_interface_0_0/design_1_adc_interface_0_0_sim_netlist.vhdl
-- Design      : design_1_adc_interface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_interface_0_0_adc_interface is
  port (
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
  attribute ADC_WIDTH : integer;
  attribute ADC_WIDTH of design_1_adc_interface_0_0_adc_interface : entity is 14;
  attribute BUFFERING : string;
  attribute BUFFERING of design_1_adc_interface_0_0_adc_interface : entity is "3'b010";
  attribute FFT_POINTS : integer;
  attribute FFT_POINTS of design_1_adc_interface_0_0_adc_interface : entity is 1024;
  attribute IDLE : string;
  attribute IDLE of design_1_adc_interface_0_0_adc_interface : entity is "3'b000";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_adc_interface_0_0_adc_interface : entity is "adc_interface";
  attribute P_VCO_STABLE : integer;
  attribute P_VCO_STABLE of design_1_adc_interface_0_0_adc_interface : entity is 80;
  attribute REQ_PROG : string;
  attribute REQ_PROG of design_1_adc_interface_0_0_adc_interface : entity is "3'b100";
  attribute SAMPLING : string;
  attribute SAMPLING of design_1_adc_interface_0_0_adc_interface : entity is "3'b011";
  attribute WAITING : string;
  attribute WAITING of design_1_adc_interface_0_0_adc_interface : entity is "3'b001";
  attribute WINDOW_WIDTH : integer;
  attribute WINDOW_WIDTH of design_1_adc_interface_0_0_adc_interface : entity is 16;
  attribute WIN_EN : integer;
  attribute WIN_EN of design_1_adc_interface_0_0_adc_interface : entity is 0;
end design_1_adc_interface_0_0_adc_interface;

architecture STRUCTURE of design_1_adc_interface_0_0_adc_interface is
  component design_1_adc_interface_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component design_1_adc_interface_0_0_blk_mem_gen_0;
  component design_1_adc_interface_0_0_blk_mem_gen_1 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_adc_interface_0_0_blk_mem_gen_1;
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \^adc_data_original\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^adc_data_original_valid\ : STD_LOGIC;
  signal adc_data_original_valid_i_1_n_0 : STD_LOGIC;
  signal \axi_rd_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rd_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_rd_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal buffer_done : STD_LOGIC;
  signal buffer_done_i_2_n_0 : STD_LOGIC;
  signal buffer_done_reg_n_0 : STD_LOGIC;
  signal buffer_done_sync0 : STD_LOGIC;
  signal buffer_done_sync1 : STD_LOGIC;
  signal \^i_adc_data\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 14 );
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal o_adc_vco_req_next_freq_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal wait_cnt : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \wait_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \win_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \win_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \win_addr[9]_i_3_n_0\ : STD_LOGIC;
  signal win_addr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^win_coeff_out\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal win_data_addr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \win_data_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \win_data_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal win_data_din0_i_2_n_0 : STD_LOGIC;
  signal win_data_din0_i_3_n_0 : STD_LOGIC;
  signal win_data_din0_n_100 : STD_LOGIC;
  signal win_data_din0_n_101 : STD_LOGIC;
  signal win_data_din0_n_102 : STD_LOGIC;
  signal win_data_din0_n_103 : STD_LOGIC;
  signal win_data_din0_n_104 : STD_LOGIC;
  signal win_data_din0_n_105 : STD_LOGIC;
  signal win_data_din0_n_74 : STD_LOGIC;
  signal win_data_din0_n_75 : STD_LOGIC;
  signal win_data_din0_n_76 : STD_LOGIC;
  signal win_data_din0_n_77 : STD_LOGIC;
  signal win_data_din0_n_78 : STD_LOGIC;
  signal win_data_din0_n_79 : STD_LOGIC;
  signal win_data_din0_n_80 : STD_LOGIC;
  signal win_data_din0_n_81 : STD_LOGIC;
  signal win_data_din0_n_82 : STD_LOGIC;
  signal win_data_din0_n_83 : STD_LOGIC;
  signal win_data_din0_n_84 : STD_LOGIC;
  signal win_data_din0_n_85 : STD_LOGIC;
  signal win_data_din0_n_86 : STD_LOGIC;
  signal win_data_din0_n_87 : STD_LOGIC;
  signal win_data_din0_n_88 : STD_LOGIC;
  signal win_data_din0_n_89 : STD_LOGIC;
  signal win_data_din0_n_90 : STD_LOGIC;
  signal win_data_din0_n_91 : STD_LOGIC;
  signal win_data_din0_n_92 : STD_LOGIC;
  signal win_data_din0_n_93 : STD_LOGIC;
  signal win_data_din0_n_94 : STD_LOGIC;
  signal win_data_din0_n_95 : STD_LOGIC;
  signal win_data_din0_n_96 : STD_LOGIC;
  signal win_data_din0_n_97 : STD_LOGIC;
  signal win_data_din0_n_98 : STD_LOGIC;
  signal win_data_din0_n_99 : STD_LOGIC;
  signal win_data_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal win_data_we : STD_LOGIC;
  signal win_data_we_i_1_n_0 : STD_LOGIC;
  signal win_data_we_reg_n_0 : STD_LOGIC;
  signal NLW_win_data_din0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_win_data_din0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_win_data_din0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_win_data_din0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_win_data_din0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 32 );
  signal NLW_win_data_din0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_windowed_data_bram_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "IDLE:00001,WAITING:00010,BUFFERING:00100,SAMPLING:01000,REQ_PROG:10000";
  attribute SOFT_HLUTNM of \axi_rd_addr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rd_addr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rd_addr[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rd_addr[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rd_addr[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of o_adc_vco_req_next_freq_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wait_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wait_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_cnt[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wait_cnt[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \win_addr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \win_addr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \win_addr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \win_addr[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \win_addr[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \win_addr[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \win_addr[9]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \win_addr[9]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \win_data_addr[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \win_data_addr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \win_data_addr[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \win_data_addr[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \win_data_addr[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \win_data_addr[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \win_data_addr[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \win_data_addr[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \win_data_addr[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \win_data_addr[9]_i_1\ : label is "soft_lutpair12";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of win_data_din0 : label is "{SYNTH-12 {cell *THIS*}}";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of window_coeff_bram : label is "blk_mem_gen_0,blk_mem_gen_v8_4_9,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of window_coeff_bram : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of window_coeff_bram : label is "blk_mem_gen_v8_4_9,Vivado 2024.2";
  attribute CHECK_LICENSE_TYPE of windowed_data_bram : label is "blk_mem_gen_1,blk_mem_gen_v8_4_9,{}";
  attribute downgradeipidentifiedwarnings of windowed_data_bram : label is "yes";
  attribute x_core_info of windowed_data_bram : label is "blk_mem_gen_v8_4_9,Vivado 2024.2";
begin
  \^i_adc_data\(13 downto 0) <= i_adc_data(13 downto 0);
  adc_data_original(13 downto 0) <= \^adc_data_original\(13 downto 0);
  adc_data_original_valid <= \^adc_data_original_valid\;
  adc_signed_debug(15) <= \<const0>\;
  adc_signed_debug(14) <= \<const0>\;
  adc_signed_debug(13 downto 0) <= \^i_adc_data\(13 downto 0);
  m_axis_tdata(31 downto 14) <= \^m_axis_tdata\(31 downto 14);
  m_axis_tdata(13 downto 0) <= \^adc_data_original\(13 downto 0);
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
  win_coeff_out(15 downto 0) <= \^win_coeff_out\(15 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => i_adc_vco_prog_done,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => i_adc_vco_prog_done,
      I2 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57550000"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[6]\,
      I1 => \wait_cnt_reg_n_0_[5]\,
      I2 => \wait_cnt_reg_n_0_[4]\,
      I3 => \FSM_onehot_state[2]_i_2_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFF0F000F00"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[4]\,
      I1 => \wait_cnt_reg_n_0_[5]\,
      I2 => buffer_done_sync1,
      I3 => win_data_we,
      I4 => \FSM_onehot_state[2]_i_2_n_0\,
      I5 => \FSM_onehot_state[2]_i_3_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[2]\,
      I1 => \wait_cnt_reg_n_0_[0]\,
      I2 => \wait_cnt_reg_n_0_[1]\,
      I3 => \wait_cnt_reg_n_0_[3]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[6]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => win_data_we,
      I1 => buffer_done_sync1,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state[3]_i_2_n_0\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFBF"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[0]\,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state[4]_i_2_n_0\,
      I2 => \FSM_onehot_state[4]_i_3_n_0\,
      I3 => \^m_axis_tvalid\,
      I4 => m_axis_tready,
      I5 => \axi_rd_addr_reg_n_0_[0]\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[1]\,
      I1 => \axi_rd_addr_reg_n_0_[2]\,
      I2 => \axi_rd_addr_reg_n_0_[3]\,
      I3 => \axi_rd_addr_reg_n_0_[5]\,
      I4 => \axi_rd_addr_reg_n_0_[4]\,
      O => \FSM_onehot_state[4]_i_2_n_0\
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[7]\,
      I1 => \axi_rd_addr_reg_n_0_[6]\,
      I2 => \axi_rd_addr_reg_n_0_[9]\,
      I3 => \axi_rd_addr_reg_n_0_[8]\,
      O => \FSM_onehot_state[4]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axis_clk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => i_adc_reset,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => win_data_we
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
adc_data_original_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => i_adc_reset,
      I3 => \^adc_data_original_valid\,
      O => adc_data_original_valid_i_1_n_0
    );
adc_data_original_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => '1',
      D => adc_data_original_valid_i_1_n_0,
      Q => \^adc_data_original_valid\,
      R => '0'
    );
\axi_rd_addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[7]\,
      I1 => \axi_rd_addr_reg_n_0_[6]\,
      I2 => \axi_rd_addr_reg_n_0_[9]\,
      I3 => \axi_rd_addr_reg_n_0_[8]\,
      I4 => \FSM_onehot_state[4]_i_2_n_0\,
      I5 => \axi_rd_addr_reg_n_0_[0]\,
      O => \axi_rd_addr[0]_i_1_n_0\
    );
\axi_rd_addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFBF00"
    )
        port map (
      I0 => \axi_rd_addr[3]_i_2_n_0\,
      I1 => \axi_rd_addr_reg_n_0_[3]\,
      I2 => \axi_rd_addr_reg_n_0_[2]\,
      I3 => \axi_rd_addr_reg_n_0_[1]\,
      I4 => \axi_rd_addr_reg_n_0_[0]\,
      O => \axi_rd_addr[1]_i_1_n_0\
    );
\axi_rd_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C34CCCC"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[3]\,
      I1 => \axi_rd_addr_reg_n_0_[2]\,
      I2 => \axi_rd_addr_reg_n_0_[0]\,
      I3 => \axi_rd_addr[3]_i_2_n_0\,
      I4 => \axi_rd_addr_reg_n_0_[1]\,
      O => \axi_rd_addr[2]_i_1_n_0\
    );
\axi_rd_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6C64CCCC"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[2]\,
      I1 => \axi_rd_addr_reg_n_0_[3]\,
      I2 => \axi_rd_addr_reg_n_0_[0]\,
      I3 => \axi_rd_addr[3]_i_2_n_0\,
      I4 => \axi_rd_addr_reg_n_0_[1]\,
      O => \axi_rd_addr[3]_i_1_n_0\
    );
\axi_rd_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[8]\,
      I1 => \axi_rd_addr_reg_n_0_[9]\,
      I2 => \axi_rd_addr_reg_n_0_[6]\,
      I3 => \axi_rd_addr_reg_n_0_[7]\,
      I4 => \axi_rd_addr_reg_n_0_[5]\,
      I5 => \axi_rd_addr_reg_n_0_[4]\,
      O => \axi_rd_addr[3]_i_2_n_0\
    );
\axi_rd_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC3C34"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[5]\,
      I1 => \axi_rd_addr_reg_n_0_[4]\,
      I2 => \axi_rd_addr_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => \axi_rd_addr[5]_i_2_n_0\,
      O => \axi_rd_addr[4]_i_1_n_0\
    );
\axi_rd_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC6C64"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[4]\,
      I1 => \axi_rd_addr_reg_n_0_[5]\,
      I2 => \axi_rd_addr_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[4]_i_3_n_0\,
      I4 => \axi_rd_addr[5]_i_2_n_0\,
      O => \axi_rd_addr[5]_i_1_n_0\
    );
\axi_rd_addr[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[3]\,
      I1 => \axi_rd_addr_reg_n_0_[2]\,
      I2 => \axi_rd_addr_reg_n_0_[1]\,
      O => \axi_rd_addr[5]_i_2_n_0\
    );
\axi_rd_addr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F00FF0000"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[9]\,
      I1 => \axi_rd_addr_reg_n_0_[8]\,
      I2 => \axi_rd_addr_reg_n_0_[7]\,
      I3 => \FSM_onehot_state[4]_i_2_n_0\,
      I4 => \axi_rd_addr_reg_n_0_[0]\,
      I5 => \axi_rd_addr_reg_n_0_[6]\,
      O => \axi_rd_addr[6]_i_1_n_0\
    );
\axi_rd_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFFFFF55000000"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_2_n_0\,
      I1 => \axi_rd_addr_reg_n_0_[9]\,
      I2 => \axi_rd_addr_reg_n_0_[8]\,
      I3 => \axi_rd_addr_reg_n_0_[0]\,
      I4 => \axi_rd_addr_reg_n_0_[6]\,
      I5 => \axi_rd_addr_reg_n_0_[7]\,
      O => \axi_rd_addr[7]_i_1_n_0\
    );
\axi_rd_addr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F01CF0F0F0F0F0F0"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[9]\,
      I1 => \axi_rd_addr_reg_n_0_[0]\,
      I2 => \axi_rd_addr_reg_n_0_[8]\,
      I3 => \FSM_onehot_state[4]_i_2_n_0\,
      I4 => \axi_rd_addr_reg_n_0_[7]\,
      I5 => \axi_rd_addr_reg_n_0_[6]\,
      O => \axi_rd_addr[8]_i_1_n_0\
    );
\axi_rd_addr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^m_axis_tvalid\,
      I2 => m_axis_tready,
      O => \axi_rd_addr[9]_i_1_n_0\
    );
\axi_rd_addr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF7FF08000000"
    )
        port map (
      I0 => \axi_rd_addr_reg_n_0_[6]\,
      I1 => \axi_rd_addr_reg_n_0_[7]\,
      I2 => \FSM_onehot_state[4]_i_2_n_0\,
      I3 => \axi_rd_addr_reg_n_0_[8]\,
      I4 => \axi_rd_addr_reg_n_0_[0]\,
      I5 => \axi_rd_addr_reg_n_0_[9]\,
      O => \axi_rd_addr[9]_i_2_n_0\
    );
\axi_rd_addr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[0]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[0]\
    );
\axi_rd_addr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[1]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[1]\
    );
\axi_rd_addr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[2]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[2]\
    );
\axi_rd_addr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[3]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[3]\
    );
\axi_rd_addr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[4]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[4]\
    );
\axi_rd_addr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[5]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[5]\
    );
\axi_rd_addr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[6]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[6]\
    );
\axi_rd_addr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[7]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[7]\
    );
\axi_rd_addr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[8]_i_1_n_0\,
      Q => \axi_rd_addr_reg_n_0_[8]\
    );
\axi_rd_addr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \axi_rd_addr[9]_i_1_n_0\,
      CLR => i_adc_reset,
      D => \axi_rd_addr[9]_i_2_n_0\,
      Q => \axi_rd_addr_reg_n_0_[9]\
    );
buffer_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => win_addr_reg(9),
      I1 => win_data_we,
      I2 => win_addr_reg(8),
      I3 => win_addr_reg(6),
      I4 => buffer_done_i_2_n_0,
      I5 => win_addr_reg(7),
      O => buffer_done
    );
buffer_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => win_addr_reg(4),
      I1 => win_addr_reg(2),
      I2 => win_addr_reg(0),
      I3 => win_addr_reg(1),
      I4 => win_addr_reg(3),
      I5 => win_addr_reg(5),
      O => buffer_done_i_2_n_0
    );
buffer_done_reg: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => buffer_done,
      Q => buffer_done_reg_n_0,
      R => i_adc_reset
    );
buffer_done_sync0_reg: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => buffer_done_reg_n_0,
      Q => buffer_done_sync0
    );
buffer_done_sync1_reg: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => buffer_done_sync0,
      Q => buffer_done_sync1
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => i_adc_reset,
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(0),
      Q => \^adc_data_original\(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(10),
      Q => \^adc_data_original\(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(11),
      Q => \^adc_data_original\(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(12),
      Q => \^adc_data_original\(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(13),
      Q => \^adc_data_original\(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(14),
      Q => \^m_axis_tdata\(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(15),
      Q => \^m_axis_tdata\(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(16),
      Q => \^m_axis_tdata\(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(17),
      Q => \^m_axis_tdata\(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(18),
      Q => \^m_axis_tdata\(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(19),
      Q => \^m_axis_tdata\(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(1),
      Q => \^adc_data_original\(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(20),
      Q => \^m_axis_tdata\(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(21),
      Q => \^m_axis_tdata\(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(22),
      Q => \^m_axis_tdata\(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(23),
      Q => \^m_axis_tdata\(23),
      R => '0'
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(24),
      Q => \^m_axis_tdata\(24),
      R => '0'
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(25),
      Q => \^m_axis_tdata\(25),
      R => '0'
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(26),
      Q => \^m_axis_tdata\(26),
      R => '0'
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(27),
      Q => \^m_axis_tdata\(27),
      R => '0'
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(28),
      Q => \^m_axis_tdata\(28),
      R => '0'
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(29),
      Q => \^m_axis_tdata\(29),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(2),
      Q => \^adc_data_original\(2),
      R => '0'
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(30),
      Q => \^m_axis_tdata\(30),
      R => '0'
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(31),
      Q => \^m_axis_tdata\(31),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(3),
      Q => \^adc_data_original\(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(4),
      Q => \^adc_data_original\(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(5),
      Q => \^adc_data_original\(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(6),
      Q => \^adc_data_original\(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(7),
      Q => \^adc_data_original\(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(8),
      Q => \^adc_data_original\(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axis_clk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      D => win_data_dout(9),
      Q => \^adc_data_original\(9),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808080FF80808000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^m_axis_tvalid\,
      I2 => m_axis_tready,
      I3 => \FSM_onehot_state[4]_i_1_n_0\,
      I4 => \FSM_onehot_state_reg_n_0_[4]\,
      I5 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \^m_axis_tvalid\,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\
    );
\o_adc_vco_prog_freq_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(0),
      Q => o_adc_vco_prog_freq(0)
    );
\o_adc_vco_prog_freq_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(10),
      Q => o_adc_vco_prog_freq(10)
    );
\o_adc_vco_prog_freq_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(11),
      Q => o_adc_vco_prog_freq(11)
    );
\o_adc_vco_prog_freq_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(12),
      Q => o_adc_vco_prog_freq(12)
    );
\o_adc_vco_prog_freq_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(1),
      Q => o_adc_vco_prog_freq(1)
    );
\o_adc_vco_prog_freq_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(2),
      Q => o_adc_vco_prog_freq(2)
    );
\o_adc_vco_prog_freq_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(3),
      Q => o_adc_vco_prog_freq(3)
    );
\o_adc_vco_prog_freq_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(4),
      Q => o_adc_vco_prog_freq(4)
    );
\o_adc_vco_prog_freq_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(5),
      Q => o_adc_vco_prog_freq(5)
    );
\o_adc_vco_prog_freq_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(6),
      Q => o_adc_vco_prog_freq(6)
    );
\o_adc_vco_prog_freq_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(7),
      Q => o_adc_vco_prog_freq(7)
    );
\o_adc_vco_prog_freq_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(8),
      Q => o_adc_vco_prog_freq(8)
    );
\o_adc_vco_prog_freq_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => '1',
      CLR => i_adc_reset,
      D => i_adc_vco_prog_freq(9),
      Q => o_adc_vco_prog_freq(9)
    );
o_adc_vco_req_next_freq_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => i_adc_vco_prog_done,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[4]_i_1_n_0\,
      O => o_adc_vco_req_next_freq_i_1_n_0
    );
o_adc_vco_req_next_freq_reg: unisim.vcomponents.FDPE
     port map (
      C => m_axis_clk,
      CE => '1',
      D => o_adc_vco_req_next_freq_i_1_n_0,
      PRE => i_adc_reset,
      Q => o_adc_vco_req_next_freq
    );
\wait_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \wait_cnt_reg_n_0_[0]\,
      O => wait_cnt(0)
    );
\wait_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"48"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \wait_cnt_reg_n_0_[1]\,
      O => wait_cnt(1)
    );
\wait_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[0]\,
      I1 => \wait_cnt_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \wait_cnt_reg_n_0_[2]\,
      O => wait_cnt(2)
    );
\wait_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[1]\,
      I1 => \wait_cnt_reg_n_0_[0]\,
      I2 => \wait_cnt_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \wait_cnt_reg_n_0_[3]\,
      O => wait_cnt(3)
    );
\wait_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[2]\,
      I1 => \wait_cnt_reg_n_0_[0]\,
      I2 => \wait_cnt_reg_n_0_[1]\,
      I3 => \wait_cnt_reg_n_0_[3]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \wait_cnt_reg_n_0_[4]\,
      O => wait_cnt(4)
    );
\wait_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \wait_cnt_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => \wait_cnt_reg_n_0_[5]\,
      O => wait_cnt(5)
    );
\wait_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0008AAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \wait_cnt_reg_n_0_[4]\,
      I3 => \wait_cnt_reg_n_0_[5]\,
      I4 => \wait_cnt_reg_n_0_[6]\,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \wait_cnt[6]_i_1_n_0\
    );
\wait_cnt[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DF002000"
    )
        port map (
      I0 => \wait_cnt_reg_n_0_[4]\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \wait_cnt_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \wait_cnt_reg_n_0_[6]\,
      O => wait_cnt(6)
    );
\wait_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(0),
      Q => \wait_cnt_reg_n_0_[0]\
    );
\wait_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(1),
      Q => \wait_cnt_reg_n_0_[1]\
    );
\wait_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(2),
      Q => \wait_cnt_reg_n_0_[2]\
    );
\wait_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(3),
      Q => \wait_cnt_reg_n_0_[3]\
    );
\wait_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(4),
      Q => \wait_cnt_reg_n_0_[4]\
    );
\wait_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(5),
      Q => \wait_cnt_reg_n_0_[5]\
    );
\wait_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m_axis_clk,
      CE => \wait_cnt[6]_i_1_n_0\,
      CLR => i_adc_reset,
      D => wait_cnt(6),
      Q => \wait_cnt_reg_n_0_[6]\
    );
\win_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => win_addr_reg(0),
      O => \win_addr[0]_i_1_n_0\
    );
\win_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => win_addr_reg(0),
      I1 => win_addr_reg(1),
      O => \win_addr[1]_i_1_n_0\
    );
\win_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => win_addr_reg(1),
      I1 => win_addr_reg(0),
      I2 => win_addr_reg(2),
      O => \win_addr[2]_i_1_n_0\
    );
\win_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => win_addr_reg(2),
      I1 => win_addr_reg(0),
      I2 => win_addr_reg(1),
      I3 => win_addr_reg(3),
      O => \win_addr[3]_i_1_n_0\
    );
\win_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => win_addr_reg(3),
      I1 => win_addr_reg(1),
      I2 => win_addr_reg(0),
      I3 => win_addr_reg(2),
      I4 => win_addr_reg(4),
      O => \win_addr[4]_i_1_n_0\
    );
\win_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => win_addr_reg(4),
      I1 => win_addr_reg(2),
      I2 => win_addr_reg(0),
      I3 => win_addr_reg(1),
      I4 => win_addr_reg(3),
      I5 => win_addr_reg(5),
      O => \win_addr[5]_i_1_n_0\
    );
\win_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => buffer_done_i_2_n_0,
      I1 => win_addr_reg(6),
      O => \win_addr[6]_i_1_n_0\
    );
\win_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => win_addr_reg(6),
      I1 => buffer_done_i_2_n_0,
      I2 => win_addr_reg(7),
      O => \win_addr[7]_i_1_n_0\
    );
\win_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => win_addr_reg(7),
      I1 => buffer_done_i_2_n_0,
      I2 => win_addr_reg(6),
      I3 => win_addr_reg(8),
      O => \win_addr[8]_i_1_n_0\
    );
\win_addr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => win_data_we,
      I1 => i_adc_reset,
      I2 => \win_addr[9]_i_3_n_0\,
      I3 => win_addr_reg(9),
      O => \win_addr[9]_i_1_n_0\
    );
\win_addr[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => win_addr_reg(8),
      I1 => win_addr_reg(6),
      I2 => buffer_done_i_2_n_0,
      I3 => win_addr_reg(7),
      I4 => win_addr_reg(9),
      O => \win_addr[9]_i_2_n_0\
    );
\win_addr[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => win_addr_reg(7),
      I1 => buffer_done_i_2_n_0,
      I2 => win_addr_reg(6),
      I3 => win_addr_reg(8),
      O => \win_addr[9]_i_3_n_0\
    );
\win_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[0]_i_1_n_0\,
      Q => win_addr_reg(0),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[1]_i_1_n_0\,
      Q => win_addr_reg(1),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[2]_i_1_n_0\,
      Q => win_addr_reg(2),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[3]_i_1_n_0\,
      Q => win_addr_reg(3),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[4]_i_1_n_0\,
      Q => win_addr_reg(4),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[5]_i_1_n_0\,
      Q => win_addr_reg(5),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[6]_i_1_n_0\,
      Q => win_addr_reg(6),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[7]_i_1_n_0\,
      Q => win_addr_reg(7),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[8]_i_1_n_0\,
      Q => win_addr_reg(8),
      R => \win_addr[9]_i_1_n_0\
    );
\win_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => \win_addr[9]_i_2_n_0\,
      Q => win_addr_reg(9),
      R => \win_addr[9]_i_1_n_0\
    );
\win_data_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(0),
      O => win_data_addr(0)
    );
\win_data_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(1),
      O => win_data_addr(1)
    );
\win_data_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(2),
      O => win_data_addr(2)
    );
\win_data_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(3),
      O => win_data_addr(3)
    );
\win_data_addr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(4),
      O => win_data_addr(4)
    );
\win_data_addr[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(5),
      O => win_data_addr(5)
    );
\win_data_addr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(6),
      O => win_data_addr(6)
    );
\win_data_addr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(7),
      O => win_data_addr(7)
    );
\win_data_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(8),
      O => win_data_addr(8)
    );
\win_data_addr[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => win_data_we,
      I1 => win_addr_reg(9),
      O => win_data_addr(9)
    );
\win_data_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(0),
      Q => \win_data_addr_reg_n_0_[0]\,
      R => i_adc_reset
    );
\win_data_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(1),
      Q => \win_data_addr_reg_n_0_[1]\,
      R => i_adc_reset
    );
\win_data_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(2),
      Q => \win_data_addr_reg_n_0_[2]\,
      R => i_adc_reset
    );
\win_data_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(3),
      Q => \win_data_addr_reg_n_0_[3]\,
      R => i_adc_reset
    );
\win_data_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(4),
      Q => \win_data_addr_reg_n_0_[4]\,
      R => i_adc_reset
    );
\win_data_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(5),
      Q => \win_data_addr_reg_n_0_[5]\,
      R => i_adc_reset
    );
\win_data_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(6),
      Q => \win_data_addr_reg_n_0_[6]\,
      R => i_adc_reset
    );
\win_data_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(7),
      Q => \win_data_addr_reg_n_0_[7]\,
      R => i_adc_reset
    );
\win_data_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(8),
      Q => \win_data_addr_reg_n_0_[8]\,
      R => i_adc_reset
    );
\win_data_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_addr(9),
      Q => \win_data_addr_reg_n_0_[9]\,
      R => i_adc_reset
    );
win_data_din0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => \^win_coeff_out\(15),
      A(28) => \^win_coeff_out\(15),
      A(27) => \^win_coeff_out\(15),
      A(26) => \^win_coeff_out\(15),
      A(25) => \^win_coeff_out\(15),
      A(24) => \^win_coeff_out\(15),
      A(23) => \^win_coeff_out\(15),
      A(22) => \^win_coeff_out\(15),
      A(21) => \^win_coeff_out\(15),
      A(20) => \^win_coeff_out\(15),
      A(19) => \^win_coeff_out\(15),
      A(18) => \^win_coeff_out\(15),
      A(17) => \^win_coeff_out\(15),
      A(16) => \^win_coeff_out\(15),
      A(15 downto 0) => \^win_coeff_out\(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_win_data_din0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 14) => B"0000",
      B(13 downto 0) => \^i_adc_data\(13 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_win_data_din0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 14) => B"0000000000000000000000000000000000",
      C(13 downto 0) => \^i_adc_data\(13 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_win_data_din0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_win_data_din0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => p_0_in,
      CLK => i_adc_dco,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_win_data_din0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6) => '0',
      OPMODE(5) => win_data_din0_i_3_n_0,
      OPMODE(4) => win_data_din0_i_3_n_0,
      OPMODE(3) => '0',
      OPMODE(2) => window_enable,
      OPMODE(1) => '0',
      OPMODE(0) => window_enable,
      OVERFLOW => NLW_win_data_din0_OVERFLOW_UNCONNECTED,
      P(47 downto 32) => NLW_win_data_din0_P_UNCONNECTED(47 downto 32),
      P(31) => win_data_din0_n_74,
      P(30) => win_data_din0_n_75,
      P(29) => win_data_din0_n_76,
      P(28) => win_data_din0_n_77,
      P(27) => win_data_din0_n_78,
      P(26) => win_data_din0_n_79,
      P(25) => win_data_din0_n_80,
      P(24) => win_data_din0_n_81,
      P(23) => win_data_din0_n_82,
      P(22) => win_data_din0_n_83,
      P(21) => win_data_din0_n_84,
      P(20) => win_data_din0_n_85,
      P(19) => win_data_din0_n_86,
      P(18) => win_data_din0_n_87,
      P(17) => win_data_din0_n_88,
      P(16) => win_data_din0_n_89,
      P(15) => win_data_din0_n_90,
      P(14) => win_data_din0_n_91,
      P(13) => win_data_din0_n_92,
      P(12) => win_data_din0_n_93,
      P(11) => win_data_din0_n_94,
      P(10) => win_data_din0_n_95,
      P(9) => win_data_din0_n_96,
      P(8) => win_data_din0_n_97,
      P(7) => win_data_din0_n_98,
      P(6) => win_data_din0_n_99,
      P(5) => win_data_din0_n_100,
      P(4) => win_data_din0_n_101,
      P(3) => win_data_din0_n_102,
      P(2) => win_data_din0_n_103,
      P(1) => win_data_din0_n_104,
      P(0) => win_data_din0_n_105,
      PATTERNBDETECT => NLW_win_data_din0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_win_data_din0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_win_data_din0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => win_data_din0_i_2_n_0,
      UNDERFLOW => NLW_win_data_din0_UNDERFLOW_UNCONNECTED
    );
win_data_din0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_adc_reset,
      O => p_0_in
    );
win_data_din0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => win_data_we,
      I1 => i_adc_reset,
      O => win_data_din0_i_2_n_0
    );
win_data_din0_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window_enable,
      O => win_data_din0_i_3_n_0
    );
win_data_we_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => win_data_we_reg_n_0,
      I1 => win_data_we,
      I2 => i_adc_reset,
      O => win_data_we_i_1_n_0
    );
win_data_we_reg: unisim.vcomponents.FDRE
     port map (
      C => i_adc_dco,
      CE => '1',
      D => win_data_we_i_1_n_0,
      Q => win_data_we_reg_n_0,
      R => '0'
    );
window_coeff_bram: component design_1_adc_interface_0_0_blk_mem_gen_0
     port map (
      addra(9 downto 0) => win_addr_reg(9 downto 0),
      clka => i_adc_dco,
      dina(15 downto 0) => B"0000000000000000",
      douta(15 downto 0) => \^win_coeff_out\(15 downto 0),
      ena => '1',
      wea(0) => '0'
    );
windowed_data_bram: component design_1_adc_interface_0_0_blk_mem_gen_1
     port map (
      addra(9) => \win_data_addr_reg_n_0_[9]\,
      addra(8) => \win_data_addr_reg_n_0_[8]\,
      addra(7) => \win_data_addr_reg_n_0_[7]\,
      addra(6) => \win_data_addr_reg_n_0_[6]\,
      addra(5) => \win_data_addr_reg_n_0_[5]\,
      addra(4) => \win_data_addr_reg_n_0_[4]\,
      addra(3) => \win_data_addr_reg_n_0_[3]\,
      addra(2) => \win_data_addr_reg_n_0_[2]\,
      addra(1) => \win_data_addr_reg_n_0_[1]\,
      addra(0) => \win_data_addr_reg_n_0_[0]\,
      addrb(9) => \axi_rd_addr_reg_n_0_[9]\,
      addrb(8) => \axi_rd_addr_reg_n_0_[8]\,
      addrb(7) => \axi_rd_addr_reg_n_0_[7]\,
      addrb(6) => \axi_rd_addr_reg_n_0_[6]\,
      addrb(5) => \axi_rd_addr_reg_n_0_[5]\,
      addrb(4) => \axi_rd_addr_reg_n_0_[4]\,
      addrb(3) => \axi_rd_addr_reg_n_0_[3]\,
      addrb(2) => \axi_rd_addr_reg_n_0_[2]\,
      addrb(1) => \axi_rd_addr_reg_n_0_[1]\,
      addrb(0) => \axi_rd_addr_reg_n_0_[0]\,
      clka => i_adc_dco,
      clkb => m_axis_clk,
      dina(31) => win_data_din0_n_74,
      dina(30) => win_data_din0_n_75,
      dina(29) => win_data_din0_n_76,
      dina(28) => win_data_din0_n_77,
      dina(27) => win_data_din0_n_78,
      dina(26) => win_data_din0_n_79,
      dina(25) => win_data_din0_n_80,
      dina(24) => win_data_din0_n_81,
      dina(23) => win_data_din0_n_82,
      dina(22) => win_data_din0_n_83,
      dina(21) => win_data_din0_n_84,
      dina(20) => win_data_din0_n_85,
      dina(19) => win_data_din0_n_86,
      dina(18) => win_data_din0_n_87,
      dina(17) => win_data_din0_n_88,
      dina(16) => win_data_din0_n_89,
      dina(15) => win_data_din0_n_90,
      dina(14) => win_data_din0_n_91,
      dina(13) => win_data_din0_n_92,
      dina(12) => win_data_din0_n_93,
      dina(11) => win_data_din0_n_94,
      dina(10) => win_data_din0_n_95,
      dina(9) => win_data_din0_n_96,
      dina(8) => win_data_din0_n_97,
      dina(7) => win_data_din0_n_98,
      dina(6) => win_data_din0_n_99,
      dina(5) => win_data_din0_n_100,
      dina(4) => win_data_din0_n_101,
      dina(3) => win_data_din0_n_102,
      dina(2) => win_data_din0_n_103,
      dina(1) => win_data_din0_n_104,
      dina(0) => win_data_din0_n_105,
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => NLW_windowed_data_bram_douta_UNCONNECTED(31 downto 0),
      doutb(31 downto 0) => win_data_dout(31 downto 0),
      ena => '1',
      enb => '1',
      wea(0) => win_data_we_reg_n_0,
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_adc_interface_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_adc_interface_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_adc_interface_0_0 : entity is "design_1_adc_interface_0_0,adc_interface,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_adc_interface_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_adc_interface_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_adc_interface_0_0 : entity is "adc_interface,Vivado 2024.2";
end design_1_adc_interface_0_0;

architecture STRUCTURE of design_1_adc_interface_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^adc_signed_debug\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal NLW_inst_adc_signed_debug_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 14 );
  attribute ADC_WIDTH : integer;
  attribute ADC_WIDTH of inst : label is 14;
  attribute BUFFERING : string;
  attribute BUFFERING of inst : label is "3'b010";
  attribute FFT_POINTS : integer;
  attribute FFT_POINTS of inst : label is 1024;
  attribute IDLE : string;
  attribute IDLE of inst : label is "3'b000";
  attribute P_VCO_STABLE : integer;
  attribute P_VCO_STABLE of inst : label is 80;
  attribute REQ_PROG : string;
  attribute REQ_PROG of inst : label is "3'b100";
  attribute SAMPLING : string;
  attribute SAMPLING of inst : label is "3'b011";
  attribute WAITING : string;
  attribute WAITING of inst : label is "3'b001";
  attribute WINDOW_WIDTH : integer;
  attribute WINDOW_WIDTH of inst : label is 16;
  attribute WIN_EN : integer;
  attribute WIN_EN of inst : label is 0;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_adc_reset : signal is "xilinx.com:signal:reset:1.0 i_adc_reset RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_adc_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_adc_reset : signal is "XIL_INTERFACENAME i_adc_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_clk : signal is "xilinx.com:signal:clock:1.0 m_axis_clk CLK";
  attribute X_INTERFACE_MODE of m_axis_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m_axis_clk : signal is "XIL_INTERFACENAME m_axis_clk, ASSOCIATED_BUSIF m_axis, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 80000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  adc_signed_debug(15) <= \<const0>\;
  adc_signed_debug(14) <= \<const0>\;
  adc_signed_debug(13 downto 0) <= \^adc_signed_debug\(13 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_adc_interface_0_0_adc_interface
     port map (
      adc_data_original(13 downto 0) => adc_data_original(13 downto 0),
      adc_data_original_valid => adc_data_original_valid,
      adc_signed_debug(15 downto 14) => NLW_inst_adc_signed_debug_UNCONNECTED(15 downto 14),
      adc_signed_debug(13 downto 0) => \^adc_signed_debug\(13 downto 0),
      i_adc_data(13 downto 0) => i_adc_data(13 downto 0),
      i_adc_dco => i_adc_dco,
      i_adc_reset => i_adc_reset,
      i_adc_vco_prog_done => i_adc_vco_prog_done,
      i_adc_vco_prog_freq(12 downto 0) => i_adc_vco_prog_freq(12 downto 0),
      m_axis_clk => m_axis_clk,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      o_adc_vco_prog_freq(12 downto 0) => o_adc_vco_prog_freq(12 downto 0),
      o_adc_vco_req_next_freq => o_adc_vco_req_next_freq,
      win_coeff_out(15 downto 0) => win_coeff_out(15 downto 0),
      window_enable => window_enable
    );
end STRUCTURE;
