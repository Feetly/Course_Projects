library ieee;
use ieee.std_logic_1164.all;
 
entity sub_tb is
end sub_tb;
 
architecture behavior OF sub_tb is
 
COMPONENT sub
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
END COMPONENT;
 
signal a3_tb : std_logic := '0';
signal a2_tb : std_logic := '0';
signal a1_tb : std_logic := '0';
signal a0_tb : std_logic := '0';
signal b3_tb : std_logic := '0';
signal b2_tb : std_logic := '0';
signal b1_tb : std_logic := '0';
signal b0_tb : std_logic := '0';
signal s3_tb : std_logic;
signal s2_tb : std_logic;
signal s1_tb : std_logic;
signal s0_tb : std_logic;
signal cout_tb : std_logic;
 
BEGIN
 
uut: sub PORT MAP (
A3 => a3_tb,
A2 => a2_tb,
A1 => a1_tb,
A0 => a0_tb,
B3 => b3_tb,
B2 => b2_tb,
B1 => b1_tb,
B0 => b0_tb,
S3 => s3_tb,
S2 => s2_tb,
S1 => s1_tb,
S0 => s0_tb,
Cout => cout_tb
);
 
process
begin

a3_tb <= '0'; a2_tb <= '0'; a1_tb <= '0'; a0_tb <= '0';
b3_tb <= '0'; b2_tb <= '0'; b1_tb <= '0'; b0_tb <= '0';

wait for 100 ns;
a3_tb <= '1'; a2_tb <= '1'; a1_tb <= '1'; a0_tb <= '1';
b3_tb <= '0'; b2_tb <= '0'; b1_tb <= '0'; b0_tb <= '0';
 
wait for 100 ns;
a3_tb <= '1'; a2_tb <= '1'; a1_tb <= '1'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '1'; b1_tb <= '1'; b0_tb <= '1';
 
wait for 100 ns;
a3_tb <= '1'; a2_tb <= '1'; a1_tb <= '1'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '1'; b0_tb <= '0';
 
wait for 100 ns;
a3_tb <= '0'; a2_tb <= '0'; a1_tb <= '0'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '1'; b0_tb <= '1'; 

wait for 100 ns;
a3_tb <= '0'; a2_tb <= '1'; a1_tb <= '0'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '0'; b0_tb <= '1';

wait for 100 ns;
a3_tb <= '1'; a2_tb <= '1'; a1_tb <= '1'; a0_tb <= '0';
b3_tb <= '0'; b2_tb <= '1'; b1_tb <= '1'; b0_tb <= '0';
 
wait for 100 ns;
a3_tb <= '1'; a2_tb <= '1'; a1_tb <= '0'; a0_tb <= '0';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '1'; b0_tb <= '0';

wait for 100 ns;
a3_tb <= '0'; a2_tb <= '0'; a1_tb <= '1'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '1'; b0_tb <= '1';

wait for 100 ns;
a3_tb <= '0'; a2_tb <= '1'; a1_tb <= '0'; a0_tb <= '1';
b3_tb <= '1'; b2_tb <= '0'; b1_tb <= '1'; b0_tb <= '1';

wait for 100 ns;
wait;
 
end process;
 
END;

