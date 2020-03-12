library ieee;
use ieee.std_logic_1164.all;
 
entity Func_tb is
end Func_tb;
 
architecture behavior OF Func_tb is
 
COMPONENT Func
Port( 
A : in STD_LOGIC;
B : in STD_LOGIC;
C : in STD_LOGIC;
D : in STD_LOGIC;
Y0 : out STD_LOGIC);

END COMPONENT;
 
signal A_tb : std_logic := '0'; 
signal B_tb : std_logic := '0'; 
signal C_tb : std_logic := '0'; 
signal D_tb : std_logic := '0'; 
signal Y0_tb : std_logic;

BEGIN
 
uut: Func PORT MAP (
A => A_tb,
B => B_tb,
C => C_tb,
D => D_tb,
Y0 => Y0_tb
);
 
process
begin

A_tb <= '0'; B_tb <= '0'; C_tb <= '0'; D_tb <= '0';

wait for 100 ns;
A_tb <= '0'; B_tb <= '0'; C_tb <= '0'; D_tb <= '1';

wait for 100 ns;
A_tb <= '0'; B_tb <= '0'; C_tb <= '1'; D_tb <= '1';

wait for 100 ns;
A_tb <= '1'; B_tb <= '0'; C_tb <= '0'; D_tb <= '0';
 
wait for 100 ns;
A_tb <= '0'; B_tb <= '0'; C_tb <= '0'; D_tb <= '1';

wait for 100 ns;
A_tb <= '0'; B_tb <= '1'; C_tb <= '0'; D_tb <= '1';

wait for 100 ns;
A_tb <= '0'; B_tb <= '1'; C_tb <= '1'; D_tb <= '0';
 
wait for 100 ns;
A_tb <= '1'; B_tb <= '0'; C_tb <= '0'; D_tb <= '1';

wait for 100 ns;
A_tb <= '1'; B_tb <= '0'; C_tb <= '1'; D_tb <= '0';

wait for 100 ns;
A_tb <= '1'; B_tb <= '1'; C_tb <= '1'; D_tb <= '1';

wait for 100 ns;
wait;
 
end process;
 
END;

