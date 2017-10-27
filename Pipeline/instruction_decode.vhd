------ This file describes the instruction decode operation -------------
LIBRARY ieee;
use ieee.std_logic_1164.all;
USE work.components.all;

entity instruction_decode is
	port(instr : in std_logic_vector(31 downto 0);
			m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst : out std_logic;
			read_p1, read_p2, write_p : out std_logic_vector(3 downto 0);
			ALUOP : out std_logic_vector(1 downto 0));
end instruction_decode;

architecture struc_behaviour of instruction_decode is
	signal opcode, funct : std_logic_vector(5 downto 0);
	signal shamt : std_logic_vector(4 downto 0);

begin

	opcode <= instr(31 downto 26);
	shamt <= instr(10 downto 6);
	funct <= instr(5 downto 0);

	read_p1 <= instr(24 downto 21);
	read_p2 <= instr(19 downto 16);
	write_p <= instr(14 downto 11);
	
	ALUOP <= "00" when (((opcode = "000000") and (funct = "101010")) or
					  ((opcode = "000010"))) else
				"01" when (((opcode = "000000") and (funct = "100000")) or
					  ((opcode = "000000") and (funct = "100010")) or
					  (opcode = "100011") or
					  (opcode = "101011") or
					  (opcode = "000100")) else
			   "10" when ((opcode = "000000") and (funct = "100100")) else
				"11" when ((opcode = "000000") and (funct = "100101"));
				
	ALU_src <= '1' when ((opcode = "100011") or (opcode = "101011")) else '0';
	
	branch <= '1' when ((opcode = "000100") or (opcode = "000101")) else '0';
	
	jump <= '1' when (opcode = "000010") else '0';
	
	m_read <= '1' when (opcode = "100011") else '0';
	
	m_write <= '1' when (opcode = "101011") else '0';
	
	m_to_reg <= '1' when (opcode = "100011") else '0';
	
	reg_dst <= '1' when ((opcode = "000000") and ((funct = "100000") or (funct = "100101") or (funct = "100100") or (funct = "100010") or (funct = "101010"))) else '0';
	
	reg_write <= '1' when (((opcode = "000000") and ((funct = "100000") or (funct = "100101") or (funct = "100100") or (funct = "100010") or (funct = "101010"))) or (opcode = "100011")) else '0';
	
	add_sub <= '1' when (((opcode = "000000") and ((funct = "100010") or (funct = "101010"))) or (opcode = "000100")) 
						else '0';
	

end struc_behaviour;