LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY D_FlipFlop_tb IS
END D_FlipFlop_tb;

ARCHITECTURE behavior OF D_FlipFlop_tb IS 

COMPONENT D_FlipFlop
port( 
I: in std_logic;
clk: in std_logic;
rst: in std_logic;
prst: in std_logic;
Y: out std_logic);
END COMPONENT;
    
signal I_tb : std_logic := '0';
signal clk_tb : std_logic := '0';
signal rst_tb : std_logic := '1';
signal prst_tb : std_logic := '0';
signal Y_tb : std_logic;

constant clk_period : time := 20 ns;
signal ctr : integer := 0;	

BEGIN

uut: D_FlipFlop PORT MAP (
I => I_tb,
clk => clk_tb,
rst => rst_tb,
prst => prst_tb,
Y => Y_tb
);

clk_process :process
begin
clk_tb <= '0';
wait for clk_period/2;
clk_tb <= '1';
wait for clk_period/2;
ctr <= ctr+20;
if (ctr = 380) then
wait;
end if;
end process;

stim_proc: process
begin  

rst_tb <= '1';
prst_tb <= '0';
wait for 100 ns;

rst_tb <= '0';
prst_tb <= '1';
wait for 100 ns; 
 
rst_tb <= '0';  
prst_tb <= '0'; 
I_tb <= '0';
wait for 100 ns;
 
rst_tb <= '0';  
prst_tb <= '0';
I_tb <= '1';  

wait for 100 ns;
wait;

end process;

END;
