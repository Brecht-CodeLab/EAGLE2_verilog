## This file is a general .xdc for the ZYBO Rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project

##Clock signal
###IO_L11P_T1_SRCC_35
#set_property PACKAGE_PIN L16 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports clk]

###Switches
###IO_L19N_T3_VREF_35
#set_property PACKAGE_PIN G15 [get_ports {sw[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]

###IO_L24P_T3_34
#set_property PACKAGE_PIN P15 [get_ports {sw[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

##IO_L4N_T0_34
#set_property PACKAGE_PIN W13 [get_ports {sw[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

##IO_L9P_T1_DQS_34
#set_property PACKAGE_PIN T16 [get_ports {sw[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]

set_property PACKAGE_PIN T12 [get_ports test_killswitch]
set_property IOSTANDARD LVCMOS33 [get_ports tes_killswitch]

##Buttons
##IO_L20N_T3_34
#set_property PACKAGE_PIN R18 [get_ports {btn[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]

##IO_L24N_T3_34
#set_property PACKAGE_PIN P16 [get_ports {btn[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]

##IO_L18P_T2_34
#set_property PACKAGE_PIN V16 [get_ports {btn[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[2]}]

##IO_L7P_T1_34
#set_property PACKAGE_PIN Y16 [get_ports {btn[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[3]}]

##LEDs
##IO_L23P_T3_35
#set_property PACKAGE_PIN M14 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

##IO_L23N_T3_35
#set_property PACKAGE_PIN M15 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

##IO_0_35
#set_property PACKAGE_PIN G14 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

##IO_L3N_T0_DQS_AD1N_35
#set_property PACKAGE_PIN D18 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

##I2S Audio Codec
##IO_L12N_T1_MRCC_35
#set_property PACKAGE_PIN K18 [get_ports ac_bclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_bclk]

##IO_25_34
#set_property PACKAGE_PIN T19 [get_ports ac_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_mclk]

##IO_L23N_T3_34
#set_property PACKAGE_PIN P18 [get_ports ac_muten]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_muten]

##IO_L8P_T1_AD10P_35
#set_property PACKAGE_PIN M17 [get_ports ac_pbdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pbdat]

##IO_L11N_T1_SRCC_35
#set_property PACKAGE_PIN L17 [get_ports ac_pblrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pblrc]

##IO_L12P_T1_MRCC_35
#set_property PACKAGE_PIN K17 [get_ports ac_recdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_recdat]

##IO_L8N_T1_AD10N_35
#set_property PACKAGE_PIN M18 [get_ports ac_reclrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_reclrc]

##Audio Codec/external EEPROM IIC bus
#IO_L13P_T2_MRCC_34
set_property PACKAGE_PIN N18 [get_ports IIC_0_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_scl_io]

#IO_L23P_T3_34
set_property PACKAGE_PIN N17 [get_ports IIC_0_sda_io]
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_sda_io]


##Additional Ethernet signals
##IO_L6P_T0_35
#set_property PACKAGE_PIN F16 [get_ports eth_int_b]
#set_property IOSTANDARD LVCMOS33 [get_ports eth_int_b]

##IO_L3P_T0_DQS_AD1P_35
#set_property PACKAGE_PIN E17 [get_ports eth_rst_b]
#set_property IOSTANDARD LVCMOS33 [get_ports eth_rst_b]

##HDMI Signals
#IO_L13N_T2_MRCC_35
#set_property IOSTANDARD TMDS_33 [get_ports TMDS_clk_n]

#IO_L13P_T2_MRCC_35
#set_property PACKAGE_PIN H16 [get_ports TMDS_clk_p]
#set_property IOSTANDARD TMDS_33 [get_ports TMDS_clk_p]
#create_clock -period 8.334 -waveform {0.000 4.167} [get_ports TMDS_clk_p]

#IO_L4N_T0_35
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[0]}]

#IO_L4P_T0_35
#set_property PACKAGE_PIN D19 [get_ports {TMDS_data_p[0]}]
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[0]}]

