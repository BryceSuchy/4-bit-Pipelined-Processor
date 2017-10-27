library ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity ANDGate is					
   port( A, B : in std_logic_vector(3 downto 0);
            F : out std_logic_vector(3 downto 0));
end ANDGate;

architecture func of ANDGate is 
begin
  F <= A and B;		
end func;