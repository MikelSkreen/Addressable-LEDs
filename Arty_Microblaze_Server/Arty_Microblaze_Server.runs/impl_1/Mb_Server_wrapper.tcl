proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7a35ticsg324-1L
  set_property board_part digilentinc.com:arty:part0:1.1 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.cache/wt [current_project]
  set_property parent.project_path C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.xpr [current_project]
  set_property ip_repo_paths c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.cache/ip [current_project]
  set_property ip_output_repo c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.cache/ip [current_project]
  add_files -quiet C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.runs/synth_1/Mb_Server_wrapper.dcp
  add_files C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/Mb_Server.bmm
  set_property SCOPED_TO_REF Mb_Server [get_files -all C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/Mb_Server.bmm]
  set_property SCOPED_TO_CELLS {} [get_files -all C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/Mb_Server.bmm]
  add_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/cfde4cbb/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF Mb_Server [get_files -all c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/cfde4cbb/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/ipshared/xilinx.com/microblaze_v9_5/cfde4cbb/data/mb_bootloop_le.elf]
  read_xdc -ref Mb_Server_microblaze_0_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_0/Mb_Server_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_0/Mb_Server_microblaze_0_0.xdc]
  read_xdc -ref Mb_Server_dlmb_v10_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_dlmb_v10_0/Mb_Server_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_dlmb_v10_0/Mb_Server_dlmb_v10_0.xdc]
  read_xdc -ref Mb_Server_ilmb_v10_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_ilmb_v10_0/Mb_Server_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_ilmb_v10_0/Mb_Server_ilmb_v10_0.xdc]
  read_xdc -ref Mb_Server_microblaze_0_axi_intc_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_axi_intc_0/Mb_Server_microblaze_0_axi_intc_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_axi_intc_0/Mb_Server_microblaze_0_axi_intc_0.xdc]
  read_xdc -ref Mb_Server_mdm_1_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_mdm_1_0/Mb_Server_mdm_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_mdm_1_0/Mb_Server_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_clk_wiz_1_0 -cells inst c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_clk_wiz_1_0/Mb_Server_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_clk_wiz_1_0/Mb_Server_clk_wiz_1_0_board.xdc]
  read_xdc -ref Mb_Server_clk_wiz_1_0 -cells inst c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_clk_wiz_1_0/Mb_Server_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_clk_wiz_1_0/Mb_Server_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_rst_clk_wiz_1_100M_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_clk_wiz_1_100M_0/Mb_Server_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_clk_wiz_1_100M_0/Mb_Server_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref Mb_Server_rst_clk_wiz_1_100M_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_clk_wiz_1_100M_0/Mb_Server_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_clk_wiz_1_100M_0/Mb_Server_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_mig_7series_0_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_mig_7series_0_0/Mb_Server_mig_7series_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_mig_7series_0_0/Mb_Server_mig_7series_0_0_board.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_axi_uartlite_0_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_uartlite_0_0/Mb_Server_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_uartlite_0_0/Mb_Server_axi_uartlite_0_0_board.xdc]
  read_xdc -ref Mb_Server_axi_uartlite_0_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_uartlite_0_0/Mb_Server_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_uartlite_0_0/Mb_Server_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_axi_ethernetlite_0_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0_board.xdc]
  read_xdc -ref Mb_Server_axi_ethernetlite_0_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0.xdc]
  read_xdc -ref Mb_Server_axi_timer_0_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_timer_0_0/Mb_Server_axi_timer_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_timer_0_0/Mb_Server_axi_timer_0_0.xdc]
  read_xdc -prop_thru_buffers -ref Mb_Server_rst_mig_7series_0_83M_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_mig_7series_0_83M_0/Mb_Server_rst_mig_7series_0_83M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_mig_7series_0_83M_0/Mb_Server_rst_mig_7series_0_83M_0_board.xdc]
  read_xdc -ref Mb_Server_rst_mig_7series_0_83M_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_mig_7series_0_83M_0/Mb_Server_rst_mig_7series_0_83M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_rst_mig_7series_0_83M_0/Mb_Server_rst_mig_7series_0_83M_0.xdc]
  read_xdc C:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/constrs_1/new/eth_ref_clk.xdc
  read_xdc -ref Mb_Server_microblaze_0_axi_intc_0 -cells U0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_axi_intc_0/Mb_Server_microblaze_0_axi_intc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_microblaze_0_axi_intc_0/Mb_Server_microblaze_0_axi_intc_0_clocks.xdc]
  read_xdc -ref Mb_Server_axi_ethernetlite_0_0 c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_axi_ethernetlite_0_0/Mb_Server_axi_ethernetlite_0_0_clocks.xdc]
  read_xdc -ref Mb_Server_auto_cc_0 -cells inst c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_cc_0/Mb_Server_auto_cc_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_cc_0/Mb_Server_auto_cc_0_clocks.xdc]
  read_xdc -ref Mb_Server_auto_us_0 -cells inst c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_us_0/Mb_Server_auto_us_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_us_0/Mb_Server_auto_us_0_clocks.xdc]
  read_xdc -ref Mb_Server_auto_us_1 -cells inst c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_us_1/Mb_Server_auto_us_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/mskreen.NI/OneDrive/Digilent/Arty/Arty_Microblaze_Server/Arty_Microblaze_Server.srcs/sources_1/bd/Mb_Server/ip/Mb_Server_auto_us_1/Mb_Server_auto_us_1_clocks.xdc]
  link_design -top Mb_Server_wrapper -part xc7a35ticsg324-1L
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force Mb_Server_wrapper_opt.dcp
  catch {report_drc -file Mb_Server_wrapper_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  catch {write_hwdef -file Mb_Server_wrapper.hwdef}
  place_design 
  write_checkpoint -force Mb_Server_wrapper_placed.dcp
  catch { report_io -file Mb_Server_wrapper_io_placed.rpt }
  catch { report_utilization -file Mb_Server_wrapper_utilization_placed.rpt -pb Mb_Server_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file Mb_Server_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force Mb_Server_wrapper_routed.dcp
  catch { report_drc -file Mb_Server_wrapper_drc_routed.rpt -pb Mb_Server_wrapper_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file Mb_Server_wrapper_timing_summary_routed.rpt -rpx Mb_Server_wrapper_timing_summary_routed.rpx }
  catch { report_power -file Mb_Server_wrapper_power_routed.rpt -pb Mb_Server_wrapper_power_summary_routed.pb }
  catch { report_route_status -file Mb_Server_wrapper_route_status.rpt -pb Mb_Server_wrapper_route_status.pb }
  catch { report_clock_utilization -file Mb_Server_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force Mb_Server_wrapper.mmi }
  catch { write_bmm -force Mb_Server_wrapper_bd.bmm }
  write_bitstream -force Mb_Server_wrapper.bit 
  catch { write_sysdef -hwdef Mb_Server_wrapper.hwdef -bitfile Mb_Server_wrapper.bit -meminfo Mb_Server_wrapper.mmi -ltxfile debug_nets.ltx -file Mb_Server_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

