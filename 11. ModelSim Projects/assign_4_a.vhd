library ieee;
use ieee.std_logic_1164.all;

entity D_FlipFlop is
port( 
I: in std_logic;
clk: in std_logic;
rst: in std_logic;
prst: in std_logic;
Y: out std_logic);
end D_FlipFlop;

architecture behavioral of D_FlipFlop is
begin
process(prst,rst,clk,I)
begin
if (rst='1') then
Y <= '0';
elsif (prst='1') then
Y <= '1' ;
elsif(rising_edge(clk)) then
Y <= I;
end if;
end process;

end behavioral;

