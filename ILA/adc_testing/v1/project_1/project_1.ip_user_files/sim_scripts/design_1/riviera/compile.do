transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_9
vlib riviera/xbip_utils_v3_0_14
vlib riviera/axi_utils_v2_0_10
vlib riviera/c_reg_fd_v12_0_10
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_pipe_v3_0_10
vlib riviera/c_addsub_v12_0_19
vlib riviera/c_shift_ram_v12_0_18
vlib riviera/mult_gen_v12_0_22
vlib riviera/floating_point_v7_1_19
vlib riviera/cmpy_v6_0_25
vlib riviera/floating_point_v7_0_24
vlib riviera/xfft_v9_1_13
vlib riviera/xlconcat_v2_1_6

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap xbip_utils_v3_0_14 riviera/xbip_utils_v3_0_14
vmap axi_utils_v2_0_10 riviera/axi_utils_v2_0_10
vmap c_reg_fd_v12_0_10 riviera/c_reg_fd_v12_0_10
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_pipe_v3_0_10 riviera/xbip_pipe_v3_0_10
vmap c_addsub_v12_0_19 riviera/c_addsub_v12_0_19
vmap c_shift_ram_v12_0_18 riviera/c_shift_ram_v12_0_18
vmap mult_gen_v12_0_22 riviera/mult_gen_v12_0_22
vmap floating_point_v7_1_19 riviera/floating_point_v7_1_19
vmap cmpy_v6_0_25 riviera/cmpy_v6_0_25
vmap floating_point_v7_0_24 riviera/floating_point_v7_0_24
vmap xfft_v9_1_13 riviera/xfft_v9_1_13
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6

vlog -work xpm  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../bd/design_1/ip/design_1_adc_interface_0_0/sim/design_1_adc_interface_0_0.v" \
"../../../bd/design_1/ip/design_1_vco_interface_0_0/sim/design_1_vco_interface_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_clock_divider_0_0/sim/design_1_clock_divider_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_1/sim/design_1_ila_0_1.v" \

vcom -work xbip_utils_v3_0_14 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/b27f/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_10 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7e77/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_10 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/47fd/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/d531/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_19 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/a1b8/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_18 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/fe8a/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_22 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e765/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_19 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/bf3d/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_19  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/bf3d/hdl/floating_point_v7_1_rfs.v" \

vlog -work cmpy_v6_0_25  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/01d8/hdl/cmpy_v6_0_rfs.v" \

vcom -work cmpy_v6_0_25 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/01d8/hdl/cmpy_v6_0_rfs.vhd" \

vcom -work floating_point_v7_0_24 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f38a/hdl/floating_point_v7_0_vh_rfs.vhd" \

vcom -work xfft_v9_1_13 -2008  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/float_pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cfloat_pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/DELAY.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/CDELAY.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/BDELAY.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/DS.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/CB.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/DSN.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/DSPFP32_GW.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/InputSwap.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/PARFFT2.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/PARFFT4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/PARFFT.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R2BUTTERFLY.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R2TableFP32_pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R2TableFP32.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R4BUTTERFLY.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R4TableFP32_pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/R4TableFP32.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/STAGE.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/SystolicFFT.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_core_ssr.vhd" \

vcom -work xfft_v9_1_13 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_viv_comp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_comp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/half_sincos_tw_table.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/quarter_sin_tw_table.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/quarter2_sin_tw_table.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/adder.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/adder_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/logic_gate.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/equ_rtl.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cnt_sat.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cnt_tc_rtl.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cnt_tc_rtl_a.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cnt_tc_rtl_b.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/shift_ram.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/srl_fifo.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/mux_bus2.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/mux_bus4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/mux_bus8.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/mux_bus16.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/mux_bus32.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/dist_mem.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/dpm.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/dpm_hybrid.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/reg_rs_rtl.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/sub_byp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/sub_byp_j.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/subtracter.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xor_bit_gate.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/arith_shift1.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/arith_shift3.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_hybrid.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_bypass_hybrid.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_mul_j_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_mul_j_bypass_hybrid.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_simd.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_simd_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly_dsp48e_simd_mul_j_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/bf_dsp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/bf_dsp_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/bf_dsp_mul_j_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/bfly_byp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/bfly_byp_j.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/butterfly.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twos_comp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/cmpy.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/dfly_byp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/dragonfly_dsp48_bypass.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_xk_counter.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/flow_control_b.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/flow_control_c.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/max2_2.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/in_ranger.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/in_switch4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/out_addr_gen_b.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/out_switch4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/overflow_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/unbiased_round.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/pe4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_in_addr.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_ovflo_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_pe.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/range_r2.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_ranger.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_rw_addr.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_tw_addr.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twgen_distmem.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twgen_distmem_so.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twgen_half_sincos.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twgen_quarter_sin.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/twiddle_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_control.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/scale_logic.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r2_datapath.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/rw_addr_gen_b.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/tw_gen_p2.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/tw_gen_p4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/tw_addr_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r4_control.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/range_r4.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r4_ranger.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r4_datapath.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_twos_comp_mux.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_delay_mux.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_srl_memory.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_memory.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_bfly_byp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_bf.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_bf_sp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_cnt_ctrl.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_flow_ctrl.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_ovflo.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_busy.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_tw_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_pe.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_right_shift.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_shift_decode.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/r22_var_unbiased_round.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_n_counter.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_io_addr_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_run_addr_gen_rotator.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_run_addr_gen_left_shift.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_run_addr_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_addr_gen.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_control_fsm.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_control.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_memory.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_ranger.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/so_datapath.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/pipe_blank.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/fp_get_block_max_exp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/fp_convert_to_block_fp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/fp_convert_to_fp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/fp_shift_ram_clr_op.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_axi_pkg.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/axi_wrapper_input_fifo.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/axi_wrapper_output_fifo.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/axi_wrapper.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_b.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_c.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_d.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_e.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_fp.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_core.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1_viv.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7162/hdl/xfft_v9_1.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_xfft_0_0/sim/design_1_xfft_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/814a/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/1017/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/52c0/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/2276/hdl/verilog" -l xpm -l xil_defaultlib -l xlconstant_v1_1_9 -l xbip_utils_v3_0_14 -l axi_utils_v2_0_10 -l c_reg_fd_v12_0_10 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_pipe_v3_0_10 -l c_addsub_v12_0_19 -l c_shift_ram_v12_0_18 -l mult_gen_v12_0_22 -l floating_point_v7_1_19 -l cmpy_v6_0_25 -l floating_point_v7_0_24 -l xfft_v9_1_13 -l xlconcat_v2_1_6 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

