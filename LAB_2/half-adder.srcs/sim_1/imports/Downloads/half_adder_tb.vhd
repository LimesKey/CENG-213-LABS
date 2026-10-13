library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
--  As a testbench, it must be an entity without any ports.
end half_adder_tb;

-- Define the architecture description of the testbench
architecture Behavioral of half_adder_tb is

    component half_adder
        Port( A, B : in std_logic;
              Sum, Carry : out std_logic);
    end component;

    signal A, B, Sum, Carry : std_logic;    
    

begin
    -- Instantiate the UUT
    uut: half_adder port map (
        A => A,
        B => B,
        Sum => Sum,
        Carry => Carry );
    
    stim_proc: process
    begin
        A <= '0';
        B <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        wait for 10 ns;
        
    end process;       
end Behavioral;
