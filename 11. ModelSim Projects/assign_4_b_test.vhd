LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Cir_Register_tb IS
END Cir_Register_tb;

ARCHITECTURE behavior OF Cir_Register_tb IS 

COMPONENT Cir_Register
Port( 
Inp : in std_logic_vector(3 downto 0);
Q: out std_logic_vector(3 downto 0);
S : in std_logic_vector(1 downto 0);
clck: in std_logic);
END COMPONENT;
    
signal Inp_tb : std_logic_vector(3 downto 0) :=  (others => '0');
signal S_tb : std_logic_vector(1 downto 0) := (others => '0');
signal Q_tb: std_logic_vector(3 downto 0);
signal clck_tb: std_logic := '0';

constant clk_period : time := 20 ns;
signal ctr : integer := 0;	

BEGIN

uut: Cir_Register PORT MAP(
Inp => Inp_tb,
clck => clck_tb,
S => S_tb,
Q => Q_tb
);

clck_process :process
begin
clck_tb <= '0';
wait for clk_period/2;
clck_tb <= '1';
wait for clk_period/2;
ctr <= ctr+20;
if (ctr = 480) then
wait;
end if;
end process;

stim_proc: process
begin  

S_tb <= "11";
Inp_tb <= "1000";
wait for 50 ns;

S_tb <= "01";
wait for 100 ns; 

S_tb <= "10";
wait for 100 ns;

S_tb <= "11";
Inp_tb <= "1001";
wait for 50 ns;

S_tb <= "01";
wait for 100 ns; 

S_tb <= "10";
wait for 100 ns; 
wait;

end process;

END;