#IO_L1N_T0_AD0N_35
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[1]}]

#IO_L1P_T0_AD0P_35
#set_property PACKAGE_PIN C20 [get_ports {TMDS_data_p[1]}]
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[1]}]

#IO_L2N_T0_AD8N_35
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[2]}]

#IO_L2P_T0_AD8P_35
#set_property PACKAGE_PIN B19 [get_ports {TMDS_data_p[2]}]
#set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[2]}]

##IO_L5N_T0_AD9N_35
#set_property PACKAGE_PIN E19 [get_ports hdmi_cec]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_cec]

#IO_L5P_T0_AD9P_35
#set_property PACKAGE_PIN E18 [get_ports {hdmi_hpd_tri_o[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {hdmi_hpd_tri_o[0]}]

##IO_L6N_T0_VREF_35
#set_property PACKAGE_PIN F17 [get_ports {HDMI_OEN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_OEN[0]}]

#IO_L16P_T2_35
#set_property PACKAGE_PIN G17 [get_ports ddc_scl_io]
#set_property IOSTANDARD LVCMOS33 [get_ports ddc_scl_io]

#IO_L16N_T2_35
#set_property PACKAGE_PIN G18 [get_ports ddc_sda_io]
#set_property IOSTANDARD LVCMOS33 [get_ports ddc_sda_io]

##Pmod Header JA (XADC)
##IO_L21N_T3_DQS_AD14N_35
#set_property PACKAGE_PIN N16 [get_ports {ja_n[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[0]}]

##IO_L21P_T3_DQS_AD14P_35
#set_property PACKAGE_PIN N15 [get_ports {ja_p[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[0]}]

##IO_L22N_T3_AD7N_35
#set_property PACKAGE_PIN L15 [get_ports {ja_n[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[1]}]

##IO_L22P_T3_AD7P_35
#set_property PACKAGE_PIN L14 [get_ports {ja_p[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[1]}]

##IO_L24N_T3_AD15N_35
#set_property PACKAGE_PIN J16 [get_ports {ja_n[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[2]}]

##IO_L24P_T3_AD15P_35
#set_property PACKAGE_PIN K16 [get_ports {ja_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[2]}]

##IO_L20N_T3_AD6N_35
#set_property PACKAGE_PIN J14 [get_ports {ja_n[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[3]}]

##IO_L20P_T3_AD6P_35
#set_property PACKAGE_PIN K14 [get_ports {ja_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[3]}]

##Pmod Header JB
##IO_L15N_T2_DQS_34
#set_property PACKAGE_PIN U20 [get_ports {jb_n[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_n[0]}]

##IO_L15P_T2_DQS_34
#set_property PACKAGE_PIN T20 [get_ports {jb_p[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_p[0]}]

##IO_L16N_T2_34
#set_property PACKAGE_PIN W20 [get_ports {jb_n[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_n[1]}]

##IO_L16P_T2_34
#set_property PACKAGE_PIN V20 [get_ports {jb_p[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_p[1]}]

##IO_L17N_T2_34
#set_property PACKAGE_PIN Y19 [get_ports {jb_n[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_n[2]}]

##IO_L17P_T2_34
#set_property PACKAGE_PIN Y18 [get_ports {jb_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_p[2]}]

##IO_L22N_T3_34
#set_property PACKAGE_PIN W19 [get_ports {jb_n[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_n[3]}]

##IO_L22P_T3_34
#set_property PACKAGE_PIN W18 [get_ports {jb_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jb_p[3]}]

##Pmod Header JC
##IO_L10N_T1_34
#set_property PACKAGE_PIN W15 [get_ports {jc_n[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_n[0]}]

##IO_L10P_T1_34
#set_property PACKAGE_PIN V15 [get_ports {jc_p[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_p[0]}]

##IO_L1N_T0_34
#set_property PACKAGE_PIN T10 [get_ports {jc_n[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_n[1]}]

##IO_L1P_T0_34
#set_property PACKAGE_PIN T11 [get_ports {jc_p[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_p[1]}]

