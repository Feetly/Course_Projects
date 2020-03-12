library ieee;
use ieee.std_logic_1164.all;
 
entity calc_tb is
end calc_tb;
 
architecture behavior OF calc_tb is
 
COMPONENT calc
Port( 
A : in std_logic_vector(3 downto 0);
B : in std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
R : out std_logic_vector(7 downto 0));
END COMPONENT;
 
signal A_tb : std_logic_vector(3 downto 0) := (others => '0');
signal B_tb : std_logic_vector(3 downto 0) := (others => '0');
signal S_tb : std_logic_vector(1 downto 0) := (others => '0');
signal R_tb : std_logic_vector(7 downto 0);
 
BEGIN
 
uut: calc PORT MAP (
A => A_tb,
B => B_tb,
S => S_tb,
R => R_tb
);
 
process
begin

S_tb <= "00";
A_tb <= "1111";
B_tb <= "1111";

wait for 100 ns;
S_tb <= "01";
A_tb <= "1111";
B_tb <= "1111";

wait for 100 ns;
S_tb <= "10";
A_tb <= "1111";
B_tb <= "1111";
 
wait for 100 ns;
S_tb <= "11";
A_tb <= "1111";
B_tb <= "1111";
 
wait for 100 ns;
S_tb <= "00";
A_tb <= "1001";
B_tb <= "1010";

wait for 100 ns;
S_tb <= "01";
A_tb <= "1001";
B_tb <= "1010";

wait for 100 ns;
S_tb <= "10";
A_tb <= "1001";
B_tb <= "1010";
 
wait for 100 ns;
S_tb <= "11";
A_tb <= "1001";
B_tb <= "1010";

wait for 100 ns;

S_tb <= "00";
A_tb <= "1100";
B_tb <= "0011";

wait for 100 ns;
S_tb <= "01";
A_tb <= "1101";
B_tb <= "0010";

wait for 100 ns;
S_tb <= "10";
A_tb <= "1011";
B_tb <= "1011";
 
wait for 100 ns;
S_tb <= "11";
A_tb <= "0111";
B_tb <= "1110";

wait for 100 ns;
wait;
 
end process;
 
END;

