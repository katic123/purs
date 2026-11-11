// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Nov  9 06:12:44 2026
// Host        : arch-t14s running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/leon/Desktop/katic_leon/v4/v4.gen/sources_1/bd/es/ip/es_led_blinker_0_0/es_led_blinker_0_0_stub.v
// Design      : es_led_blinker_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "led_blinker,Vivado 2020.2" *)
module es_led_blinker_0_0(clk, reset, square)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,square" */;
  input clk;
  input reset;
  output square;
endmodule
