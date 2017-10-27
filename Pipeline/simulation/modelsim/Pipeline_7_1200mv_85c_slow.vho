-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/05/2015 18:37:02"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pipeline IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END Pipeline;

-- Design Ports Information
-- result[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \reg20|Q[2]~feeder_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \reg1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg27|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg1|Q[0]~0_combout\ : std_logic;
SIGNAL \reg16|Q[0]~feeder_combout\ : std_logic;
SIGNAL \reg20|Q[0]~feeder_combout\ : std_logic;
SIGNAL \reg27|Q[0]~feeder_combout\ : std_logic;
SIGNAL \ripple2|stage2|Cout~0_combout\ : std_logic;
SIGNAL \im|output[2]~7_combout\ : std_logic;
SIGNAL \reg14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \im|output[27]~5_combout\ : std_logic;
SIGNAL \im|output[30]~12_combout\ : std_logic;
SIGNAL \im|output[28]~11_combout\ : std_logic;
SIGNAL \im|output[29]~9_combout\ : std_logic;
SIGNAL \im|output[31]~10_combout\ : std_logic;
SIGNAL \id|Equal11~0_combout\ : std_logic;
SIGNAL \id|Equal11~1_combout\ : std_logic;
SIGNAL \reg9|Q~q\ : std_logic;
SIGNAL \reg25|Q~feeder_combout\ : std_logic;
SIGNAL \reg25|Q~q\ : std_logic;
SIGNAL \branch_zero~combout\ : std_logic;
SIGNAL \m6|f[2]~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \m6|f[2]~9_combout\ : std_logic;
SIGNAL \m6|f[1]~4_combout\ : std_logic;
SIGNAL \m6|f[2]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \im|output[0]~4_combout\ : std_logic;
SIGNAL \id|Equal2~0_combout\ : std_logic;
SIGNAL \reg10|Q~q\ : std_logic;
SIGNAL \im|output[3]~8_combout\ : std_logic;
SIGNAL \im|output[5]~13_combout\ : std_logic;
SIGNAL \id|ALUOP~0_combout\ : std_logic;
SIGNAL \id|Equal5~0_combout\ : std_logic;
SIGNAL \id|ALUOP~1_combout\ : std_logic;
SIGNAL \id|Equal6~0_combout\ : std_logic;
SIGNAL \id|Equal5~1_combout\ : std_logic;
SIGNAL \id|reg_dst~0_combout\ : std_logic;
SIGNAL \id|ALUOP[1]~4_combout\ : std_logic;
SIGNAL \id|ALUOP[1]~5_combout\ : std_logic;
SIGNAL \id|ALUOP[1]~2_combout\ : std_logic;
SIGNAL \id|ALUOP~3_combout\ : std_logic;
SIGNAL \id|comb~9_combout\ : std_logic;
SIGNAL \id|comb~11_combout\ : std_logic;
SIGNAL \id|comb~10_combout\ : std_logic;
SIGNAL \id|comb~12_combout\ : std_logic;
SIGNAL \id|comb~8_combout\ : std_logic;
SIGNAL \im|output[17]~3_combout\ : std_logic;
SIGNAL \reg19|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \dm|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \im|output[16]~1_combout\ : std_logic;
SIGNAL \id|Equal2~1_combout\ : std_logic;
SIGNAL \reg6|Q~q\ : std_logic;
SIGNAL \reg22|Q~feeder_combout\ : std_logic;
SIGNAL \reg22|Q~q\ : std_logic;
SIGNAL \reg31|Q~feeder_combout\ : std_logic;
SIGNAL \reg31|Q~q\ : std_logic;
SIGNAL \reg29|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg19|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|r16|Q[2]~feeder_combout\ : std_logic;
SIGNAL \im|output[21]~14_combout\ : std_logic;
SIGNAL \im|output[18]~0_combout\ : std_logic;
SIGNAL \rf|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \im|output[12]~19_combout\ : std_logic;
SIGNAL \id|reg_dst~1_combout\ : std_logic;
SIGNAL \id|reg_dst~2_combout\ : std_logic;
SIGNAL \m2|f[1]~3_combout\ : std_logic;
SIGNAL \reg26|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg30|Q[1]~feeder_combout\ : std_logic;
SIGNAL \im|output[11]~18_combout\ : std_logic;
SIGNAL \m2|f[0]~2_combout\ : std_logic;
SIGNAL \reg26|Q[0]~feeder_combout\ : std_logic;
SIGNAL \reg30|Q[0]~feeder_combout\ : std_logic;
SIGNAL \m2|f[3]~1_combout\ : std_logic;
SIGNAL \reg26|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg30|Q[3]~feeder_combout\ : std_logic;
SIGNAL \id|reg_write~combout\ : std_logic;
SIGNAL \reg5|Q~q\ : std_logic;
SIGNAL \reg21|Q~q\ : std_logic;
SIGNAL \reg32|Q~feeder_combout\ : std_logic;
SIGNAL \reg32|Q~q\ : std_logic;
SIGNAL \rf|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \im|output[13]~17_combout\ : std_logic;
SIGNAL \m2|f[2]~0_combout\ : std_logic;
SIGNAL \reg26|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg30|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m7|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m6|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[3]~30_combout\ : std_logic;
SIGNAL \rf|m8|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[3]~31_combout\ : std_logic;
SIGNAL \rf|r16|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m16|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r15|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value2[3]~37_combout\ : std_logic;
SIGNAL \rf|value2[3]~38_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[3]~0_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[3]~1_combout\ : std_logic;
SIGNAL \id|add_sub~0_combout\ : std_logic;
SIGNAL \reg13|Q~q\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[3]~2_combout\ : std_logic;
SIGNAL \im|output[24]~16_combout\ : std_logic;
SIGNAL \im|output[22]~15_combout\ : std_logic;
SIGNAL \rf|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~27_combout\ : std_logic;
SIGNAL \rf|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r16|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~28_combout\ : std_logic;
SIGNAL \rf|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m9|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m10|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~20_combout\ : std_logic;
SIGNAL \rf|value1[2]~21_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|r2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~24_combout\ : std_logic;
SIGNAL \rf|value1[2]~25_combout\ : std_logic;
SIGNAL \rf|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~22_combout\ : std_logic;
SIGNAL \rf|r7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~23_combout\ : std_logic;
SIGNAL \rf|value1[2]~26_combout\ : std_logic;
SIGNAL \rf|value1[2]~29_combout\ : std_logic;
SIGNAL \m3|f[2]~0_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage1|Cout~1_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r16|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r15|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~17_combout\ : std_logic;
SIGNAL \rf|value1[1]~18_combout\ : std_logic;
SIGNAL \rf|r4|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~10_combout\ : std_logic;
SIGNAL \rf|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~11_combout\ : std_logic;
SIGNAL \rf|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~12_combout\ : std_logic;
SIGNAL \rf|value1[1]~13_combout\ : std_logic;
SIGNAL \rf|r10|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~14_combout\ : std_logic;
SIGNAL \rf|value1[1]~15_combout\ : std_logic;
SIGNAL \rf|value1[1]~16_combout\ : std_logic;
SIGNAL \rf|value1[1]~19_combout\ : std_logic;
SIGNAL \a_l_u|stage1|y_1~combout\ : std_logic;
SIGNAL \m3|f~2_combout\ : std_logic;
SIGNAL \m3|f~1_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage1|Cout~0_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage2|Cout~0_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage3|Cout~0_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[3]~3_combout\ : std_logic;
SIGNAL \reg29|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[3]~2_combout\ : std_logic;
SIGNAL \rf|r4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~34_combout\ : std_logic;
SIGNAL \rf|value2[3]~35_combout\ : std_logic;
SIGNAL \rf|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r10|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~32_combout\ : std_logic;
SIGNAL \rf|value2[3]~33_combout\ : std_logic;
SIGNAL \rf|value2[3]~36_combout\ : std_logic;
SIGNAL \rf|value2[3]~39_combout\ : std_logic;
SIGNAL \reg19|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~4_combout\ : std_logic;
SIGNAL \dm|r16|Q[3]~feeder_combout\ : std_logic;
SIGNAL \id|Equal3~0_combout\ : std_logic;
SIGNAL \reg7|Q~q\ : std_logic;
SIGNAL \reg23|Q~feeder_combout\ : std_logic;
SIGNAL \reg23|Q~q\ : std_logic;
SIGNAL \dm|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m12|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m6|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m10|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[3]~37_combout\ : std_logic;
SIGNAL \dm|value1[3]~38_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f[3]~2_combout\ : std_logic;
SIGNAL \dm|r6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m6|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \dm|r4|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m4|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|r2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[3]~30_combout\ : std_logic;
SIGNAL \dm|r8|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m8|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m8|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|value1[3]~31_combout\ : std_logic;
SIGNAL \dm|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m5|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m5|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \dm|value1[3]~34_combout\ : std_logic;
SIGNAL \dm|r7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m7|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[3]~35_combout\ : std_logic;
SIGNAL \dm|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|r15|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \dm|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|m9|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|value1[3]~32_combout\ : std_logic;
SIGNAL \dm|value1[3]~33_combout\ : std_logic;
SIGNAL \dm|value1[3]~36_combout\ : std_logic;
SIGNAL \dm|value1[3]~39_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r12|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~30_combout\ : std_logic;
SIGNAL \rf|value1[3]~31_combout\ : std_logic;
SIGNAL \rf|value1[3]~37_combout\ : std_logic;
SIGNAL \rf|value1[3]~38_combout\ : std_logic;
SIGNAL \rf|value1[3]~34_combout\ : std_logic;
SIGNAL \rf|value1[3]~35_combout\ : std_logic;
SIGNAL \rf|value1[3]~32_combout\ : std_logic;
SIGNAL \rf|value1[3]~33_combout\ : std_logic;
SIGNAL \rf|value1[3]~36_combout\ : std_logic;
SIGNAL \rf|value1[3]~39_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage4|s~0_combout\ : std_logic;
SIGNAL \reg17|Q[0]~1_combout\ : std_logic;
SIGNAL \reg17|Q[0]~0_combout\ : std_logic;
SIGNAL \reg17|Q[0]~feeder_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage2|f[0]~0_combout\ : std_logic;
SIGNAL \dm|m16|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r8|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f[2]~3_combout\ : std_logic;
SIGNAL \dm|r6|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[2]~27_combout\ : std_logic;
SIGNAL \dm|value1[2]~28_combout\ : std_logic;
SIGNAL \dm|r12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r10|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[2]~20_combout\ : std_logic;
SIGNAL \dm|value1[2]~21_combout\ : std_logic;
SIGNAL \dm|r15|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r13|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[2]~22_combout\ : std_logic;
SIGNAL \dm|value1[2]~23_combout\ : std_logic;
SIGNAL \dm|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|r9|Q[2]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[2]~24_combout\ : std_logic;
SIGNAL \dm|value1[2]~25_combout\ : std_logic;
SIGNAL \dm|value1[2]~26_combout\ : std_logic;
SIGNAL \dm|value1[2]~29_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|value2[2]~20_combout\ : std_logic;
SIGNAL \rf|value2[2]~21_combout\ : std_logic;
SIGNAL \rf|value2[2]~27_combout\ : std_logic;
SIGNAL \rf|value2[2]~28_combout\ : std_logic;
SIGNAL \rf|value2[2]~22_combout\ : std_logic;
SIGNAL \rf|value2[2]~23_combout\ : std_logic;
SIGNAL \rf|value2[2]~24_combout\ : std_logic;
SIGNAL \rf|value2[2]~25_combout\ : std_logic;
SIGNAL \rf|value2[2]~26_combout\ : std_logic;
SIGNAL \rf|value2[2]~29_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[2]~5_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[2]~6_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[2]~4_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[2]~7_combout\ : std_logic;
SIGNAL \dm|m11|stage3|f~1_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f[1]~2_combout\ : std_logic;
SIGNAL \dm|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[1]~10_combout\ : std_logic;
SIGNAL \dm|value1[1]~11_combout\ : std_logic;
SIGNAL \dm|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r8|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[1]~17_combout\ : std_logic;
SIGNAL \dm|value1[1]~18_combout\ : std_logic;
SIGNAL \dm|r6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r10|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[1]~12_combout\ : std_logic;
SIGNAL \dm|value1[1]~13_combout\ : std_logic;
SIGNAL \dm|r13|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|r9|Q[1]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[1]~14_combout\ : std_logic;
SIGNAL \dm|value1[1]~15_combout\ : std_logic;
SIGNAL \dm|value1[1]~16_combout\ : std_logic;
SIGNAL \dm|value1[1]~19_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[1]~10_combout\ : std_logic;
SIGNAL \rf|value2[1]~11_combout\ : std_logic;
SIGNAL \rf|value2[1]~17_combout\ : std_logic;
SIGNAL \rf|value2[1]~18_combout\ : std_logic;
SIGNAL \rf|value2[1]~12_combout\ : std_logic;
SIGNAL \rf|value2[1]~13_combout\ : std_logic;
SIGNAL \rf|value2[1]~14_combout\ : std_logic;
SIGNAL \rf|value2[1]~15_combout\ : std_logic;
SIGNAL \rf|value2[1]~16_combout\ : std_logic;
SIGNAL \rf|value2[1]~19_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[1]~8_combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[1]~9_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage2|s~combout\ : std_logic;
SIGNAL \a_l_u|stage5|stage3|f[1]~10_combout\ : std_logic;
SIGNAL \reg19|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \dm|r16|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r8|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[0]~7_combout\ : std_logic;
SIGNAL \dm|value1[0]~8_combout\ : std_logic;
SIGNAL \dm|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \dm|r7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[0]~0_combout\ : std_logic;
SIGNAL \dm|value1[0]~1_combout\ : std_logic;
SIGNAL \dm|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[0]~2_combout\ : std_logic;
SIGNAL \dm|value1[0]~3_combout\ : std_logic;
SIGNAL \dm|r13|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r9|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|r5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \dm|value1[0]~4_combout\ : std_logic;
SIGNAL \dm|value1[0]~5_combout\ : std_logic;
SIGNAL \dm|value1[0]~6_combout\ : std_logic;
SIGNAL \dm|value1[0]~9_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r16|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r15|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~7_combout\ : std_logic;
SIGNAL \rf|value1[0]~8_combout\ : std_logic;
SIGNAL \rf|r10|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|r11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[0]~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~1_combout\ : std_logic;
SIGNAL \rf|r6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[0]~2_combout\ : std_logic;
SIGNAL \rf|value1[0]~3_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[0]~4_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[0]~5_combout\ : std_logic;
SIGNAL \rf|value1[0]~6_combout\ : std_logic;
SIGNAL \rf|value1[0]~9_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage1|s~0_combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage3|s~combout\ : std_logic;
SIGNAL \a_l_u|stage1|stage4|s~combout\ : std_logic;
SIGNAL \a_l_u|Equal0~0_combout\ : std_logic;
SIGNAL \reg18|Q~q\ : std_logic;
SIGNAL \m6|f[0]~3_combout\ : std_logic;
SIGNAL \m6|f[0]~2_combout\ : std_logic;
SIGNAL \m6|f[0]~5_combout\ : std_logic;
SIGNAL \im|output[1]~6_combout\ : std_logic;
SIGNAL \m6|f[1]~6_combout\ : std_logic;
SIGNAL \ripple2|stage2|s~0_combout\ : std_logic;
SIGNAL \m6|f[1]~7_combout\ : std_logic;
SIGNAL \m6|f[1]~8_combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \reg1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg16|Q[3]~feeder_combout\ : std_logic;
SIGNAL \ripple2|stage4|s~0_combout\ : std_logic;
SIGNAL \m6|f[3]~14_combout\ : std_logic;
SIGNAL \m6|f[3]~12_combout\ : std_logic;
SIGNAL \m6|f[3]~13_combout\ : std_logic;
SIGNAL \im|output[19]~2_combout\ : std_logic;
SIGNAL \rf|value2[0]~7_combout\ : std_logic;
SIGNAL \rf|value2[0]~8_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|value2[0]~3_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \rf|value2[0]~5_combout\ : std_logic;
SIGNAL \rf|value2[0]~6_combout\ : std_logic;
SIGNAL \rf|value2[0]~9_combout\ : std_logic;
SIGNAL \m5|f[0]~0_combout\ : std_logic;
SIGNAL \m5|f[0]~1_combout\ : std_logic;
SIGNAL \m5|f[1]~2_combout\ : std_logic;
SIGNAL \m5|f[1]~3_combout\ : std_logic;
SIGNAL \m5|f[2]~4_combout\ : std_logic;
SIGNAL \m5|f[2]~5_combout\ : std_logic;
SIGNAL \m5|f[3]~6_combout\ : std_logic;
SIGNAL \m5|f[3]~7_combout\ : std_logic;
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r16|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r8|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r9|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dm|r16|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg2|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \reg3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg16|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg17|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg19|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg20|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg26|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg27|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg28|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg29|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg30|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \id|ALUOP\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg12|Q\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X107_Y73_N9
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m5|f[0]~1_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m5|f[1]~3_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m5|f[2]~5_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m5|f[3]~7_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y37_N1
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G9
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X84_Y53_N22
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \r1|Q\(2) $ (((\r1|Q\(0) & \r1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|Q\(0),
	datac => \r1|Q\(1),
	datad => \r1|Q\(2),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X84_Y53_N23
\reg1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \addpc|stage3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(2));

-- Location: FF_X84_Y53_N29
\reg16|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg1|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg16|Q\(2));

-- Location: LCCOMB_X84_Y53_N10
\reg20|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg20|Q[2]~feeder_combout\ = \reg16|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg16|Q\(2),
	combout => \reg20|Q[2]~feeder_combout\);

-- Location: FF_X84_Y53_N11
\reg20|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg20|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg20|Q\(2));

-- Location: LCCOMB_X84_Y53_N28
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \r1|Q\(1) $ (\r1|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \addpc|stage2|s~combout\);

-- Location: LCCOMB_X84_Y53_N30
\reg1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[1]~feeder_combout\ = \addpc|stage2|s~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addpc|stage2|s~combout\,
	combout => \reg1|Q[1]~feeder_combout\);

-- Location: FF_X84_Y53_N31
\reg1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(1));

-- Location: FF_X84_Y53_N5
\reg16|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg1|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg16|Q\(1));

-- Location: FF_X84_Y53_N27
\reg20|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg16|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg20|Q\(1));

-- Location: FF_X84_Y52_N19
\reg2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[1]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(1));

-- Location: FF_X84_Y51_N5
\reg14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg2|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|Q\(1));

-- Location: LCCOMB_X84_Y53_N20
\reg27|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg27|Q[1]~feeder_combout\ = \reg14|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg14|Q\(1),
	combout => \reg27|Q[1]~feeder_combout\);

-- Location: FF_X84_Y53_N21
\reg27|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg27|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg27|Q\(1));

-- Location: LCCOMB_X86_Y50_N30
\reg1|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[0]~0_combout\ = !\r1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \r1|Q\(0),
	combout => \reg1|Q[0]~0_combout\);

-- Location: FF_X86_Y50_N31
\reg1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(0));

-- Location: LCCOMB_X86_Y50_N4
\reg16|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg16|Q[0]~feeder_combout\ = \reg1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg1|Q\(0),
	combout => \reg16|Q[0]~feeder_combout\);

-- Location: FF_X86_Y50_N5
\reg16|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg16|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg16|Q\(0));

-- Location: LCCOMB_X84_Y53_N8
\reg20|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg20|Q[0]~feeder_combout\ = \reg16|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg16|Q\(0),
	combout => \reg20|Q[0]~feeder_combout\);

-- Location: FF_X84_Y53_N9
\reg20|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg20|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg20|Q\(0));

-- Location: LCCOMB_X84_Y53_N2
\reg27|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg27|Q[0]~feeder_combout\ = \reg14|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg14|Q\(0),
	combout => \reg27|Q[0]~feeder_combout\);

-- Location: FF_X84_Y53_N3
\reg27|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg27|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg27|Q\(0));

-- Location: LCCOMB_X84_Y53_N0
\ripple2|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ripple2|stage2|Cout~0_combout\ = (\reg20|Q\(1) & ((\reg27|Q\(1)) # ((\reg20|Q\(0) & \reg27|Q\(0))))) # (!\reg20|Q\(1) & (\reg27|Q\(1) & (\reg20|Q\(0) & \reg27|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg20|Q\(1),
	datab => \reg27|Q\(1),
	datac => \reg20|Q\(0),
	datad => \reg27|Q\(0),
	combout => \ripple2|stage2|Cout~0_combout\);

-- Location: LCCOMB_X85_Y53_N20
\im|output[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[2]~7_combout\ = (\r1|Q\(1) & ((\r1|Q\(3)) # ((!\r1|Q\(0) & \r1|Q\(2))))) # (!\r1|Q\(1) & (\r1|Q\(2) $ (((!\r1|Q\(0) & !\r1|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(1),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[2]~7_combout\);

-- Location: FF_X84_Y52_N1
\reg2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[2]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(2));

-- Location: LCCOMB_X83_Y53_N16
\reg14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg14|Q[2]~feeder_combout\ = \reg2|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg2|Q\(2),
	combout => \reg14|Q[2]~feeder_combout\);

-- Location: FF_X83_Y53_N17
\reg14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg14|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|Q\(2));

-- Location: FF_X84_Y53_N17
\reg27|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg14|Q\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg27|Q\(2));

-- Location: LCCOMB_X85_Y53_N4
\im|output[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[27]~5_combout\ = (\r1|Q\(1) & ((\r1|Q\(3)) # ((!\r1|Q\(0) & !\r1|Q\(2))))) # (!\r1|Q\(1) & (((\r1|Q\(3) & \r1|Q\(2))) # (!\r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(1),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[27]~5_combout\);

-- Location: FF_X84_Y52_N31
\reg2|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[27]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(27));

-- Location: LCCOMB_X84_Y52_N10
\im|output[30]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[30]~12_combout\ = (\r1|Q\(2) & (((\r1|Q\(3))))) # (!\r1|Q\(2) & ((\r1|Q\(1) & (\r1|Q\(3))) # (!\r1|Q\(1) & (!\r1|Q\(3) & !\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(0),
	combout => \im|output[30]~12_combout\);

-- Location: FF_X84_Y52_N11
\reg2|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[30]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(30));

-- Location: LCCOMB_X85_Y52_N12
\im|output[28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[28]~11_combout\ = \r1|Q\(3) $ (((!\r1|Q\(0) & (!\r1|Q\(1) & !\r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(0),
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[28]~11_combout\);

-- Location: FF_X84_Y52_N29
\reg2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[28]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(14));

-- Location: LCCOMB_X85_Y52_N14
\im|output[29]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[29]~9_combout\ = (\r1|Q\(1) & (((\r1|Q\(3))))) # (!\r1|Q\(1) & ((\r1|Q\(2) & ((\r1|Q\(3)))) # (!\r1|Q\(2) & (!\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(0),
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[29]~9_combout\);

-- Location: FF_X84_Y52_N7
\reg2|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[29]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(29));

-- Location: LCCOMB_X84_Y52_N20
\im|output[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[31]~10_combout\ = (\r1|Q\(1) & (((\r1|Q\(3))))) # (!\r1|Q\(1) & (((\r1|Q\(2) & \r1|Q\(3))) # (!\r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(0),
	combout => \im|output[31]~10_combout\);

-- Location: FF_X84_Y52_N21
\reg2|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[31]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(26));

