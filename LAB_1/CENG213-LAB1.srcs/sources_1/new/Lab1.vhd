library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity Lab1 is 
Port (A, B, C, D:in std_logic; 
X, Y, Z:out std_logic); 
end Lab1; 
architecture Behavioral of Lab1 is 
begin 
X <= (A AND B) OR C; 
Y <= (A AND (NOT B)) OR ((NOT A) AND C); 
Z <= A OR B OR D; 
end Behavioral;