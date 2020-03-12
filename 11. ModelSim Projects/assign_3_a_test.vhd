library ieee;
use ieee.std_logic_1164.all;
 
entity MUX_tb is
end MUX_tb;
 
architecture behavior OF MUX_tb is
 
COMPONENT MUX
Port( 
S : in  STD_LOGIC_VECTOR (1 downto 0);
I : in  STD_LOGIC_VECTOR (3 downto 0);
Y : out STD_LOGIC);

END COMPONENT;
 
signal S_tb : std_logic_vector(1 downto 0) := (others => '0');
signal I_tb : std_logic_vector(3 downto 0) := (others => '0');
signal Y_tb : std_logic;
BEGIN
 
uut: MUX PORT MAP (
S => S_tb,
I => I_tb,
Y => Y_tb
);
 
process
begin

S_tb <= "00";
I_tb <= "0000";

wait for 100 ns;
S_tb <= "01";
I_tb <= "0000";

wait for 100 ns;
S_tb <= "10";
I_tb <= "0000";

wait for 100 ns;
S_tb <= "11";
I_tb <= "0000";
 
wait for 100 ns;
S_tb <= "00";
I_tb <= "1001";

wait for 100 ns;
S_tb <= "01";
I_tb <= "0111";

wait for 100 ns;
S_tb <= "10";
I_tb <= "0001";
 
wait for 100 ns;
S_tb <= "11";
I_tb <= "1010";

wait for 100 ns;
S_tb <= "11";
I_tb <= "0111";

wait for 100 ns;
S_tb <= "01";
I_tb <= "1111";

wait for 100 ns;
wait;
 
end process;
 
END;