-- Location: LCCOMB_X84_Y52_N2
\id|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal11~0_combout\ = (!\reg2|Q\(30) & (\reg2|Q\(14) & (!\reg2|Q\(29) & !\reg2|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(30),
	datab => \reg2|Q\(14),
	datac => \reg2|Q\(29),
	datad => \reg2|Q\(26),
	combout => \id|Equal11~0_combout\);

-- Location: LCCOMB_X84_Y52_N24
\id|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal11~1_combout\ = (!\reg2|Q\(27) & \id|Equal11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg2|Q\(27),
	datad => \id|Equal11~0_combout\,
	combout => \id|Equal11~1_combout\);

-- Location: FF_X84_Y52_N25
\reg9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|Equal11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg9|Q~q\);

-- Location: LCCOMB_X84_Y53_N18
\reg25|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg25|Q~feeder_combout\ = \reg9|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg9|Q~q\,
	combout => \reg25|Q~feeder_combout\);

-- Location: FF_X84_Y53_N19
\reg25|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg25|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg25|Q~q\);

-- Location: LCCOMB_X84_Y53_N4
branch_zero : cycloneive_lcell_comb
-- Equation(s):
-- \branch_zero~combout\ = (\reg25|Q~q\ & \reg18|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg25|Q~q\,
	datad => \reg18|Q~q\,
	combout => \branch_zero~combout\);

-- Location: LCCOMB_X84_Y53_N16
\m6|f[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[2]~10_combout\ = (\branch_zero~combout\ & (\reg20|Q\(2) $ (\ripple2|stage2|Cout~0_combout\ $ (\reg27|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg20|Q\(2),
	datab => \ripple2|stage2|Cout~0_combout\,
	datac => \reg27|Q\(2),
	datad => \branch_zero~combout\,
	combout => \m6|f[2]~10_combout\);

-- Location: LCCOMB_X85_Y53_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\r1|Q\(3) & ((\r1|Q\(1)) # (\r1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X85_Y53_N22
\m6|f[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[2]~9_combout\ = (\im|output[27]~5_combout\ & (\im|output[2]~7_combout\ & (!\branch_zero~combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[27]~5_combout\,
	datab => \im|output[2]~7_combout\,
	datac => \branch_zero~combout\,
	datad => \Equal0~0_combout\,
	combout => \m6|f[2]~9_combout\);

-- Location: LCCOMB_X85_Y53_N0
\m6|f[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[1]~4_combout\ = (\reg18|Q~q\ & (!\reg25|Q~q\ & ((!\Equal0~0_combout\) # (!\im|output[27]~5_combout\)))) # (!\reg18|Q~q\ & (((!\Equal0~0_combout\) # (!\im|output[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg18|Q~q\,
	datab => \reg25|Q~q\,
	datac => \im|output[27]~5_combout\,
	datad => \Equal0~0_combout\,
	combout => \m6|f[1]~4_combout\);

-- Location: LCCOMB_X85_Y53_N28
\m6|f[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[2]~11_combout\ = (\m6|f[2]~10_combout\) # ((\m6|f[2]~9_combout\) # ((\addpc|stage3|s~combout\ & \m6|f[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|f[2]~10_combout\,
	datab => \addpc|stage3|s~combout\,
	datac => \m6|f[2]~9_combout\,
	datad => \m6|f[1]~4_combout\,
	combout => \m6|f[2]~11_combout\);

-- Location: IOIBUF_X115_Y42_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X85_Y53_N29
\r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m6|f[2]~11_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(2));

-- Location: LCCOMB_X85_Y53_N10
\im|output[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~4_combout\ = (\r1|Q\(0) & (((\r1|Q\(3))))) # (!\r1|Q\(0) & ((\r1|Q\(1)) # (\r1|Q\(3) $ (!\r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(1),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[0]~4_combout\);

-- Location: FF_X84_Y52_N27
\reg2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[0]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(0));

-- Location: FF_X83_Y51_N5
\reg14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg2|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|Q\(0));

-- Location: LCCOMB_X84_Y52_N16
\id|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal2~0_combout\ = (!\reg2|Q\(30) & (!\reg2|Q\(14) & (\reg2|Q\(27) & \reg2|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(30),
	datab => \reg2|Q\(14),
	datac => \reg2|Q\(27),
	datad => \reg2|Q\(26),
	combout => \id|Equal2~0_combout\);

-- Location: FF_X84_Y51_N9
\reg10|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \id|Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg10|Q~q\);

-- Location: FF_X85_Y51_N7
\reg4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|value2[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(0));

-- Location: LCCOMB_X84_Y53_N12
\im|output[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[3]~8_combout\ = (\r1|Q\(1) & ((\r1|Q\(3)) # (\r1|Q\(0) $ (!\r1|Q\(2))))) # (!\r1|Q\(1) & (\r1|Q\(3) $ (((!\r1|Q\(0) & !\r1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(0),
	datac => \r1|Q\(1),
	datad => \r1|Q\(2),
	combout => \im|output[3]~8_combout\);

-- Location: FF_X84_Y52_N23
\reg2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \im|output[3]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(3));

-- Location: LCCOMB_X84_Y52_N8
\im|output[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[5]~13_combout\ = (\r1|Q\(0)) # ((\r1|Q\(2) & ((\r1|Q\(1)) # (\r1|Q\(3)))) # (!\r1|Q\(2) & (\r1|Q\(1) $ (!\r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(1),
	datac => \r1|Q\(3),
	datad => \r1|Q\(0),
	combout => \im|output[5]~13_combout\);

-- Location: FF_X84_Y52_N9
\reg2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(5));

-- Location: LCCOMB_X84_Y52_N26
\id|ALUOP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP~0_combout\ = (\reg2|Q\(5) & (\reg2|Q\(1) & (!\reg2|Q\(0) & !\reg2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(5),
	datab => \reg2|Q\(1),
	datac => \reg2|Q\(0),
	datad => \reg2|Q\(2),
	combout => \id|ALUOP~0_combout\);

-- Location: LCCOMB_X84_Y52_N6
\id|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~0_combout\ = (!\reg2|Q\(30) & (!\reg2|Q\(14) & (!\reg2|Q\(29) & !\reg2|Q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(30),
	datab => \reg2|Q\(14),
	datac => \reg2|Q\(29),
	datad => \reg2|Q\(26),
	combout => \id|Equal5~0_combout\);

-- Location: LCCOMB_X84_Y52_N30
\id|ALUOP~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP~1_combout\ = (\id|Equal5~0_combout\ & ((\reg2|Q\(27)) # ((\reg2|Q\(3) & \id|ALUOP~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(3),
	datab => \id|ALUOP~0_combout\,
	datac => \reg2|Q\(27),
	datad => \id|Equal5~0_combout\,
	combout => \id|ALUOP~1_combout\);

-- Location: LCCOMB_X84_Y52_N28
\id|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal6~0_combout\ = (!\reg2|Q\(0) & (\reg2|Q\(5) & (!\reg2|Q\(14) & !\reg2|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(0),
	datab => \reg2|Q\(5),
	datac => \reg2|Q\(14),
	datad => \reg2|Q\(2),
	combout => \id|Equal6~0_combout\);

-- Location: LCCOMB_X84_Y52_N0
\id|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal5~1_combout\ = (!\reg2|Q\(27) & \id|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(27),
	datad => \id|Equal5~0_combout\,
	combout => \id|Equal5~1_combout\);

-- Location: LCCOMB_X84_Y52_N18
\id|reg_dst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|reg_dst~0_combout\ = (\reg2|Q\(5) & !\reg2|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg2|Q\(5),
	datad => \reg2|Q\(14),
	combout => \id|reg_dst~0_combout\);

-- Location: LCCOMB_X84_Y51_N14
\id|ALUOP[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP[1]~4_combout\ = (\id|Equal5~1_combout\ & ((\id|Equal6~0_combout\) # ((\reg2|Q\(2) & \id|reg_dst~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~1_combout\,
	datab => \id|Equal6~0_combout\,
	datac => \reg2|Q\(2),
	datad => \id|reg_dst~0_combout\,
	combout => \id|ALUOP[1]~4_combout\);

-- Location: LCCOMB_X84_Y51_N20
\id|ALUOP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP[1]~5_combout\ = (!\reg2|Q\(3) & (\id|ALUOP[1]~4_combout\ & ((\id|Equal6~0_combout\) # (!\reg2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(3),
	datab => \reg2|Q\(1),
	datac => \id|Equal6~0_combout\,
	datad => \id|ALUOP[1]~4_combout\,
	combout => \id|ALUOP[1]~5_combout\);

-- Location: LCCOMB_X84_Y51_N30
\id|ALUOP[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP[1]~2_combout\ = (\id|ALUOP~1_combout\) # ((\id|Equal11~1_combout\) # ((\id|Equal2~0_combout\) # (\id|ALUOP[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|ALUOP~1_combout\,
	datab => \id|Equal11~1_combout\,
	datac => \id|Equal2~0_combout\,
	datad => \id|ALUOP[1]~5_combout\,
	combout => \id|ALUOP[1]~2_combout\);

-- Location: LCCOMB_X84_Y51_N2
\id|ALUOP~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP~3_combout\ = ((\reg2|Q\(1)) # ((\reg2|Q\(3)) # (\reg2|Q\(0)))) # (!\reg2|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(2),
	datab => \reg2|Q\(1),
	datac => \reg2|Q\(3),
	datad => \reg2|Q\(0),
	combout => \id|ALUOP~3_combout\);

-- Location: LCCOMB_X84_Y51_N16
\id|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|comb~9_combout\ = (!\id|ALUOP~1_combout\ & (((\id|ALUOP~3_combout\) # (!\reg2|Q\(5))) # (!\id|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~1_combout\,
	datab => \reg2|Q\(5),
	datac => \id|ALUOP~1_combout\,
	datad => \id|ALUOP~3_combout\,
	combout => \id|comb~9_combout\);

-- Location: LCCOMB_X84_Y51_N4
\id|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|comb~11_combout\ = (\id|ALUOP[1]~2_combout\ & \id|comb~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|ALUOP[1]~2_combout\,
	datab => \id|comb~9_combout\,
	combout => \id|comb~11_combout\);

-- Location: LCCOMB_X85_Y51_N8
\id|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|comb~10_combout\ = (!\id|comb~9_combout\ & \id|ALUOP[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|comb~9_combout\,
	datad => \id|ALUOP[1]~2_combout\,
	combout => \id|comb~10_combout\);

-- Location: LCCOMB_X84_Y51_N28
\id|ALUOP[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP\(0) = (!\id|comb~10_combout\ & ((\id|comb~11_combout\) # (\id|ALUOP\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|comb~11_combout\,
	datac => \id|comb~10_combout\,
	datad => \id|ALUOP\(0),
	combout => \id|ALUOP\(0));

-- Location: FF_X84_Y51_N29
\reg12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|ALUOP\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|Q\(0));

-- Location: LCCOMB_X84_Y52_N22
\id|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|comb~12_combout\ = (\id|Equal5~0_combout\ & (!\reg2|Q\(27) & (!\reg2|Q\(3) & \id|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~0_combout\,
	datab => \reg2|Q\(27),
	datac => \reg2|Q\(3),
	datad => \id|Equal6~0_combout\,
	combout => \id|comb~12_combout\);

-- Location: LCCOMB_X84_Y51_N8
\id|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|comb~8_combout\ = (\id|ALUOP~1_combout\) # ((\id|comb~12_combout\) # ((\id|Equal2~0_combout\) # (\id|Equal11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|ALUOP~1_combout\,
	datab => \id|comb~12_combout\,
	datac => \id|Equal2~0_combout\,
	datad => \id|Equal11~1_combout\,
	combout => \id|comb~8_combout\);

-- Location: LCCOMB_X84_Y51_N6
\id|ALUOP[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|ALUOP\(1) = (!\id|comb~8_combout\ & ((\id|ALUOP[1]~2_combout\) # (\id|ALUOP\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \id|comb~8_combout\,
	datac => \id|ALUOP[1]~2_combout\,
	datad => \id|ALUOP\(1),
	combout => \id|ALUOP\(1));

-- Location: FF_X84_Y51_N13
\reg12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \id|ALUOP\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg12|Q\(1));

-- Location: LCCOMB_X87_Y53_N24
\im|output[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[17]~3_combout\ = (\r1|Q\(3) & ((\r1|Q\(2)) # ((\r1|Q\(1))))) # (!\r1|Q\(3) & (!\r1|Q\(0) & ((\r1|Q\(2)) # (!\r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(3),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[17]~3_combout\);

-- Location: FF_X87_Y53_N25
\reg2|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(17));

-- Location: LCCOMB_X83_Y50_N4
\reg19|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg19|Q[1]~feeder_combout\ = \reg4|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg4|Q\(1),
	combout => \reg19|Q[1]~feeder_combout\);

-- Location: FF_X83_Y50_N5
\reg19|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg19|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg19|Q\(1));

-- Location: LCCOMB_X82_Y50_N26
\dm|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~2_combout\ = (!\reset~input_o\ & \reg19|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \reg19|Q\(1),
	combout => \dm|m1|stage3|f~2_combout\);

-- Location: LCCOMB_X80_Y50_N28
\dm|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r11|Q[1]~feeder_combout\);

-- Location: LCCOMB_X87_Y53_N30
\im|output[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[16]~1_combout\ = (\r1|Q\(3)) # (\r1|Q\(2) $ (((!\r1|Q\(1) & !\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(3),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[16]~1_combout\);

-- Location: FF_X87_Y53_N31
\reg2|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(16));

-- Location: LCCOMB_X85_Y52_N28
\id|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal2~1_combout\ = (!\reg2|Q\(29) & \id|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg2|Q\(29),
	datac => \id|Equal2~0_combout\,
	combout => \id|Equal2~1_combout\);

-- Location: FF_X85_Y52_N29
\reg6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|Q~q\);

-- Location: LCCOMB_X85_Y52_N22
\reg22|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg22|Q~feeder_combout\ = \reg6|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg6|Q~q\,
	combout => \reg22|Q~feeder_combout\);

-- Location: FF_X85_Y52_N23
\reg22|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg22|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg22|Q~q\);

-- Location: LCCOMB_X85_Y52_N8
\reg31|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg31|Q~feeder_combout\ = \reg22|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg22|Q~q\,
	combout => \reg31|Q~feeder_combout\);

-- Location: FF_X85_Y52_N9
\reg31|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg31|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg31|Q~q\);

-- Location: LCCOMB_X85_Y52_N30
\reg29|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg29|Q[2]~feeder_combout\ = \reg17|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg17|Q\(2),
	combout => \reg29|Q[2]~feeder_combout\);

-- Location: FF_X85_Y52_N31
\reg29|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg29|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg29|Q\(2));

-- Location: LCCOMB_X80_Y51_N12
\reg19|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg19|Q[2]~feeder_combout\ = \reg4|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg4|Q\(2),
	combout => \reg19|Q[2]~feeder_combout\);

-- Location: FF_X80_Y51_N13
\reg19|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg19|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg19|Q\(2));

-- Location: LCCOMB_X81_Y51_N22
\dm|m2|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f~1_combout\ = (!\reset~input_o\ & \reg19|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg19|Q\(2),
	combout => \dm|m2|stage3|f~1_combout\);

-- Location: LCCOMB_X81_Y52_N30
\dm|r16|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r16|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r16|Q[2]~feeder_combout\);

-- Location: LCCOMB_X86_Y50_N14
\im|output[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[21]~14_combout\ = (\r1|Q\(3) & ((\r1|Q\(2)) # ((\r1|Q\(1))))) # (!\r1|Q\(3) & (\r1|Q\(2) $ (((\r1|Q\(0)) # (!\r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(0),
	datad => \r1|Q\(1),
	combout => \im|output[21]~14_combout\);

-- Location: FF_X86_Y50_N15
\reg2|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(21));

-- Location: LCCOMB_X87_Y53_N28
\im|output[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[18]~0_combout\ = (\r1|Q\(1) & ((\r1|Q\(3)) # (\r1|Q\(2) $ (\r1|Q\(0))))) # (!\r1|Q\(1) & ((\r1|Q\(2)) # (\r1|Q\(3) $ (!\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(2),
	datab => \r1|Q\(3),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[18]~0_combout\);

-- Location: FF_X87_Y53_N29
\reg2|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(18));

-- Location: LCCOMB_X86_Y51_N10
\rf|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r7|Q[3]~feeder_combout\);

-- Location: LCCOMB_X88_Y52_N22
\im|output[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~19_combout\ = (\r1|Q\(0) & ((\r1|Q\(3)) # (\r1|Q\(2) $ (\r1|Q\(1))))) # (!\r1|Q\(0) & (\r1|Q\(3) $ (((!\r1|Q\(2) & !\r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[12]~19_combout\);

-- Location: FF_X88_Y52_N23
\reg2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[12]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(12));

-- Location: LCCOMB_X84_Y52_N4
\id|reg_dst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|reg_dst~1_combout\ = (\reg2|Q\(2) & (((!\reg2|Q\(3) & !\reg2|Q\(1))))) # (!\reg2|Q\(2) & (!\reg2|Q\(0) & ((\reg2|Q\(1)) # (!\reg2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(0),
	datab => \reg2|Q\(2),
	datac => \reg2|Q\(3),
	datad => \reg2|Q\(1),
	combout => \id|reg_dst~1_combout\);

-- Location: LCCOMB_X84_Y52_N14
\id|reg_dst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|reg_dst~2_combout\ = (!\reg2|Q\(27) & (\id|reg_dst~0_combout\ & (\id|reg_dst~1_combout\ & \id|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(27),
	datab => \id|reg_dst~0_combout\,
	datac => \id|reg_dst~1_combout\,
	datad => \id|Equal5~0_combout\,
	combout => \id|reg_dst~2_combout\);

-- Location: LCCOMB_X88_Y52_N28
\m2|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|f[1]~3_combout\ = (\id|reg_dst~2_combout\ & (\reg2|Q\(12))) # (!\id|reg_dst~2_combout\ & ((\reg2|Q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(12),
	datac => \reg2|Q\(17),
	datad => \id|reg_dst~2_combout\,
	combout => \m2|f[1]~3_combout\);

-- Location: FF_X88_Y52_N29
\reg15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m2|f[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|Q\(1));

-- Location: LCCOMB_X88_Y52_N16
\reg26|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg26|Q[1]~feeder_combout\ = \reg15|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg15|Q\(1),
	combout => \reg26|Q[1]~feeder_combout\);

-- Location: FF_X88_Y52_N17
\reg26|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg26|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg26|Q\(1));

-- Location: LCCOMB_X88_Y50_N16
\reg30|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg30|Q[1]~feeder_combout\ = \reg26|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg26|Q\(1),
	combout => \reg30|Q[1]~feeder_combout\);

-- Location: FF_X88_Y50_N17
\reg30|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg30|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg30|Q\(1));

-- Location: LCCOMB_X88_Y52_N12
\im|output[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[11]~18_combout\ = (\r1|Q\(3) & ((\r1|Q\(2)) # ((\r1|Q\(1)) # (\r1|Q\(0))))) # (!\r1|Q\(3) & ((\r1|Q\(2) & ((\r1|Q\(0)))) # (!\r1|Q\(2) & (!\r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[11]~18_combout\);

-- Location: FF_X88_Y52_N13
\reg2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(11));

-- Location: LCCOMB_X88_Y52_N18
\m2|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|f[0]~2_combout\ = (\id|reg_dst~2_combout\ & (\reg2|Q\(11))) # (!\id|reg_dst~2_combout\ & ((\reg2|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(11),
	datac => \reg2|Q\(16),
	datad => \id|reg_dst~2_combout\,
	combout => \m2|f[0]~2_combout\);

-- Location: FF_X88_Y52_N19
\reg15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m2|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|Q\(0));

-- Location: LCCOMB_X88_Y52_N26
\reg26|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg26|Q[0]~feeder_combout\ = \reg15|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg15|Q\(0),
	combout => \reg26|Q[0]~feeder_combout\);

-- Location: FF_X88_Y52_N27
\reg26|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg26|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg26|Q\(0));

-- Location: LCCOMB_X88_Y50_N12
\reg30|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg30|Q[0]~feeder_combout\ = \reg26|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg26|Q\(0),
	combout => \reg30|Q[0]~feeder_combout\);

-- Location: FF_X88_Y50_N13
\reg30|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg30|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg30|Q\(0));

-- Location: LCCOMB_X88_Y52_N20
\m2|f[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|f[3]~1_combout\ = (\reg2|Q\(19) & !\id|reg_dst~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg2|Q\(19),
	datad => \id|reg_dst~2_combout\,
	combout => \m2|f[3]~1_combout\);

-- Location: FF_X88_Y52_N21
\reg15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m2|f[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|Q\(3));

-- Location: LCCOMB_X88_Y52_N0
\reg26|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg26|Q[3]~feeder_combout\ = \reg15|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg15|Q\(3),
	combout => \reg26|Q[3]~feeder_combout\);

-- Location: FF_X88_Y52_N1
\reg26|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg26|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg26|Q\(3));

-- Location: LCCOMB_X88_Y50_N20
\reg30|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg30|Q[3]~feeder_combout\ = \reg26|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg26|Q\(3),
	combout => \reg30|Q[3]~feeder_combout\);

-- Location: FF_X88_Y50_N21
\reg30|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg30|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg30|Q\(3));

-- Location: LCCOMB_X85_Y52_N26
\id|reg_write\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|reg_write~combout\ = (\id|reg_dst~2_combout\) # ((\id|Equal2~0_combout\ & !\reg2|Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal2~0_combout\,
	datab => \reg2|Q\(29),
	datac => \id|reg_dst~2_combout\,
	combout => \id|reg_write~combout\);

-- Location: FF_X85_Y52_N27
\reg5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|reg_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|Q~q\);

-- Location: FF_X88_Y50_N23
\reg21|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg5|Q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg21|Q~q\);

-- Location: LCCOMB_X88_Y50_N18
\reg32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg32|Q~feeder_combout\ = \reg21|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg21|Q~q\,
	combout => \reg32|Q~feeder_combout\);

-- Location: FF_X88_Y50_N19
\reg32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg32|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg32|Q~q\);

-- Location: LCCOMB_X88_Y50_N22
\rf|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~0_combout\ = (!\reg30|Q\(0) & (!\reg30|Q\(3) & \reg32|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(0),
	datab => \reg30|Q\(3),
	datad => \reg32|Q~q\,
	combout => \rf|m7|stage3|f~0_combout\);

-- Location: LCCOMB_X88_Y52_N14
\im|output[13]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[13]~17_combout\ = (\r1|Q\(2) & ((\r1|Q\(3)) # ((\r1|Q\(1))))) # (!\r1|Q\(2) & (\r1|Q\(3) $ (((!\r1|Q\(1) & !\r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(1),
	datad => \r1|Q\(0),
	combout => \im|output[13]~17_combout\);

-- Location: FF_X88_Y52_N15
\reg2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[13]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(13));

-- Location: LCCOMB_X88_Y52_N10
\m2|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m2|f[2]~0_combout\ = (\id|reg_dst~2_combout\ & ((\reg2|Q\(13)))) # (!\id|reg_dst~2_combout\ & (\reg2|Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datac => \reg2|Q\(13),
	datad => \id|reg_dst~2_combout\,
	combout => \m2|f[2]~0_combout\);

-- Location: FF_X88_Y52_N11
\reg15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m2|f[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg15|Q\(2));

-- Location: LCCOMB_X88_Y52_N2
\reg26|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg26|Q[2]~feeder_combout\ = \reg15|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg15|Q\(2),
	combout => \reg26|Q[2]~feeder_combout\);

-- Location: FF_X88_Y52_N3
\reg26|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg26|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg26|Q\(2));

-- Location: LCCOMB_X88_Y50_N26
\reg30|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg30|Q[2]~feeder_combout\ = \reg26|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg26|Q\(2),
	combout => \reg30|Q[2]~feeder_combout\);

