library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity MUX is
Port( 
S1 : in  STD_LOGIC;
S0 : in  STD_LOGIC;
I3 : in  STD_LOGIC;
I2 : in  STD_LOGIC;
I1 : in  STD_LOGIC;
I0 : in  STD_LOGIC;
Y : out STD_LOGIC);
end MUX;
architecture Behavioral of MUX is
begin
process (S1,S0,I3,I2,I1,I0)
begin
if (S1 = '0' AND S0 = '0') then
Y <= I0;
elsif (S1 = '0' AND S0 = '1') then
Y <= I1;
elsif (S1 = '1' AND S0 = '0') then
Y <= I2;
else
Y <= I3;
end if;
end process;
end Behavioral;

library ieee;
use ieee.std_logic_1164.all;
 
entity Func is
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
C : in STD_LOGIC;
D : in STD_LOGIC;
Y0 : out STD_LOGIC);
end Func;
 
architecture Behavioral of Func is
 
component MUX
Port( 
S1 : in  STD_LOGIC;
S0 : in  STD_LOGIC;
I3 : in  STD_LOGIC;
I2 : in  STD_LOGIC;
I1 : in  STD_LOGIC;
I0 : in  STD_LOGIC;
Y : out STD_LOGIC);
end component;

signal I1,I2,I3,I0: std_logic;
begin

I0 <= C xor D;
I1 <= C xnor D;
I2 <= C and (not D);
I3 <= D or (not D);

uut: MUX port map( A , B, I3 , I2 , I1 , I0 , Y0 );

end Behavioral;