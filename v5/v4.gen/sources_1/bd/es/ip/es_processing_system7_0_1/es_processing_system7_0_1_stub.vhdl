-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Nov 11 12:33:36 2026
-- Host        : arch-t14s running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/leon/Desktop/katic_leon/v5/v4.gen/sources_1/bd/es/ip/es_processing_system7_0_1/es_processing_system7_0_1_stub.vhdl
-- Design      : es_processing_system7_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity es_processing_system7_0_1 is
  Port ( 
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );

end es_processing_system7_0_1;

architecture stub of es_processing_system7_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "MIO[53:0],PS_SRSTB,PS_CLK,PS_PORB";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "processing_system7_v5_5_processing_system7,Vivado 2020.2";
begin
end;
