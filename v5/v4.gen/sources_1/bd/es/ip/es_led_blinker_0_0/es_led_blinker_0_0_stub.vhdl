-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Nov 11 12:34:07 2026
-- Host        : arch-t14s running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/leon/Desktop/katic_leon/v5/v4.gen/sources_1/bd/es/ip/es_led_blinker_0_0/es_led_blinker_0_0_stub.vhdl
-- Design      : es_led_blinker_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity es_led_blinker_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );

end es_led_blinker_0_0;

architecture stub of es_led_blinker_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,square";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_blinker,Vivado 2020.2";
begin
end;
