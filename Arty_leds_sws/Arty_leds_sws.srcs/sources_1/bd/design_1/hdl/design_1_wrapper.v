//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Mon Aug 03 11:12:50 2015
//Host        : WK115 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_4bit_tri_o,
    led_rgb_tri_o,
    reset,
    sw_tri_i,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output [3:0]led_4bit_tri_o;
  output [11:0]led_rgb_tri_o;
  input reset;
  input [3:0]sw_tri_i;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [3:0]led_4bit_tri_o;
  wire [11:0]led_rgb_tri_o;
  wire reset;
  wire [3:0]sw_tri_i;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.led_4bit_tri_o(led_4bit_tri_o),
        .led_rgb_tri_o(led_rgb_tri_o),
        .reset(reset),
        .sw_tri_i(sw_tri_i),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
