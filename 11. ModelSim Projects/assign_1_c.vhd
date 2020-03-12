library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Multiplier is
port(
A , B: in std_logic_vector(3 downto 0);
R: out std_logic_vector(7 downto 0)
);
end entity Multiplier;

architecture Behavioral of Multiplier is
begin

R <= std_logic_vector(unsigned(A) * unsigned(B));

end architecture Behavioral;
