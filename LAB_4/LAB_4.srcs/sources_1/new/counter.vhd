----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/06/2026 06:18:30 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is port (
    reset, clk, up_down, enable : in std_logic;
    Q                           : out std_logic_vector(3 downto 0));
end counter;

architecture Behavioral of counter is
    signal Count : unsigned (3 downto 0);

begin
    CounterProcess : process (reset, up_down, clk, enable) begin
        if (reset = '0') then
            if (up_down = '0') then
                Count <= "0000";
            end if;
            if (up_down = '1') then
                Count <= "1111";
            end if;

        elsif rising_edge(clk) and (enable /= '0') then
            if (enable = '1') then
                if (up_down = '0') then
                    Count <= Count + 1;

                elsif (up_down = '1') then
                    Count <= Count - 1;
                end if;
            else
                null;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(Count);
end Behavioral;
