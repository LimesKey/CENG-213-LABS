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
use IEEE.NUMERIC_STD.all; -- package that includes unsigned signals.

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is port (
    Reset, CLK, Enable, Up_Down : in std_logic;
    Q                           : out std_logic_vector(3 downto 0));
-- don't use integer here.
end counter;

architecture Behavioral of counter is
    signal Count : unsigned (3 downto 0); -- Signal Count as the unsigned number.
begin
    CounterProcess : process (Reset, CLK, Up_Down) begin
        if (Reset = '0') and (Up_Down = '0') then
            -- Asynchronous Section.
            Count <= "0000";

        elsif (Reset = '0') and (Up_Down = '1') then
            Count <= "1111";

        elsif rising_edge(CLK) then -- Synchronous Section.
            if (Enable = '1') and (Up_Down = '0') then
                Count <= Count + 1;
            elsif (Enable = '1') and (Up_Down = '1') then
                Count <= Count - 1;
            else
                null;
            end if;
        end if;
    end process;

    Q <= std_logic_vector(Count); -- Output ports assignments, outside and concurrent with the process;
end Behavioral;
