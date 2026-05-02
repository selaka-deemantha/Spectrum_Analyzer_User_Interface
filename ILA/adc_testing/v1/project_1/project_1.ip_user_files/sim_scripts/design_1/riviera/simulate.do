transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xil_defaultlib -L xpm -L xlconstant_v1_1_9 -L xbip_utils_v3_0_14 -L axi_utils_v2_0_10 -L c_reg_fd_v12_0_10 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_pipe_v3_0_10 -L c_addsub_v12_0_19 -L c_shift_ram_v12_0_18 -L mult_gen_v12_0_22 -L floating_point_v7_1_19 -L cmpy_v6_0_25 -L floating_point_v7_0_24 -L xfft_v9_1_13 -L xlconcat_v2_1_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run 1000ns

endsim

quit -force
