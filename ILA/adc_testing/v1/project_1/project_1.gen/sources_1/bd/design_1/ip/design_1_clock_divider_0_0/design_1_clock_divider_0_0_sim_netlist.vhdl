-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Feb  6 12:12:49 2026
-- Host        : selaka-Inspiron-5502 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/selaka/Desktop/adc_testing/v1/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_clock_divider_0_0/design_1_clock_divider_0_0_sim_netlist.vhdl
-- Design      : design_1_clock_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_divider_0_0_clock_divider is
  port (
    o_led : out STD_LOGIC;
    i_adc_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clock_divider_0_0_clock_divider : entity is "clock_divider";
end design_1_clock_divider_0_0_clock_divider;

architecture STRUCTURE of design_1_clock_divider_0_0_clock_divider is
  signal \^o_led\ : STD_LOGIC;
  signal \r_clk_div[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_clk_div_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_clk_div_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_r_clk_div_reg[25]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_clk_div_reg[25]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  o_led <= \^o_led\;
\r_clk_div[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_clk_div_reg_n_0_[0]\,
      O => \r_clk_div[0]_i_2_n_0\
    );
\r_clk_div_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[0]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[0]\
    );
\r_clk_div_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_clk_div_reg[0]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[0]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[0]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_clk_div_reg[0]_i_1_n_4\,
      O(2) => \r_clk_div_reg[0]_i_1_n_5\,
      O(1) => \r_clk_div_reg[0]_i_1_n_6\,
      O(0) => \r_clk_div_reg[0]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[3]\,
      S(2) => \r_clk_div_reg_n_0_[2]\,
      S(1) => \r_clk_div_reg_n_0_[1]\,
      S(0) => \r_clk_div[0]_i_2_n_0\
    );
\r_clk_div_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[8]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[10]\
    );
\r_clk_div_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[8]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[11]\
    );
\r_clk_div_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[12]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[12]\
    );
\r_clk_div_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[8]_i_1_n_0\,
      CO(3) => \r_clk_div_reg[12]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[12]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[12]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_clk_div_reg[12]_i_1_n_4\,
      O(2) => \r_clk_div_reg[12]_i_1_n_5\,
      O(1) => \r_clk_div_reg[12]_i_1_n_6\,
      O(0) => \r_clk_div_reg[12]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[15]\,
      S(2) => \r_clk_div_reg_n_0_[14]\,
      S(1) => \r_clk_div_reg_n_0_[13]\,
      S(0) => \r_clk_div_reg_n_0_[12]\
    );
\r_clk_div_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[12]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[13]\
    );
\r_clk_div_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[12]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[14]\
    );
\r_clk_div_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[12]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[15]\
    );
\r_clk_div_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[16]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[16]\
    );
\r_clk_div_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[12]_i_1_n_0\,
      CO(3) => \r_clk_div_reg[16]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[16]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[16]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_clk_div_reg[16]_i_1_n_4\,
      O(2) => \r_clk_div_reg[16]_i_1_n_5\,
      O(1) => \r_clk_div_reg[16]_i_1_n_6\,
      O(0) => \r_clk_div_reg[16]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[19]\,
      S(2) => \r_clk_div_reg_n_0_[18]\,
      S(1) => \r_clk_div_reg_n_0_[17]\,
      S(0) => \r_clk_div_reg_n_0_[16]\
    );
\r_clk_div_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[16]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[17]\
    );
\r_clk_div_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[16]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[18]\
    );
\r_clk_div_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[16]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[19]\
    );
\r_clk_div_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[0]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[1]\
    );
\r_clk_div_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[20]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[20]\
    );
\r_clk_div_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[16]_i_1_n_0\,
      CO(3) => \r_clk_div_reg[20]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[20]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[20]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_clk_div_reg[20]_i_1_n_4\,
      O(2) => \r_clk_div_reg[20]_i_1_n_5\,
      O(1) => \r_clk_div_reg[20]_i_1_n_6\,
      O(0) => \r_clk_div_reg[20]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[23]\,
      S(2) => \r_clk_div_reg_n_0_[22]\,
      S(1) => \r_clk_div_reg_n_0_[21]\,
      S(0) => \r_clk_div_reg_n_0_[20]\
    );