##IO_L8N_T1_34
#set_property PACKAGE_PIN Y14 [get_ports {jc_n[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_n[2]}]

##IO_L8P_T1_34
#set_property PACKAGE_PIN W14 [get_ports {jc_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_p[2]}]

##IO_L2N_T0_34
#set_property PACKAGE_PIN U12 [get_ports {jc_n[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_n[3]}]

##IO_L2P_T0_34
#set_property PACKAGE_PIN T12 [get_ports {jc_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jc_p[3]}]

##Pmod Header JD
##IO_L5N_T0_34
#set_property PACKAGE_PIN T15 [get_ports {jd_n[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_n[0]}]

##IO_L5P_T0_34
#set_property PACKAGE_PIN T14 [get_ports {jd_p[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[0]}]

##IO_L6N_T0_VREF_34
#set_property PACKAGE_PIN R14 [get_ports {jd_n[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_n[1]}]

##IO_L6P_T0_34
#set_property PACKAGE_PIN P14 [get_ports {jd_p[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[1]}]

##IO_L11N_T1_SRCC_34
set_property PACKAGE_PIN U15 [get_ports tuner]
set_property IOSTANDARD LVCMOS33 [get_ports tuner]

##IO_L11P_T1_SRCC_34
#set_property PACKAGE_PIN U14 [get_ports {jd_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[2]}]

##IO_L21N_T3_DQS_34
set_property PACKAGE_PIN V18 [get_ports mode_inductive]
set_property IOSTANDARD LVCMOS33 [get_ports mode_inductive]

##IO_L21P_T3_DQS_34
#set_property PACKAGE_PIN V17 [get_ports {jd_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[3]}]

##Pmod Header JE
##IO_L4P_T0_34
#set_property PACKAGE_PIN V12 [get_ports {je[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[0]}]

##IO_L18N_T2_34
#set_property PACKAGE_PIN W16 [get_ports {je[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[1]}]

##IO_25_35
#set_property PACKAGE_PIN J15 [get_ports {je[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[2]}]

##IO_L19P_T3_35
#set_property PACKAGE_PIN H15 [get_ports {je[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[3]}]

##IO_L3N_T0_DQS_34
#set_property PACKAGE_PIN V13 [get_ports {je[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[4]}]

##IO_L9N_T1_DQS_34
#set_property PACKAGE_PIN U17 [get_ports {je[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[5]}]

##IO_L20P_T3_34
#set_property PACKAGE_PIN T17 [get_ports {je[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[6]}]

##IO_L7N_T1_34
#set_property PACKAGE_PIN Y17 [get_ports {je[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[7]}]


##USB-OTG overcurrent detect pin
##IO_L3P_T0_DQS_PUDC_B_34
#set_property PACKAGE_PIN U13 [get_ports otg_oc]
#set_property IOSTANDARD LVCMOS33 [get_ports otg_oc]


#VGA Connector
##IO_L7P_T1_AD2P_35
#set_property PACKAGE_PIN M19 [get_ports {vga_r[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]

##IO_L9N_T1_DQS_AD3N_35
#set_property PACKAGE_PIN L20 [get_ports {vga_r[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]

##IO_L17P_T2_AD5P_35
#set_property PACKAGE_PIN J20 [get_ports {vga_r[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]

##IO_L18N_T2_AD13N_35
#set_property PACKAGE_PIN G20 [get_ports {vga_r[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

##IO_L15P_T2_DQS_AD12P_35
#set_property PACKAGE_PIN F19 [get_ports {vga_r[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[4]}]

##IO_L14N_T2_AD4N_SRCC_35
#set_property PACKAGE_PIN H18 [get_ports {vga_g[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]

##IO_L14P_T2_SRCC_34
#set_property PACKAGE_PIN N20 [get_ports {vga_g[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]

##IO_L9P_T1_DQS_AD3P_35
#set_property PACKAGE_PIN L19 [get_ports {vga_g[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]

##IO_L10N_T1_AD11N_35
#set_property PACKAGE_PIN J19 [get_ports {vga_g[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

