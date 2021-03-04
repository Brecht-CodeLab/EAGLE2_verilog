#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2020.1 (64-bit)
#
# Filename    : drone.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Tue Mar 02 01:42:09 +0100 2021
# SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved. 
#
# usage: drone.sh [-help]
# usage: drone.sh [-lib_map_path]
# usage: drone.sh [-noclean_files]
# usage: drone.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'drone.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xilinx_vip xpm axi_infrastructure_v1_1_0 axi_vip_v1_1_7 processing_system7_vip_v1_0_9 xil_defaultlib axi_lite_ipif_v3_0_4 lib_cdc_v1_0_2 interrupt_control_v3_1_4 axi_gpio_v2_0_23 proc_sys_reset_v5_0_13 generic_baseblocks_v2_1_0 axi_register_slice_v2_1_21 fifo_generator_v13_2_5 axi_data_fifo_v2_1_20 axi_crossbar_v2_1_22 axi_protocol_converter_v2_1_21)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "drone.sh - Script generated by export_simulation (Vivado v2020.1 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "C:/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_7 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_9 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/6b56/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ip/drone_processing_system7_0_0/sim/drone_processing_system7_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/5f23/src/PWM_measure.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0_S00_AXI.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/5f23/hdl/RC_v1_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_RC_1_0/sim/drone_RC_1_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_RC_0_0/sim/drone_RC_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_23 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ip/drone_axi_gpio_testpins_0/sim/drone_axi_gpio_testpins_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_axi_gpio_led_0/sim/drone_axi_gpio_led_0.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/7836/kill_switch.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_kill_switch_0_0/sim/drone_kill_switch_0_0.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/7486/hdl/PWM_AXI.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/7486/hdl/PWM_AXI_v1_0_S00_AXI.vhd" \
    "$ref_dir/../../../../../src/bd/ipshared/7486/hdl/PWM_AXI_v1_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_PWM_AXI_triple_0_0/sim/drone_PWM_AXI_triple_0_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_PWM_AXI_triple_3_0/sim/drone_PWM_AXI_triple_3_0.vhd" \
    "$ref_dir/../../../../../src/bd/ip/drone_PWM_AXI_triple_5_0/sim/drone_PWM_AXI_triple_5_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ip/drone_rst_processing_system7_0_100M_0/sim/drone_rst_processing_system7_0_100M_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/TDP_bram.v" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/keccakF400Permutation.v" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/EAGLE_interface_CONTROL.v" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/EAGLE_to_AXI_interface.v" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0_S00_AXI.v" \
    "$ref_dir/../../../../../src/bd/ipshared/90cc/hdl/crypto2020_hash_ip_v1_v1_0.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_crypto2020_hash_ip_v1_0_0/sim/drone_crypto2020_hash_ip_v1_0_0.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_xadc_wiz_0_0/drone_xadc_wiz_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ip/drone_PWM_AXI_triple_4_0/sim/drone_PWM_AXI_triple_4_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/88ce/hdl/SWIPT_2020_v1_0_S00_AXI.v" \
    "$ref_dir/../../../../../src/bd/ipshared/88ce/swipt_toplevel.v" \
    "$ref_dir/../../../../../src/bd/ipshared/88ce/hdl/SWIPT_2020_v1_0.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_SWIPT_2020_0_0/sim/drone_SWIPT_2020_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_21 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_5 $vhdlan_opts \
    "$ref_dir/../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_5 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_20 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_crossbar_v2_1_22 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ip/drone_xbar_0/sim/drone_xbar_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_21 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../../src/bd/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../../src/bd/ipshared/6b56/hdl" +incdir+"C:/Xilinx/Vivado/2020.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_9/sim/drone_auto_pc_9.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_0/sim/drone_auto_pc_0.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_1/sim/drone_auto_pc_1.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_2/sim/drone_auto_pc_2.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_3/sim/drone_auto_pc_3.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_4/sim/drone_auto_pc_4.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_5/sim/drone_auto_pc_5.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_6/sim/drone_auto_pc_6.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_7/sim/drone_auto_pc_7.v" \
    "$ref_dir/../../../../../src/bd/ip/drone_auto_pc_8/sim/drone_auto_pc_8.v" \
    "$ref_dir/../../../../../src/bd/sim/drone.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.drone xil_defaultlib.glbl -o drone_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./drone_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./drone.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key drone_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc drone_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./drone.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: drone.sh [-help]\n\
Usage: drone.sh [-lib_map_path]\n\
Usage: drone.sh [-reset_run]\n\
Usage: drone.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
