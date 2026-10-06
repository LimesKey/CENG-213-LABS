----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/29/2026 06:03:47 PM
-- Design Name: 
-- Module Name: d_latch_d_flipflop - Behavioral
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

entity d_latch_d_flipflop is
    port (
        D, CLK    : in std_logic;
        QA, QABar : out std_logic;
        QB, QBBar : out std_logic);
end d_latch_d_flipflop;

architecture data_flow of d_latch_d_flipflop is
    signal QA_i, QABar_i : std_logic;
begin

    process (CLK) begin
        if rising_edge(CLK) then
            QB <= D;
            QBBar <= not D;
        end if;
    end process;

    QA_i <= ((D nand CLK) nand QABar_i);
    QABar_i <= ((not D nand CLK) nand QA_i);
    QA <= QA_i;
    QABar <= QABar_i;
end data_flow;
