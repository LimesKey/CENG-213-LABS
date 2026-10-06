----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2026 05:40:09 PM
-- Design Name: 
-- Module Name: LAB_3 - Behavioral
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

entity LAB_3_TB is
    -- Port ( D : in STD_LOGIC;
    --        CLK : in STD_LOGIC;
    --        QA : out STD_LOGIC;
    --        QABar : out STD_LOGIC;
    --        QB : out STD_LOGIC;
    --        QBBar : out STD_LOGIC);
end LAB_3_TB;

architecture Behavioral of LAB_3_TB is

    component d_latch_d_flipflop
        port (
            D     : in std_logic;
            CLK   : in std_logic;
            QA    : out std_logic;
            QABar : out std_logic;
            QB    : out std_logic;
            QBBar : out std_logic);
    end component;

    signal D, CLK, QA, QABar, QB, QBBar : std_logic;
begin

    uut : d_latch_d_flipflop
    port map(
        D     => D,
        CLK   => CLK,
        QA    => QA,
        QABar => QABar,
        QB    => QB,
        QBBar => QBBar
    );

    stim_proc : process
    begin
        D <= '0';
        CLK <= '0';

        wait for 40 ns;
        CLK <= '1';

        wait for 60 ns;
        CLK <= '0';

        wait for 100 ns;
        D <= '1';
        wait for 50 ns;
        CLK <= '1';
        wait for 50 ns;
        D <= '0';

        wait for 100 ns;
        CLK <= '0';
        D <= '1';

        wait for 100 ns;
        D <= '0';

        wait for 50 ns;
        CLK <= '1';

        wait for 50 ns;
        CLK <= '0';
        wait;
    end process;
end Behavioral;
