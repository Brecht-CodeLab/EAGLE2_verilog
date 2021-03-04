vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_7
vlib modelsim_lib/msim/processing_system7_vip_v1_0_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_23
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_21
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_20
vlib modelsim_lib/msim/axi_crossbar_v2_1_22
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_21

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 modelsim_lib/msim/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 modelsim_lib/msim/processing_system7_vip_v1_0_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 modelsim_lib/msim/axi_gpio_v2_0_23
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 modelsim_lib/msim/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 modelsim_lib/msim/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 modelsim_lib/msim/axi_crossbar_v2_1_22
vmap axi_protocol_converter_v2_1_21 modelsim_lib/msim/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -incr -sv -L axi_vip_v1_1_7 -L processing_system7_vip_v1_0_9 -L xilinx_vip "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ip/drone_processing_system7_0_0/sim/drone_processing_system7_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../../../src/bd/ipshared/5f23/src/PWM_measure.vhd" \
"../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0_S00_AXI.vhd" \
"../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0.vhd" \
"../../../../../src/bd/ip/drone_RC_1_0/sim/drone_RC_1_0.vhd" \
"../../../../../src/bd/ip/drone_RC_0_0/sim/drone_RC_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../../src/bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../../src/bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../../src/bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23  -93 \
"../../../../../src/bd/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../../src/bd/ip/drone_axi_gpio_testpins_0/sim/drone_axi_gpio_testpins_0.vhd" \
"../../../../../src/bd/ip/drone_axi_gpio_led_0/sim/drone_axi_gpio_led_0.vhd" \
"../../../../../src/bd/ipshared/7836/kill_switch.vhd" \
"../../../../../src/bd/ip/drone_kill_switch_0_0/sim/drone_kill_switch_0_0.vhd" \
"../../../../../src/bd/ipshared/7486/hdl/PWM_AXI.vhd" \
"../../../../../src/bd/ipshared/7486/hdl/PWM_AXI_v1_0_S00_AXI.vhd" \
"../../../../../src/bd/ipshared/7486/hdl/PWM_AXI_v1_0.vhd" \
"../../../../../src/bd/ip/drone_PWM_AXI_triple_0_0/sim/drone_PWM_AXI_triple_0_0.vhd" \
"../../../../../src/bd/ip/drone_PWM_AXI_triple_3_0/sim/drone_PWM_AXI_triple_3_0.vhd" \
"../../../../../src/bd/ip/drone_PWM_AXI_triple_5_0/sim/drone_PWM_AXI_triple_5_0.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../../src/bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../../../src/bd/ip/drone_rst_processing_system7_0_100M_0/sim/drone_rst_processing_system7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/90cc/hdl/TDP_bram.v" \
"../../../../../src/bd/ipshared/90cc/hdl/keccakF400Permutation.v" \
"../../../../../src/bd/ipshared/90cc/hdl/EAGLE_interface_CONTROL.v" \
"../../../../../src/bd/ipshared/90cc/hdl/EAGLE_to_AXI_interface.v" \
"../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0_S00_AXI.v" \
"../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0.v" \
"../../../../../src/bd/ip/drone_crypto2020_hash_ip_v1_0_0/sim/drone_crypto2020_hash_ip_v1_0_0.v" \
"../../../../../src/bd/ip/drone_xadc_wiz_0_0/drone_xadc_wiz_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../../../src/bd/ip/drone_PWM_AXI_triple_4_0/sim/drone_PWM_AXI_triple_4_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/037c/src/Freq.v" \
"../../../../../src/bd/ipshared/037c/src/Optimization.v" \
"../../../../../src/bd/ipshared/037c/hdl/SWIPT_2020_v1_0_S00_AXI.v" \
"../../../../../src/bd/ipshared/037c/src/SwiptOut.v" \
"../../../../../src/bd/ipshared/037c/swipt_toplevel.v" \
"../../../../../src/bd/ipshared/037c/hdl/SWIPT_2020_v1_0.v" \
"../../../../../src/bd/ip/drone_SWIPT_2020_0_0/sim/drone_SWIPT_2020_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ip/drone_xbar_0/sim/drone_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_21  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ip/drone_auto_pc_9/sim/drone_auto_pc_9.v" \
"../../../../../src/bd/ip/drone_auto_pc_0/sim/drone_auto_pc_0.v" \
"../../../../../src/bd/ip/drone_auto_pc_1/sim/drone_auto_pc_1.v" \
"../../../../../src/bd/ip/drone_auto_pc_2/sim/drone_auto_pc_2.v" \
"../../../../../src/bd/ip/drone_auto_pc_3/sim/drone_auto_pc_3.v" \
"../../../../../src/bd/ip/drone_auto_pc_4/sim/drone_auto_pc_4.v" \
"../../../../../src/bd/ip/drone_auto_pc_5/sim/drone_auto_pc_5.v" \
"../../../../../src/bd/ip/drone_auto_pc_6/sim/drone_auto_pc_6.v" \
"../../../../../src/bd/ip/drone_auto_pc_7/sim/drone_auto_pc_7.v" \
"../../../../../src/bd/ip/drone_auto_pc_8/sim/drone_auto_pc_8.v" \
"../../../../../src/bd/sim/drone.v" \

vlog -work xil_defaultlib \
"glbl.v"
