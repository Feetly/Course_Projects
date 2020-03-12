library ieee;
use ieee.std_logic_1164.all;
 
entity Multiplier_tb is
end Multiplier_tb;
 
architecture behavior OF Multiplier_tb is
 
COMPONENT Multiplier
port(
A , B: in std_logic_vector(3 downto 0);
R: out std_logic_vector(7 downto 0)
);
END COMPONENT;
 
signal A_tb : std_logic_vector(3 downto 0) := (others => '0');
signal B_tb : std_logic_vector(3 downto 0) := (others => '0');
signal R_tb : std_logic_vector(7 downto 0);
 
BEGIN
 
uut: Multiplier PORT MAP(
A => A_tb,
B => B_tb,
R => R_tb
);
 
process
begin

A_tb <= "0000";
B_tb <= "0000";

wait for 100 ns;
A_tb <= "1111";
B_tb <= "1111";

wait for 100 ns;
A_tb <= "1111";
B_tb <= "1111";
 
wait for 100 ns;
A_tb <= "1010";
B_tb <= "0101";
 
wait for 100 ns;
A_tb <= "1001";
B_tb <= "0110";

wait for 100 ns;
A_tb <= "1100";
B_tb <= "0110";

wait for 100 ns;
A_tb <= "0101";
B_tb <= "0110";
 
wait for 100 ns;
A_tb <= "0100";
B_tb <= "0101";

wait for 100 ns;
A_tb <= "1110";
B_tb <= "0110";

wait for 100 ns;
A_tb <= "0000";
B_tb <= "0110";

wait for 100 ns;
wait;
 
end process;
 
END;

