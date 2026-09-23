-- the library and package needed for the VHDL code.  
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
 
 
entity Lab1_Sim is -- As a testbench, it must be an entity without any ports.  
end Lab1_Sim; 
 
 -- Define the architecture description of the Lab1_Sim testbench.  
architecture Test_bench of Lab1_Sim is -- This section must be inside the architecture and before the keyword "begin".  
      component Lab1  
         Port (A, B, C, D:in std_logic; 
               X, Y, Z:inout std_logic); 
      end component;  -- declare the entity you want to test.  
      signal A, B, C, D, X, Y, Z: std_logic;  -- declare the signals. 
begin  -- This is the beginning of the description of Test_bench -- define the UUT as Lab1, which is the entity to be tested. Lab1 is the name of the entity, it could be different and depend on the entity of your name.    
  UUT:Lab1   
  PORT MAP ( 
        A => A, 
        B => B, 
        C => C, 
        D => D, 
        X => X, 
        Y => Y, 
        Z => Z 
      ); -- Port map makes the wire connections between the input signals and the UUT.  
 -- Each process here defines the behavior of an input signal.        
SignalA: PROCESS  -- The process SignalA to define the behavior of signal A in the simulation. 
begin 
      A <='0'; 
 loop  
       wait for 100 ns;   -- Signal A flips every 100ns.  
        A <= NOT A; 
 end loop;       
end PROCESS;  -- end of this process 
 
SignalB: PROCESS  -- This process is to define the behaviour of signal B in the simulation. 
begin  
       B <= '0'; 
loop        
       wait for 200 ns;   -- Signal B flips every 200ns.  
       B <= NOT B;     
end loop;         
end PROCESS;    -- end of this process 
 
SignalC: PROCESS -- This process is to define the behaviour of signal C in the simulation. 
begin 
C <='0'; 
loop  
wait for 400 ns;     
C <= NOT C; 
end loop;       
end PROCESS;    -- Signal C flips every 400ns.  -- end of this process 
SignalD: PROCESS -- This process is to define the behaviour of signal D in the simulation. 
begin 
D <='0'; 
loop  
wait for 800 ns;      -- Signal D flips every 800ns.  
D <= NOT D; 
end loop;       
end PROCESS;     -- end of this process   
end Test_bench;  -- end of the architecture of Lab1_Sim