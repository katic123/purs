--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Sun Nov  8 22:57:20 2026
--Host        : arch-t14s running 64-bit unknown
--Command     : generate_target v3.bd
--Design      : v3
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity v3 is
  port (
    LD2 : out STD_LOGIC;
    LD3 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of v3 : entity is "v3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=v3,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of v3 : entity is "v3.hwdef";
end v3;

architecture STRUCTURE of v3 is
  component v3_led_blinker_LD2_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  end component v3_led_blinker_LD2_0;
  component v3_LD3_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  end component v3_LD3_0;
  signal clk_0_1 : STD_LOGIC;
  signal led_blinker_LD2_square : STD_LOGIC;
  signal led_blinker_LD3_square : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN v3_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  LD2 <= led_blinker_LD2_square;
  LD3 <= led_blinker_LD3_square;
  clk_0_1 <= clk;
  reset_0_1 <= reset;
led_blinker_LD2: component v3_led_blinker_LD2_0
     port map (
      clk => clk_0_1,
      reset => reset_0_1,
      square => led_blinker_LD2_square
    );
led_blinker_LD3: component v3_LD3_0
     port map (
      clk => clk_0_1,
      reset => reset_0_1,
      square => led_blinker_LD3_square
    );
end STRUCTURE;
