library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity add_isa is
	port( clock, reset : in std_logic;
	---slide switches---
	--First set; register--
	a : out std_logic_vector(1 downto 0);
	b, c, d, e, f, g, h, i, j : out std_logic;
	--Button--
	key3 : in std_logic;
	result : out std_logic_vector(3 downto 0));
end add_isa;

architecture behaviour of add_isa is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst : std_logic;
	signal ALUOP : std_logic_vector(1 downto 0);
	signal fpga_value : std_logic;
begin
	m1 : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	r1	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", update_pc);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (instr_from_im, m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst, read_port1, read_port2, write_port, ALUOP);
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, reg_write, read_port1, read_port2, write_port, sum, src1, src2);
	
	add_ins : ripple_carry port map (add_sub, src1, src2, sum);
	
	result <= sum;
	a <= ALUOP;
	b <= ALU_src;
	c <= branch;
	d <= jump;
	e <= m_read;
	f <= m_write;
	g <= m_to_reg;
	h <= reg_dst;
	i <= reg_write;
	j <= add_sub;

end behaviour;