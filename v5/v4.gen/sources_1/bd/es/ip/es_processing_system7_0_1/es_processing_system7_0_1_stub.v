// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 11 12:33:36 2026
// Host        : arch-t14s running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/leon/Desktop/katic_leon/v5/v4.gen/sources_1/bd/es/ip/es_processing_system7_0_1/es_processing_system7_0_1_stub.v
// Design      : es_processing_system7_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2020.2" *)
module es_processing_system7_0_1(MIO, PS_SRSTB, PS_CLK, PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="MIO[53:0],PS_SRSTB,PS_CLK,PS_PORB" */;
  inout [53:0]MIO;
  inout PS_SRSTB;
  inout PS_CLK;
  inout PS_PORB;
endmodule
