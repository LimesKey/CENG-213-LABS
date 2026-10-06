----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2026 06:44:35 PM
-- Design Name: 
-- Module Name: LAB_4_COUNTER - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LAB_4_COUNTER is
    --  Port ( );
end LAB_4_COUNTER;

architecture Behavioral of LAB_4_COUNTER is

    component counter
        port (
            Reset, CLK, Enable, Up_Down : in std_logic;
            Q                           : out std_logic_vector(3 downto 0));
    end component;

    signal Reset, CLK, Enable, Up_Down : std_logic;
    signal Q : std_logic_vector(3 downto 0);
begin

    uut : counter
    port map(
        Reset   => Reset,
        CLK     => CLK,
        Enable  => Enable,
        Up_Down => Up_Down,
        Q       => Q
    );

    clk_proc : process
    begin
        CLK <= '0';
        wait for 50 ns;
        CLK <= '1';
        wait for 50 ns;
    end process;

    stim_proc : process
    begin
        Reset <= '0';
        Enable <= '1';
        Up_Down <= '0';

        wait for 200 ns;
        Up_Down <= '1';

        wait for 100 ns;
        Reset <= '1';

        wait for 1400 ns;
        Enable <= '0';

        wait for 200 ns;
        Up_Down <= '0';

        wait for 400 ns;
        Enable <= '1';
        wait;
    end process;
end Behavioral;