-- Location: FF_X88_Y50_N27
\reg30|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg30|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg30|Q\(2));

-- Location: LCCOMB_X86_Y51_N6
\rf|m7|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m7|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (\rf|m7|stage3|f~0_combout\ & \reg30|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \rf|m7|stage3|f~0_combout\,
	datad => \reg30|Q\(2),
	combout => \rf|m7|stage3|f~1_combout\);

-- Location: FF_X86_Y51_N11
\rf|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r7|Q[3]~feeder_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(3));

-- Location: LCCOMB_X87_Y50_N22
\rf|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f~0_combout\ = (\reset~input_o\) # ((!\reg30|Q\(1) & (\reg30|Q\(2) & \rf|m7|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m7|stage3|f~0_combout\,
	combout => \rf|m5|stage3|f~0_combout\);

-- Location: FF_X87_Y50_N9
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: LCCOMB_X88_Y50_N24
\rf|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r6|Q[3]~feeder_combout\);

-- Location: LCCOMB_X88_Y50_N0
\rf|m8|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f[0]~0_combout\ = (\reg30|Q\(0) & (\reg32|Q~q\ & !\reg30|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(0),
	datab => \reg32|Q~q\,
	datad => \reg30|Q\(3),
	combout => \rf|m8|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X88_Y50_N6
\rf|m6|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m6|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\reg30|Q\(1) & (\reg30|Q\(2) & \rf|m8|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m8|stage3|f[0]~0_combout\,
	combout => \rf|m6|stage3|f[0]~0_combout\);

-- Location: FF_X88_Y50_N25
\rf|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r6|Q[3]~feeder_combout\,
	ena => \rf|m6|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(3));

-- Location: LCCOMB_X87_Y53_N4
\rf|value2[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~30_combout\ = (\reg2|Q\(16) & (((\rf|r6|Q\(3)) # (\reg2|Q\(17))))) # (!\reg2|Q\(16) & (\rf|r5|Q\(3) & ((!\reg2|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(3),
	datab => \rf|r6|Q\(3),
	datac => \reg2|Q\(16),
	datad => \reg2|Q\(17),
	combout => \rf|value2[3]~30_combout\);

-- Location: LCCOMB_X86_Y51_N24
\rf|m8|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m8|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\rf|m8|stage3|f[0]~0_combout\ & (\reg30|Q\(1) & \reg30|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \rf|m8|stage3|f[0]~0_combout\,
	datac => \reg30|Q\(1),
	datad => \reg30|Q\(2),
	combout => \rf|m8|stage3|f[0]~1_combout\);

-- Location: FF_X86_Y51_N17
\rf|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~4_combout\,
	ena => \rf|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(3));

-- Location: LCCOMB_X87_Y53_N18
\rf|value2[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~31_combout\ = (\reg2|Q\(17) & ((\rf|value2[3]~30_combout\ & ((\rf|r8|Q\(3)))) # (!\rf|value2[3]~30_combout\ & (\rf|r7|Q\(3))))) # (!\reg2|Q\(17) & (((\rf|value2[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(3),
	datab => \reg2|Q\(17),
	datac => \rf|value2[3]~30_combout\,
	datad => \rf|r8|Q\(3),
	combout => \rf|value2[3]~31_combout\);

-- Location: LCCOMB_X88_Y51_N18
\rf|r16|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r16|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r16|Q[3]~feeder_combout\);

-- Location: LCCOMB_X88_Y50_N14
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reg30|Q\(0) & (\reg30|Q\(3) & \reg32|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(0),
	datab => \reg30|Q\(3),
	datad => \reg32|Q~q\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: LCCOMB_X88_Y51_N24
\rf|m16|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m16|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (\reg30|Q\(2) & \rf|m14|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m14|stage3|f~0_combout\,
	combout => \rf|m16|stage3|f~0_combout\);

-- Location: FF_X88_Y51_N19
\rf|r16|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r16|Q[3]~feeder_combout\,
	ena => \rf|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r16|Q\(3));

-- Location: LCCOMB_X85_Y50_N6
\rf|r15|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r15|Q[3]~feeder_combout\);

-- Location: LCCOMB_X88_Y50_N30
\rf|m13|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f[0]~0_combout\ = (!\reg30|Q\(0) & (\reg30|Q\(3) & \reg32|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(0),
	datab => \reg30|Q\(3),
	datad => \reg32|Q~q\,
	combout => \rf|m13|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X85_Y50_N30
\rf|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (\reg30|Q\(2) & \rf|m13|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m13|stage3|f[0]~0_combout\,
	combout => \rf|m15|stage3|f~0_combout\);

-- Location: FF_X85_Y50_N7
\rf|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r15|Q[3]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(3));

-- Location: LCCOMB_X87_Y50_N2
\rf|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r13|Q[3]~feeder_combout\);

-- Location: LCCOMB_X87_Y50_N24
\rf|m13|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\reg30|Q\(1) & (\rf|m13|stage3|f[0]~0_combout\ & \reg30|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \rf|m13|stage3|f[0]~0_combout\,
	datad => \reg30|Q\(2),
	combout => \rf|m13|stage3|f[0]~1_combout\);

-- Location: FF_X87_Y50_N3
\rf|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r13|Q[3]~feeder_combout\,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(3));

-- Location: LCCOMB_X87_Y51_N14
\rf|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r14|Q[3]~feeder_combout\);

-- Location: LCCOMB_X87_Y51_N4
\rf|m14|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg30|Q\(2) & (!\reg30|Q\(1) & \rf|m14|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(2),
	datab => \reset~input_o\,
	datac => \reg30|Q\(1),
	datad => \rf|m14|stage3|f~0_combout\,
	combout => \rf|m14|stage3|f~1_combout\);

-- Location: FF_X87_Y51_N15
\rf|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r14|Q[3]~feeder_combout\,
	ena => \rf|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(3));

-- Location: LCCOMB_X87_Y51_N12
\rf|value2[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~37_combout\ = (\reg2|Q\(17) & (((\reg2|Q\(16))))) # (!\reg2|Q\(17) & ((\reg2|Q\(16) & ((\rf|r14|Q\(3)))) # (!\reg2|Q\(16) & (\rf|r13|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(3),
	datab => \rf|r14|Q\(3),
	datac => \reg2|Q\(17),
	datad => \reg2|Q\(16),
	combout => \rf|value2[3]~37_combout\);

-- Location: LCCOMB_X87_Y51_N6
\rf|value2[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~38_combout\ = (\reg2|Q\(17) & ((\rf|value2[3]~37_combout\ & (\rf|r16|Q\(3))) # (!\rf|value2[3]~37_combout\ & ((\rf|r15|Q\(3)))))) # (!\reg2|Q\(17) & (((\rf|value2[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(17),
	datab => \rf|r16|Q\(3),
	datac => \rf|r15|Q\(3),
	datad => \rf|value2[3]~37_combout\,
	combout => \rf|value2[3]~38_combout\);

-- Location: FF_X84_Y51_N3
\reg14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg2|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg14|Q\(3));

-- Location: LCCOMB_X84_Y51_N24
\a_l_u|stage5|stage3|f[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[3]~0_combout\ = (\reg10|Q~q\ & (\reg14|Q\(3))) # (!\reg10|Q~q\ & ((\reg4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg10|Q~q\,
	datac => \reg14|Q\(3),
	datad => \reg4|Q\(3),
	combout => \a_l_u|stage5|stage3|f[3]~0_combout\);

-- Location: LCCOMB_X84_Y51_N12
\a_l_u|stage5|stage3|f[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[3]~1_combout\ = (\reg12|Q\(0) & ((\a_l_u|stage5|stage3|f[3]~0_combout\) # ((\reg3|Q\(3)) # (!\reg12|Q\(1))))) # (!\reg12|Q\(0) & (\a_l_u|stage5|stage3|f[3]~0_combout\ & (\reg12|Q\(1) & \reg3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|Q\(0),
	datab => \a_l_u|stage5|stage3|f[3]~0_combout\,
	datac => \reg12|Q\(1),
	datad => \reg3|Q\(3),
	combout => \a_l_u|stage5|stage3|f[3]~1_combout\);

-- Location: LCCOMB_X84_Y51_N22
\id|add_sub~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|add_sub~0_combout\ = (\id|Equal11~1_combout\) # ((\id|Equal5~1_combout\ & (\reg2|Q\(1) & \id|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \id|Equal5~1_combout\,
	datab => \reg2|Q\(1),
	datac => \id|Equal6~0_combout\,
	datad => \id|Equal11~1_combout\,
	combout => \id|add_sub~0_combout\);

-- Location: FF_X84_Y51_N23
\reg13|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|add_sub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg13|Q~q\);

-- Location: LCCOMB_X83_Y51_N4
\a_l_u|stage5|stage3|f[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[3]~2_combout\ = \reg13|Q~q\ $ (!\a_l_u|stage1|stage4|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg13|Q~q\,
	datad => \a_l_u|stage1|stage4|s~0_combout\,
	combout => \a_l_u|stage5|stage3|f[3]~2_combout\);

-- Location: LCCOMB_X86_Y50_N26
\im|output[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[24]~16_combout\ = (\r1|Q\(3) & ((\r1|Q\(2)) # ((\r1|Q\(1))))) # (!\r1|Q\(3) & ((\r1|Q\(0) & (\r1|Q\(2) & \r1|Q\(1))) # (!\r1|Q\(0) & ((!\r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(0),
	datad => \r1|Q\(1),
	combout => \im|output[24]~16_combout\);

-- Location: FF_X86_Y50_N27
\reg2|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[24]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(24));

-- Location: LCCOMB_X86_Y50_N16
\im|output[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[22]~15_combout\ = (\r1|Q\(0) & ((\r1|Q\(3)) # ((\r1|Q\(1))))) # (!\r1|Q\(0) & (\r1|Q\(3) $ (((!\r1|Q\(2) & !\r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(0),
	datad => \r1|Q\(1),
	combout => \im|output[22]~15_combout\);

-- Location: FF_X86_Y50_N17
\reg2|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[22]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(22));

-- Location: FF_X86_Y50_N7
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X85_Y50_N22
\rf|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r15|Q[2]~feeder_combout\);

-- Location: FF_X85_Y50_N23
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r15|Q[2]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: LCCOMB_X86_Y50_N6
\rf|value1[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~27_combout\ = (\reg2|Q\(22) & ((\reg2|Q\(21)) # ((\rf|r15|Q\(2))))) # (!\reg2|Q\(22) & (!\reg2|Q\(21) & (\rf|r13|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \reg2|Q\(21),
	datac => \rf|r13|Q\(2),
	datad => \rf|r15|Q\(2),
	combout => \rf|value1[2]~27_combout\);

-- Location: LCCOMB_X87_Y51_N28
\rf|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r14|Q[2]~feeder_combout\);

-- Location: FF_X87_Y51_N29
\rf|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r14|Q[2]~feeder_combout\,
	ena => \rf|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(2));

-- Location: LCCOMB_X88_Y51_N12
\rf|r16|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r16|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r16|Q[2]~feeder_combout\);

-- Location: FF_X88_Y51_N13
\rf|r16|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r16|Q[2]~feeder_combout\,
	ena => \rf|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r16|Q\(2));

-- Location: LCCOMB_X86_Y50_N20
\rf|value1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~28_combout\ = (\rf|value1[2]~27_combout\ & (((\rf|r16|Q\(2)) # (!\reg2|Q\(21))))) # (!\rf|value1[2]~27_combout\ & (\rf|r14|Q\(2) & (\reg2|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[2]~27_combout\,
	datab => \rf|r14|Q\(2),
	datac => \reg2|Q\(21),
	datad => \rf|r16|Q\(2),
	combout => \rf|value1[2]~28_combout\);

-- Location: LCCOMB_X85_Y51_N12
\rf|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r11|Q[2]~feeder_combout\);

-- Location: LCCOMB_X85_Y51_N30
\rf|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m11|stage3|f~0_combout\ = (\reset~input_o\) # ((!\reg30|Q\(2) & (\reg30|Q\(1) & \rf|m13|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(2),
	datac => \reg30|Q\(1),
	datad => \rf|m13|stage3|f[0]~0_combout\,
	combout => \rf|m11|stage3|f~0_combout\);

-- Location: FF_X85_Y51_N13
\rf|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r11|Q[2]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(2));

-- Location: LCCOMB_X85_Y50_N4
\rf|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r12|Q[2]~feeder_combout\);

-- Location: LCCOMB_X85_Y50_N28
\rf|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (!\reg30|Q\(2) & \rf|m14|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m14|stage3|f~0_combout\,
	combout => \rf|m12|stage3|f~0_combout\);

-- Location: FF_X85_Y50_N5
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r12|Q[2]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: LCCOMB_X88_Y50_N4
\rf|m9|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f~0_combout\ = (!\reg30|Q\(0) & (!\reg30|Q\(1) & (!\reg30|Q\(2) & \reg32|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(0),
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \reg32|Q~q\,
	combout => \rf|m9|stage3|f~0_combout\);

-- Location: LCCOMB_X86_Y52_N26
\rf|m9|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m9|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg30|Q\(3) & \rf|m9|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(3),
	datad => \rf|m9|stage3|f~0_combout\,
	combout => \rf|m9|stage3|f~1_combout\);

-- Location: FF_X86_Y52_N7
\rf|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(2));

-- Location: LCCOMB_X87_Y52_N28
\rf|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r10|Q[2]~feeder_combout\);

-- Location: LCCOMB_X87_Y52_N6
\rf|m10|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m10|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\reg30|Q\(1) & (!\reg30|Q\(2) & \rf|m14|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m14|stage3|f~0_combout\,
	combout => \rf|m10|stage3|f[0]~0_combout\);

-- Location: FF_X87_Y52_N29
\rf|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r10|Q[2]~feeder_combout\,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(2));

-- Location: LCCOMB_X86_Y50_N24
\rf|value1[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~20_combout\ = (\reg2|Q\(21) & (((\reg2|Q\(22)) # (\rf|r10|Q\(2))))) # (!\reg2|Q\(21) & (\rf|r9|Q\(2) & (!\reg2|Q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(2),
	datab => \reg2|Q\(21),
	datac => \reg2|Q\(22),
	datad => \rf|r10|Q\(2),
	combout => \rf|value1[2]~20_combout\);

-- Location: LCCOMB_X86_Y50_N18
\rf|value1[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~21_combout\ = (\reg2|Q\(22) & ((\rf|value1[2]~20_combout\ & ((\rf|r12|Q\(2)))) # (!\rf|value1[2]~20_combout\ & (\rf|r11|Q\(2))))) # (!\reg2|Q\(22) & (((\rf|value1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(2),
	datab => \rf|r12|Q\(2),
	datac => \reg2|Q\(22),
	datad => \rf|value1[2]~20_combout\,
	combout => \rf|value1[2]~21_combout\);

-- Location: LCCOMB_X85_Y52_N6
\rf|m2|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[2]~1_combout\ = (\reset~input_o\) # ((\reg31|Q~q\ & ((\reg28|Q\(2)))) # (!\reg31|Q~q\ & (\reg29|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg31|Q~q\,
	datac => \reg29|Q\(2),
	datad => \reg28|Q\(2),
	combout => \rf|m2|stage3|f[2]~1_combout\);

-- Location: LCCOMB_X86_Y53_N26
\rf|m3|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (\rf|m7|stage3|f~0_combout\ & !\reg30|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(1),
	datab => \reset~input_o\,
	datac => \rf|m7|stage3|f~0_combout\,
	datad => \reg30|Q\(2),
	combout => \rf|m3|stage3|f[0]~1_combout\);

-- Location: FF_X86_Y53_N21
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m2|stage3|f[2]~1_combout\,
	sload => VCC,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X87_Y52_N10
\rf|r2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[2]~feeder_combout\ = \rf|m2|stage3|f[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m2|stage3|f[2]~1_combout\,
	combout => \rf|r2|Q[2]~feeder_combout\);

-- Location: LCCOMB_X87_Y52_N24
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((!\reg30|Q\(1) & (!\reg30|Q\(2) & \rf|m8|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(1),
	datac => \reg30|Q\(2),
	datad => \rf|m8|stage3|f[0]~0_combout\,
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X87_Y52_N11
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r2|Q[2]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X86_Y52_N12
\rf|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~1_combout\ = (\reset~input_o\) # ((!\reg30|Q\(3) & \rf|m9|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg30|Q\(3),
	datad => \rf|m9|stage3|f~0_combout\,
	combout => \rf|m1|stage3|f~1_combout\);

-- Location: FF_X86_Y52_N1
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X86_Y52_N0
\rf|value1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~24_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(21))))) # (!\reg2|Q\(22) & ((\reg2|Q\(21) & (\rf|r2|Q\(2))) # (!\reg2|Q\(21) & ((\rf|r1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \reg2|Q\(22),
	datac => \rf|r1|Q\(2),
	datad => \reg2|Q\(21),
	combout => \rf|value1[2]~24_combout\);

-- Location: LCCOMB_X86_Y53_N30
\rf|value1[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~25_combout\ = (\reg2|Q\(22) & ((\rf|value1[2]~24_combout\ & ((\rf|r4|Q\(2)))) # (!\rf|value1[2]~24_combout\ & (\rf|r3|Q\(2))))) # (!\reg2|Q\(22) & (((\rf|value1[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r3|Q\(2),
	datac => \rf|r4|Q\(2),
	datad => \rf|value1[2]~24_combout\,
	combout => \rf|value1[2]~25_combout\);

-- Location: LCCOMB_X86_Y51_N14
\rf|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r8|Q[2]~feeder_combout\ = \rf|m2|stage3|f[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[2]~1_combout\,
	combout => \rf|r8|Q[2]~feeder_combout\);

-- Location: FF_X86_Y51_N15
\rf|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r8|Q[2]~feeder_combout\,
	ena => \rf|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(2));

-- Location: LCCOMB_X87_Y50_N20
\rf|r5|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r5|Q[2]~feeder_combout\);

-- Location: FF_X87_Y50_N21
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r5|Q[2]~feeder_combout\,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: LCCOMB_X88_Y50_N10
\rf|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[2]~feeder_combout\ = \rf|m2|stage3|f[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[2]~1_combout\,
	combout => \rf|r6|Q[2]~feeder_combout\);

-- Location: FF_X88_Y50_N11
\rf|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r6|Q[2]~feeder_combout\,
	ena => \rf|m6|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(2));

-- Location: LCCOMB_X87_Y50_N14
\rf|value1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~22_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(21))))) # (!\reg2|Q\(22) & ((\reg2|Q\(21) & ((\rf|r6|Q\(2)))) # (!\reg2|Q\(21) & (\rf|r5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r5|Q\(2),
	datac => \rf|r6|Q\(2),
	datad => \reg2|Q\(21),
	combout => \rf|value1[2]~22_combout\);

-- Location: LCCOMB_X86_Y51_N20
\rf|r7|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r7|Q[2]~feeder_combout\ = \rf|m1|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~3_combout\,
	combout => \rf|r7|Q[2]~feeder_combout\);

-- Location: FF_X86_Y51_N21
\rf|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r7|Q[2]~feeder_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(2));

-- Location: LCCOMB_X87_Y50_N16
\rf|value1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~23_combout\ = (\reg2|Q\(22) & ((\rf|value1[2]~22_combout\ & (\rf|r8|Q\(2))) # (!\rf|value1[2]~22_combout\ & ((\rf|r7|Q\(2)))))) # (!\reg2|Q\(22) & (((\rf|value1[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(2),
	datab => \reg2|Q\(22),
	datac => \rf|value1[2]~22_combout\,
	datad => \rf|r7|Q\(2),
	combout => \rf|value1[2]~23_combout\);

-- Location: LCCOMB_X86_Y53_N22
\rf|value1[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~26_combout\ = (\reg2|Q\(24) & (\reg2|Q\(17))) # (!\reg2|Q\(24) & ((\reg2|Q\(17) & ((\rf|value1[2]~23_combout\))) # (!\reg2|Q\(17) & (\rf|value1[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \reg2|Q\(17),
	datac => \rf|value1[2]~25_combout\,
	datad => \rf|value1[2]~23_combout\,
	combout => \rf|value1[2]~26_combout\);

-- Location: LCCOMB_X87_Y53_N26
\rf|value1[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~29_combout\ = (\reg2|Q\(24) & ((\rf|value1[2]~26_combout\ & (\rf|value1[2]~28_combout\)) # (!\rf|value1[2]~26_combout\ & ((\rf|value1[2]~21_combout\))))) # (!\reg2|Q\(24) & (((\rf|value1[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|value1[2]~28_combout\,
	datac => \rf|value1[2]~21_combout\,
	datad => \rf|value1[2]~26_combout\,
	combout => \rf|value1[2]~29_combout\);

-- Location: FF_X87_Y53_N27
\reg3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value1[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(2));

-- Location: LCCOMB_X83_Y53_N18
\m3|f[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|f[2]~0_combout\ = (\reg10|Q~q\ & (\reg14|Q\(2))) # (!\reg10|Q~q\ & ((\reg4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg14|Q\(2),
	datac => \reg4|Q\(2),
	datad => \reg10|Q~q\,
	combout => \m3|f[2]~0_combout\);

-- Location: LCCOMB_X83_Y51_N22
\a_l_u|stage1|stage1|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage1|Cout~1_combout\ = (\reg13|Q~q\ & ((\reg10|Q~q\ & (!\reg14|Q\(0))) # (!\reg10|Q~q\ & ((!\reg4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg14|Q\(0),
	datab => \reg13|Q~q\,
	datac => \reg4|Q\(0),
	datad => \reg10|Q~q\,
	combout => \a_l_u|stage1|stage1|Cout~1_combout\);

-- Location: FF_X86_Y51_N27
\rf|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m4|stage3|f[1]~1_combout\,
	sload => VCC,
	ena => \rf|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(1));

-- Location: FF_X85_Y51_N21
\reg29|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg17|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg29|Q\(1));

-- Location: LCCOMB_X85_Y51_N18
\rf|m1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~2_combout\ = (!\reset~input_o\ & ((\reg31|Q~q\ & (\reg28|Q\(1))) # (!\reg31|Q~q\ & ((\reg29|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg28|Q\(1),
	datac => \reg31|Q~q\,
	datad => \reg29|Q\(1),
	combout => \rf|m1|stage3|f~2_combout\);

-- Location: LCCOMB_X88_Y51_N30
\rf|r16|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r16|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r16|Q[1]~feeder_combout\);

-- Location: FF_X88_Y51_N31
\rf|r16|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r16|Q[1]~feeder_combout\,
	ena => \rf|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r16|Q\(1));

-- Location: LCCOMB_X85_Y50_N0
\rf|r15|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r15|Q[1]~feeder_combout\);

