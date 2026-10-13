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
end LAB_4_COUNTER;

architecture Behavioral of LAB_4_COUNTER is

    component counter
        port (
            reset, clk, enable, up_down : in std_logic;
            Q                           : out std_logic_vector(3 downto 0));
    end component;

    signal reset, clk, enable, up_down : std_logic;
    signal Q : std_logic_vector(3 downto 0);
begin

    uut : counter
    port map(
        reset   => reset,
        clk     => clk,
        enable  => enable,
        up_down => up_down,
        Q       => Q
    );

    ClockProcess : process
    begin
        clk <= '0';
        wait for 50 ns;
        clk <= '1';
        wait for 50 ns;
    end process;

    stim_proc : process
    begin
        reset <= '0';
        enable <= '1';
        up_down <= '0';

        wait for 200 ns;
        up_down <= '1';

        wait for 100 ns;
        reset <= '1';

        wait for 1400 ns;
        enable <= '0';

        wait for 200 ns;
        up_down <= '0';

        wait for 400 ns;
        enable <= '1';
        wait;
    end process;
end Behavioral;