##IO_L17N_T2_AD5N_35
#set_property PACKAGE_PIN H20 [get_ports {vga_g[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[4]}]

##IO_L15N_T2_DQS_AD12N_35
#set_property PACKAGE_PIN F20 [get_ports {vga_g[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[5]}]

##IO_L14N_T2_SRCC_34
#set_property PACKAGE_PIN P20 [get_ports {vga_b[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]

##IO_L7N_T1_AD2N_35
#set_property PACKAGE_PIN M20 [get_ports {vga_b[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]

##IO_L10P_T1_AD11P_35
#set_property PACKAGE_PIN K19 [get_ports {vga_b[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]

##IO_L14P_T2_AD4P_SRCC_35
#set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]

##IO_L18P_T2_AD13P_35
#set_property PACKAGE_PIN G19 [get_ports {vga_b[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[4]}]

##IO_L13N_T2_MRCC_34
#set_property PACKAGE_PIN P19 [get_ports vga_hs]
#set_property IOSTANDARD LVCMOS33 [get_ports vga_hs]

##IO_0_34
#set_property PACKAGE_PIN R19 [get_ports vga_vs]
#set_property IOSTANDARD LVCMOS33 [get_ports vga_vs]

set_property IOSTANDARD LVCMOS33 [get_ports throttle]
set_property IOSTANDARD LVCMOS33 [get_ports rudd]
set_property IOSTANDARD LVCMOS33 [get_ports rc_kill_out]
set_property IOSTANDARD LVCMOS33 [get_ports rc_kill]
set_property IOSTANDARD LVCMOS33 [get_ports aile]
set_property PACKAGE_PIN T15 [get_ports aile]
set_property PACKAGE_PIN U14 [get_ports rc_kill]
set_property PACKAGE_PIN U20 [get_ports rc_kill_out]
set_property PACKAGE_PIN R14 [get_ports rudd]
set_property PACKAGE_PIN T14 [get_ports throttle]

#set_property IOSTANDARD LVCMOS33 [get_ports Core0_nIRQ]
#set_property IOSTANDARD LVCMOS33 [get_ports Core1_nIRQ]
#set_property PACKAGE_PIN W20 [get_ports Core0_nIRQ]
#set_property PACKAGE_PIN W19 [get_ports Core1_nIRQ]

#set_property IOSTANDARD LVCMOS33 [get_ports {gpio_testpins[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports BL]
set_property IOSTANDARD LVCMOS33 [get_ports BR]
set_property IOSTANDARD LVCMOS33 [get_ports elev]
set_property IOSTANDARD LVCMOS33 [get_ports FL]
set_property IOSTANDARD LVCMOS33 [get_ports FR]
set_property IOSTANDARD LVCMOS33 [get_ports Sonar]
set_property PACKAGE_PIN W16 [get_ports BL]
set_property PACKAGE_PIN V12 [get_ports BR]
set_property PACKAGE_PIN P14 [get_ports elev]
set_property PACKAGE_PIN H15 [get_ports FL]
set_property PACKAGE_PIN J15 [get_ports FR]
set_property PACKAGE_PIN V15 [get_ports Sonar]
#set_property PACKAGE_PIN V20 [get_ports {gpio_testpins[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports Core1_nIRQ]
set_property PACKAGE_PIN W20 [get_ports Core1_nIRQ]
set_property PULLDOWN true [get_ports Core1_nIRQ]

set_property IOSTANDARD LVCMOS33 [get_ports Core0_nIRQ]
set_property PACKAGE_PIN W19 [get_ports Core0_nIRQ]
set_property PULLDOWN true [get_ports Core0_nIRQ]

set_property IOSTANDARD LVCMOS33 [get_ports Sounder]
set_property PACKAGE_PIN Y18 [get_ports Sounder]

set_property IOSTANDARD LVCMOS33 [get_ports {gpio_testpin_tri_o[0]}]
set_property PACKAGE_PIN V20 [get_ports {gpio_testpin_tri_o[0]}]


