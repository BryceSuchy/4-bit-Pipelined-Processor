library ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity ORGate is					
   port( A, B : in std_logic_vector(3 downto 0);
            F : out std_logic_vector(3 downto 0));
end ORGate;

architecture func of ORGate is 
begin
  F <= A or B;		
end func;