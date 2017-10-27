--------- This is 1-bit register circuit -----------
library ieee;
use ieee.std_logic_1164.all;

entity regSingle is
port (clock : in std_logic;
	  D : in std_logic;
	  Q : out std_logic);
end regSingle;

architecture behavior of regSingle is
begin
	process (clock)
	begin
		if clock'event and clock = '1' then
				Q <= D;
		end if;
	end process;
end behavior;