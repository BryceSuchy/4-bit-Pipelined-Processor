library ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity ALU is
   port
   (
      x, y : in std_logic_vector(3 downto 0);
      AlUControl : in std_logic_vector(1 downto 0);
		add_sub : STD_logic;
      zero2 : out std_logic;
      s : out std_logic_vector(3 downto 0)
   );
end ALU;
 
architecture struc_behaviour of ALU is
 
   signal add_out, AND_out, OR_out, mux_out : STD_logic_vector(3 downto 0);
 
begin
	stage1 : ripple_carry PORT MAP (add_sub, x, y, add_out);
	stage2 : ANDGate PORT MAP (x, y, AND_out);
	stage3 : ORGate PORT MAP (x, y, OR_out);
	stage4 : mux2to1 PORT MAP (add_out(3), "0000", "0001", mux_out);
	stage5 : mux4to1 PORT MAP (mux_out, add_out, AND_out, OR_out, ALUControl, s);
	
		zero2 <= '1' when (add_out = "0000") else '0';
end struc_behaviour;