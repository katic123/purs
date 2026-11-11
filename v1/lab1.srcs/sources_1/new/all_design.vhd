-- ALL DESIGN
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.init01.all;
entity all_design is
   port (clk   : in  std_logic;
         reset : in  std_logic;
         led0  : out std_logic;
         led1  : out std_logic);
end all_design;
architecture RTL of all_design is
   component led_blinker is
   generic (CLK_divider_width : integer range 2 to 32);
   port(clk    : in  std_logic;
        reset  : in  std_logic;
        square : out std_logic);
   end component;
   signal led_blikner_out : std_logic;
begin

   blinker: component led_blinker
      generic map(CLK_divider_width => CLK_divider_width)
      port map (clk    => clk,
                reset  => reset,
                square => led_blikner_out);
   led0 <= led_blikner_out;
   led1 <= not led_blikner_out;
end RTL;