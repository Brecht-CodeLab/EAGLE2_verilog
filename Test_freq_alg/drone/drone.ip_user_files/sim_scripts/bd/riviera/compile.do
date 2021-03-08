vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_7
vlib riviera/processing_system7_vip_v1_0_9
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_23
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_21
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_20
vlib riviera/axi_crossbar_v2_1_22
vlib riviera/axi_protocol_converter_v2_1_21

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 riviera/axi_vip_v1_1_7
vmap processing_system7_vip_v1_0_9 riviera/processing_system7_vip_v1_0_9
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 riviera/axi_gpio_v2_0_23
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_21 riviera/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 riviera/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 riviera/axi_crossbar_v2_1_22
vmap axi_protocol_converter_v2_1_21 riviera/axi_protocol_converter_v2_1_21

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_9  -sv2k12 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ip/drone_processing_system7_0_0/sim/drone_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../src/bd/ipshared/5f23/src/PWM_measure.vhd" \
"../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0_S00_AXI.vhd" \
"../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0.vhd" \
"../../../../../src/bd/ip/drone_RC_1_0/sim/drone_RC_1_0.vhd" \
"../../../../../src/bd/ip/drone_RC_0_0/sim/drone_RC_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../../src/bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../src/bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../../src/bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23 -93 \
"../../../../../src/bd/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
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

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../../src/bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../src/bd/ip/drone_rst_processing_system7_0_100M_0/sim/drone_rst_processing_system7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/90cc/hdl/TDP_bram.v" \
"../../../../../src/bd/ipshared/90cc/hdl/keccakF400Permutation.v" \
"../../../../../src/bd/ipshared/90cc/hdl/EAGLE_interface_CONTROL.v" \
"../../../../../src/bd/ipshared/90cc/hdl/EAGLE_to_AXI_interface.v" \
"../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0_S00_AXI.v" \
"../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0.v" \
"../../../../../src/bd/ip/drone_crypto2020_hash_ip_v1_0_0/sim/drone_crypto2020_hash_ip_v1_0_0.v" \
"../../../../../src/bd/ip/drone_xadc_wiz_0_0/drone_xadc_wiz_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../src/bd/ip/drone_PWM_AXI_triple_4_0/sim/drone_PWM_AXI_triple_4_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/e981/src/CalcL.v" \
"../../../../../src/bd/ipshared/e981/src/DutyAdjust.v" \
"../../../../../src/bd/ipshared/e981/src/Freq.v" \
"../../../../../src/bd/ipshared/e981/src/Optimization.v" \
"../../../../../src/bd/ipshared/e981/hdl/SWIPT_2020_v1_0_S00_AXI.v" \
"../../../../../src/bd/ipshared/e981/src/SwiptOut.v" \
"../../../../../src/bd/ipshared/e981/swipt_toplevel.v" \
"../../../../../src/bd/ipshared/e981/hdl/SWIPT_2020_v1_0.v" \
"../../../../../src/bd/ip/drone_SWIPT_2020_0_0/sim/drone_SWIPT_2020_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ip/drone_xbar_0/sim/drone_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../../src/bd/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../src/bd/ipshared/ec67/hdl" "+incdir+../../../../../src/bd/ipshared/6b56/hdl" "+incdir+C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
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