-- Location: FF_X85_Y50_N1
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r15|Q[1]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: FF_X86_Y51_N13
\rf|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(1));

-- Location: LCCOMB_X86_Y51_N12
\rf|value1[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~17_combout\ = (\reg2|Q\(21) & (((\reg2|Q\(24))))) # (!\reg2|Q\(21) & ((\reg2|Q\(24) & (\rf|r15|Q\(1))) # (!\reg2|Q\(24) & ((\rf|r7|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(1),
	datab => \reg2|Q\(21),
	datac => \rf|r7|Q\(1),
	datad => \reg2|Q\(24),
	combout => \rf|value1[1]~17_combout\);

-- Location: LCCOMB_X86_Y51_N22
\rf|value1[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~18_combout\ = (\reg2|Q\(21) & ((\rf|value1[1]~17_combout\ & ((\rf|r16|Q\(1)))) # (!\rf|value1[1]~17_combout\ & (\rf|r8|Q\(1))))) # (!\reg2|Q\(21) & (((\rf|value1[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(1),
	datab => \reg2|Q\(21),
	datac => \rf|r16|Q\(1),
	datad => \rf|value1[1]~17_combout\,
	combout => \rf|value1[1]~18_combout\);

-- Location: LCCOMB_X86_Y53_N16
\rf|r4|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[1]~feeder_combout\ = \rf|m4|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[1]~1_combout\,
	combout => \rf|r4|Q[1]~feeder_combout\);

-- Location: LCCOMB_X86_Y53_N0
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg30|Q\(1) & (\rf|m8|stage3|f[0]~0_combout\ & !\reg30|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg30|Q\(1),
	datab => \reset~input_o\,
	datac => \rf|m8|stage3|f[0]~0_combout\,
	datad => \reg30|Q\(2),
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: FF_X86_Y53_N17
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r4|Q[1]~feeder_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X86_Y53_N18
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: FF_X86_Y53_N19
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r3|Q[1]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X86_Y51_N30
\rf|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~10_combout\ = (\reg2|Q\(24) & (((\reg2|Q\(21)) # (\rf|r11|Q\(1))))) # (!\reg2|Q\(24) & (\rf|r3|Q\(1) & (!\reg2|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|r3|Q\(1),
	datac => \reg2|Q\(21),
	datad => \rf|r11|Q\(1),
	combout => \rf|value1[1]~10_combout\);

-- Location: LCCOMB_X85_Y50_N26
\rf|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r12|Q[1]~feeder_combout\);

-- Location: FF_X85_Y50_N27
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r12|Q[1]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: LCCOMB_X86_Y51_N4
\rf|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~11_combout\ = (\reg2|Q\(21) & ((\rf|value1[1]~10_combout\ & ((\rf|r12|Q\(1)))) # (!\rf|value1[1]~10_combout\ & (\rf|r4|Q\(1))))) # (!\reg2|Q\(21) & (((\rf|value1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \reg2|Q\(21),
	datac => \rf|value1[1]~10_combout\,
	datad => \rf|r12|Q\(1),
	combout => \rf|value1[1]~11_combout\);

-- Location: LCCOMB_X87_Y50_N10
\rf|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[1]~feeder_combout\ = \rf|m4|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[1]~1_combout\,
	combout => \rf|r13|Q[1]~feeder_combout\);

-- Location: FF_X87_Y50_N11
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r13|Q[1]~feeder_combout\,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X87_Y51_N26
\rf|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r14|Q[1]~feeder_combout\);

-- Location: FF_X87_Y51_N27
\rf|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r14|Q[1]~feeder_combout\,
	ena => \rf|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(1));

-- Location: LCCOMB_X87_Y50_N12
\rf|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[1]~feeder_combout\ = \rf|m4|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[1]~1_combout\,
	combout => \rf|r5|Q[1]~feeder_combout\);

-- Location: FF_X87_Y50_N13
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r5|Q[1]~feeder_combout\,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: LCCOMB_X88_Y52_N8
\rf|r6|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r6|Q[1]~feeder_combout\);

-- Location: FF_X88_Y52_N9
\rf|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r6|Q[1]~feeder_combout\,
	ena => \rf|m6|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(1));

-- Location: LCCOMB_X87_Y50_N0
\rf|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~12_combout\ = (\reg2|Q\(24) & (((\reg2|Q\(21))))) # (!\reg2|Q\(24) & ((\reg2|Q\(21) & ((\rf|r6|Q\(1)))) # (!\reg2|Q\(21) & (\rf|r5|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(1),
	datab => \rf|r6|Q\(1),
	datac => \reg2|Q\(24),
	datad => \reg2|Q\(21),
	combout => \rf|value1[1]~12_combout\);

-- Location: LCCOMB_X87_Y51_N16
\rf|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~13_combout\ = (\reg2|Q\(24) & ((\rf|value1[1]~12_combout\ & ((\rf|r14|Q\(1)))) # (!\rf|value1[1]~12_combout\ & (\rf|r13|Q\(1))))) # (!\reg2|Q\(24) & (((\rf|value1[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(1),
	datab => \reg2|Q\(24),
	datac => \rf|r14|Q\(1),
	datad => \rf|value1[1]~12_combout\,
	combout => \rf|value1[1]~13_combout\);

-- Location: LCCOMB_X87_Y52_N18
\rf|r10|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r10|Q[1]~feeder_combout\);

-- Location: FF_X87_Y52_N19
\rf|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r10|Q[1]~feeder_combout\,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(1));

-- Location: FF_X86_Y52_N21
\rf|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(1));

-- Location: LCCOMB_X87_Y52_N8
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~2_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: FF_X87_Y52_N9
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r2|Q[1]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: FF_X86_Y52_N19
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X86_Y52_N18
\rf|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~14_combout\ = (\reg2|Q\(24) & (((\reg2|Q\(21))))) # (!\reg2|Q\(24) & ((\reg2|Q\(21) & (\rf|r2|Q\(1))) # (!\reg2|Q\(21) & ((\rf|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|r2|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \reg2|Q\(21),
	combout => \rf|value1[1]~14_combout\);

-- Location: LCCOMB_X86_Y52_N20
\rf|value1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~15_combout\ = (\reg2|Q\(24) & ((\rf|value1[1]~14_combout\ & (\rf|r10|Q\(1))) # (!\rf|value1[1]~14_combout\ & ((\rf|r9|Q\(1)))))) # (!\reg2|Q\(24) & (((\rf|value1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|r10|Q\(1),
	datac => \rf|r9|Q\(1),
	datad => \rf|value1[1]~14_combout\,
	combout => \rf|value1[1]~15_combout\);

-- Location: LCCOMB_X87_Y51_N2
\rf|value1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~16_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(17))))) # (!\reg2|Q\(22) & ((\reg2|Q\(17) & (\rf|value1[1]~13_combout\)) # (!\reg2|Q\(17) & ((\rf|value1[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|value1[1]~13_combout\,
	datac => \reg2|Q\(17),
	datad => \rf|value1[1]~15_combout\,
	combout => \rf|value1[1]~16_combout\);

-- Location: LCCOMB_X87_Y51_N24
\rf|value1[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~19_combout\ = (\reg2|Q\(22) & ((\rf|value1[1]~16_combout\ & (\rf|value1[1]~18_combout\)) # (!\rf|value1[1]~16_combout\ & ((\rf|value1[1]~11_combout\))))) # (!\reg2|Q\(22) & (((\rf|value1[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|value1[1]~18_combout\,
	datac => \rf|value1[1]~11_combout\,
	datad => \rf|value1[1]~16_combout\,
	combout => \rf|value1[1]~19_combout\);

-- Location: FF_X87_Y51_N25
\reg3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value1[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(1));

-- Location: LCCOMB_X84_Y51_N10
\a_l_u|stage1|y_1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|y_1~combout\ = \reg13|Q~q\ $ (((\reg10|Q~q\ & (\reg14|Q\(1))) # (!\reg10|Q~q\ & ((\reg4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg13|Q~q\,
	datab => \reg10|Q~q\,
	datac => \reg14|Q\(1),
	datad => \reg4|Q\(1),
	combout => \a_l_u|stage1|y_1~combout\);

-- Location: LCCOMB_X83_Y51_N30
\m3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|f~2_combout\ = (\reg10|Q~q\ & \reg14|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg10|Q~q\,
	datad => \reg14|Q\(0),
	combout => \m3|f~2_combout\);

-- Location: LCCOMB_X84_Y51_N18
\m3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m3|f~1_combout\ = (!\reg10|Q~q\ & \reg4|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg10|Q~q\,
	datad => \reg4|Q\(0),
	combout => \m3|f~1_combout\);

-- Location: LCCOMB_X83_Y51_N16
\a_l_u|stage1|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage1|Cout~0_combout\ = (\reg3|Q\(0) & ((\reg13|Q~q\) # ((\m3|f~2_combout\) # (\m3|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(0),
	datab => \reg13|Q~q\,
	datac => \m3|f~2_combout\,
	datad => \m3|f~1_combout\,
	combout => \a_l_u|stage1|stage1|Cout~0_combout\);

-- Location: LCCOMB_X83_Y51_N20
\a_l_u|stage1|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage2|Cout~0_combout\ = (\reg3|Q\(1) & ((\a_l_u|stage1|stage1|Cout~1_combout\) # ((\a_l_u|stage1|y_1~combout\) # (\a_l_u|stage1|stage1|Cout~0_combout\)))) # (!\reg3|Q\(1) & (\a_l_u|stage1|y_1~combout\ & 
-- ((\a_l_u|stage1|stage1|Cout~1_combout\) # (\a_l_u|stage1|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_l_u|stage1|stage1|Cout~1_combout\,
	datab => \reg3|Q\(1),
	datac => \a_l_u|stage1|y_1~combout\,
	datad => \a_l_u|stage1|stage1|Cout~0_combout\,
	combout => \a_l_u|stage1|stage2|Cout~0_combout\);

-- Location: LCCOMB_X83_Y51_N6
\a_l_u|stage1|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage3|Cout~0_combout\ = (\reg3|Q\(2) & ((\a_l_u|stage1|stage2|Cout~0_combout\) # (\reg13|Q~q\ $ (\m3|f[2]~0_combout\)))) # (!\reg3|Q\(2) & (\a_l_u|stage1|stage2|Cout~0_combout\ & (\reg13|Q~q\ $ (\m3|f[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(2),
	datab => \reg13|Q~q\,
	datac => \m3|f[2]~0_combout\,
	datad => \a_l_u|stage1|stage2|Cout~0_combout\,
	combout => \a_l_u|stage1|stage3|Cout~0_combout\);

-- Location: LCCOMB_X83_Y51_N18
\a_l_u|stage5|stage3|f[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[3]~3_combout\ = (\a_l_u|stage5|stage3|f[3]~1_combout\ & ((\reg12|Q\(1)) # (\a_l_u|stage5|stage3|f[3]~2_combout\ $ (!\a_l_u|stage1|stage3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|Q\(1),
	datab => \a_l_u|stage5|stage3|f[3]~1_combout\,
	datac => \a_l_u|stage5|stage3|f[3]~2_combout\,
	datad => \a_l_u|stage1|stage3|Cout~0_combout\,
	combout => \a_l_u|stage5|stage3|f[3]~3_combout\);

-- Location: FF_X83_Y51_N19
\reg17|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \a_l_u|stage5|stage3|f[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg17|Q\(3));

-- Location: LCCOMB_X85_Y51_N14
\reg29|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg29|Q[3]~feeder_combout\ = \reg17|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg17|Q\(3),
	combout => \reg29|Q[3]~feeder_combout\);

-- Location: FF_X85_Y51_N15
\reg29|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg29|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg29|Q\(3));

-- Location: LCCOMB_X86_Y53_N4
\rf|m4|stage3|f[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[3]~2_combout\ = (\reset~input_o\) # ((\reg31|Q~q\ & ((\reg28|Q\(3)))) # (!\reg31|Q~q\ & (\reg29|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg29|Q\(3),
	datab => \reset~input_o\,
	datac => \reg28|Q\(3),
	datad => \reg31|Q~q\,
	combout => \rf|m4|stage3|f[3]~2_combout\);

-- Location: LCCOMB_X86_Y53_N28
\rf|r4|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r4|Q[3]~feeder_combout\ = \rf|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m4|stage3|f[3]~2_combout\,
	combout => \rf|r4|Q[3]~feeder_combout\);

-- Location: FF_X86_Y53_N29
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r4|Q[3]~feeder_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X86_Y53_N6
\rf|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r3|Q[3]~feeder_combout\);

-- Location: FF_X86_Y53_N7
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r3|Q[3]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: FF_X87_Y53_N7
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: FF_X86_Y52_N13
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: LCCOMB_X87_Y53_N6
\rf|value2[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~34_combout\ = (\reg2|Q\(16) & ((\reg2|Q\(17)) # ((\rf|r2|Q\(3))))) # (!\reg2|Q\(16) & (!\reg2|Q\(17) & ((\rf|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(16),
	datab => \reg2|Q\(17),
	datac => \rf|r2|Q\(3),
	datad => \rf|r1|Q\(3),
	combout => \rf|value2[3]~34_combout\);

-- Location: LCCOMB_X87_Y53_N16
\rf|value2[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~35_combout\ = (\reg2|Q\(17) & ((\rf|value2[3]~34_combout\ & (\rf|r4|Q\(3))) # (!\rf|value2[3]~34_combout\ & ((\rf|r3|Q\(3)))))) # (!\reg2|Q\(17) & (((\rf|value2[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(3),
	datab => \reg2|Q\(17),
	datac => \rf|r3|Q\(3),
	datad => \rf|value2[3]~34_combout\,
	combout => \rf|value2[3]~35_combout\);

-- Location: LCCOMB_X85_Y51_N16
\rf|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[3]~feeder_combout\ = \rf|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[3]~2_combout\,
	combout => \rf|r11|Q[3]~feeder_combout\);

-- Location: FF_X85_Y51_N17
\rf|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r11|Q[3]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(3));

-- Location: LCCOMB_X87_Y52_N16
\rf|r10|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[3]~feeder_combout\ = \rf|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[3]~2_combout\,
	combout => \rf|r10|Q[3]~feeder_combout\);

-- Location: FF_X87_Y52_N17
\rf|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r10|Q[3]~feeder_combout\,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(3));

-- Location: FF_X86_Y52_N11
\rf|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(3));

-- Location: LCCOMB_X86_Y52_N10
\rf|value2[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~32_combout\ = (\reg2|Q\(16) & ((\rf|r10|Q\(3)) # ((\reg2|Q\(17))))) # (!\reg2|Q\(16) & (((\rf|r9|Q\(3) & !\reg2|Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r10|Q\(3),
	datab => \reg2|Q\(16),
	datac => \rf|r9|Q\(3),
	datad => \reg2|Q\(17),
	combout => \rf|value2[3]~32_combout\);

-- Location: LCCOMB_X87_Y53_N0
\rf|value2[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~33_combout\ = (\reg2|Q\(17) & ((\rf|value2[3]~32_combout\ & ((\rf|r12|Q\(3)))) # (!\rf|value2[3]~32_combout\ & (\rf|r11|Q\(3))))) # (!\reg2|Q\(17) & (((\rf|value2[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(3),
	datab => \reg2|Q\(17),
	datac => \rf|r12|Q\(3),
	datad => \rf|value2[3]~32_combout\,
	combout => \rf|value2[3]~33_combout\);

-- Location: LCCOMB_X87_Y53_N2
\rf|value2[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~36_combout\ = (\reg2|Q\(18) & (((\reg2|Q\(19))))) # (!\reg2|Q\(18) & ((\reg2|Q\(19) & ((\rf|value2[3]~33_combout\))) # (!\reg2|Q\(19) & (\rf|value2[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \rf|value2[3]~35_combout\,
	datac => \reg2|Q\(19),
	datad => \rf|value2[3]~33_combout\,
	combout => \rf|value2[3]~36_combout\);

-- Location: LCCOMB_X87_Y53_N20
\rf|value2[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~39_combout\ = (\reg2|Q\(18) & ((\rf|value2[3]~36_combout\ & ((\rf|value2[3]~38_combout\))) # (!\rf|value2[3]~36_combout\ & (\rf|value2[3]~31_combout\)))) # (!\reg2|Q\(18) & (((\rf|value2[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \rf|value2[3]~31_combout\,
	datac => \rf|value2[3]~38_combout\,
	datad => \rf|value2[3]~36_combout\,
	combout => \rf|value2[3]~39_combout\);

-- Location: FF_X87_Y53_N21
\reg4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value2[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(3));

-- Location: LCCOMB_X82_Y52_N26
\reg19|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg19|Q[3]~feeder_combout\ = \reg4|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg4|Q\(3),
	combout => \reg19|Q[3]~feeder_combout\);

-- Location: FF_X82_Y52_N27
\reg19|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg19|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg19|Q\(3));

-- Location: LCCOMB_X82_Y52_N6
\dm|m1|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~4_combout\ = (\reg19|Q\(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg19|Q\(3),
	datad => \reset~input_o\,
	combout => \dm|m1|stage3|f~4_combout\);

-- Location: LCCOMB_X81_Y52_N18
\dm|r16|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r16|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r16|Q[3]~feeder_combout\);

-- Location: FF_X81_Y52_N19
\dm|r16|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r16|Q[3]~feeder_combout\,
	ena => \dm|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r16|Q\(3));

-- Location: LCCOMB_X84_Y52_N12
\id|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|Equal3~0_combout\ = (\reg2|Q\(29) & \id|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg2|Q\(29),
	datad => \id|Equal2~0_combout\,
	combout => \id|Equal3~0_combout\);

-- Location: FF_X84_Y52_N13
\reg7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \id|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|Q~q\);

-- Location: LCCOMB_X83_Y50_N28
\reg23|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg23|Q~feeder_combout\ = \reg7|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg7|Q~q\,
	combout => \reg23|Q~feeder_combout\);

-- Location: FF_X83_Y50_N29
\reg23|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg23|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg23|Q~q\);

-- Location: LCCOMB_X83_Y52_N24
\dm|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m12|stage3|f~0_combout\ = (\reg17|Q\(3) & (\reg17|Q\(0) & !\reg17|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(3),
	datac => \reg17|Q\(0),
	datad => \reg17|Q\(2),
	combout => \dm|m12|stage3|f~0_combout\);

-- Location: LCCOMB_X83_Y52_N12
\dm|m12|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m12|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg23|Q~q\ & (\reg17|Q\(1) & \dm|m12|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg23|Q~q\,
	datab => \reg17|Q\(1),
	datac => \reset~input_o\,
	datad => \dm|m12|stage3|f~0_combout\,
	combout => \dm|m12|stage3|f~1_combout\);

-- Location: FF_X83_Y52_N17
\dm|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \dm|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(3));

-- Location: LCCOMB_X81_Y51_N0
\dm|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r14|Q[3]~feeder_combout\);

-- Location: LCCOMB_X82_Y51_N16
\dm|m6|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m6|stage3|f[0]~0_combout\ = (!\reg17|Q\(1) & (\reg17|Q\(2) & \reg23|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \reg17|Q\(2),
	datac => \reg23|Q~q\,
	combout => \dm|m6|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X81_Y51_N24
\dm|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(0) & (\reg17|Q\(3) & \dm|m6|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(0),
	datac => \reg17|Q\(3),
	datad => \dm|m6|stage3|f[0]~0_combout\,
	combout => \dm|m14|stage3|f~0_combout\);

-- Location: FF_X81_Y51_N1
\dm|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r14|Q[3]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(3));

-- Location: LCCOMB_X83_Y52_N14
\dm|m10|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m10|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg23|Q~q\ & (!\reg17|Q\(1) & \dm|m12|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg23|Q~q\,
	datab => \reg17|Q\(1),
	datac => \reset~input_o\,
	datad => \dm|m12|stage3|f~0_combout\,
	combout => \dm|m10|stage3|f~0_combout\);

-- Location: FF_X83_Y52_N7
\dm|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(3));

-- Location: LCCOMB_X83_Y52_N6
\dm|value1[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~37_combout\ = (\reg17|Q\(1) & (((\reg17|Q\(2))))) # (!\reg17|Q\(1) & ((\reg17|Q\(2) & (\dm|r14|Q\(3))) # (!\reg17|Q\(2) & ((\dm|r10|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|r14|Q\(3),
	datac => \dm|r10|Q\(3),
	datad => \reg17|Q\(2),
	combout => \dm|value1[3]~37_combout\);

-- Location: LCCOMB_X83_Y52_N16
\dm|value1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~38_combout\ = (\reg17|Q\(1) & ((\dm|value1[3]~37_combout\ & (\dm|r16|Q\(3))) # (!\dm|value1[3]~37_combout\ & ((\dm|r12|Q\(3)))))) # (!\reg17|Q\(1) & (((\dm|value1[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r16|Q\(3),
	datab => \reg17|Q\(1),
	datac => \dm|r12|Q\(3),
	datad => \dm|value1[3]~37_combout\,
	combout => \dm|value1[3]~38_combout\);

-- Location: LCCOMB_X82_Y52_N0
\dm|m4|stage3|f[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f[3]~2_combout\ = (\reg19|Q\(3)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg19|Q\(3),
	datad => \reset~input_o\,
	combout => \dm|m4|stage3|f[3]~2_combout\);

-- Location: LCCOMB_X81_Y51_N14
\dm|r6|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[3]~feeder_combout\ = \dm|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m4|stage3|f[3]~2_combout\,
	combout => \dm|r6|Q[3]~feeder_combout\);

-- Location: LCCOMB_X81_Y51_N10
\dm|m6|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m6|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\reg17|Q\(0) & (!\reg17|Q\(3) & \dm|m6|stage3|f[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(0),
	datac => \reg17|Q\(3),
	datad => \dm|m6|stage3|f[0]~0_combout\,
	combout => \dm|m6|stage3|f[0]~1_combout\);

-- Location: FF_X81_Y51_N15
\dm|r6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r6|Q[3]~feeder_combout\,
	ena => \dm|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(3));

-- Location: LCCOMB_X82_Y52_N20
\dm|r4|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[3]~feeder_combout\ = \dm|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m4|stage3|f[3]~2_combout\,
	combout => \dm|r4|Q[3]~feeder_combout\);

-- Location: LCCOMB_X82_Y51_N30
\dm|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f~0_combout\ = (\reg17|Q\(0) & (!\reg17|Q\(2) & !\reg17|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg17|Q\(0),
	datac => \reg17|Q\(2),
	datad => \reg17|Q\(3),
	combout => \dm|m4|stage3|f~0_combout\);

-- Location: LCCOMB_X82_Y52_N4
\dm|m4|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m4|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg17|Q\(1) & (\reg23|Q~q\ & \dm|m4|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \reg23|Q~q\,
	datac => \dm|m4|stage3|f~0_combout\,
	datad => \reset~input_o\,
	combout => \dm|m4|stage3|f~1_combout\);

-- Location: FF_X82_Y52_N21
\dm|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r4|Q[3]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(3));

-- Location: LCCOMB_X82_Y50_N2
\dm|r2|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r2|Q[3]~feeder_combout\);

-- Location: LCCOMB_X82_Y50_N24
\dm|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\dm|m4|stage3|f~0_combout\ & (!\reg17|Q\(1) & \reg23|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|m4|stage3|f~0_combout\,
	datab => \reg17|Q\(1),
	datac => \reset~input_o\,
	datad => \reg23|Q~q\,
	combout => \dm|m2|stage3|f~0_combout\);

-- Location: FF_X82_Y50_N3
\dm|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r2|Q[3]~feeder_combout\,
	ena => \dm|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(3));

-- Location: LCCOMB_X82_Y51_N14
\dm|value1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~30_combout\ = (\reg17|Q\(1) & ((\reg17|Q\(2)) # ((\dm|r4|Q\(3))))) # (!\reg17|Q\(1) & (!\reg17|Q\(2) & ((\dm|r2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \reg17|Q\(2),
	datac => \dm|r4|Q\(3),
	datad => \dm|r2|Q\(3),
	combout => \dm|value1[3]~30_combout\);

-- Location: LCCOMB_X81_Y52_N8
\dm|r8|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r8|Q[3]~feeder_combout\);

-- Location: LCCOMB_X82_Y52_N22
\dm|m8|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m8|stage3|f~0_combout\ = (\reg17|Q\(1) & (\reg23|Q~q\ & \reg17|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datac => \reg23|Q~q\,
	datad => \reg17|Q\(2),
	combout => \dm|m8|stage3|f~0_combout\);

-- Location: LCCOMB_X81_Y52_N4
\dm|m8|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m8|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg17|Q\(0) & (!\reg17|Q\(3) & \dm|m8|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(0),
	datab => \reset~input_o\,
	datac => \reg17|Q\(3),
	datad => \dm|m8|stage3|f~0_combout\,
	combout => \dm|m8|stage3|f~1_combout\);

-- Location: FF_X81_Y52_N9
\dm|r8|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r8|Q[3]~feeder_combout\,
	ena => \dm|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(3));

-- Location: LCCOMB_X82_Y51_N28
\dm|value1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~31_combout\ = (\reg17|Q\(2) & ((\dm|value1[3]~30_combout\ & ((\dm|r8|Q\(3)))) # (!\dm|value1[3]~30_combout\ & (\dm|r6|Q\(3))))) # (!\reg17|Q\(2) & (((\dm|value1[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r6|Q\(3),
	datab => \reg17|Q\(2),
	datac => \dm|value1[3]~30_combout\,
	datad => \dm|r8|Q\(3),
	combout => \dm|value1[3]~31_combout\);

-- Location: LCCOMB_X81_Y50_N8
\dm|r5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r5|Q[3]~feeder_combout\);

-- Location: LCCOMB_X83_Y50_N8
\dm|m5|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m5|stage3|f~0_combout\ = (!\reg17|Q\(1) & (\reg23|Q~q\ & !\reg17|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg17|Q\(1),
	datac => \reg23|Q~q\,
	datad => \reg17|Q\(0),
	combout => \dm|m5|stage3|f~0_combout\);

-- Location: LCCOMB_X81_Y50_N12
\dm|m5|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m5|stage3|f~1_combout\ = (\reset~input_o\) # ((\reg17|Q\(2) & (\dm|m5|stage3|f~0_combout\ & !\reg17|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(2),
	datac => \dm|m5|stage3|f~0_combout\,
	datad => \reg17|Q\(3),
	combout => \dm|m5|stage3|f~1_combout\);

-- Location: FF_X81_Y50_N9
\dm|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r5|Q[3]~feeder_combout\,
	ena => \dm|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(3));

