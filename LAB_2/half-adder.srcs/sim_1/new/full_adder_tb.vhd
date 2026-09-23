----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2026 06:31:48 PM
-- Design Name: 
-- Module Name: full_adder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_adder_tb is
--  As a testbench, it must be an entity without any ports.
end full_adder_tb;


architecture Behavioral of full_adder_tb is

    component full_adder
    Port (A, B, Cin :in STD_LOGIC; 
        Sum, Carry_out : out STD_LOGIC);
    end component;

-- Signal declaration declares the signals to simulate
    signal A, B, Sum, Cin, Carry_out : std_logic;    

begin
    -- Instantiate the UUT
    -- Port map makes the wire connections bewteen the input signals and the UUT
    uut: full_adder port map (
        A => A,
        B => B,
        Sum => Sum,
        Carry_out => Carry_out,
        Cin => Cin );
    
    -- This provides all the different input combinations as stimuli   
    stim_proc: process
    begin
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 10 ns;
        
        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 10 ns;
        
        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 10 ns;
        
    end process;       

end Behavioral;
