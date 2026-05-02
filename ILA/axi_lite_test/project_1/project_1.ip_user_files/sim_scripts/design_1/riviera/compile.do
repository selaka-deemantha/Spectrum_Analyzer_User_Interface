transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/processing_system7_vip_v1_0_21
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_9
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/lib_pkg_v1_0_4
vlib riviera/fifo_generator_v13_2_11
vlib riviera/lib_fifo_v1_0_20
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/lib_bmg_v1_0_18
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_datamover_v5_1_35
vlib riviera/axi_vdma_v6_3_21
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/v_tc_v6_1_14
vlib riviera/v_vid_in_axi4s_v4_0_11
vlib riviera/v_axi4s_vid_out_v4_0_19
vlib riviera/v_tc_v6_2_9
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_data_fifo_v2_1_32
vlib riviera/axi_protocol_converter_v2_1_33

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap processing_system7_vip_v1_0_21 riviera/processing_system7_vip_v1_0_21
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_11 riviera/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 riviera/lib_fifo_v1_0_20
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap lib_bmg_v1_0_18 riviera/lib_bmg_v1_0_18
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_35 riviera/axi_datamover_v5_1_35
vmap axi_vdma_v6_3_21 riviera/axi_vdma_v6_3_21
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 riviera/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 riviera/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_19 riviera/v_axi4s_vid_out_v4_0_19
vmap v_tc_v6_2_9 riviera/v_tc_v6_2_9
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_32 riviera/axi_data_fifo_v2_1_32
vmap axi_protocol_converter_v2_1_33 riviera/axi_protocol_converter_v2_1_33

vlog -work xilinx_vip  -incr "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/tools/Vivado_2024_2/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_21  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_m02e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_18 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/cd15/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_21  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_21 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_19  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/e4ff/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2a7c/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ipshared/2a7c/src/SyncAsync.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2a7c/src/axi_dynclk_S00_AXI.vhd" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2a7c/src/axi_dynclk.vhd" \
"../../../bd/design_1/ip/design_1_axi_dynclk_0_0/sim/design_1_axi_dynclk_0_0.vhd" \

vcom -work v_tc_v6_2_9 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/1b22/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_v_tc_0_0/sim/design_1_v_tc_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ipshared/69dc/src/rgb2vga.vhd" \
"../../../bd/design_1/ip/design_1_rgb2vga_0_0/sim/design_1_rgb2vga_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_32  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/65ce/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_33  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/27ae/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/86fe/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6548/hdl" "+incdir+/tools/Vivado_2024_2/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l processing_system7_vip_v1_0_21 -l xil_defaultlib -l xlconstant_v1_1_9 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l smartconnect_v1_0 -l axi_register_slice_v2_1_33 -l lib_pkg_v1_0_4 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l blk_mem_gen_v8_4_9 -l lib_bmg_v1_0_18 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_35 -l axi_vdma_v6_3_21 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_19 -l v_tc_v6_2_9 -l generic_baseblocks_v2_1_2 -l axi_data_fifo_v2_1_32 -l axi_protocol_converter_v2_1_33 \
"../../../bd/design_1/ip/design_1_axi_mem_intercon_imp_auto_pc_0/sim/design_1_axi_mem_intercon_imp_auto_pc_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