-- Location: LCCOMB_X83_Y50_N22
\dm|m1|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~1_combout\ = (\reset~input_o\) # ((!\reg17|Q\(2) & (!\reg17|Q\(3) & \dm|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \reg17|Q\(3),
	datac => \dm|m5|stage3|f~0_combout\,
	datad => \reset~input_o\,
	combout => \dm|m1|stage3|f~1_combout\);

-- Location: FF_X83_Y50_N11
\dm|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(3));

-- Location: LCCOMB_X80_Y50_N18
\dm|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r3|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r3|Q[3]~feeder_combout\);

-- Location: LCCOMB_X81_Y50_N16
\dm|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m11|stage3|f~0_combout\ = (\reg17|Q\(1) & (\reg23|Q~q\ & !\reg17|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datac => \reg23|Q~q\,
	datad => \reg17|Q\(0),
	combout => \dm|m11|stage3|f~0_combout\);

-- Location: LCCOMB_X80_Y50_N14
\dm|m3|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((!\reg17|Q\(2) & (!\reg17|Q\(3) & \dm|m11|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(2),
	datac => \reg17|Q\(3),
	datad => \dm|m11|stage3|f~0_combout\,
	combout => \dm|m3|stage3|f[0]~1_combout\);

-- Location: FF_X80_Y50_N19
\dm|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r3|Q[3]~feeder_combout\,
	ena => \dm|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(3));

-- Location: LCCOMB_X83_Y50_N10
\dm|value1[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~34_combout\ = (\reg17|Q\(2) & (\reg17|Q\(1))) # (!\reg17|Q\(2) & ((\reg17|Q\(1) & ((\dm|r3|Q\(3)))) # (!\reg17|Q\(1) & (\dm|r1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \reg17|Q\(1),
	datac => \dm|r1|Q\(3),
	datad => \dm|r3|Q\(3),
	combout => \dm|value1[3]~34_combout\);

-- Location: LCCOMB_X81_Y50_N22
\dm|r7|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[3]~feeder_combout\ = \dm|m4|stage3|f[3]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m4|stage3|f[3]~2_combout\,
	combout => \dm|r7|Q[3]~feeder_combout\);

-- Location: LCCOMB_X81_Y50_N2
\dm|m7|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m7|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(2) & (\dm|m11|stage3|f~0_combout\ & !\reg17|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(2),
	datac => \dm|m11|stage3|f~0_combout\,
	datad => \reg17|Q\(3),
	combout => \dm|m7|stage3|f~0_combout\);

-- Location: FF_X81_Y50_N23
\dm|r7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r7|Q[3]~feeder_combout\,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(3));

-- Location: LCCOMB_X82_Y51_N26
\dm|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~35_combout\ = (\reg17|Q\(2) & ((\dm|value1[3]~34_combout\ & ((\dm|r7|Q\(3)))) # (!\dm|value1[3]~34_combout\ & (\dm|r5|Q\(3))))) # (!\reg17|Q\(2) & (((\dm|value1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r5|Q\(3),
	datab => \reg17|Q\(2),
	datac => \dm|value1[3]~34_combout\,
	datad => \dm|r7|Q\(3),
	combout => \dm|value1[3]~35_combout\);

-- Location: LCCOMB_X80_Y50_N8
\dm|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r11|Q[3]~feeder_combout\);

-- Location: FF_X80_Y50_N9
\dm|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r11|Q[3]~feeder_combout\,
	ena => \dm|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(3));

-- Location: LCCOMB_X82_Y50_N16
\dm|r15|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r15|Q[3]~feeder_combout\);

-- Location: LCCOMB_X82_Y50_N22
\dm|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m15|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(2) & (\reg17|Q\(3) & \dm|m11|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \reset~input_o\,
	datac => \reg17|Q\(3),
	datad => \dm|m11|stage3|f~0_combout\,
	combout => \dm|m15|stage3|f~0_combout\);

-- Location: FF_X82_Y50_N17
\dm|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r15|Q[3]~feeder_combout\,
	ena => \dm|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(3));

-- Location: LCCOMB_X84_Y50_N20
\dm|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[3]~feeder_combout\ = \dm|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~4_combout\,
	combout => \dm|r13|Q[3]~feeder_combout\);

-- Location: LCCOMB_X84_Y50_N10
\dm|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m13|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(3) & (\reg17|Q\(2) & \dm|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(3),
	datab => \reg17|Q\(2),
	datac => \reset~input_o\,
	datad => \dm|m5|stage3|f~0_combout\,
	combout => \dm|m13|stage3|f~0_combout\);

-- Location: FF_X84_Y50_N21
\dm|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r13|Q[3]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(3));

-- Location: LCCOMB_X84_Y50_N4
\dm|m9|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m9|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(3) & (!\reg17|Q\(2) & \dm|m5|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(3),
	datab => \reg17|Q\(2),
	datac => \reset~input_o\,
	datad => \dm|m5|stage3|f~0_combout\,
	combout => \dm|m9|stage3|f~0_combout\);

-- Location: FF_X84_Y50_N19
\dm|r9|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~4_combout\,
	sload => VCC,
	ena => \dm|m9|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(3));

-- Location: LCCOMB_X84_Y50_N18
\dm|value1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~32_combout\ = (\reg17|Q\(1) & (((\reg17|Q\(2))))) # (!\reg17|Q\(1) & ((\reg17|Q\(2) & (\dm|r13|Q\(3))) # (!\reg17|Q\(2) & ((\dm|r9|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(3),
	datab => \reg17|Q\(1),
	datac => \dm|r9|Q\(3),
	datad => \reg17|Q\(2),
	combout => \dm|value1[3]~32_combout\);

-- Location: LCCOMB_X83_Y50_N0
\dm|value1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~33_combout\ = (\reg17|Q\(1) & ((\dm|value1[3]~32_combout\ & ((\dm|r15|Q\(3)))) # (!\dm|value1[3]~32_combout\ & (\dm|r11|Q\(3))))) # (!\reg17|Q\(1) & (((\dm|value1[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r11|Q\(3),
	datab => \reg17|Q\(1),
	datac => \dm|r15|Q\(3),
	datad => \dm|value1[3]~32_combout\,
	combout => \dm|value1[3]~33_combout\);

-- Location: LCCOMB_X82_Y51_N24
\dm|value1[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~36_combout\ = (\reg17|Q\(0) & (\reg17|Q\(3))) # (!\reg17|Q\(0) & ((\reg17|Q\(3) & ((\dm|value1[3]~33_combout\))) # (!\reg17|Q\(3) & (\dm|value1[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(0),
	datab => \reg17|Q\(3),
	datac => \dm|value1[3]~35_combout\,
	datad => \dm|value1[3]~33_combout\,
	combout => \dm|value1[3]~36_combout\);

-- Location: LCCOMB_X82_Y51_N10
\dm|value1[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[3]~39_combout\ = (\reg17|Q\(0) & ((\dm|value1[3]~36_combout\ & (\dm|value1[3]~38_combout\)) # (!\dm|value1[3]~36_combout\ & ((\dm|value1[3]~31_combout\))))) # (!\reg17|Q\(0) & (((\dm|value1[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[3]~38_combout\,
	datab => \dm|value1[3]~31_combout\,
	datac => \reg17|Q\(0),
	datad => \dm|value1[3]~36_combout\,
	combout => \dm|value1[3]~39_combout\);

-- Location: FF_X82_Y51_N11
\reg28|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|value1[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg28|Q\(3));

-- Location: LCCOMB_X86_Y51_N16
\rf|m1|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~4_combout\ = (!\reset~input_o\ & ((\reg31|Q~q\ & (\reg28|Q\(3))) # (!\reg31|Q~q\ & ((\reg29|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg28|Q\(3),
	datac => \reg31|Q~q\,
	datad => \reg29|Q\(3),
	combout => \rf|m1|stage3|f~4_combout\);

-- Location: LCCOMB_X85_Y50_N8
\rf|r12|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[3]~feeder_combout\ = \rf|m1|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~4_combout\,
	combout => \rf|r12|Q[3]~feeder_combout\);

-- Location: FF_X85_Y50_N9
\rf|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r12|Q[3]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(3));

-- Location: LCCOMB_X86_Y50_N22
\rf|value1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~30_combout\ = (\reg2|Q\(24) & (((\reg2|Q\(22))))) # (!\reg2|Q\(24) & ((\reg2|Q\(22) & ((\rf|r4|Q\(3)))) # (!\reg2|Q\(22) & (\rf|r2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|r2|Q\(3),
	datac => \reg2|Q\(22),
	datad => \rf|r4|Q\(3),
	combout => \rf|value1[3]~30_combout\);

-- Location: LCCOMB_X86_Y50_N28
\rf|value1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~31_combout\ = (\rf|value1[3]~30_combout\ & ((\rf|r12|Q\(3)) # ((!\reg2|Q\(24))))) # (!\rf|value1[3]~30_combout\ & (((\rf|r10|Q\(3) & \reg2|Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(3),
	datab => \rf|r10|Q\(3),
	datac => \rf|value1[3]~30_combout\,
	datad => \reg2|Q\(24),
	combout => \rf|value1[3]~31_combout\);

-- Location: LCCOMB_X87_Y50_N28
\rf|value1[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~37_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(24)) # (\rf|r8|Q\(3))))) # (!\reg2|Q\(22) & (\rf|r6|Q\(3) & (!\reg2|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r6|Q\(3),
	datac => \reg2|Q\(24),
	datad => \rf|r8|Q\(3),
	combout => \rf|value1[3]~37_combout\);

-- Location: LCCOMB_X87_Y50_N30
\rf|value1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~38_combout\ = (\rf|value1[3]~37_combout\ & (((\rf|r16|Q\(3)) # (!\reg2|Q\(24))))) # (!\rf|value1[3]~37_combout\ & (\rf|r14|Q\(3) & (\reg2|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(3),
	datab => \rf|value1[3]~37_combout\,
	datac => \reg2|Q\(24),
	datad => \rf|r16|Q\(3),
	combout => \rf|value1[3]~38_combout\);

-- Location: LCCOMB_X86_Y50_N10
\rf|value1[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~34_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(24)) # (\rf|r3|Q\(3))))) # (!\reg2|Q\(22) & (\rf|r1|Q\(3) & (!\reg2|Q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r1|Q\(3),
	datac => \reg2|Q\(24),
	datad => \rf|r3|Q\(3),
	combout => \rf|value1[3]~34_combout\);

-- Location: LCCOMB_X86_Y50_N12
\rf|value1[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~35_combout\ = (\reg2|Q\(24) & ((\rf|value1[3]~34_combout\ & (\rf|r11|Q\(3))) # (!\rf|value1[3]~34_combout\ & ((\rf|r9|Q\(3)))))) # (!\reg2|Q\(24) & (((\rf|value1[3]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(3),
	datab => \rf|r9|Q\(3),
	datac => \reg2|Q\(24),
	datad => \rf|value1[3]~34_combout\,
	combout => \rf|value1[3]~35_combout\);

-- Location: LCCOMB_X87_Y50_N8
\rf|value1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~32_combout\ = (\reg2|Q\(24) & (\reg2|Q\(22))) # (!\reg2|Q\(24) & ((\reg2|Q\(22) & ((\rf|r7|Q\(3)))) # (!\reg2|Q\(22) & (\rf|r5|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \reg2|Q\(22),
	datac => \rf|r5|Q\(3),
	datad => \rf|r7|Q\(3),
	combout => \rf|value1[3]~32_combout\);

-- Location: LCCOMB_X87_Y50_N26
\rf|value1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~33_combout\ = (\reg2|Q\(24) & ((\rf|value1[3]~32_combout\ & (\rf|r15|Q\(3))) # (!\rf|value1[3]~32_combout\ & ((\rf|r13|Q\(3)))))) # (!\reg2|Q\(24) & (((\rf|value1[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(24),
	datab => \rf|r15|Q\(3),
	datac => \rf|value1[3]~32_combout\,
	datad => \rf|r13|Q\(3),
	combout => \rf|value1[3]~33_combout\);

-- Location: LCCOMB_X86_Y50_N2
\rf|value1[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~36_combout\ = (\reg2|Q\(21) & (\reg2|Q\(17))) # (!\reg2|Q\(21) & ((\reg2|Q\(17) & ((\rf|value1[3]~33_combout\))) # (!\reg2|Q\(17) & (\rf|value1[3]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(21),
	datab => \reg2|Q\(17),
	datac => \rf|value1[3]~35_combout\,
	datad => \rf|value1[3]~33_combout\,
	combout => \rf|value1[3]~36_combout\);

-- Location: LCCOMB_X86_Y50_N8
\rf|value1[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~39_combout\ = (\reg2|Q\(21) & ((\rf|value1[3]~36_combout\ & ((\rf|value1[3]~38_combout\))) # (!\rf|value1[3]~36_combout\ & (\rf|value1[3]~31_combout\)))) # (!\reg2|Q\(21) & (((\rf|value1[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(21),
	datab => \rf|value1[3]~31_combout\,
	datac => \rf|value1[3]~38_combout\,
	datad => \rf|value1[3]~36_combout\,
	combout => \rf|value1[3]~39_combout\);

-- Location: FF_X86_Y50_N9
\reg3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value1[3]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(3));

-- Location: LCCOMB_X83_Y51_N8
\a_l_u|stage1|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage4|s~0_combout\ = \reg3|Q\(3) $ (((\reg10|Q~q\ & (\reg14|Q\(3))) # (!\reg10|Q~q\ & ((\reg4|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(3),
	datab => \reg10|Q~q\,
	datac => \reg14|Q\(3),
	datad => \reg4|Q\(3),
	combout => \a_l_u|stage1|stage4|s~0_combout\);

-- Location: LCCOMB_X83_Y51_N26
\reg17|Q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg17|Q[0]~1_combout\ = (\reg12|Q\(0) & ((\a_l_u|stage1|stage1|s~0_combout\))) # (!\reg12|Q\(0) & (\reg13|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg13|Q~q\,
	datac => \reg12|Q\(0),
	datad => \a_l_u|stage1|stage1|s~0_combout\,
	combout => \reg17|Q[0]~1_combout\);

-- Location: LCCOMB_X83_Y51_N28
\reg17|Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg17|Q[0]~0_combout\ = \reg17|Q[0]~1_combout\ $ (((!\reg12|Q\(0) & (\a_l_u|stage1|stage4|s~0_combout\ $ (\a_l_u|stage1|stage3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|Q\(0),
	datab => \a_l_u|stage1|stage4|s~0_combout\,
	datac => \reg17|Q[0]~1_combout\,
	datad => \a_l_u|stage1|stage3|Cout~0_combout\,
	combout => \reg17|Q[0]~0_combout\);

-- Location: LCCOMB_X82_Y51_N4
\reg17|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg17|Q[0]~feeder_combout\ = \reg17|Q[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg17|Q[0]~0_combout\,
	combout => \reg17|Q[0]~feeder_combout\);

-- Location: LCCOMB_X83_Y51_N0
\a_l_u|stage5|stage2|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage2|f[0]~0_combout\ = (\reg3|Q\(0) & ((\reg12|Q\(0)) # ((\m3|f~2_combout\) # (\m3|f~1_combout\)))) # (!\reg3|Q\(0) & (\reg12|Q\(0) & ((\m3|f~2_combout\) # (\m3|f~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(0),
	datab => \reg12|Q\(0),
	datac => \m3|f~2_combout\,
	datad => \m3|f~1_combout\,
	combout => \a_l_u|stage5|stage2|f[0]~0_combout\);

-- Location: FF_X82_Y51_N5
\reg17|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg17|Q[0]~feeder_combout\,
	asdata => \a_l_u|stage5|stage2|f[0]~0_combout\,
	sload => \reg12|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg17|Q\(0));

-- Location: LCCOMB_X81_Y52_N6
\dm|m16|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m16|stage3|f~0_combout\ = (\reset~input_o\) # ((\reg17|Q\(0) & (\reg17|Q\(3) & \dm|m8|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(0),
	datab => \reset~input_o\,
	datac => \reg17|Q\(3),
	datad => \dm|m8|stage3|f~0_combout\,
	combout => \dm|m16|stage3|f~0_combout\);

-- Location: FF_X81_Y52_N31
\dm|r16|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r16|Q[2]~feeder_combout\,
	ena => \dm|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r16|Q\(2));

-- Location: LCCOMB_X81_Y52_N28
\dm|r8|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r8|Q[2]~feeder_combout\);

-- Location: FF_X81_Y52_N29
\dm|r8|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r8|Q[2]~feeder_combout\,
	ena => \dm|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(2));

-- Location: LCCOMB_X80_Y51_N30
\dm|m1|stage3|f[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f[2]~3_combout\ = (\reset~input_o\) # (\reg19|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg19|Q\(2),
	combout => \dm|m1|stage3|f[2]~3_combout\);

-- Location: LCCOMB_X81_Y51_N2
\dm|r6|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[2]~feeder_combout\ = \dm|m1|stage3|f[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f[2]~3_combout\,
	combout => \dm|r6|Q[2]~feeder_combout\);

-- Location: FF_X81_Y51_N3
\dm|r6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r6|Q[2]~feeder_combout\,
	ena => \dm|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(2));

-- Location: FF_X81_Y51_N13
\dm|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m2|stage3|f~1_combout\,
	sload => VCC,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(2));

-- Location: LCCOMB_X81_Y51_N12
\dm|value1[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~27_combout\ = (\reg17|Q\(3) & (((\dm|r14|Q\(2)) # (\reg17|Q\(1))))) # (!\reg17|Q\(3) & (\dm|r6|Q\(2) & ((!\reg17|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(3),
	datab => \dm|r6|Q\(2),
	datac => \dm|r14|Q\(2),
	datad => \reg17|Q\(1),
	combout => \dm|value1[2]~27_combout\);

-- Location: LCCOMB_X81_Y51_N16
\dm|value1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~28_combout\ = (\reg17|Q\(1) & ((\dm|value1[2]~27_combout\ & (\dm|r16|Q\(2))) # (!\dm|value1[2]~27_combout\ & ((\dm|r8|Q\(2)))))) # (!\reg17|Q\(1) & (((\dm|value1[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r16|Q\(2),
	datab => \reg17|Q\(1),
	datac => \dm|r8|Q\(2),
	datad => \dm|value1[2]~27_combout\,
	combout => \dm|value1[2]~28_combout\);

-- Location: LCCOMB_X83_Y52_N30
\dm|r12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r12|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r12|Q[2]~feeder_combout\);

-- Location: FF_X83_Y52_N31
\dm|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r12|Q[2]~feeder_combout\,
	ena => \dm|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(2));

-- Location: LCCOMB_X82_Y52_N10
\dm|r4|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r4|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r4|Q[2]~feeder_combout\);

-- Location: FF_X82_Y52_N11
\dm|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r4|Q[2]~feeder_combout\,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(2));

-- Location: LCCOMB_X82_Y50_N30
\dm|r2|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r2|Q[2]~feeder_combout\);

-- Location: FF_X82_Y50_N31
\dm|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r2|Q[2]~feeder_combout\,
	ena => \dm|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(2));

-- Location: LCCOMB_X83_Y52_N0
\dm|r10|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r10|Q[2]~feeder_combout\);

