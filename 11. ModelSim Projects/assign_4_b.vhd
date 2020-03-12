library ieee;
use ieee.std_logic_1164.all;

entity D_FlipFlop is
port( 
I: in std_logic;
clk: in std_logic;
rst: in std_logic;
prst: in std_logic;
YD: out std_logic);
end D_FlipFlop;



architecture behavioral of D_FlipFlop is
begin
process(prst,rst,clk,I)
begin
if (rst='1') then
YD <= '0';
elsif (prst='1') then
YD <= '1' ;
elsif(rising_edge(clk)) then
YD <= I;
end if;
end process;

end behavioral;


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
YM : out STD_LOGIC);
end MUX;

architecture Behavioral of MUX is
begin
process (S1,S0,I3,I2,I1,I0)
begin
if (S1 = '0' AND S0 = '0') then
YM <= I0;
elsif (S1 = '0' AND S0 = '1') then
YM <= I1;
elsif (S1 = '1' AND S0 = '0') then
YM <= I2;
else
YM <= I3;
end if;
end process;
end Behavioral;


library ieee;
use ieee.std_logic_1164.all;
 
entity Cir_Register is
Port( 
Inp : in std_logic_vector(3 downto 0);
Q: out std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
clck: in std_logic);
end Cir_Register;
 


architecture Behavioral of Cir_Register is
 
component D_FlipFlop
port( 
I: in std_logic;
clk: in std_logic;
rst: in std_logic;
prst: in std_logic;
YD: out std_logic);
end component;

component MUX
Port( 
S1 : in  STD_LOGIC;
S0 : in  STD_LOGIC;
I3 : in  STD_LOGIC;
I2 : in  STD_LOGIC;
I1 : in  STD_LOGIC;
I0 : in  STD_LOGIC;
YM : out STD_LOGIC);
end component;


signal Y : std_logic_vector(3 downto 0) :=  (others => '0');
signal QM : std_logic_vector(3 downto 0) :=  (others => '0');
begin

M3: MUX port map( S(1) , S(0), Inp(3) , QM(2) , QM(0) , '0' , Y(3) );
M2: MUX port map( S(1) , S(0), Inp(2) , QM(1) , QM(3) , '0' , Y(2) );
M1: MUX port map( S(1) , S(0), Inp(1) , QM(0) , QM(2) , '0' , Y(1) );
M0: MUX port map( S(1) , S(0), Inp(0) , QM(3) , QM(1) , '0' , Y(0) );

D3: D_FlipFlop PORT MAP( Y(3) , clck , '0' , '0' , QM(3));
D2: D_FlipFlop PORT MAP( Y(2) , clck , '0' , '0' , QM(2));
D1: D_FlipFlop PORT MAP( Y(1) , clck , '0' , '0' , QM(1));
D0: D_FlipFlop PORT MAP( Y(0) , clck , '0' , '0' , QM(0));

Q <= QM;

end Behavioral;

