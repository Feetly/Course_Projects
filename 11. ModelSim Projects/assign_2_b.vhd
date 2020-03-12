library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parity2 is
port(
A: in std_logic_vector(3 downto 0);
R: out std_logic
);
end entity parity2;

architecture Behavioral of parity2 is
signal B : std_logic;
begin

B <= NOT(A(3) XOR A(2) XOR A(1) XOR A(0));
R <= NOT(B XOR A(3) XOR A(2) XOR A(1) XOR A(0));

end architecture Behavioral;