-- Location: FF_X83_Y52_N1
\dm|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r10|Q[2]~feeder_combout\,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(2));

-- Location: LCCOMB_X82_Y51_N12
\dm|value1[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~20_combout\ = (\reg17|Q\(1) & (\reg17|Q\(3))) # (!\reg17|Q\(1) & ((\reg17|Q\(3) & ((\dm|r10|Q\(2)))) # (!\reg17|Q\(3) & (\dm|r2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \reg17|Q\(3),
	datac => \dm|r2|Q\(2),
	datad => \dm|r10|Q\(2),
	combout => \dm|value1[2]~20_combout\);

-- Location: LCCOMB_X82_Y51_N2
\dm|value1[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~21_combout\ = (\reg17|Q\(1) & ((\dm|value1[2]~20_combout\ & (\dm|r12|Q\(2))) # (!\dm|value1[2]~20_combout\ & ((\dm|r4|Q\(2)))))) # (!\reg17|Q\(1) & (((\dm|value1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|r12|Q\(2),
	datac => \dm|r4|Q\(2),
	datad => \dm|value1[2]~20_combout\,
	combout => \dm|value1[2]~21_combout\);

-- Location: LCCOMB_X82_Y50_N12
\dm|r15|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r15|Q[2]~feeder_combout\);

-- Location: FF_X82_Y50_N13
\dm|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r15|Q[2]~feeder_combout\,
	ena => \dm|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(2));

-- Location: FF_X81_Y50_N1
\dm|r7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f[2]~3_combout\,
	sload => VCC,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(2));

-- Location: LCCOMB_X84_Y50_N8
\dm|r13|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r13|Q[2]~feeder_combout\);

-- Location: FF_X84_Y50_N9
\dm|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r13|Q[2]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(2));

-- Location: FF_X81_Y50_N19
\dm|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m2|stage3|f~1_combout\,
	sload => VCC,
	ena => \dm|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(2));

-- Location: LCCOMB_X81_Y50_N18
\dm|value1[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~22_combout\ = (\reg17|Q\(1) & (((\reg17|Q\(3))))) # (!\reg17|Q\(1) & ((\reg17|Q\(3) & (\dm|r13|Q\(2))) # (!\reg17|Q\(3) & ((\dm|r5|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|r13|Q\(2),
	datac => \dm|r5|Q\(2),
	datad => \reg17|Q\(3),
	combout => \dm|value1[2]~22_combout\);

-- Location: LCCOMB_X81_Y50_N0
\dm|value1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~23_combout\ = (\reg17|Q\(1) & ((\dm|value1[2]~22_combout\ & (\dm|r15|Q\(2))) # (!\dm|value1[2]~22_combout\ & ((\dm|r7|Q\(2)))))) # (!\reg17|Q\(1) & (((\dm|value1[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|r15|Q\(2),
	datac => \dm|r7|Q\(2),
	datad => \dm|value1[2]~22_combout\,
	combout => \dm|value1[2]~23_combout\);

-- Location: LCCOMB_X80_Y50_N20
\dm|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r3|Q[2]~feeder_combout\ = \dm|m1|stage3|f[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f[2]~3_combout\,
	combout => \dm|r3|Q[2]~feeder_combout\);

-- Location: FF_X80_Y50_N21
\dm|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r3|Q[2]~feeder_combout\,
	ena => \dm|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(2));

-- Location: LCCOMB_X80_Y50_N10
\dm|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r11|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r11|Q[2]~feeder_combout\);

-- Location: FF_X80_Y50_N11
\dm|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r11|Q[2]~feeder_combout\,
	ena => \dm|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(2));

-- Location: LCCOMB_X84_Y50_N2
\dm|r9|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[2]~feeder_combout\ = \dm|m2|stage3|f~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m2|stage3|f~1_combout\,
	combout => \dm|r9|Q[2]~feeder_combout\);

-- Location: FF_X84_Y50_N3
\dm|r9|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r9|Q[2]~feeder_combout\,
	ena => \dm|m9|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(2));

-- Location: FF_X83_Y50_N13
\dm|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f[2]~3_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(2));

-- Location: LCCOMB_X83_Y50_N12
\dm|value1[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~24_combout\ = (\reg17|Q\(1) & (((\reg17|Q\(3))))) # (!\reg17|Q\(1) & ((\reg17|Q\(3) & (\dm|r9|Q\(2))) # (!\reg17|Q\(3) & ((\dm|r1|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r9|Q\(2),
	datab => \reg17|Q\(1),
	datac => \dm|r1|Q\(2),
	datad => \reg17|Q\(3),
	combout => \dm|value1[2]~24_combout\);

