--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Wed Nov 11 12:34:20 2026
--Host        : arch-t14s running 64-bit unknown
--Command     : generate_target es.bd
--Design      : es
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity es is
  port (
    FIXED_IO_0_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_0_ps_clk : inout STD_LOGIC;
    FIXED_IO_0_ps_porb : inout STD_LOGIC;
    FIXED_IO_0_ps_srstb : inout STD_LOGIC;
    LD0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of es : entity is "es,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=es,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of es : entity is "es.hwdef";
end es;

architecture STRUCTURE of es is
  component es_processing_system7_0_1 is
  port (
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component es_processing_system7_0_1;
  component es_led_blinker_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    square : out STD_LOGIC
  );
  end component es_led_blinker_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal led_blinker_0_square : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_0_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 PS_SRSTB";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET reset, CLK_DOMAIN es_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of FIXED_IO_0_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO_0 MIO";
  attribute X_INTERFACE_PARAMETER of FIXED_IO_0_mio : signal is "XIL_INTERFACENAME FIXED_IO_0, CAN_DEBUG false";
begin
  LD0 <= led_blinker_0_square;
  clk_0_1 <= clk;
  reset_0_1 <= reset;
led_blinker_0: component es_led_blinker_0_0
     port map (
      clk => clk_0_1,
      reset => reset_0_1,
      square => led_blinker_0_square
    );
processing_system7_0: component es_processing_system7_0_1
     port map (
      MIO(53 downto 0) => FIXED_IO_0_mio(53 downto 0),
      PS_CLK => FIXED_IO_0_ps_clk,
      PS_PORB => FIXED_IO_0_ps_porb,
      PS_SRSTB => FIXED_IO_0_ps_srstb
    );
end STRUCTURE;
