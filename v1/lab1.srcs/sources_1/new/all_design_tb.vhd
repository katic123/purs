-- ALL DESIGN_TB
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity all_design_tb is
end all_design_tb;

architecture Behavioral of all_design_tb is
   constant Tclk : time := 10 ns;  -- Period of 100 MHz clock

   component all_design is
      port (clk   : in  std_logic;
            reset : in  std_logic;
            led0  : out std_logic;
            led1  : out std_logic);
   end component;

   signal clk   : std_logic := '0';
   signal reset : std_logic;
   signal led0  : std_logic;
   signal led1  : std_logic;
begin
   -- generation of input signals
   clk   <= not clk after Tclk/2;
   reset <= '1', '0' after 5.25*Tclk;

   -- instance of unit under test
   uut: component all_design
      port map (clk   => clk,
                reset => reset,
                led0  => led0,
                led1  => led1);

   -- analysis of output signals
   --    => not needed here because of circuit's simplicity
   --    => visual check of waveforms is performed after simulation
end Behavioral;