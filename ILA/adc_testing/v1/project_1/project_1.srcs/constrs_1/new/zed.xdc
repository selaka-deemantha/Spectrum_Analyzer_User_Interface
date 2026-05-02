# =============================================================================
# ZedBoard Constraints - design_1
# =============================================================================

## -----------------------------------------------------------------------------
## Clock Source - Bank 13 (3.3V)
## -----------------------------------------------------------------------------

set_property PACKAGE_PIN T22 [get_ports {led_div}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {led_sclk}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {led_sdio}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {led[3]}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {led[4]}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {led[5]}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {led[6]}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {led[7]}];  # "LD7"

set_property IOSTANDARD LVCMOS33 [get_ports {led_div}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_sclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {led_sdio}]


set_property PACKAGE_PIN F22 [get_ports {sw_1}];  # "SW0"  sclk (GND - Offset Binary) (Vdd - 2's Complement)
set_property PACKAGE_PIN G22 [get_ports {sw_2}];  # "SW1"  sdio (GND - Normal) (Vdd - Power Down)
set_property PACKAGE_PIN H22 [get_ports {window_enable}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {SW3}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {SW4}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {SW5}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {SW6}];  # "SW6"
#set_property PACKAGE_PIN M15 [get_ports {SW7}];  # "SW7"

set_property IOSTANDARD LVCMOS33 [get_ports {sw_1 sw_2 window_enable}];



set_property PACKAGE_PIN Y9 [get_ports {fpga_clk}];   # GCLK
set_property IOSTANDARD LVCMOS33 [get_ports {fpga_clk}];

#create_clock -name sys_clk -period 10.0 [get_ports {fpga_clk}];  # 100 MHz

## -----------------------------------------------------------------------------
## Reset Button - Bank 34 (1.8V)
## -----------------------------------------------------------------------------
set_property PACKAGE_PIN P16 [get_ports {Reset}];     # BTNC
set_property IOSTANDARD LVCMOS18 [get_ports {Reset}];

# -----------------------------------------------------------------------------
# ADC Clock - FMC Bank 34 (1.8V)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN M19 [get_ports {adc_clk}];   # FMC-LA00_CC_P

# -----------------------------------------------------------------------------
# ADC Data Bus [13:0] - FMC Bank 34 (1.8V)
# -----------------------------------------------------------------------------
set_property PACKAGE_PIN J17 [get_ports {adc_data[0]}];   # FMC-LA15_N
set_property PACKAGE_PIN J16 [get_ports {adc_data[1]}];   # FMC-LA15_P
set_property PACKAGE_PIN K21 [get_ports {adc_data[2]}];   # FMC-LA16_N
set_property PACKAGE_PIN J20 [get_ports {adc_data[3]}];   # FMC-LA16_P
set_property PACKAGE_PIN N18 [get_ports {adc_data[4]}];   # FMC-LA11_N
set_property PACKAGE_PIN N17 [get_ports {adc_data[5]}];   # FMC-LA11_P
set_property PACKAGE_PIN P21 [get_ports {adc_data[6]}];   # FMC-LA12_N
set_property PACKAGE_PIN P20 [get_ports {adc_data[7]}];   # FMC-LA12_P
set_property PACKAGE_PIN T17 [get_ports {adc_data[8]}];   # FMC-LA07_N
set_property PACKAGE_PIN T16 [get_ports {adc_data[9]}];   # FMC-LA07_P
set_property PACKAGE_PIN J21 [get_ports {adc_data[10]}];  # FMC-LA08_P
set_property PACKAGE_PIN J22 [get_ports {adc_data[11]}];  # FMC-LA08_N
set_property PACKAGE_PIN M22 [get_ports {adc_data[12]}];  # FMC-LA04_N
set_property PACKAGE_PIN M21 [get_ports {adc_data[13]}];  # FMC-LA04_P

set_property PACKAGE_PIN K19 [get_ports {sclk}];  # FMC-LA04_N
set_property PACKAGE_PIN L17 [get_ports {sdio}];  # FMC-LA04_P


set_property IOSTANDARD LVCMOS18 [get_ports {adc_clk adc_data[*] sclk sdio}]
# -----------------------------------------------------------------------------
# VCO SPI / Control - PMOD JA (Bank 13 - 3.3V)
# -----------------------------------------------------------------------------
#set_property PACKAGE_PIN Y11  [get_ports {o_vco_clk_0}];   # JA1
#set_property PACKAGE_PIN AA11 [get_ports {o_vco_data_0}];  # JA2
#set_property PACKAGE_PIN Y10  [get_ports {o_vco_le_0}];    # JA3

#set_property IOSTANDARD LVCMOS33 [get_ports {o_vco_clk_0}];
#set_property IOSTANDARD LVCMOS33 [get_ports {o_vco_data_0}];
#set_property IOSTANDARD LVCMOS33 [get_ports {o_vco_le_0}];

# =============================================================================
# END OF FILE
# =============================================================================