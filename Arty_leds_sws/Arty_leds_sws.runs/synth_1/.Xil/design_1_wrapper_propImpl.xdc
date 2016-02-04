set_property SRC_FILE_INFO {cfile:c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_leds_sws/Arty_leds_sws.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_2/design_1_clk_wiz_1_2.xdc rfile:../../../Arty_leds_sws.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_2/design_1_clk_wiz_1_2.xdc id:1 order:EARLY scoped_inst:design_1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Master.xdc rfile:../../../../Arty_Master.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { UART_RXD }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
set_property src_info {type:XDC file:2 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { UART_TXD }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in