\r_clk_div_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[20]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[21]\
    );
\r_clk_div_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[20]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[22]\
    );
\r_clk_div_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[20]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[23]\
    );
\r_clk_div_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[25]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[24]\
    );
\r_clk_div_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[25]_i_1_n_6\,
      Q => \^o_led\
    );
\r_clk_div_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[20]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_clk_div_reg[25]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_clk_div_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_clk_div_reg[25]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_clk_div_reg[25]_i_1_n_6\,
      O(0) => \r_clk_div_reg[25]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \^o_led\,
      S(0) => \r_clk_div_reg_n_0_[24]\
    );
\r_clk_div_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[0]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[2]\
    );
\r_clk_div_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[0]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[3]\
    );
\r_clk_div_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[4]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[4]\
    );
\r_clk_div_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[0]_i_1_n_0\,
      CO(3) => \r_clk_div_reg[4]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[4]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[4]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_clk_div_reg[4]_i_1_n_4\,
      O(2) => \r_clk_div_reg[4]_i_1_n_5\,
      O(1) => \r_clk_div_reg[4]_i_1_n_6\,
      O(0) => \r_clk_div_reg[4]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[7]\,
      S(2) => \r_clk_div_reg_n_0_[6]\,
      S(1) => \r_clk_div_reg_n_0_[5]\,
      S(0) => \r_clk_div_reg_n_0_[4]\
    );
\r_clk_div_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[4]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[5]\
    );
\r_clk_div_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[4]_i_1_n_5\,
      Q => \r_clk_div_reg_n_0_[6]\
    );
\r_clk_div_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[4]_i_1_n_4\,
      Q => \r_clk_div_reg_n_0_[7]\
    );
\r_clk_div_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[8]_i_1_n_7\,
      Q => \r_clk_div_reg_n_0_[8]\
    );
\r_clk_div_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_clk_div_reg[4]_i_1_n_0\,
      CO(3) => \r_clk_div_reg[8]_i_1_n_0\,
      CO(2) => \r_clk_div_reg[8]_i_1_n_1\,
      CO(1) => \r_clk_div_reg[8]_i_1_n_2\,
      CO(0) => \r_clk_div_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_clk_div_reg[8]_i_1_n_4\,
      O(2) => \r_clk_div_reg[8]_i_1_n_5\,
      O(1) => \r_clk_div_reg[8]_i_1_n_6\,
      O(0) => \r_clk_div_reg[8]_i_1_n_7\,
      S(3) => \r_clk_div_reg_n_0_[11]\,
      S(2) => \r_clk_div_reg_n_0_[10]\,
      S(1) => \r_clk_div_reg_n_0_[9]\,
      S(0) => \r_clk_div_reg_n_0_[8]\
    );
\r_clk_div_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_adc_clk,
      CE => '1',
      CLR => i_reset,
      D => \r_clk_div_reg[8]_i_1_n_6\,
      Q => \r_clk_div_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clock_divider_0_0 is
  port (
    i_adc_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clock_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clock_divider_0_0 : entity is "design_1_clock_divider_0_0,clock_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_clock_divider_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_clock_divider_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_clock_divider_0_0 : entity is "clock_divider,Vivado 2024.2";
end design_1_clock_divider_0_0;

architecture STRUCTURE of design_1_clock_divider_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_adc_clk : signal is "xilinx.com:signal:clock:1.0 i_adc_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of i_adc_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_adc_clk : signal is "XIL_INTERFACENAME i_adc_clk, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_adc_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute X_INTERFACE_MODE of i_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
inst: entity work.design_1_clock_divider_0_0_clock_divider
     port map (
      i_adc_clk => i_adc_clk,
      i_reset => i_reset,
      o_led => o_led
    );
end STRUCTURE;