set_property IOSTANDARD LVCMOS33 [get_ports Mode_switch]
set_property PACKAGE_PIN V17 [get_ports Mode_switch]


# SWIPT ports do not change unless you know what you are doing.
set_property PACKAGE_PIN Y17 [get_ports SWIPT_OUT0]
set_property PACKAGE_PIN T17 [get_ports SWIPT_OUT1]
set_property PACKAGE_PIN U17 [get_ports SWIPT_OUT2]
set_property PACKAGE_PIN V13 [get_ports SWIPT_OUT3]
set_property PACKAGE_PIN N15 [get_ports ADC_inp_14]
set_property PACKAGE_PIN N16 [get_ports ADC_inn_14]
set_property PACKAGE_PIN K14 [get_ports ADC_inn_6]
set_property PACKAGE_PIN J14 [get_ports ADC_inp_6]
set_property IOSTANDARD LVCMOS33 [get_ports SWIPT_OUT0]
set_property IOSTANDARD LVCMOS33 [get_ports SWIPT_OUT1]
set_property IOSTANDARD LVCMOS33 [get_ports SWIPT_OUT2]
set_property IOSTANDARD LVCMOS33 [get_ports SWIPT_OUT3]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_inn_6]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_inp_6]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_inp_14]
set_property IOSTANDARD LVCMOS33 [get_ports ADC_inn_14]

set_property PACKAGE_PIN U12 [get_ports FCLK_CLK0]
set_property IOSTANDARD LVCMOS33 [get_ports FCLK_CLK0]

#connect_debug_port u_ila_0/probe0 [get_nets [list {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_data[0]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_data[1]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_data[2]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_data[3]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_data[4]}]]
#connect_debug_port u_ila_0/probe1 [get_nets [list {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][0]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][1]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][2]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][3]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][4]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][5]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][6]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[I][7]}]]
#connect_debug_port u_ila_0/probe2 [get_nets [list {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][0]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][1]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][2]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][3]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][4]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][5]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][6]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_data[Q][7]}]]
#connect_debug_port u_ila_0/probe3 [get_nets [list {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[0]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[1]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[2]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[3]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[4]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[5]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[6]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[7]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[8]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[9]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[10]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[11]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[12]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[13]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[14]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_data[15]}]]
#connect_debug_port u_ila_0/probe6 [get_nets [list {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[0]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[1]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[2]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[3]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[4]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[5]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[6]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[7]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[8]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[9]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[10]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[11]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[12]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[13]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[14]} {ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_dataUnsigned[15]}]]
#connect_debug_port u_ila_0/probe8 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/filter_nextBlockReady]]
#connect_debug_port u_ila_0/probe10 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_inputValid]]
#connect_debug_port u_ila_0/probe11 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/in_readyForPreviousBlock]]
#connect_debug_port u_ila_0/probe12 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper/input_ready]]
#connect_debug_port u_ila_0/probe13 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_last]]
#connect_debug_port u_ila_0/probe14 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_nextBlockReady]]
#connect_debug_port u_ila_0/probe15 [get_nets [list ToplevelBlockdiagram_i/ModemS2Zybo_0/U0/tx_inst/framer_inst/mapper_outputValid]]



set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {leds_4bits_tri_o[0]}]
set_property PACKAGE_PIN D18 [get_ports {leds_4bits_tri_o[3]}]
set_property PACKAGE_PIN G14 [get_ports {leds_4bits_tri_o[2]}]
set_property PACKAGE_PIN M15 [get_ports {leds_4bits_tri_o[1]}]
set_property PACKAGE_PIN M14 [get_ports {leds_4bits_tri_o[0]}]

set_property PACKAGE_PIN

set_property MARK_DEBUG true [get_nets drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT0]
set_property MARK_DEBUG true [get_nets drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT1]
set_property MARK_DEBUG true [get_nets drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT2]
set_property MARK_DEBUG true [get_nets drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT3]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list drone_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list drone_i/SWIPT_2020_0/inst/SWIPT_2020_v1_0_S00_AXI_inst/swipt_toplevel_inst/SWIPT_OUT3]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
