library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
--  As a testbench, it must be an entity without any ports.
end half_adder_tb;

-- Define the architecture description of the testbench
architecture Behavioral of half_adder_tb is

-- Component declaration for the Unit Under Test (UUT)
-- This declares the entity you want to test as a component
    component half_adder
        Port( A, B : in std_logic;
              Sum, Carry : out std_logic);
    end component;

-- Signal declaration declares the signals to simulate
    signal A, B, Sum, Carry : std_logic;    
    
-- This is the beginning of the description of the testbench
-- This defines the UUT, the test conditions, and the port mapping bewteen 'begin'
-- and 'end behaviour' lines.  This describes all the different input combinations for
-- the half adder truth table.

begin
    -- Instantiate the UUT
    -- Port map makes the wire connections bewteen the input signals and the UUT
    uut: half_adder port map (
        A => A,
        B => B,
        Sum => Sum,
        Carry => Carry );
    
    -- This provides all the different input combinations as stimuli   
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