-- Location: LCCOMB_X83_Y50_N14
\dm|value1[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~25_combout\ = (\reg17|Q\(1) & ((\dm|value1[2]~24_combout\ & ((\dm|r11|Q\(2)))) # (!\dm|value1[2]~24_combout\ & (\dm|r3|Q\(2))))) # (!\reg17|Q\(1) & (((\dm|value1[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r3|Q\(2),
	datab => \reg17|Q\(1),
	datac => \dm|r11|Q\(2),
	datad => \dm|value1[2]~24_combout\,
	combout => \dm|value1[2]~25_combout\);

-- Location: LCCOMB_X82_Y51_N20
\dm|value1[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~26_combout\ = (\reg17|Q\(0) & (\reg17|Q\(2))) # (!\reg17|Q\(0) & ((\reg17|Q\(2) & (\dm|value1[2]~23_combout\)) # (!\reg17|Q\(2) & ((\dm|value1[2]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(0),
	datab => \reg17|Q\(2),
	datac => \dm|value1[2]~23_combout\,
	datad => \dm|value1[2]~25_combout\,
	combout => \dm|value1[2]~26_combout\);

-- Location: LCCOMB_X82_Y51_N0
\dm|value1[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[2]~29_combout\ = (\reg17|Q\(0) & ((\dm|value1[2]~26_combout\ & (\dm|value1[2]~28_combout\)) # (!\dm|value1[2]~26_combout\ & ((\dm|value1[2]~21_combout\))))) # (!\reg17|Q\(0) & (((\dm|value1[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|value1[2]~28_combout\,
	datab => \dm|value1[2]~21_combout\,
	datac => \reg17|Q\(0),
	datad => \dm|value1[2]~26_combout\,
	combout => \dm|value1[2]~29_combout\);

-- Location: FF_X82_Y51_N1
\reg28|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|value1[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg28|Q\(2));

-- Location: LCCOMB_X85_Y52_N16
\rf|m1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~3_combout\ = (!\reset~input_o\ & ((\reg31|Q~q\ & ((\reg28|Q\(2)))) # (!\reg31|Q~q\ & (\reg29|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg31|Q~q\,
	datac => \reg29|Q\(2),
	datad => \reg28|Q\(2),
	combout => \rf|m1|stage3|f~3_combout\);

-- Location: FF_X86_Y53_N31
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X86_Y53_N20
\rf|value2[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~20_combout\ = (\reg2|Q\(19) & ((\reg2|Q\(16)) # ((\rf|r11|Q\(2))))) # (!\reg2|Q\(19) & (!\reg2|Q\(16) & (\rf|r3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \reg2|Q\(16),
	datac => \rf|r3|Q\(2),
	datad => \rf|r11|Q\(2),
	combout => \rf|value2[2]~20_combout\);

-- Location: LCCOMB_X86_Y53_N14
\rf|value2[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~21_combout\ = (\reg2|Q\(16) & ((\rf|value2[2]~20_combout\ & ((\rf|r12|Q\(2)))) # (!\rf|value2[2]~20_combout\ & (\rf|r4|Q\(2))))) # (!\reg2|Q\(16) & (((\rf|value2[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(16),
	datab => \rf|r4|Q\(2),
	datac => \rf|r12|Q\(2),
	datad => \rf|value2[2]~20_combout\,
	combout => \rf|value2[2]~21_combout\);

-- Location: LCCOMB_X87_Y53_N22
\rf|value2[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~27_combout\ = (\reg2|Q\(19) & ((\reg2|Q\(16)) # ((\rf|r15|Q\(2))))) # (!\reg2|Q\(19) & (!\reg2|Q\(16) & (\rf|r7|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \reg2|Q\(16),
	datac => \rf|r7|Q\(2),
	datad => \rf|r15|Q\(2),
	combout => \rf|value2[2]~27_combout\);

-- Location: LCCOMB_X87_Y53_N8
\rf|value2[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~28_combout\ = (\rf|value2[2]~27_combout\ & (((\rf|r16|Q\(2)) # (!\reg2|Q\(16))))) # (!\rf|value2[2]~27_combout\ & (\rf|r8|Q\(2) & (\reg2|Q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~27_combout\,
	datab => \rf|r8|Q\(2),
	datac => \reg2|Q\(16),
	datad => \rf|r16|Q\(2),
	combout => \rf|value2[2]~28_combout\);

-- Location: LCCOMB_X87_Y50_N6
\rf|value2[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~22_combout\ = (\reg2|Q\(19) & (((\reg2|Q\(16))))) # (!\reg2|Q\(19) & ((\reg2|Q\(16) & ((\rf|r6|Q\(2)))) # (!\reg2|Q\(16) & (\rf|r5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \rf|r5|Q\(2),
	datac => \rf|r6|Q\(2),
	datad => \reg2|Q\(16),
	combout => \rf|value2[2]~22_combout\);

-- Location: LCCOMB_X87_Y53_N14
\rf|value2[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~23_combout\ = (\reg2|Q\(19) & ((\rf|value2[2]~22_combout\ & ((\rf|r14|Q\(2)))) # (!\rf|value2[2]~22_combout\ & (\rf|r13|Q\(2))))) # (!\reg2|Q\(19) & (((\rf|value2[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \rf|r13|Q\(2),
	datac => \rf|r14|Q\(2),
	datad => \rf|value2[2]~22_combout\,
	combout => \rf|value2[2]~23_combout\);

-- Location: LCCOMB_X86_Y52_N6
\rf|value2[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~24_combout\ = (\reg2|Q\(16) & (((\reg2|Q\(19))))) # (!\reg2|Q\(16) & ((\reg2|Q\(19) & ((\rf|r9|Q\(2)))) # (!\reg2|Q\(19) & (\rf|r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(16),
	datab => \rf|r1|Q\(2),
	datac => \rf|r9|Q\(2),
	datad => \reg2|Q\(19),
	combout => \rf|value2[2]~24_combout\);

-- Location: LCCOMB_X87_Y52_N30
\rf|value2[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~25_combout\ = (\rf|value2[2]~24_combout\ & (((\rf|r10|Q\(2)) # (!\reg2|Q\(16))))) # (!\rf|value2[2]~24_combout\ & (\rf|r2|Q\(2) & ((\reg2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(2),
	datab => \rf|r10|Q\(2),
	datac => \rf|value2[2]~24_combout\,
	datad => \reg2|Q\(16),
	combout => \rf|value2[2]~25_combout\);

-- Location: LCCOMB_X87_Y53_N12
\rf|value2[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~26_combout\ = (\reg2|Q\(18) & ((\reg2|Q\(17)) # ((\rf|value2[2]~23_combout\)))) # (!\reg2|Q\(18) & (!\reg2|Q\(17) & ((\rf|value2[2]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \reg2|Q\(17),
	datac => \rf|value2[2]~23_combout\,
	datad => \rf|value2[2]~25_combout\,
	combout => \rf|value2[2]~26_combout\);

-- Location: LCCOMB_X87_Y53_N10
\rf|value2[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~29_combout\ = (\reg2|Q\(17) & ((\rf|value2[2]~26_combout\ & ((\rf|value2[2]~28_combout\))) # (!\rf|value2[2]~26_combout\ & (\rf|value2[2]~21_combout\)))) # (!\reg2|Q\(17) & (((\rf|value2[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[2]~21_combout\,
	datab => \reg2|Q\(17),
	datac => \rf|value2[2]~28_combout\,
	datad => \rf|value2[2]~26_combout\,
	combout => \rf|value2[2]~29_combout\);

-- Location: FF_X87_Y53_N11
\reg4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value2[2]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(2));

-- Location: LCCOMB_X83_Y53_N12
\a_l_u|stage5|stage3|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[2]~5_combout\ = (\reg10|Q~q\ & (\reg14|Q\(2))) # (!\reg10|Q~q\ & ((\reg4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg14|Q\(2),
	datac => \reg4|Q\(2),
	datad => \reg10|Q~q\,
	combout => \a_l_u|stage5|stage3|f[2]~5_combout\);

-- Location: LCCOMB_X83_Y50_N6
\a_l_u|stage5|stage3|f[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[2]~6_combout\ = (\reg12|Q\(0) & (((\a_l_u|stage5|stage3|f[2]~5_combout\) # (\reg3|Q\(2))) # (!\reg12|Q\(1)))) # (!\reg12|Q\(0) & (\reg12|Q\(1) & (\a_l_u|stage5|stage3|f[2]~5_combout\ & \reg3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|Q\(0),
	datab => \reg12|Q\(1),
	datac => \a_l_u|stage5|stage3|f[2]~5_combout\,
	datad => \reg3|Q\(2),
	combout => \a_l_u|stage5|stage3|f[2]~6_combout\);

-- Location: LCCOMB_X83_Y50_N16
\a_l_u|stage5|stage3|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[2]~4_combout\ = \reg3|Q\(2) $ (\reg13|Q~q\ $ (!\m3|f[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(2),
	datab => \reg13|Q~q\,
	datad => \m3|f[2]~0_combout\,
	combout => \a_l_u|stage5|stage3|f[2]~4_combout\);

-- Location: LCCOMB_X83_Y50_N30
\a_l_u|stage5|stage3|f[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[2]~7_combout\ = (\a_l_u|stage5|stage3|f[2]~6_combout\ & ((\reg12|Q\(1)) # (\a_l_u|stage1|stage2|Cout~0_combout\ $ (!\a_l_u|stage5|stage3|f[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_l_u|stage5|stage3|f[2]~6_combout\,
	datab => \reg12|Q\(1),
	datac => \a_l_u|stage1|stage2|Cout~0_combout\,
	datad => \a_l_u|stage5|stage3|f[2]~4_combout\,
	combout => \a_l_u|stage5|stage3|f[2]~7_combout\);

-- Location: FF_X83_Y50_N31
\reg17|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \a_l_u|stage5|stage3|f[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg17|Q\(2));

-- Location: LCCOMB_X80_Y50_N12
\dm|m11|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m11|stage3|f~1_combout\ = (\reset~input_o\) # ((!\reg17|Q\(2) & (\reg17|Q\(3) & \dm|m11|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg17|Q\(2),
	datac => \reg17|Q\(3),
	datad => \dm|m11|stage3|f~0_combout\,
	combout => \dm|m11|stage3|f~1_combout\);

-- Location: FF_X80_Y50_N29
\dm|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r11|Q[1]~feeder_combout\,
	ena => \dm|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(1));

-- Location: FF_X82_Y50_N15
\dm|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(1));

-- Location: LCCOMB_X81_Y50_N6
\dm|m3|stage3|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f[1]~2_combout\ = (\reg19|Q\(1)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg19|Q\(1),
	datad => \reset~input_o\,
	combout => \dm|m3|stage3|f[1]~2_combout\);

-- Location: LCCOMB_X80_Y50_N6
\dm|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r3|Q[1]~feeder_combout\ = \dm|m3|stage3|f[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f[1]~2_combout\,
	combout => \dm|r3|Q[1]~feeder_combout\);

-- Location: FF_X80_Y50_N7
\dm|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r3|Q[1]~feeder_combout\,
	ena => \dm|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(1));

-- Location: LCCOMB_X81_Y50_N20
\dm|r7|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[1]~feeder_combout\ = \dm|m3|stage3|f[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f[1]~2_combout\,
	combout => \dm|r7|Q[1]~feeder_combout\);

-- Location: FF_X81_Y50_N21
\dm|r7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r7|Q[1]~feeder_combout\,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(1));

-- Location: LCCOMB_X82_Y50_N28
\dm|value1[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~10_combout\ = (\reg17|Q\(2) & (((\reg17|Q\(3)) # (\dm|r7|Q\(1))))) # (!\reg17|Q\(2) & (\dm|r3|Q\(1) & (!\reg17|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \dm|r3|Q\(1),
	datac => \reg17|Q\(3),
	datad => \dm|r7|Q\(1),
	combout => \dm|value1[1]~10_combout\);

-- Location: LCCOMB_X82_Y50_N14
\dm|value1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~11_combout\ = (\reg17|Q\(3) & ((\dm|value1[1]~10_combout\ & ((\dm|r15|Q\(1)))) # (!\dm|value1[1]~10_combout\ & (\dm|r11|Q\(1))))) # (!\reg17|Q\(3) & (((\dm|value1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r11|Q\(1),
	datab => \reg17|Q\(3),
	datac => \dm|r15|Q\(1),
	datad => \dm|value1[1]~10_combout\,
	combout => \dm|value1[1]~11_combout\);

-- Location: LCCOMB_X83_Y52_N10
\dm|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r12|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r12|Q[1]~feeder_combout\);

-- Location: FF_X83_Y52_N11
\dm|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r12|Q[1]~feeder_combout\,
	ena => \dm|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(1));

-- Location: FF_X81_Y52_N11
\dm|r16|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r16|Q\(1));

-- Location: LCCOMB_X81_Y52_N16
\dm|r8|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r8|Q[1]~feeder_combout\);

-- Location: FF_X81_Y52_N17
\dm|r8|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r8|Q[1]~feeder_combout\,
	ena => \dm|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(1));

-- Location: FF_X82_Y52_N25
\dm|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(1));

-- Location: LCCOMB_X82_Y52_N24
\dm|value1[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~17_combout\ = (\reg17|Q\(3) & (((\reg17|Q\(2))))) # (!\reg17|Q\(3) & ((\reg17|Q\(2) & (\dm|r8|Q\(1))) # (!\reg17|Q\(2) & ((\dm|r4|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r8|Q\(1),
	datab => \reg17|Q\(3),
	datac => \dm|r4|Q\(1),
	datad => \reg17|Q\(2),
	combout => \dm|value1[1]~17_combout\);

-- Location: LCCOMB_X81_Y52_N10
\dm|value1[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~18_combout\ = (\reg17|Q\(3) & ((\dm|value1[1]~17_combout\ & ((\dm|r16|Q\(1)))) # (!\dm|value1[1]~17_combout\ & (\dm|r12|Q\(1))))) # (!\reg17|Q\(3) & (((\dm|value1[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(3),
	datab => \dm|r12|Q\(1),
	datac => \dm|r16|Q\(1),
	datad => \dm|value1[1]~17_combout\,
	combout => \dm|value1[1]~18_combout\);

-- Location: LCCOMB_X81_Y51_N4
\dm|r6|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r6|Q[1]~feeder_combout\);

-- Location: FF_X81_Y51_N5
\dm|r6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r6|Q[1]~feeder_combout\,
	ena => \dm|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(1));

-- Location: LCCOMB_X81_Y51_N18
\dm|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r14|Q[1]~feeder_combout\);

-- Location: FF_X81_Y51_N19
\dm|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r14|Q[1]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(1));

-- Location: FF_X82_Y50_N1
\dm|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(1));

-- Location: LCCOMB_X83_Y52_N8
\dm|r10|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r10|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r10|Q[1]~feeder_combout\);

-- Location: FF_X83_Y52_N9
\dm|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r10|Q[1]~feeder_combout\,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(1));

-- Location: LCCOMB_X82_Y50_N0
\dm|value1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~12_combout\ = (\reg17|Q\(2) & (\reg17|Q\(3))) # (!\reg17|Q\(2) & ((\reg17|Q\(3) & ((\dm|r10|Q\(1)))) # (!\reg17|Q\(3) & (\dm|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \reg17|Q\(3),
	datac => \dm|r2|Q\(1),
	datad => \dm|r10|Q\(1),
	combout => \dm|value1[1]~12_combout\);

-- Location: LCCOMB_X80_Y51_N22
\dm|value1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~13_combout\ = (\dm|value1[1]~12_combout\ & (((\dm|r14|Q\(1)) # (!\reg17|Q\(2))))) # (!\dm|value1[1]~12_combout\ & (\dm|r6|Q\(1) & ((\reg17|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r6|Q\(1),
	datab => \dm|r14|Q\(1),
	datac => \dm|value1[1]~12_combout\,
	datad => \reg17|Q\(2),
	combout => \dm|value1[1]~13_combout\);

-- Location: LCCOMB_X84_Y50_N14
\dm|r13|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r13|Q[1]~feeder_combout\);

-- Location: FF_X84_Y50_N15
\dm|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r13|Q[1]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(1));

-- Location: LCCOMB_X81_Y50_N30
\dm|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r5|Q[1]~feeder_combout\);

-- Location: FF_X81_Y50_N31
\dm|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r5|Q[1]~feeder_combout\,
	ena => \dm|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(1));

-- Location: LCCOMB_X84_Y50_N0
\dm|r9|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[1]~feeder_combout\ = \dm|m1|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~2_combout\,
	combout => \dm|r9|Q[1]~feeder_combout\);

-- Location: FF_X84_Y50_N1
\dm|r9|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r9|Q[1]~feeder_combout\,
	ena => \dm|m9|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(1));

-- Location: FF_X83_Y50_N27
\dm|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~2_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(1));

-- Location: LCCOMB_X83_Y50_N26
\dm|value1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~14_combout\ = (\reg17|Q\(2) & (((\reg17|Q\(3))))) # (!\reg17|Q\(2) & ((\reg17|Q\(3) & (\dm|r9|Q\(1))) # (!\reg17|Q\(3) & ((\dm|r1|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \dm|r9|Q\(1),
	datac => \dm|r1|Q\(1),
	datad => \reg17|Q\(3),
	combout => \dm|value1[1]~14_combout\);

-- Location: LCCOMB_X80_Y51_N0
\dm|value1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~15_combout\ = (\reg17|Q\(2) & ((\dm|value1[1]~14_combout\ & (\dm|r13|Q\(1))) # (!\dm|value1[1]~14_combout\ & ((\dm|r5|Q\(1)))))) # (!\reg17|Q\(2) & (((\dm|value1[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(1),
	datab => \reg17|Q\(2),
	datac => \dm|r5|Q\(1),
	datad => \dm|value1[1]~14_combout\,
	combout => \dm|value1[1]~15_combout\);

-- Location: LCCOMB_X80_Y51_N18
\dm|value1[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~16_combout\ = (\reg17|Q\(0) & ((\reg17|Q\(1)) # ((\dm|value1[1]~13_combout\)))) # (!\reg17|Q\(0) & (!\reg17|Q\(1) & ((\dm|value1[1]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(0),
	datab => \reg17|Q\(1),
	datac => \dm|value1[1]~13_combout\,
	datad => \dm|value1[1]~15_combout\,
	combout => \dm|value1[1]~16_combout\);

-- Location: LCCOMB_X80_Y51_N24
\dm|value1[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[1]~19_combout\ = (\reg17|Q\(1) & ((\dm|value1[1]~16_combout\ & ((\dm|value1[1]~18_combout\))) # (!\dm|value1[1]~16_combout\ & (\dm|value1[1]~11_combout\)))) # (!\reg17|Q\(1) & (((\dm|value1[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|value1[1]~11_combout\,
	datac => \dm|value1[1]~18_combout\,
	datad => \dm|value1[1]~16_combout\,
	combout => \dm|value1[1]~19_combout\);

-- Location: FF_X80_Y51_N25
\reg28|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|value1[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg28|Q\(1));

-- Location: LCCOMB_X85_Y51_N24
\rf|m4|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[1]~1_combout\ = (\reset~input_o\) # ((\reg31|Q~q\ & (\reg28|Q\(1))) # (!\reg31|Q~q\ & ((\reg29|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg28|Q\(1),
	datac => \reg31|Q~q\,
	datad => \reg29|Q\(1),
	combout => \rf|m4|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X85_Y51_N2
\rf|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[1]~feeder_combout\ = \rf|m4|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m4|stage3|f[1]~1_combout\,
	combout => \rf|r11|Q[1]~feeder_combout\);

-- Location: FF_X85_Y51_N3
\rf|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r11|Q[1]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(1));

-- Location: LCCOMB_X86_Y51_N18
\rf|value2[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~10_combout\ = (\reg2|Q\(19) & (((\reg2|Q\(18))))) # (!\reg2|Q\(19) & ((\reg2|Q\(18) & (\rf|r7|Q\(1))) # (!\reg2|Q\(18) & ((\rf|r3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r7|Q\(1),
	datab => \rf|r3|Q\(1),
	datac => \reg2|Q\(19),
	datad => \reg2|Q\(18),
	combout => \rf|value2[1]~10_combout\);

-- Location: LCCOMB_X86_Y51_N0
\rf|value2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~11_combout\ = (\reg2|Q\(19) & ((\rf|value2[1]~10_combout\ & ((\rf|r15|Q\(1)))) # (!\rf|value2[1]~10_combout\ & (\rf|r11|Q\(1))))) # (!\reg2|Q\(19) & (((\rf|value2[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(1),
	datab => \reg2|Q\(19),
	datac => \rf|r15|Q\(1),
	datad => \rf|value2[1]~10_combout\,
	combout => \rf|value2[1]~11_combout\);

-- Location: LCCOMB_X86_Y51_N26
\rf|value2[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~17_combout\ = (\reg2|Q\(18) & (((\rf|r8|Q\(1)) # (\reg2|Q\(19))))) # (!\reg2|Q\(18) & (\rf|r4|Q\(1) & ((!\reg2|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(1),
	datab => \reg2|Q\(18),
	datac => \rf|r8|Q\(1),
	datad => \reg2|Q\(19),
	combout => \rf|value2[1]~17_combout\);

-- Location: LCCOMB_X86_Y51_N8
\rf|value2[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~18_combout\ = (\reg2|Q\(19) & ((\rf|value2[1]~17_combout\ & (\rf|r16|Q\(1))) # (!\rf|value2[1]~17_combout\ & ((\rf|r12|Q\(1)))))) # (!\reg2|Q\(19) & (((\rf|value2[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r16|Q\(1),
	datab => \rf|r12|Q\(1),
	datac => \reg2|Q\(19),
	datad => \rf|value2[1]~17_combout\,
	combout => \rf|value2[1]~18_combout\);

-- Location: LCCOMB_X87_Y52_N2
\rf|value2[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~12_combout\ = (\reg2|Q\(19) & (((\reg2|Q\(18))))) # (!\reg2|Q\(19) & ((\reg2|Q\(18) & ((\rf|r6|Q\(1)))) # (!\reg2|Q\(18) & (\rf|r2|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|r6|Q\(1),
	datac => \reg2|Q\(19),
	datad => \reg2|Q\(18),
	combout => \rf|value2[1]~12_combout\);

-- Location: LCCOMB_X87_Y52_N0
\rf|value2[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~13_combout\ = (\reg2|Q\(19) & ((\rf|value2[1]~12_combout\ & ((\rf|r14|Q\(1)))) # (!\rf|value2[1]~12_combout\ & (\rf|r10|Q\(1))))) # (!\reg2|Q\(19) & (((\rf|value2[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \rf|r10|Q\(1),
	datac => \rf|r14|Q\(1),
	datad => \rf|value2[1]~12_combout\,
	combout => \rf|value2[1]~13_combout\);

-- Location: LCCOMB_X86_Y52_N24
\rf|value2[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~14_combout\ = (\reg2|Q\(18) & ((\rf|r5|Q\(1)) # ((\reg2|Q\(19))))) # (!\reg2|Q\(18) & (((\rf|r1|Q\(1) & !\reg2|Q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \rf|r5|Q\(1),
	datac => \rf|r1|Q\(1),
	datad => \reg2|Q\(19),
	combout => \rf|value2[1]~14_combout\);

-- Location: LCCOMB_X86_Y52_N2
\rf|value2[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~15_combout\ = (\reg2|Q\(19) & ((\rf|value2[1]~14_combout\ & ((\rf|r13|Q\(1)))) # (!\rf|value2[1]~14_combout\ & (\rf|r9|Q\(1))))) # (!\reg2|Q\(19) & (((\rf|value2[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(1),
	datab => \reg2|Q\(19),
	datac => \rf|r13|Q\(1),
	datad => \rf|value2[1]~14_combout\,
	combout => \rf|value2[1]~15_combout\);

-- Location: LCCOMB_X86_Y52_N4
\rf|value2[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~16_combout\ = (\reg2|Q\(17) & (\reg2|Q\(16))) # (!\reg2|Q\(17) & ((\reg2|Q\(16) & (\rf|value2[1]~13_combout\)) # (!\reg2|Q\(16) & ((\rf|value2[1]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(17),
	datab => \reg2|Q\(16),
	datac => \rf|value2[1]~13_combout\,
	datad => \rf|value2[1]~15_combout\,
	combout => \rf|value2[1]~16_combout\);

-- Location: LCCOMB_X85_Y51_N4
\rf|value2[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~19_combout\ = (\reg2|Q\(17) & ((\rf|value2[1]~16_combout\ & ((\rf|value2[1]~18_combout\))) # (!\rf|value2[1]~16_combout\ & (\rf|value2[1]~11_combout\)))) # (!\reg2|Q\(17) & (((\rf|value2[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(17),
	datab => \rf|value2[1]~11_combout\,
	datac => \rf|value2[1]~18_combout\,
	datad => \rf|value2[1]~16_combout\,
	combout => \rf|value2[1]~19_combout\);

-- Location: FF_X85_Y51_N5
\reg4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value2[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|Q\(1));

-- Location: LCCOMB_X84_Y51_N26
\a_l_u|stage5|stage3|f[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[1]~8_combout\ = (\reg10|Q~q\ & (\reg14|Q\(1))) # (!\reg10|Q~q\ & ((\reg4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg10|Q~q\,
	datac => \reg14|Q\(1),
	datad => \reg4|Q\(1),
	combout => \a_l_u|stage5|stage3|f[1]~8_combout\);

-- Location: LCCOMB_X84_Y51_N0
\a_l_u|stage5|stage3|f[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[1]~9_combout\ = (\reg12|Q\(0) & ((\a_l_u|stage5|stage3|f[1]~8_combout\) # (\reg3|Q\(1)))) # (!\reg12|Q\(0) & (\a_l_u|stage5|stage3|f[1]~8_combout\ & \reg3|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg12|Q\(0),
	datac => \a_l_u|stage5|stage3|f[1]~8_combout\,
	datad => \reg3|Q\(1),
	combout => \a_l_u|stage5|stage3|f[1]~9_combout\);

-- Location: LCCOMB_X83_Y51_N2
\a_l_u|stage1|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage2|s~combout\ = \reg3|Q\(1) $ (\a_l_u|stage1|y_1~combout\ $ (((\a_l_u|stage1|stage1|Cout~1_combout\) # (\a_l_u|stage1|stage1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(1),
	datab => \a_l_u|stage1|y_1~combout\,
	datac => \a_l_u|stage1|stage1|Cout~1_combout\,
	datad => \a_l_u|stage1|stage1|Cout~0_combout\,
	combout => \a_l_u|stage1|stage2|s~combout\);

-- Location: LCCOMB_X83_Y50_N24
\a_l_u|stage5|stage3|f[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage5|stage3|f[1]~10_combout\ = (\reg12|Q\(1) & (((\a_l_u|stage5|stage3|f[1]~9_combout\)))) # (!\reg12|Q\(1) & (\reg12|Q\(0) & ((\a_l_u|stage1|stage2|s~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg12|Q\(0),
	datab => \reg12|Q\(1),
	datac => \a_l_u|stage5|stage3|f[1]~9_combout\,
	datad => \a_l_u|stage1|stage2|s~combout\,
	combout => \a_l_u|stage5|stage3|f[1]~10_combout\);

-- Location: FF_X83_Y50_N25
\reg17|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \a_l_u|stage5|stage3|f[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg17|Q\(1));

-- Location: LCCOMB_X82_Y51_N22
\reg19|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg19|Q[0]~feeder_combout\ = \reg4|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg4|Q\(0),
	combout => \reg19|Q[0]~feeder_combout\);

-- Location: FF_X82_Y51_N23
\reg19|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg19|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg19|Q\(0));

-- Location: LCCOMB_X81_Y51_N30
\dm|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m1|stage3|f~0_combout\ = (!\reset~input_o\ & \reg19|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg19|Q\(0),
	combout => \dm|m1|stage3|f~0_combout\);

-- Location: LCCOMB_X81_Y52_N14
\dm|r16|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r16|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r16|Q[0]~feeder_combout\);

-- Location: FF_X81_Y52_N15
\dm|r16|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r16|Q[0]~feeder_combout\,
	ena => \dm|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r16|Q\(0));

-- Location: LCCOMB_X83_Y52_N26
\dm|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r12|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r12|Q[0]~feeder_combout\);

-- Location: FF_X83_Y52_N27
\dm|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r12|Q[0]~feeder_combout\,
	ena => \dm|m12|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r12|Q\(0));

-- Location: LCCOMB_X81_Y52_N12
\dm|r8|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r8|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r8|Q[0]~feeder_combout\);

-- Location: FF_X81_Y52_N13
\dm|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r8|Q[0]~feeder_combout\,
	ena => \dm|m8|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r8|Q\(0));

-- Location: FF_X82_Y52_N13
\dm|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m4|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r4|Q\(0));

-- Location: LCCOMB_X82_Y52_N12
\dm|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~7_combout\ = (\reg17|Q\(3) & (((\reg17|Q\(2))))) # (!\reg17|Q\(3) & ((\reg17|Q\(2) & (\dm|r8|Q\(0))) # (!\reg17|Q\(2) & ((\dm|r4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r8|Q\(0),
	datab => \reg17|Q\(3),
	datac => \dm|r4|Q\(0),
	datad => \reg17|Q\(2),
	combout => \dm|value1[0]~7_combout\);

-- Location: LCCOMB_X82_Y52_N30
\dm|value1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~8_combout\ = (\reg17|Q\(3) & ((\dm|value1[0]~7_combout\ & (\dm|r16|Q\(0))) # (!\dm|value1[0]~7_combout\ & ((\dm|r12|Q\(0)))))) # (!\reg17|Q\(3) & (((\dm|value1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r16|Q\(0),
	datab => \dm|r12|Q\(0),
	datac => \reg17|Q\(3),
	datad => \dm|value1[0]~7_combout\,
	combout => \dm|value1[0]~8_combout\);

-- Location: LCCOMB_X82_Y50_N20
\dm|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r15|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r15|Q[0]~feeder_combout\);

-- Location: FF_X82_Y50_N21
\dm|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r15|Q[0]~feeder_combout\,
	ena => \dm|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r15|Q\(0));

-- Location: FF_X80_Y50_N1
\dm|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r11|Q\(0));

-- Location: LCCOMB_X81_Y51_N28
\dm|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # (\reg19|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \reg19|Q\(0),
	combout => \dm|m3|stage3|f[0]~0_combout\);

-- Location: FF_X80_Y50_N3
\dm|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m3|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \dm|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r3|Q\(0));

-- Location: LCCOMB_X81_Y50_N28
\dm|r7|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r7|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r7|Q[0]~feeder_combout\);

-- Location: FF_X81_Y50_N29
\dm|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r7|Q[0]~feeder_combout\,
	ena => \dm|m7|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r7|Q\(0));

-- Location: LCCOMB_X80_Y50_N2
\dm|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~0_combout\ = (\reg17|Q\(2) & ((\reg17|Q\(3)) # ((\dm|r7|Q\(0))))) # (!\reg17|Q\(2) & (!\reg17|Q\(3) & (\dm|r3|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \reg17|Q\(3),
	datac => \dm|r3|Q\(0),
	datad => \dm|r7|Q\(0),
	combout => \dm|value1[0]~0_combout\);

-- Location: LCCOMB_X80_Y50_N0
\dm|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~1_combout\ = (\reg17|Q\(3) & ((\dm|value1[0]~0_combout\ & (\dm|r15|Q\(0))) # (!\dm|value1[0]~0_combout\ & ((\dm|r11|Q\(0)))))) # (!\reg17|Q\(3) & (((\dm|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r15|Q\(0),
	datab => \reg17|Q\(3),
	datac => \dm|r11|Q\(0),
	datad => \dm|value1[0]~0_combout\,
	combout => \dm|value1[0]~1_combout\);

-- Location: LCCOMB_X81_Y51_N26
\dm|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r14|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r14|Q[0]~feeder_combout\);

-- Location: FF_X81_Y51_N27
\dm|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r14|Q[0]~feeder_combout\,
	ena => \dm|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r14|Q\(0));

-- Location: LCCOMB_X81_Y51_N20
\dm|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r6|Q[0]~feeder_combout\ = \dm|m3|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m3|stage3|f[0]~0_combout\,
	combout => \dm|r6|Q[0]~feeder_combout\);

-- Location: FF_X81_Y51_N21
\dm|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r6|Q[0]~feeder_combout\,
	ena => \dm|m6|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r6|Q\(0));

-- Location: LCCOMB_X82_Y50_N6
\dm|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r2|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r2|Q[0]~feeder_combout\);

-- Location: FF_X82_Y50_N7
\dm|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r2|Q[0]~feeder_combout\,
	ena => \dm|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r2|Q\(0));

-- Location: FF_X83_Y52_N29
\dm|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m10|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r10|Q\(0));

-- Location: LCCOMB_X83_Y52_N28
\dm|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~2_combout\ = (\reg17|Q\(3) & (((\dm|r10|Q\(0)) # (\reg17|Q\(2))))) # (!\reg17|Q\(3) & (\dm|r2|Q\(0) & ((!\reg17|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r2|Q\(0),
	datab => \reg17|Q\(3),
	datac => \dm|r10|Q\(0),
	datad => \reg17|Q\(2),
	combout => \dm|value1[0]~2_combout\);

-- Location: LCCOMB_X82_Y51_N8
\dm|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~3_combout\ = (\reg17|Q\(2) & ((\dm|value1[0]~2_combout\ & (\dm|r14|Q\(0))) # (!\dm|value1[0]~2_combout\ & ((\dm|r6|Q\(0)))))) # (!\reg17|Q\(2) & (((\dm|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r14|Q\(0),
	datab => \dm|r6|Q\(0),
	datac => \reg17|Q\(2),
	datad => \dm|value1[0]~2_combout\,
	combout => \dm|value1[0]~3_combout\);

-- Location: LCCOMB_X84_Y50_N6
\dm|r13|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r13|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r13|Q[0]~feeder_combout\);

-- Location: FF_X84_Y50_N7
\dm|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r13|Q[0]~feeder_combout\,
	ena => \dm|m13|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r13|Q\(0));

-- Location: LCCOMB_X84_Y50_N12
\dm|r9|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r9|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r9|Q[0]~feeder_combout\);

-- Location: FF_X84_Y50_N13
\dm|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r9|Q[0]~feeder_combout\,
	ena => \dm|m9|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r9|Q\(0));

-- Location: LCCOMB_X81_Y50_N10
\dm|r5|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|r5|Q[0]~feeder_combout\ = \dm|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dm|m1|stage3|f~0_combout\,
	combout => \dm|r5|Q[0]~feeder_combout\);

-- Location: FF_X81_Y50_N11
\dm|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|r5|Q[0]~feeder_combout\,
	ena => \dm|m5|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r5|Q\(0));

-- Location: FF_X83_Y50_N19
\dm|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \dm|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \dm|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dm|r1|Q\(0));

-- Location: LCCOMB_X83_Y50_N18
\dm|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~4_combout\ = (\reg17|Q\(2) & ((\dm|r5|Q\(0)) # ((\reg17|Q\(3))))) # (!\reg17|Q\(2) & (((\dm|r1|Q\(0) & !\reg17|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(2),
	datab => \dm|r5|Q\(0),
	datac => \dm|r1|Q\(0),
	datad => \reg17|Q\(3),
	combout => \dm|value1[0]~4_combout\);

-- Location: LCCOMB_X83_Y50_N20
\dm|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~5_combout\ = (\reg17|Q\(3) & ((\dm|value1[0]~4_combout\ & (\dm|r13|Q\(0))) # (!\dm|value1[0]~4_combout\ & ((\dm|r9|Q\(0)))))) # (!\reg17|Q\(3) & (((\dm|value1[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dm|r13|Q\(0),
	datab => \reg17|Q\(3),
	datac => \dm|r9|Q\(0),
	datad => \dm|value1[0]~4_combout\,
	combout => \dm|value1[0]~5_combout\);

-- Location: LCCOMB_X82_Y51_N6
\dm|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~6_combout\ = (\reg17|Q\(1) & (\reg17|Q\(0))) # (!\reg17|Q\(1) & ((\reg17|Q\(0) & (\dm|value1[0]~3_combout\)) # (!\reg17|Q\(0) & ((\dm|value1[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \reg17|Q\(0),
	datac => \dm|value1[0]~3_combout\,
	datad => \dm|value1[0]~5_combout\,
	combout => \dm|value1[0]~6_combout\);

-- Location: LCCOMB_X82_Y51_N18
\dm|value1[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dm|value1[0]~9_combout\ = (\reg17|Q\(1) & ((\dm|value1[0]~6_combout\ & (\dm|value1[0]~8_combout\)) # (!\dm|value1[0]~6_combout\ & ((\dm|value1[0]~1_combout\))))) # (!\reg17|Q\(1) & (((\dm|value1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg17|Q\(1),
	datab => \dm|value1[0]~8_combout\,
	datac => \dm|value1[0]~1_combout\,
	datad => \dm|value1[0]~6_combout\,
	combout => \dm|value1[0]~9_combout\);

-- Location: FF_X82_Y51_N19
\reg28|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \dm|value1[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg28|Q\(0));

-- Location: FF_X85_Y51_N9
\reg29|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg17|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg29|Q\(0));

-- Location: LCCOMB_X86_Y51_N28
\rf|m1|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f~0_combout\ = (!\reset~input_o\ & ((\reg31|Q~q\ & (\reg28|Q\(0))) # (!\reg31|Q~q\ & ((\reg29|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg28|Q\(0),
	datac => \reg31|Q~q\,
	datad => \reg29|Q\(0),
	combout => \rf|m1|stage3|f~0_combout\);

-- Location: LCCOMB_X88_Y51_N0
\rf|r16|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r16|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r16|Q[0]~feeder_combout\);

-- Location: FF_X88_Y51_N1
\rf|r16|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r16|Q[0]~feeder_combout\,
	ena => \rf|m16|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r16|Q\(0));

-- Location: LCCOMB_X87_Y51_N0
\rf|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r14|Q[0]~feeder_combout\);

-- Location: FF_X87_Y51_N1
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r14|Q[0]~feeder_combout\,
	ena => \rf|m14|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X85_Y50_N2
\rf|r15|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r15|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r15|Q[0]~feeder_combout\);

-- Location: FF_X85_Y50_N3
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r15|Q[0]~feeder_combout\,
	ena => \rf|m15|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X86_Y51_N2
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\reg31|Q~q\ & (\reg28|Q\(0))) # (!\reg31|Q~q\ & ((\reg29|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \reg28|Q\(0),
	datac => \reg31|Q~q\,
	datad => \reg29|Q\(0),
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X87_Y50_N5
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m3|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: LCCOMB_X87_Y50_N4
\rf|value1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~7_combout\ = (\reg2|Q\(22) & ((\rf|r15|Q\(0)) # ((\reg2|Q\(21))))) # (!\reg2|Q\(22) & (((\rf|r13|Q\(0) & !\reg2|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r15|Q\(0),
	datac => \rf|r13|Q\(0),
	datad => \reg2|Q\(21),
	combout => \rf|value1[0]~7_combout\);

-- Location: LCCOMB_X87_Y51_N22
\rf|value1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~8_combout\ = (\reg2|Q\(21) & ((\rf|value1[0]~7_combout\ & (\rf|r16|Q\(0))) # (!\rf|value1[0]~7_combout\ & ((\rf|r14|Q\(0)))))) # (!\reg2|Q\(21) & (((\rf|value1[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r16|Q\(0),
	datab => \reg2|Q\(21),
	datac => \rf|r14|Q\(0),
	datad => \rf|value1[0]~7_combout\,
	combout => \rf|value1[0]~8_combout\);

-- Location: LCCOMB_X87_Y52_N20
\rf|r10|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r10|Q[0]~feeder_combout\ = \rf|m3|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m3|stage3|f[0]~0_combout\,
	combout => \rf|r10|Q[0]~feeder_combout\);

-- Location: FF_X87_Y52_N21
\rf|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r10|Q[0]~feeder_combout\,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(0));

-- Location: LCCOMB_X85_Y50_N12
\rf|r12|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r12|Q[0]~feeder_combout\);

-- Location: FF_X85_Y50_N13
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r12|Q[0]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: LCCOMB_X85_Y51_N0
\rf|r11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r11|Q[0]~feeder_combout\);

-- Location: FF_X85_Y51_N1
\rf|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r11|Q[0]~feeder_combout\,
	ena => \rf|m11|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(0));

-- Location: FF_X86_Y52_N9
\rf|r9|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m9|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r9|Q\(0));

