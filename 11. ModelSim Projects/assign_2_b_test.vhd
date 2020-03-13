library ieee;
use ieee.std_logic_1164.all;
 
entity parity2_tb is
end parity2_tb;
 
architecture behavior OF parity2_tb is
 
COMPONENT parity2
port(
A: in std_logic_vector(3 downto 0);
R: out std_logic
);
END COMPONENT;
 
signal A_tb : std_logic_vector(3 downto 0) := (others => '0');
signal R_tb : std_logic;
 
BEGIN
 
uut: parity2 PORT MAP (
A => A_tb,
R => R_tb
);
 
process
begin

A_tb <= "0000";

wait for 100 ns;
A_tb <= "0001";

wait for 100 ns;
A_tb <= "0010";
 
wait for 100 ns;
A_tb <= "0011";
 
wait for 100 ns;
A_tb <= "0100";

wait for 100 ns;
A_tb <= "0101";

wait for 100 ns;
A_tb <= "0111";
 
wait for 100 ns;
A_tb <= "1000";

wait for 100 ns;
A_tb <= "1010";

wait for 100 ns;
A_tb <= "1111";

wait for 100 ns;
wait;
 
end process;
 
END;
