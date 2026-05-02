# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FFT_POINTS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "P_VCO_STABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WINDOW_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIN_EN" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to update ADC_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_WIDTH { PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to validate ADC_WIDTH
	return true
}

proc update_PARAM_VALUE.FFT_POINTS { PARAM_VALUE.FFT_POINTS } {
	# Procedure called to update FFT_POINTS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FFT_POINTS { PARAM_VALUE.FFT_POINTS } {
	# Procedure called to validate FFT_POINTS
	return true
}

proc update_PARAM_VALUE.P_VCO_STABLE { PARAM_VALUE.P_VCO_STABLE } {
	# Procedure called to update P_VCO_STABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.P_VCO_STABLE { PARAM_VALUE.P_VCO_STABLE } {
	# Procedure called to validate P_VCO_STABLE
	return true
}

proc update_PARAM_VALUE.WINDOW_WIDTH { PARAM_VALUE.WINDOW_WIDTH } {
	# Procedure called to update WINDOW_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WINDOW_WIDTH { PARAM_VALUE.WINDOW_WIDTH } {
	# Procedure called to validate WINDOW_WIDTH
	return true
}

proc update_PARAM_VALUE.WIN_EN { PARAM_VALUE.WIN_EN } {
	# Procedure called to update WIN_EN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIN_EN { PARAM_VALUE.WIN_EN } {
	# Procedure called to validate WIN_EN
	return true
}


proc update_MODELPARAM_VALUE.ADC_WIDTH { MODELPARAM_VALUE.ADC_WIDTH PARAM_VALUE.ADC_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_WIDTH}] ${MODELPARAM_VALUE.ADC_WIDTH}
}

proc update_MODELPARAM_VALUE.FFT_POINTS { MODELPARAM_VALUE.FFT_POINTS PARAM_VALUE.FFT_POINTS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FFT_POINTS}] ${MODELPARAM_VALUE.FFT_POINTS}
}

proc update_MODELPARAM_VALUE.WINDOW_WIDTH { MODELPARAM_VALUE.WINDOW_WIDTH PARAM_VALUE.WINDOW_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WINDOW_WIDTH}] ${MODELPARAM_VALUE.WINDOW_WIDTH}
}

proc update_MODELPARAM_VALUE.P_VCO_STABLE { MODELPARAM_VALUE.P_VCO_STABLE PARAM_VALUE.P_VCO_STABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.P_VCO_STABLE}] ${MODELPARAM_VALUE.P_VCO_STABLE}
}

proc update_MODELPARAM_VALUE.WIN_EN { MODELPARAM_VALUE.WIN_EN PARAM_VALUE.WIN_EN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIN_EN}] ${MODELPARAM_VALUE.WIN_EN}
}