-- Location: LCCOMB_X86_Y52_N8
\rf|value1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~0_combout\ = (\reg2|Q\(22) & ((\rf|r11|Q\(0)) # ((\reg2|Q\(21))))) # (!\reg2|Q\(22) & (((\rf|r9|Q\(0) & !\reg2|Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(0),
	datab => \reg2|Q\(22),
	datac => \rf|r9|Q\(0),
	datad => \reg2|Q\(21),
	combout => \rf|value1[0]~0_combout\);

-- Location: LCCOMB_X87_Y51_N30
\rf|value1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~1_combout\ = (\reg2|Q\(21) & ((\rf|value1[0]~0_combout\ & ((\rf|r12|Q\(0)))) # (!\rf|value1[0]~0_combout\ & (\rf|r10|Q\(0))))) # (!\reg2|Q\(21) & (((\rf|value1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r10|Q\(0),
	datab => \reg2|Q\(21),
	datac => \rf|r12|Q\(0),
	datad => \rf|value1[0]~0_combout\,
	combout => \rf|value1[0]~1_combout\);

-- Location: FF_X86_Y51_N3
\rf|r8|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m3|stage3|f[0]~0_combout\,
	ena => \rf|m8|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r8|Q\(0));

-- Location: FF_X86_Y51_N29
\rf|r7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|m1|stage3|f~0_combout\,
	ena => \rf|m7|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r7|Q\(0));

-- Location: LCCOMB_X88_Y50_N28
\rf|r6|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r6|Q[0]~feeder_combout\ = \rf|m3|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m3|stage3|f[0]~0_combout\,
	combout => \rf|r6|Q[0]~feeder_combout\);

-- Location: FF_X88_Y50_N29
\rf|r6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r6|Q[0]~feeder_combout\,
	ena => \rf|m6|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r6|Q\(0));

-- Location: FF_X87_Y50_N19
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X87_Y50_N18
\rf|value1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~2_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(21))))) # (!\reg2|Q\(22) & ((\reg2|Q\(21) & (\rf|r6|Q\(0))) # (!\reg2|Q\(21) & ((\rf|r5|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(22),
	datab => \rf|r6|Q\(0),
	datac => \rf|r5|Q\(0),
	datad => \reg2|Q\(21),
	combout => \rf|value1[0]~2_combout\);

-- Location: LCCOMB_X87_Y51_N8
\rf|value1[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~3_combout\ = (\reg2|Q\(22) & ((\rf|value1[0]~2_combout\ & (\rf|r8|Q\(0))) # (!\rf|value1[0]~2_combout\ & ((\rf|r7|Q\(0)))))) # (!\reg2|Q\(22) & (((\rf|value1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(0),
	datab => \reg2|Q\(22),
	datac => \rf|r7|Q\(0),
	datad => \rf|value1[0]~2_combout\,
	combout => \rf|value1[0]~3_combout\);

-- Location: FF_X86_Y53_N13
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X87_Y52_N4
\rf|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[0]~feeder_combout\ = \rf|m1|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f~0_combout\,
	combout => \rf|r2|Q[0]~feeder_combout\);

-- Location: FF_X87_Y52_N5
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: FF_X86_Y52_N29
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \rf|m1|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m1|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X86_Y52_N28
\rf|value1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~4_combout\ = (\reg2|Q\(22) & (((\reg2|Q\(21))))) # (!\reg2|Q\(22) & ((\reg2|Q\(21) & (\rf|r2|Q\(0))) # (!\reg2|Q\(21) & ((\rf|r1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \reg2|Q\(22),
	datac => \rf|r1|Q\(0),
	datad => \reg2|Q\(21),
	combout => \rf|value1[0]~4_combout\);

-- Location: LCCOMB_X86_Y53_N2
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m3|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m3|stage3|f[0]~0_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: FF_X86_Y53_N3
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X87_Y51_N18
\rf|value1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~5_combout\ = (\reg2|Q\(22) & ((\rf|value1[0]~4_combout\ & (\rf|r4|Q\(0))) # (!\rf|value1[0]~4_combout\ & ((\rf|r3|Q\(0)))))) # (!\reg2|Q\(22) & (((\rf|value1[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datab => \reg2|Q\(22),
	datac => \rf|value1[0]~4_combout\,
	datad => \rf|r3|Q\(0),
	combout => \rf|value1[0]~5_combout\);

-- Location: LCCOMB_X87_Y51_N20
\rf|value1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~6_combout\ = (\reg2|Q\(17) & ((\reg2|Q\(24)) # ((\rf|value1[0]~3_combout\)))) # (!\reg2|Q\(17) & (!\reg2|Q\(24) & ((\rf|value1[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(17),
	datab => \reg2|Q\(24),
	datac => \rf|value1[0]~3_combout\,
	datad => \rf|value1[0]~5_combout\,
	combout => \rf|value1[0]~6_combout\);

-- Location: LCCOMB_X87_Y51_N10
\rf|value1[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~9_combout\ = (\reg2|Q\(24) & ((\rf|value1[0]~6_combout\ & (\rf|value1[0]~8_combout\)) # (!\rf|value1[0]~6_combout\ & ((\rf|value1[0]~1_combout\))))) # (!\reg2|Q\(24) & (((\rf|value1[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[0]~8_combout\,
	datab => \reg2|Q\(24),
	datac => \rf|value1[0]~1_combout\,
	datad => \rf|value1[0]~6_combout\,
	combout => \rf|value1[0]~9_combout\);

-- Location: FF_X87_Y51_N11
\reg3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \rf|value1[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|Q\(0));

-- Location: LCCOMB_X83_Y51_N12
\a_l_u|stage1|stage1|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage1|s~0_combout\ = \reg3|Q\(0) $ (((\reg10|Q~q\ & (\reg14|Q\(0))) # (!\reg10|Q~q\ & ((\reg4|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg14|Q\(0),
	datab => \reg10|Q~q\,
	datac => \reg4|Q\(0),
	datad => \reg3|Q\(0),
	combout => \a_l_u|stage1|stage1|s~0_combout\);

-- Location: LCCOMB_X83_Y51_N14
\a_l_u|stage1|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage3|s~combout\ = \reg3|Q\(2) $ (\reg13|Q~q\ $ (\m3|f[2]~0_combout\ $ (\a_l_u|stage1|stage2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|Q\(2),
	datab => \reg13|Q~q\,
	datac => \m3|f[2]~0_combout\,
	datad => \a_l_u|stage1|stage2|Cout~0_combout\,
	combout => \a_l_u|stage1|stage3|s~combout\);

-- Location: LCCOMB_X83_Y51_N24
\a_l_u|stage1|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|stage1|stage4|s~combout\ = \reg13|Q~q\ $ (\a_l_u|stage1|stage4|s~0_combout\ $ (\a_l_u|stage1|stage3|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg13|Q~q\,
	datac => \a_l_u|stage1|stage4|s~0_combout\,
	datad => \a_l_u|stage1|stage3|Cout~0_combout\,
	combout => \a_l_u|stage1|stage4|s~combout\);

-- Location: LCCOMB_X83_Y51_N10
\a_l_u|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_l_u|Equal0~0_combout\ = (!\a_l_u|stage1|stage1|s~0_combout\ & (!\a_l_u|stage1|stage2|s~combout\ & (!\a_l_u|stage1|stage3|s~combout\ & !\a_l_u|stage1|stage4|s~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a_l_u|stage1|stage1|s~0_combout\,
	datab => \a_l_u|stage1|stage2|s~combout\,
	datac => \a_l_u|stage1|stage3|s~combout\,
	datad => \a_l_u|stage1|stage4|s~combout\,
	combout => \a_l_u|Equal0~0_combout\);

-- Location: FF_X83_Y51_N11
\reg18|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \a_l_u|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg18|Q~q\);

-- Location: LCCOMB_X84_Y53_N14
\m6|f[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[0]~3_combout\ = (\reg18|Q~q\ & (\reg25|Q~q\ & (\reg27|Q\(0) $ (\reg20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg18|Q~q\,
	datab => \reg27|Q\(0),
	datac => \reg20|Q\(0),
	datad => \reg25|Q~q\,
	combout => \m6|f[0]~3_combout\);

-- Location: LCCOMB_X85_Y53_N18
\m6|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[0]~2_combout\ = (\im|output[0]~4_combout\ & (\Equal0~0_combout\ & (!\branch_zero~combout\ & \im|output[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[0]~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \branch_zero~combout\,
	datad => \im|output[27]~5_combout\,
	combout => \m6|f[0]~2_combout\);

-- Location: LCCOMB_X85_Y53_N16
\m6|f[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[0]~5_combout\ = (\m6|f[0]~3_combout\) # ((\m6|f[0]~2_combout\) # ((!\r1|Q\(0) & \m6|f[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m6|f[0]~3_combout\,
	datab => \m6|f[0]~2_combout\,
	datac => \r1|Q\(0),
	datad => \m6|f[1]~4_combout\,
	combout => \m6|f[0]~5_combout\);

-- Location: FF_X85_Y53_N17
\r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m6|f[0]~5_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(0));

-- Location: LCCOMB_X85_Y53_N26
\im|output[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[1]~6_combout\ = (\r1|Q\(3) & ((\r1|Q\(1)) # ((\r1|Q\(2))))) # (!\r1|Q\(3) & (\r1|Q\(1) $ ((!\r1|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(1),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \im|output[1]~6_combout\);

-- Location: LCCOMB_X85_Y53_N8
\m6|f[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[1]~6_combout\ = (\im|output[1]~6_combout\ & (\Equal0~0_combout\ & (!\branch_zero~combout\ & \im|output[27]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \im|output[1]~6_combout\,
	datab => \Equal0~0_combout\,
	datac => \branch_zero~combout\,
	datad => \im|output[27]~5_combout\,
	combout => \m6|f[1]~6_combout\);

-- Location: LCCOMB_X84_Y53_N26
\ripple2|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ripple2|stage2|s~0_combout\ = \reg20|Q\(1) $ (\reg27|Q\(1) $ (((\reg27|Q\(0) & \reg20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg27|Q\(0),
	datab => \reg20|Q\(0),
	datac => \reg20|Q\(1),
	datad => \reg27|Q\(1),
	combout => \ripple2|stage2|s~0_combout\);

-- Location: LCCOMB_X85_Y53_N6
\m6|f[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[1]~7_combout\ = (\addpc|stage2|s~combout\ & ((\m6|f[1]~4_combout\) # ((\branch_zero~combout\ & \ripple2|stage2|s~0_combout\)))) # (!\addpc|stage2|s~combout\ & (\branch_zero~combout\ & (\ripple2|stage2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addpc|stage2|s~combout\,
	datab => \branch_zero~combout\,
	datac => \ripple2|stage2|s~0_combout\,
	datad => \m6|f[1]~4_combout\,
	combout => \m6|f[1]~7_combout\);

-- Location: LCCOMB_X85_Y53_N2
\m6|f[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[1]~8_combout\ = (\m6|f[1]~6_combout\) # (\m6|f[1]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m6|f[1]~6_combout\,
	datad => \m6|f[1]~7_combout\,
	combout => \m6|f[1]~8_combout\);

-- Location: FF_X85_Y53_N3
\r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m6|f[1]~8_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(1));

-- Location: LCCOMB_X85_Y53_N30
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \r1|Q\(3) $ (((\r1|Q\(1) & (\r1|Q\(0) & \r1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(1),
	datab => \r1|Q\(0),
	datac => \r1|Q\(3),
	datad => \r1|Q\(2),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X84_Y53_N7
\reg27|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg14|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg27|Q\(3));

-- Location: LCCOMB_X85_Y52_N10
\reg1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1|Q[3]~feeder_combout\ = \addpc|stage4|s~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \addpc|stage4|s~combout\,
	combout => \reg1|Q[3]~feeder_combout\);

-- Location: FF_X85_Y52_N11
\reg1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg1|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|Q\(3));

-- Location: LCCOMB_X85_Y52_N24
\reg16|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg16|Q[3]~feeder_combout\ = \reg1|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reg1|Q\(3),
	combout => \reg16|Q[3]~feeder_combout\);

-- Location: FF_X85_Y52_N25
\reg16|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reg16|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg16|Q\(3));

-- Location: FF_X84_Y53_N25
\reg20|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \reg16|Q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg20|Q\(3));

-- Location: LCCOMB_X84_Y53_N24
\ripple2|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ripple2|stage4|s~0_combout\ = \reg20|Q\(3) $ (((\reg20|Q\(2) & ((\reg27|Q\(2)) # (\ripple2|stage2|Cout~0_combout\))) # (!\reg20|Q\(2) & (\reg27|Q\(2) & \ripple2|stage2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg20|Q\(2),
	datab => \reg27|Q\(2),
	datac => \reg20|Q\(3),
	datad => \ripple2|stage2|Cout~0_combout\,
	combout => \ripple2|stage4|s~0_combout\);

-- Location: LCCOMB_X84_Y53_N6
\m6|f[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[3]~14_combout\ = (\reg18|Q~q\ & (\reg25|Q~q\ & (\reg27|Q\(3) $ (\ripple2|stage4|s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg18|Q~q\,
	datab => \reg25|Q~q\,
	datac => \reg27|Q\(3),
	datad => \ripple2|stage4|s~0_combout\,
	combout => \m6|f[3]~14_combout\);

-- Location: LCCOMB_X85_Y53_N12
\m6|f[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[3]~12_combout\ = (\Equal0~0_combout\ & (!\branch_zero~combout\ & (\im|output[27]~5_combout\ & \im|output[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \branch_zero~combout\,
	datac => \im|output[27]~5_combout\,
	datad => \im|output[3]~8_combout\,
	combout => \m6|f[3]~12_combout\);

-- Location: LCCOMB_X85_Y53_N14
\m6|f[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \m6|f[3]~13_combout\ = (\m6|f[3]~14_combout\) # ((\m6|f[3]~12_combout\) # ((\addpc|stage4|s~combout\ & \m6|f[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addpc|stage4|s~combout\,
	datab => \m6|f[1]~4_combout\,
	datac => \m6|f[3]~14_combout\,
	datad => \m6|f[3]~12_combout\,
	combout => \m6|f[3]~13_combout\);

-- Location: FF_X85_Y53_N15
\r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m6|f[3]~13_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r1|Q\(3));

-- Location: LCCOMB_X86_Y50_N0
\im|output[19]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[19]~2_combout\ = (\r1|Q\(3) & ((\r1|Q\(2)) # ((\r1|Q\(1))))) # (!\r1|Q\(3) & ((\r1|Q\(2) & (\r1|Q\(0) & \r1|Q\(1))) # (!\r1|Q\(2) & (!\r1|Q\(0) & !\r1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1|Q\(3),
	datab => \r1|Q\(2),
	datac => \r1|Q\(0),
	datad => \r1|Q\(1),
	combout => \im|output[19]~2_combout\);

-- Location: FF_X86_Y50_N1
\reg2|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \im|output[19]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|Q\(19));

-- Location: LCCOMB_X86_Y52_N16
\rf|value2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~7_combout\ = (\reg2|Q\(16) & (((\reg2|Q\(18))))) # (!\reg2|Q\(16) & ((\reg2|Q\(18) & (\rf|r15|Q\(0))) # (!\reg2|Q\(18) & ((\rf|r11|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(0),
	datab => \reg2|Q\(16),
	datac => \rf|r11|Q\(0),
	datad => \reg2|Q\(18),
	combout => \rf|value2[0]~7_combout\);

-- Location: LCCOMB_X86_Y52_N22
\rf|value2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~8_combout\ = (\reg2|Q\(16) & ((\rf|value2[0]~7_combout\ & ((\rf|r16|Q\(0)))) # (!\rf|value2[0]~7_combout\ & (\rf|r12|Q\(0))))) # (!\reg2|Q\(16) & (((\rf|value2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(0),
	datab => \reg2|Q\(16),
	datac => \rf|r16|Q\(0),
	datad => \rf|value2[0]~7_combout\,
	combout => \rf|value2[0]~8_combout\);

-- Location: LCCOMB_X87_Y52_N22
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (\reg2|Q\(16) & (((\rf|r10|Q\(0)) # (\reg2|Q\(18))))) # (!\reg2|Q\(16) & (\rf|r9|Q\(0) & ((!\reg2|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r9|Q\(0),
	datab => \rf|r10|Q\(0),
	datac => \reg2|Q\(16),
	datad => \reg2|Q\(18),
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X86_Y52_N30
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\reg2|Q\(18) & ((\rf|value2[0]~0_combout\ & (\rf|r14|Q\(0))) # (!\rf|value2[0]~0_combout\ & ((\rf|r13|Q\(0)))))) # (!\reg2|Q\(18) & (((\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \rf|r14|Q\(0),
	datac => \rf|r13|Q\(0),
	datad => \rf|value2[0]~0_combout\,
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X86_Y53_N8
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\reg2|Q\(16) & ((\rf|r4|Q\(0)) # ((\reg2|Q\(18))))) # (!\reg2|Q\(16) & (((\rf|r3|Q\(0) & !\reg2|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r4|Q\(0),
	datab => \rf|r3|Q\(0),
	datac => \reg2|Q\(16),
	datad => \reg2|Q\(18),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X85_Y51_N26
\rf|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~3_combout\ = (\reg2|Q\(18) & ((\rf|value2[0]~2_combout\ & (\rf|r8|Q\(0))) # (!\rf|value2[0]~2_combout\ & ((\rf|r7|Q\(0)))))) # (!\reg2|Q\(18) & (((\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r8|Q\(0),
	datab => \rf|r7|Q\(0),
	datac => \reg2|Q\(18),
	datad => \rf|value2[0]~2_combout\,
	combout => \rf|value2[0]~3_combout\);

-- Location: LCCOMB_X86_Y52_N14
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\reg2|Q\(16) & ((\rf|r2|Q\(0)) # ((\reg2|Q\(18))))) # (!\reg2|Q\(16) & (((\rf|r1|Q\(0) & !\reg2|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \rf|r1|Q\(0),
	datac => \reg2|Q\(16),
	datad => \reg2|Q\(18),
	combout => \rf|value2[0]~4_combout\);

-- Location: LCCOMB_X85_Y51_N28
\rf|value2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~5_combout\ = (\reg2|Q\(18) & ((\rf|value2[0]~4_combout\ & (\rf|r6|Q\(0))) # (!\rf|value2[0]~4_combout\ & ((\rf|r5|Q\(0)))))) # (!\reg2|Q\(18) & (((\rf|value2[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(18),
	datab => \rf|r6|Q\(0),
	datac => \rf|r5|Q\(0),
	datad => \rf|value2[0]~4_combout\,
	combout => \rf|value2[0]~5_combout\);

-- Location: LCCOMB_X85_Y51_N10
\rf|value2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~6_combout\ = (\reg2|Q\(17) & ((\reg2|Q\(19)) # ((\rf|value2[0]~3_combout\)))) # (!\reg2|Q\(17) & (!\reg2|Q\(19) & ((\rf|value2[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(17),
	datab => \reg2|Q\(19),
	datac => \rf|value2[0]~3_combout\,
	datad => \rf|value2[0]~5_combout\,
	combout => \rf|value2[0]~6_combout\);

-- Location: LCCOMB_X85_Y51_N22
\rf|value2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~9_combout\ = (\reg2|Q\(19) & ((\rf|value2[0]~6_combout\ & (\rf|value2[0]~8_combout\)) # (!\rf|value2[0]~6_combout\ & ((\rf|value2[0]~1_combout\))))) # (!\reg2|Q\(19) & (((\rf|value2[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|Q\(19),
	datab => \rf|value2[0]~8_combout\,
	datac => \rf|value2[0]~1_combout\,
	datad => \rf|value2[0]~6_combout\,
	combout => \rf|value2[0]~9_combout\);

-- Location: LCCOMB_X85_Y52_N18
\m5|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[0]~0_combout\ = (!\reg23|Q~q\ & ((\reg31|Q~q\ & ((\reg28|Q\(0)))) # (!\reg31|Q~q\ & (\reg29|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg29|Q\(0),
	datab => \reg23|Q~q\,
	datac => \reg31|Q~q\,
	datad => \reg28|Q\(0),
	combout => \m5|f[0]~0_combout\);

-- Location: LCCOMB_X85_Y52_N0
\m5|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[0]~1_combout\ = (\m5|f[0]~0_combout\) # ((\rf|value2[0]~9_combout\ & \reg23|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|value2[0]~9_combout\,
	datac => \reg23|Q~q\,
	datad => \m5|f[0]~0_combout\,
	combout => \m5|f[0]~1_combout\);

-- Location: LCCOMB_X85_Y51_N20
\m5|f[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[1]~2_combout\ = (!\reg23|Q~q\ & ((\reg31|Q~q\ & ((\reg28|Q\(1)))) # (!\reg31|Q~q\ & (\reg29|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg23|Q~q\,
	datab => \reg31|Q~q\,
	datac => \reg29|Q\(1),
	datad => \reg28|Q\(1),
	combout => \m5|f[1]~2_combout\);

-- Location: LCCOMB_X85_Y51_N6
\m5|f[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[1]~3_combout\ = (\m5|f[1]~2_combout\) # ((\reg23|Q~q\ & \rf|value2[1]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg23|Q~q\,
	datab => \rf|value2[1]~19_combout\,
	datad => \m5|f[1]~2_combout\,
	combout => \m5|f[1]~3_combout\);

-- Location: LCCOMB_X85_Y52_N20
\m5|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[2]~4_combout\ = (!\reg23|Q~q\ & ((\reg31|Q~q\ & ((\reg28|Q\(2)))) # (!\reg31|Q~q\ & (\reg29|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg29|Q\(2),
	datab => \reg23|Q~q\,
	datac => \reg31|Q~q\,
	datad => \reg28|Q\(2),
	combout => \m5|f[2]~4_combout\);

-- Location: LCCOMB_X86_Y53_N12
\m5|f[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[2]~5_combout\ = (\m5|f[2]~4_combout\) # ((\reg23|Q~q\ & \rf|value2[2]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m5|f[2]~4_combout\,
	datab => \reg23|Q~q\,
	datad => \rf|value2[2]~29_combout\,
	combout => \m5|f[2]~5_combout\);

-- Location: LCCOMB_X86_Y53_N24
\m5|f[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[3]~6_combout\ = (!\reg23|Q~q\ & ((\reg31|Q~q\ & ((\reg28|Q\(3)))) # (!\reg31|Q~q\ & (\reg29|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg29|Q\(3),
	datab => \reg23|Q~q\,
	datac => \reg28|Q\(3),
	datad => \reg31|Q~q\,
	combout => \m5|f[3]~6_combout\);

-- Location: LCCOMB_X86_Y53_N10
\m5|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \m5|f[3]~7_combout\ = (\m5|f[3]~6_combout\) # ((\rf|value2[3]~39_combout\ & \reg23|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[3]~39_combout\,
	datab => \m5|f[3]~6_combout\,
	datad => \reg23|Q~q\,
	combout => \m5|f[3]~7_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


