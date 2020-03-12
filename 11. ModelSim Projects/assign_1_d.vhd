library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is
port(
A,B: in std_logic_vector(3 downto 0);
R: out std_logic_vector(7 downto 0)
);
end entity Multiplier;

architecture Behavioral of Multiplier is
begin

R <= std_logic_vector(unsigned(A) * unsigned(B));

end architecture Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

 
entity calc is
Port( 
A : in std_logic_vector(3 downto 0);
B : in std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
R : out std_logic_vector(7 downto 0));
end calc;
 
architecture Behavioral of calc is
 
component full_adder
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;

component full_sub
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
Cin : in STD_LOGIC;
S : out STD_LOGIC;
Cout : out STD_LOGIC);
end component;

COMPONENT Multiplier
port(
A , B: in std_logic_vector(3 downto 0);
R: out std_logic_vector(7 downto 0)
);
END COMPONENT;
 
signal RA : std_logic_vector(7 downto 0) := (others => '0');
signal RS : std_logic_vector(7 downto 0) := (others => '0');
signal RM : std_logic_vector(7 downto 0) := (others => '0');
signal tmp : std_logic := '0';
signal c1,c2,c3: STD_LOGIC;
signal f1,f2,f3: STD_LOGIC;
 
begin

FS1: full_sub port map( A(0), B(0), tmp,  RS(0), f1);
FS2: full_sub port map( A(1), B(1), f1, RS(1), f2);
FS3: full_sub port map( A(2), B(2), f2, RS(2), f3);
FS4: full_sub port map( A(3), B(3), f3, RS(3), RS(4));

M1 : Multiplier port map(A,B,RM);

FA1: full_adder port map( A(0), B(0), tmp,  RA(0), c1);
FA2: full_adder port map( A(1), B(1), c1, RA(1), c2);
FA3: full_adder port map( A(2), B(2), c2, RA(2), c3);
FA4: full_adder port map( A(3), B(3), c3, RA(3), RA(4));

process (S,RA,RS,RM,A,B)
begin
if S = "00" then
R <= RA;
elsif S = "01"	then
R <= RS;
elsif S = "10"	then
R <= RM;
else
R(0) <= B(0);
R(1) <= B(1);
R(2) <= B(2);
R(3) <= B(3);
R(4) <= A(0);
R(5) <= A(1);
R(6) <= A(2);
R(7) <= A(3);
end if;
end process;
end Behavioral;


