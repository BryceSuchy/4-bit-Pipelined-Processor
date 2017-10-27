library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity top is
	port( clock, reset : in std_logic;

	result : out std_logic_vector(3 downto 0));
end top;

architecture behaviour of top is
	constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, w_value, src1, src2, sum, rout, mout : std_logic_vector(3 downto 0);
	signal instr_from_im : std_logic_vector(31 downto 0);
	signal m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst : std_logic;
	signal ALUOP : std_logic_vector(1 downto 0);
	signal fpga_value : std_logic;
	signal zero : std_logic;
	signal write_value : std_logic_vector(3 downto 0);
	signal value1 : std_logic_vector(3 downto 0);
	signal value2 : std_logic_vector(3 downto 0);
	signal value3 : std_logic_vector(3 downto 0);
	signal connection : std_logic_vector(3 downto 0);
	signal branch_zero : std_logic;
	signal adder_to_mux, mux_to_mux, adder_to_adder : std_logic_vector(3 downto 0);
begin
	m1 : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	r1	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", adder_to_adder);

	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	m2 : mux2to1 generic map (n=>4) port map (reg_dst, read_port2, write_port, connection);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (instr_from_im, m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst, read_port1, read_port2, write_port, ALUOP);
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, reg_write, read_port1, read_port2, connection, value3, src1, src2);
	
	m3 : mux2to1 generic map (n=>4) port map (AlU_src, src2, instr_from_im (3 downto 0), value1);
	
	-------------ALU---------------------------------------------------
	a_l_u : ALU port map (src1, value1, ALUOP, add_sub, zero, sum);
	
	------------- Data Memory -----------------------------------------
	dm : data_memory port map (clock, reset, m_write, sum, sum, src2, value2);
	
	m4 : mux2to1 generic map (n=>4) port map (m_to_reg, sum, value2, value3);
	
	m5 : mux2to1 generic map (n=>4) port map (m_write, value3, src2, result);
	
	ripple2 : ripple_carry port map ('0', adder_to_adder, instr_from_im (3 downto 0), adder_to_mux);      --- 2nd ripple carry adder
	
	ANDgate : branch_zero <= branch AND zero; 	--- AND gate used with zero signal and update pc
	
	m6 : mux2to1 generic map (n=>4) port map (branch_zero, adder_to_adder, adder_to_mux, mux_to_mux);
	
	m7 : mux2to1 generic map (n=>4) port map (jump, mux_to_mux, instr_from_im (3 downto 0), update_pc);
	
end behaviour;