library ieee;
use ieee.std_logic_1164.all;  -- Highlights

entity full_sub is
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end full_sub;
 
architecture dataflow of full_sub is
begin

S <=  A XOR B XOR Cin ;
Cout <= ((not A) AND B) OR (Cin AND (not A)) OR (Cin AND B) ;
 
end dataflow;

library ieee;
use ieee.std_logic_1164.all;  -- Highlights
 
entity sub is
Port( 
A3 : in STD_LOGIC;
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
end sub;
 
architecture Behavioral of sub is
 
component full_sub
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;
 
signal c1,c2,c3: STD_LOGIC;
signal c0 : std_logic := '0';
 
begin
 
FS1: full_sub port map( A0, B0, c0, S0, c1);
FS2: full_sub port map( A1, B1, c1, S1, c2);
FS3: full_sub port map( A2, B2, c2, S2, c3);
FS4: full_sub port map( A3, B3, c3, S3, Cout);
 
end Behavioral;

