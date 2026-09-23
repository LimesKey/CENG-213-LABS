library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity half_adder is 
    Port (A, B :in STD_LOGIC; 
        Sum, Carry : out STD_LOGIC);
end half_adder;

architecture data_flow of half_adder is
begin 
    Sum <= (A XOR B);
    Carry <= (A and B);
end data_flow;