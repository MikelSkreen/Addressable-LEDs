//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2.1 (win64) Build 1302555 Wed Aug  5 13:06:02 MDT 2015
//Date        : Thu Feb 04 13:54:03 2016
//Host        : WK115 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_out,
    push_buttons_4bits_tri_i,
    reset,
    sys_clock);
  output led_out;
  input [3:0]push_buttons_4bits_tri_i;
  input reset;
  input sys_clock;

  wire led_out;
  wire [3:0]push_buttons_4bits_tri_i;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.led_out(led_out),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
