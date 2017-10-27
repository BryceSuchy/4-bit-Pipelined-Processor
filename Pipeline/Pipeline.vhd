library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity Pipeline is
	port(clock, reset : in std_logic;

	result : out std_logic_vector(3 downto 0)); 
	
end Pipeline;

architecture behaviour of Pipeline is
constant initial_pc : std_logic_vector(3 downto 0) := (others => '0');
	signal update_pc, read_port1, read_port2, write_port, src1, src2, sum, rout, mout : std_logic_vector(3 downto 0);
	signal instr_from_im, IF_ID_INST : std_logic_vector(31 downto 0);
	signal m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst, zero, jumpSignal : std_logic;
	signal ALUOP, ID_EX_ALUOP : std_logic_vector(1 downto 0);
	signal value1, value2, value3 : std_logic_vector(3 downto 0);
	signal connection : std_logic_vector(3 downto 0);
	signal branch_zero, ID_EX_ALUSRC : std_logic;
	signal adder_to_mux, mux_to_mux, adder_to_adder : std_logic_vector(3 downto 0);
	signal IF_ID_PC, ID_EX_Value1, ID_EX_Value2, ID_EX_Offset, ID_EX_Rd : std_logic_vector(3 downto 0);
	signal ID_EX_RegWrite, ID_EX_MemToReg, ID_EX_MemWrite, ID_EX_MemRead, ID_EX_Branch, ID_EX_add_sub : std_logic;
	signal ID_EX_PC, EX_MEM_Result, EX_MEM_Value2, EX_MEM_PC, EX_MEM_Rd, EX_MEM_Offset : std_logic_vector(3 downto 0); 
	signal EX_MEM_RegWrite, EX_MEM_MemToReg, EX_MEM_MemWrite, EX_MEM_Branch, MEM_WB_RegWrite, MEM_WB_MemToReg, EX_MEM_ZERO : std_logic;
	signal MEM_WB_Data, MEM_WB_Result, MEM_WB_Rd : std_logic_vector(3 downto 0);
begin
	jumpSignal <= '1' when (instr_from_im(31 downto 26) = "000010") else '0';
	m1 : mux2to1 generic map (n=>4) port map (reset, update_pc, initial_pc, mout);					--- multiplexer
	r1	: regN generic map (n=>4) port map (clock, mout, rout);												--- register
	---------- pc = pc +1 ------------------------------------------
	addpc : ripple_carry port map ('0', rout, "0001", adder_to_adder);
	
	----------- IM -------------------------------------------------
	im : instruction_memory port map (clock, reset, rout, instr_from_im);
	
	m2 : mux2to1 generic map (n=>4) port map (reg_dst, read_port2, write_port, connection);
	
	------------- ID ------------------------------------------------
	id : instruction_decode port map (IF_ID_INST, m_read, m_write, reg_write, add_sub, ALU_src, branch, jump, m_to_reg, reg_dst, read_port1, read_port2, write_port, ALUOP);
	
	------------- RF --------------------------------------------------
	rf : register_file port map (clock, reset, MEM_WB_RegWrite, read_port1, read_port2, MEM_WB_Rd, value3, src1, src2);
	
	m3 : mux2to1 generic map (n=>4) port map (ID_EX_ALUSRC, ID_EX_Value2, ID_EX_Offset, value1);
	
	-------------ALU---------------------------------------------------
	a_l_u : ALU port map (ID_EX_Value1, value1, ID_EX_ALUOP, ID_EX_add_sub, zero, sum);
	
	------------- Data Memory -----------------------------------------
	dm : data_memory port map (clock, reset, EX_MEM_MemWrite, EX_MEM_Result, EX_MEM_Result, EX_MEM_Value2, value2);
	
	m4 : mux2to1 generic map (n=>4) port map (MEM_WB_MemToReg, MEM_WB_Result, MEM_WB_Data, value3);
	
	m5 : mux2to1 generic map (n=>4) port map (EX_MEM_MemWrite, value3, src2, result);
	
	ripple2 : ripple_carry port map ('0', EX_MEM_PC, EX_MEM_Offset, adder_to_mux);      --- 2nd ripple carry adder
	
	ANDgate : branch_zero <= EX_MEM_Branch AND EX_MEM_ZERO; 	--- AND gate used with zero signal and update pc
	
	m6 : mux2to1 generic map (n=>4) port map (branch_zero, mux_to_mux, adder_to_mux, update_pc);
	
	m7 : mux2to1 generic map (n=>4) port map (jumpSignal, adder_to_adder, instr_from_im (3 downto 0), mux_to_mux);
	
	-------------------Registers-----------------------------
	reg1 : regN generic map (n=>4) port map (clock, adder_to_adder, IF_ID_PC);
	reg2 : regN generic map (n=>32) port map (clock, instr_from_im, IF_ID_INST);
	reg3 : regN generic map (n=>4) port map (clock, src1, ID_EX_Value1);
	reg4 : regN generic map (n=>4) port map (clock, src2, ID_EX_Value2);
	reg5 : regSingle port map (clock, reg_write, ID_EX_RegWrite);
   reg6 : regSingle port map (clock, m_to_reg, ID_EX_MemToReg);
	reg7 : regSingle port map (clock, m_write, ID_EX_MemWrite);
	reg8 : regSingle port map (clock, m_read, ID_EX_MemRead);
	reg9 : regSingle port map (clock, branch, ID_EX_Branch);
	reg10 : regSingle port map (clock, ALU_src, ID_EX_ALUSRC);
	reg12 : regN generic map (n=>2) port map (clock, ALUOP, ID_EX_ALUOP);
	reg13 : regSingle port map (clock, add_sub, ID_EX_add_sub);
	reg14 : regN generic map (n=>4) port map (clock, IF_ID_INST (3 downto 0), ID_EX_Offset);
	reg15 : regN generic map (n=>4) port map (clock, connection, ID_EX_Rd);
	
	reg16 : regN generic map (n=>4) port map (clock, IF_ID_PC, ID_EX_PC);
	reg17 : regN generic map (n=>4) port map (clock, sum, EX_MEM_Result);
	reg18 : regSingle port map (clock, zero, EX_MEM_ZERO);
	reg19 : regN generic map (n=>4) port map (clock, ID_EX_Value2, EX_MEM_Value2);
	reg20 : regN generic map (n=>4) port map (clock, ID_EX_PC, EX_MEM_PC);
	reg21 : regSingle port map (clock, ID_EX_RegWrite, EX_MEM_RegWrite);
	reg22 : regSingle port map (clock, ID_EX_MemToReg, EX_MEM_MemToReg);
	reg23 : regSingle port map (clock, ID_EX_MemWrite, EX_MEM_MemWrite);
	reg25 : regSingle port map (clock, ID_EX_Branch, EX_MEM_Branch);
	
		
	reg26 : regN generic map (n=>4) port map (clock, ID_EX_Rd, EX_MEM_Rd);
	reg27 : regN generic map (n=>4) port map (clock, ID_EX_Offset, EX_MEM_Offset);
	reg28 : regN generic map (n=>4) port map (clock, value2, MEM_WB_Data);
	reg29 : regN generic map (n=>4) port map (clock, EX_MEM_Result, MEM_WB_Result);
	reg30 : regN generic map (n=>4) port map (clock, EX_MEM_Rd, MEM_WB_Rd);
	reg31 : regSingle port map (clock, EX_MEM_MemToReg, MEM_WB_MemToReg);
	reg32 : regSingle port map (clock, EX_MEM_RegWrite, MEM_WB_RegWrite);
end behaviour;