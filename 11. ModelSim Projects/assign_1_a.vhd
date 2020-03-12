library ieee;
use ieee.std_logic_1164.all;  -- Highlights

entity full_adder is
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end full_adder;
 
architecture dataflow of full_adder is
begin

S <= A XOR B XOR Cin ;
Cout <= (A AND B) OR (Cin AND A) OR (Cin AND B) ;
 
end dataflow;

library ieee;
use ieee.std_logic_1164.all;  -- Highlights
 
entity adder is
Port ( A3 : in STD_LOGIC;
A2 : in STD_LOGIC;
A1 : in STD_LOGIC;
A0 : in STD_LOGIC;
B3 : in STD_LOGIC;
B2 : in STD_LOGIC;
B1 : in STD_LOGIC;
B0 : in STD_LOGIC;
S3 : out STD_LOGIC;
S2 : out STD_LOGIC;
S1 : out STD_LOGIC;
S0 : out STD_LOGIC;
Cout : out STD_LOGIC);
end adder;
 
architecture Behavioral of adder is
 
component full_adder
Port ( A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;
 
signal c1,c2,c3: STD_LOGIC;
signal c0 : std_logic := '0';
 
begin
 
FA1: full_adder port map( A0, B0, c0, S0, c1);
FA2: full_adder port map( A1, B1, c1, S1, c2);
FA3: full_adder port map( A2, B2, c2, S2, c3);
FA4: full_adder port map( A3, B3, c3, S3, Cout);
 
end Behavioral;

