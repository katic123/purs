-- LED BLINKER
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
entity led_blinker is
   generic (CLK_divider_width : integer range 2 to 32 := 32);
            -- CLK_divider_width =  3 for simulation
            -- CLK_divider_width = 26 for implementation on ZedBoard
   port(
        clk    : in  std_logic;
        reset  : in  std_logic;
        square : out std_logic
        );
end led_blinker;
architecture RTL of led_blinker is
   signal clk_divider: std_logic_vector(CLK_divider_width-1 downto 0);
   signal reset_sync : std_logic;
begin
   -- Synchronization of input signals
   process (clk) is
   begin
      if rising_edge(clk) then
         reset_sync <= reset;
      end if;
   end process;
   -- Synchonous counter
   process (clk) is
   begin
      if rising_edge(clk) then
         if reset_sync='1' then
            clk_divider <= (others => '0');
         else
            clk_divider <= clk_divider + 1;
         end if;
      end if;
   end process;
   square <= clk_divider(CLK_divider_width-1);
end rtl;