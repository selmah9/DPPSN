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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/14/2020 14:50:51"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dppsn_scheduler IS
    PORT (
	csr_address : IN std_logic_vector(15 DOWNTO 0);
	csr_read : IN std_logic;
	csr_readdata : OUT std_logic_vector(31 DOWNTO 0);
	csr_write : IN std_logic;
	csr_writedata : IN std_logic_vector(31 DOWNTO 0);
	csr_waitrequest : OUT std_logic;
	csr_clk_clk : IN std_logic;
	csr_reset_reset_n : IN std_logic;
	clk_clk : IN std_logic;
	reset_reset_n : IN std_logic;
	in0_data : IN std_logic_vector(63 DOWNTO 0);
	in0_ready : OUT std_logic;
	in0_valid : IN std_logic;
	in0_startofpacket : IN std_logic;
	in0_endofpacket : IN std_logic;
	in0_empty : IN std_logic_vector(2 DOWNTO 0);
	in1_data : IN std_logic_vector(63 DOWNTO 0);
	in1_ready : OUT std_logic;
	in1_valid : IN std_logic;
	in1_startofpacket : IN std_logic;
	in1_endofpacket : IN std_logic;
	in1_empty : IN std_logic_vector(2 DOWNTO 0);
	in2_data : IN std_logic_vector(63 DOWNTO 0);
	in2_ready : OUT std_logic;
	in2_valid : IN std_logic;
	in2_startofpacket : IN std_logic;
	in2_endofpacket : IN std_logic;
	in2_empty : IN std_logic_vector(2 DOWNTO 0);
	in3_data : IN std_logic_vector(63 DOWNTO 0);
	in3_ready : OUT std_logic;
	in3_valid : IN std_logic;
	in3_startofpacket : IN std_logic;
	in3_endofpacket : IN std_logic;
	in3_empty : IN std_logic_vector(2 DOWNTO 0);
	out_data : OUT std_logic_vector(63 DOWNTO 0);
	out_empty : OUT std_logic_vector(2 DOWNTO 0);
	out_endofpacket : OUT std_logic;
	out_ready : IN std_logic;
	out_startofpacket : OUT std_logic;
	out_valid : OUT std_logic;
	out_channel : OUT std_logic_vector(127 DOWNTO 0)
	);
END dppsn_scheduler;

-- Design Ports Information
-- csr_address[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[1]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[3]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[4]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[5]	=>  Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[6]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[7]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[8]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[9]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[10]	=>  Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[11]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[12]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[13]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[14]	=>  Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_read	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_readdata[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[1]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[2]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[3]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[4]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[5]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[6]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[7]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[8]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[9]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[10]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[11]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[12]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[13]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[14]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[15]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[16]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[17]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[18]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[19]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[20]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[21]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[22]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[23]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[24]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[25]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[26]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[27]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[28]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[29]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[30]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[31]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_waitrequest	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in0_ready	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in1_ready	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in2_ready	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in3_ready	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[0]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[1]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[2]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[4]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[5]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[7]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[8]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[9]	=>  Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[11]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[12]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[13]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[14]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[15]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[16]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[17]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[18]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[19]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[20]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[21]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[22]	=>  Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[23]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[24]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[25]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[26]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[27]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[28]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[29]	=>  Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[30]	=>  Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[31]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[32]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[33]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[34]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[35]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[36]	=>  Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[37]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[38]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[39]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[40]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[41]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[42]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[43]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[44]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[45]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[46]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[47]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[48]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[49]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[50]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[51]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[52]	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[53]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[54]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[55]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[56]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[57]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[58]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[59]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[60]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[61]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[62]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[63]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[0]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[1]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[2]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_endofpacket	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_startofpacket	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_valid	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[0]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[1]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[3]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[4]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[5]	=>  Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[6]	=>  Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[7]	=>  Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[8]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[9]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[10]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[11]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[12]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[13]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[14]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[15]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[16]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[17]	=>  Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[18]	=>  Location: PIN_AG24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[19]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[20]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[21]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[22]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[23]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[24]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[25]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[26]	=>  Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[27]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[28]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[29]	=>  Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[30]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[31]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[32]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[33]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[34]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[35]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[36]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[37]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[38]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[39]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[40]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[41]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[42]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[43]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[44]	=>  Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[45]	=>  Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[46]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[47]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[48]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[49]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[50]	=>  Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[51]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[52]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[53]	=>  Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[54]	=>  Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[55]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[56]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[57]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[58]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[59]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[60]	=>  Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[61]	=>  Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[62]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[63]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[64]	=>  Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[65]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[66]	=>  Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[67]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[68]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[69]	=>  Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[70]	=>  Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[71]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[72]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[73]	=>  Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[74]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[75]	=>  Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[76]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[77]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[78]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[79]	=>  Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[80]	=>  Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[81]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[82]	=>  Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[83]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[84]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[85]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[86]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[87]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[88]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[89]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[90]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[91]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[92]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[93]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[94]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[95]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[96]	=>  Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[97]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[98]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[99]	=>  Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[100]	=>  Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[101]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[102]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[103]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[104]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[105]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[106]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[107]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[108]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[109]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[110]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[111]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[112]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[113]	=>  Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[114]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[115]	=>  Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[116]	=>  Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[117]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[118]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[119]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[120]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[121]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[122]	=>  Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[123]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[124]	=>  Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[125]	=>  Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[126]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[127]	=>  Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_ready	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[0]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_clk_clk	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_write	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_reset_reset_n	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[4]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[5]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[6]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[7]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[8]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[9]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[10]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[11]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[12]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[13]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[14]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[15]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[16]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[17]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[18]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[19]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[20]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[21]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[22]	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[23]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[24]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[25]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[26]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[27]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[28]	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[29]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[30]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[31]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_valid	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_startofpacket	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_valid	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_startofpacket	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_valid	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_startofpacket	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_valid	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_startofpacket	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_endofpacket	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_endofpacket	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_endofpacket	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_endofpacket	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_reset_n	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[0]	=>  Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[0]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[0]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[0]	=>  Location: PIN_R28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[1]	=>  Location: PIN_R29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[1]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[1]	=>  Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[2]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[2]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[2]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[2]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[3]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[3]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[3]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[4]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[4]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[4]	=>  Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[4]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[5]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[5]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[5]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[5]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[6]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[6]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[6]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[6]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[7]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[7]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[7]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[7]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[8]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[8]	=>  Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[8]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[8]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[9]	=>  Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[9]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[9]	=>  Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[9]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[10]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[10]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[10]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[10]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[11]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[11]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[11]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[11]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[12]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[12]	=>  Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[12]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[12]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[13]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[13]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[13]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[13]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[14]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[14]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[14]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[14]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[15]	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[15]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[15]	=>  Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[15]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[16]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[16]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[16]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[16]	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[17]	=>  Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[17]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[17]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[17]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[18]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[18]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[18]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[18]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[19]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[19]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[19]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[19]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[20]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[20]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[20]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[20]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[21]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[21]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[21]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[21]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[22]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[22]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[22]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[22]	=>  Location: PIN_AF1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[23]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[23]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[23]	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[23]	=>  Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[24]	=>  Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[24]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[24]	=>  Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[24]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[25]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[25]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[25]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[25]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[26]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[26]	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[26]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[26]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[27]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[27]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[27]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[27]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[28]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[28]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[28]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[28]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[29]	=>  Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[29]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[29]	=>  Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[29]	=>  Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[30]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[30]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[30]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[30]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[31]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[31]	=>  Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[31]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[31]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[32]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[32]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[32]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[32]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[33]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[33]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[33]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[33]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[34]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[34]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[34]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[34]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[35]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[35]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[35]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[35]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[36]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[36]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[36]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[36]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[37]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[37]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[37]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[37]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[38]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[38]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[38]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[38]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[39]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[39]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[39]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[39]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[40]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[40]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[40]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[40]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[41]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[41]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[41]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[41]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[42]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[42]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[42]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[42]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[43]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[43]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[43]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[43]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[44]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[44]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[44]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[44]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[45]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[45]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[45]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[45]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[46]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[46]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[46]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[46]	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[47]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[47]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[47]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[47]	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[48]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[48]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[48]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[48]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[49]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[49]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[49]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[49]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[50]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[50]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[50]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[50]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[51]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[51]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[51]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[51]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[52]	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[52]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[52]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[52]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[53]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[53]	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[53]	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[53]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[54]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[54]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[54]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[54]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[55]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[55]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[55]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[55]	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[56]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[56]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[56]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[56]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[57]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[57]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[57]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[57]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[58]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[58]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[58]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[58]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[59]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[59]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[59]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[59]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[60]	=>  Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[60]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[60]	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[60]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[61]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[61]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[61]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[61]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[62]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[62]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[62]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[62]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_data[63]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_data[63]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_data[63]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_data[63]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_empty[0]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_empty[0]	=>  Location: PIN_AG2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_empty[0]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_empty[0]	=>  Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_empty[1]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_empty[1]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_empty[1]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_empty[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in1_empty[2]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in2_empty[2]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in3_empty[2]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in0_empty[2]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dppsn_scheduler IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_csr_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_csr_read : std_logic;
SIGNAL ww_csr_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_csr_write : std_logic;
SIGNAL ww_csr_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_csr_waitrequest : std_logic;
SIGNAL ww_csr_clk_clk : std_logic;
SIGNAL ww_csr_reset_reset_n : std_logic;
SIGNAL ww_clk_clk : std_logic;
SIGNAL ww_reset_reset_n : std_logic;
SIGNAL ww_in0_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_in0_ready : std_logic;
SIGNAL ww_in0_valid : std_logic;
SIGNAL ww_in0_startofpacket : std_logic;
SIGNAL ww_in0_endofpacket : std_logic;
SIGNAL ww_in0_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_in1_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_in1_ready : std_logic;
SIGNAL ww_in1_valid : std_logic;
SIGNAL ww_in1_startofpacket : std_logic;
SIGNAL ww_in1_endofpacket : std_logic;
SIGNAL ww_in1_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_in2_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_in2_ready : std_logic;
SIGNAL ww_in2_valid : std_logic;
SIGNAL ww_in2_startofpacket : std_logic;
SIGNAL ww_in2_endofpacket : std_logic;
SIGNAL ww_in2_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_in3_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_in3_ready : std_logic;
SIGNAL ww_in3_valid : std_logic;
SIGNAL ww_in3_startofpacket : std_logic;
SIGNAL ww_in3_endofpacket : std_logic;
SIGNAL ww_in3_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_out_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_endofpacket : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL ww_out_startofpacket : std_logic;
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_channel : std_logic_vector(127 DOWNTO 0);
SIGNAL \clk_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \csr_clk_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \csr_reset_reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \arbiter~0_combout\ : std_logic;
SIGNAL \s_state~28_combout\ : std_logic;
SIGNAL \s_g0~10_combout\ : std_logic;
SIGNAL \s_g1~2_combout\ : std_logic;
SIGNAL \s_g2~2_combout\ : std_logic;
SIGNAL \s_g2~3_combout\ : std_logic;
SIGNAL \s_data~189_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \s_state~32_combout\ : std_logic;
SIGNAL \s_state~33_combout\ : std_logic;
SIGNAL \s_state~36_combout\ : std_logic;
SIGNAL \s_state~42_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \s_state~44_combout\ : std_logic;
SIGNAL \s_state~53_combout\ : std_logic;
SIGNAL \s_state~54_combout\ : std_logic;
SIGNAL \s_state~55_combout\ : std_logic;
SIGNAL \s_state~57_combout\ : std_logic;
SIGNAL \s_state~58_combout\ : std_logic;
SIGNAL \s_state~59_combout\ : std_logic;
SIGNAL \s_state~60_combout\ : std_logic;
SIGNAL \s_state~62_combout\ : std_logic;
SIGNAL \s_state~63_combout\ : std_logic;
SIGNAL \s_state~64_combout\ : std_logic;
SIGNAL \s_deficit1[12]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[11]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[11]~6_combout\ : std_logic;
SIGNAL \s_deficit1[10]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[9]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[8]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[7]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[7]~22_combout\ : std_logic;
SIGNAL \s_deficit1[6]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[12]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[12]~2_combout\ : std_logic;
SIGNAL \s_deficit0[11]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[11]~6_combout\ : std_logic;
SIGNAL \s_deficit0[10]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[10]~10_combout\ : std_logic;
SIGNAL \s_deficit0[9]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[9]~14_combout\ : std_logic;
SIGNAL \s_deficit0[8]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[8]~18_combout\ : std_logic;
SIGNAL \s_deficit0[7]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[7]~22_combout\ : std_logic;
SIGNAL \s_deficit0[6]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit0[6]~26_combout\ : std_logic;
SIGNAL \s_deficit3[9]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[6]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[6]~26_combout\ : std_logic;
SIGNAL \s_deficit2[12]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[12]~2_combout\ : std_logic;
SIGNAL \s_deficit2[11]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[10]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[8]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[7]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[6]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit1[12]~3_combout\ : std_logic;
SIGNAL \s_deficit1[12]~35_combout\ : std_logic;
SIGNAL \s_deficit1[12]~36_combout\ : std_logic;
SIGNAL \s_deficit1[11]~7_combout\ : std_logic;
SIGNAL \s_deficit1[10]~11_combout\ : std_logic;
SIGNAL \s_deficit1[9]~15_combout\ : std_logic;
SIGNAL \s_deficit1[8]~19_combout\ : std_logic;
SIGNAL \s_deficit1[7]~23_combout\ : std_logic;
SIGNAL \s_deficit1[6]~27_combout\ : std_logic;
SIGNAL \sched~7_combout\ : std_logic;
SIGNAL \s_deficit0[12]~3_combout\ : std_logic;
SIGNAL \s_deficit0[12]~35_combout\ : std_logic;
SIGNAL \s_deficit0[12]~36_combout\ : std_logic;
SIGNAL \s_deficit0[11]~7_combout\ : std_logic;
SIGNAL \s_deficit0[10]~11_combout\ : std_logic;
SIGNAL \s_deficit0[9]~15_combout\ : std_logic;
SIGNAL \s_deficit0[8]~19_combout\ : std_logic;
SIGNAL \s_deficit0[7]~23_combout\ : std_logic;
SIGNAL \s_deficit0[6]~27_combout\ : std_logic;
SIGNAL \s_deficit3[9]~15_combout\ : std_logic;
SIGNAL \s_deficit3[6]~27_combout\ : std_logic;
SIGNAL \s_deficit2[12]~3_combout\ : std_logic;
SIGNAL \s_deficit2[11]~7_combout\ : std_logic;
SIGNAL \s_deficit2[10]~11_combout\ : std_logic;
SIGNAL \s_deficit2[8]~19_combout\ : std_logic;
SIGNAL \s_deficit2[7]~23_combout\ : std_logic;
SIGNAL \s_deficit2[6]~27_combout\ : std_logic;
SIGNAL \s_g0~12_combout\ : std_logic;
SIGNAL \s_g1~7_combout\ : std_logic;
SIGNAL \s_state~69_combout\ : std_logic;
SIGNAL \s_state~71_combout\ : std_logic;
SIGNAL \s_state~72_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~43_combout\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \s_deficit1[11]~5_combout\ : std_logic;
SIGNAL \s_deficit1[7]~21_combout\ : std_logic;
SIGNAL \s_deficit0[12]~1_combout\ : std_logic;
SIGNAL \s_deficit0[11]~5_combout\ : std_logic;
SIGNAL \s_deficit0[10]~9_combout\ : std_logic;
SIGNAL \s_deficit0[9]~13_combout\ : std_logic;
SIGNAL \s_deficit0[8]~17_combout\ : std_logic;
SIGNAL \s_deficit0[7]~21_combout\ : std_logic;
SIGNAL \s_deficit0[6]~25_combout\ : std_logic;
SIGNAL \s_deficit3[11]~5_combout\ : std_logic;
SIGNAL \s_deficit3[6]~25_combout\ : std_logic;
SIGNAL \s_deficit2[12]~1_combout\ : std_logic;
SIGNAL \csr_clk_clk~combout\ : std_logic;
SIGNAL \csr_clk_clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_quantum3[0]~feeder_combout\ : std_logic;
SIGNAL \csr_reset_reset_n~combout\ : std_logic;
SIGNAL \s_quantum3[0]~0_combout\ : std_logic;
SIGNAL \s_quantum3[5]~feeder_combout\ : std_logic;
SIGNAL \s_quantum0[0]~feeder_combout\ : std_logic;
SIGNAL \csr_reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \csr_write~combout\ : std_logic;
SIGNAL \out_ready~combout\ : std_logic;
SIGNAL \in0_valid~combout\ : std_logic;
SIGNAL \in1_startofpacket~combout\ : std_logic;
SIGNAL \in3_startofpacket~combout\ : std_logic;
SIGNAL \in3_valid~combout\ : std_logic;
SIGNAL \sched~2_combout\ : std_logic;
SIGNAL \sched~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \s_state~67_combout\ : std_logic;
SIGNAL \in2_valid~combout\ : std_logic;
SIGNAL \s_state~30_combout\ : std_logic;
SIGNAL \s_state~66_combout\ : std_logic;
SIGNAL \s_state~31_combout\ : std_logic;
SIGNAL \s_state~70_combout\ : std_logic;
SIGNAL \s_state~65_combout\ : std_logic;
SIGNAL \reset_reset_n~combout\ : std_logic;
SIGNAL \reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \s_state.S0~regout\ : std_logic;
SIGNAL \in0_endofpacket~combout\ : std_logic;
SIGNAL \s_state~37_combout\ : std_logic;
SIGNAL \in1_valid~combout\ : std_logic;
SIGNAL \sched~4_combout\ : std_logic;
SIGNAL \in2_startofpacket~combout\ : std_logic;
SIGNAL \s_state~29_combout\ : std_logic;
SIGNAL \s_state~34_combout\ : std_logic;
SIGNAL \s_state~35_combout\ : std_logic;
SIGNAL \s_state~68_combout\ : std_logic;
SIGNAL \s_state~39_combout\ : std_logic;
SIGNAL \s_deficit1[8]~17_combout\ : std_logic;
SIGNAL \s_deficit1[8]~18_combout\ : std_logic;
SIGNAL \s_deficit1[6]~25_combout\ : std_logic;
SIGNAL \s_deficit1[6]~26_combout\ : std_logic;
SIGNAL \s_deficit1[12]~1_combout\ : std_logic;
SIGNAL \s_deficit1[12]~2_combout\ : std_logic;
SIGNAL \s_deficit1[10]~9_combout\ : std_logic;
SIGNAL \s_deficit1[10]~10_combout\ : std_logic;
SIGNAL \s_deficit1[9]~13_combout\ : std_logic;
SIGNAL \s_deficit1[9]~14_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \s_state~43_combout\ : std_logic;
SIGNAL \s_deficit3[8]~17_combout\ : std_logic;
SIGNAL \in3_endofpacket~combout\ : std_logic;
SIGNAL \sched~3_combout\ : std_logic;
SIGNAL \s_deficit3[8]~19_combout\ : std_logic;
SIGNAL \sched~6_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \sched~1_combout\ : std_logic;
SIGNAL \s_state~52_combout\ : std_logic;
SIGNAL \s_state.S3~regout\ : std_logic;
SIGNAL \s_g3~0_combout\ : std_logic;
SIGNAL \arbiter~1_combout\ : std_logic;
SIGNAL \s_g1~3_combout\ : std_logic;
SIGNAL \s_g0~8_combout\ : std_logic;
SIGNAL \s_g2~0_combout\ : std_logic;
SIGNAL \s_g2~1_combout\ : std_logic;
SIGNAL \s_g2~4_combout\ : std_logic;
SIGNAL \s_g2~regout\ : std_logic;
SIGNAL \s_g1~4_combout\ : std_logic;
SIGNAL \s_g1~5_combout\ : std_logic;
SIGNAL \s_g1~6_combout\ : std_logic;
SIGNAL \s_g1~regout\ : std_logic;
SIGNAL \in2_endofpacket~combout\ : std_logic;
SIGNAL \sched~5_combout\ : std_logic;
SIGNAL \s_g0~6_combout\ : std_logic;
SIGNAL \s_g3~1_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \s_g3~2_combout\ : std_logic;
SIGNAL \s_g3~3_combout\ : std_logic;
SIGNAL \s_g3~regout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \s_deficit3[12]~35_combout\ : std_logic;
SIGNAL \s_deficit3[12]~36_combout\ : std_logic;
SIGNAL \s_deficit3[8]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[8]~18_combout\ : std_logic;
SIGNAL \s_deficit3[7]~21_combout\ : std_logic;
SIGNAL \s_deficit3[7]~23_combout\ : std_logic;
SIGNAL \s_deficit3[7]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[7]~22_combout\ : std_logic;
SIGNAL \s_deficit3[12]~1_combout\ : std_logic;
SIGNAL \s_deficit3[10]~9_combout\ : std_logic;
SIGNAL \s_deficit3[10]~11_combout\ : std_logic;
SIGNAL \s_deficit3[10]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[10]~10_combout\ : std_logic;
SIGNAL \s_deficit3[9]~13_combout\ : std_logic;
SIGNAL \s_deficit3[9]~14_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~41_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~39_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \s_deficit3[11]~7_combout\ : std_logic;
SIGNAL \s_deficit3[11]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[11]~6_combout\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \s_deficit3[12]~3_combout\ : std_logic;
SIGNAL \s_deficit3[12]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit3[12]~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \s_state~40_combout\ : std_logic;
SIGNAL \s_state~41_combout\ : std_logic;
SIGNAL \s_state~45_combout\ : std_logic;
SIGNAL \s_state~46_combout\ : std_logic;
SIGNAL \s_deficit2[8]~17_combout\ : std_logic;
SIGNAL \s_deficit2[8]~18_combout\ : std_logic;
SIGNAL \s_deficit2[6]~25_combout\ : std_logic;
SIGNAL \s_deficit2[6]~26_combout\ : std_logic;
SIGNAL \s_deficit2[7]~21_combout\ : std_logic;
SIGNAL \s_deficit2[7]~22_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~43_combout\ : std_logic;
SIGNAL \s_deficit2[12]~35_combout\ : std_logic;
SIGNAL \s_deficit2[12]~36_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \s_deficit2[9]~13_combout\ : std_logic;
SIGNAL \s_deficit2[9]~15_combout\ : std_logic;
SIGNAL \s_deficit2[9]~_emulated_regout\ : std_logic;
SIGNAL \s_deficit2[9]~14_combout\ : std_logic;
SIGNAL \s_deficit2[11]~5_combout\ : std_logic;
SIGNAL \s_deficit2[11]~6_combout\ : std_logic;
SIGNAL \s_deficit2[10]~9_combout\ : std_logic;
SIGNAL \s_deficit2[10]~10_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \s_state~47_combout\ : std_logic;
SIGNAL \s_state~50_combout\ : std_logic;
SIGNAL \s_state~61_combout\ : std_logic;
SIGNAL \s_state.S1~regout\ : std_logic;
SIGNAL \s_state~38_combout\ : std_logic;
SIGNAL \s_state~48_combout\ : std_logic;
SIGNAL \s_state~49_combout\ : std_logic;
SIGNAL \s_state~51_combout\ : std_logic;
SIGNAL \s_state~56_combout\ : std_logic;
SIGNAL \s_state.S2~regout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \s_g0~9_combout\ : std_logic;
SIGNAL \in0_startofpacket~combout\ : std_logic;
SIGNAL \s_g0~13_combout\ : std_logic;
SIGNAL \Selector12~6_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \s_g0~7_combout\ : std_logic;
SIGNAL \s_g0~11_combout\ : std_logic;
SIGNAL \s_g0~regout\ : std_logic;
SIGNAL \in0_ready~0_combout\ : std_logic;
SIGNAL \in1_ready~0_combout\ : std_logic;
SIGNAL \in2_ready~0_combout\ : std_logic;
SIGNAL \in3_ready~0_combout\ : std_logic;
SIGNAL \clk_clk~combout\ : std_logic;
SIGNAL \clk_clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_data[8]~0_combout\ : std_logic;
SIGNAL \s_data[8]~1_combout\ : std_logic;
SIGNAL \s_data~2_combout\ : std_logic;
SIGNAL \s_data~3_combout\ : std_logic;
SIGNAL \s_data[8]~4_combout\ : std_logic;
SIGNAL \s_data~5_combout\ : std_logic;
SIGNAL \s_data~6_combout\ : std_logic;
SIGNAL \s_data~7_combout\ : std_logic;
SIGNAL \s_data~8_combout\ : std_logic;
SIGNAL \s_data~9_combout\ : std_logic;
SIGNAL \s_data~10_combout\ : std_logic;
SIGNAL \s_data~11_combout\ : std_logic;
SIGNAL \s_data~12_combout\ : std_logic;
SIGNAL \s_data~13_combout\ : std_logic;
SIGNAL \s_data~14_combout\ : std_logic;
SIGNAL \s_data~15_combout\ : std_logic;
SIGNAL \s_data~16_combout\ : std_logic;
SIGNAL \s_data~17_combout\ : std_logic;
SIGNAL \s_data~18_combout\ : std_logic;
SIGNAL \s_data~19_combout\ : std_logic;
SIGNAL \s_data~20_combout\ : std_logic;
SIGNAL \s_data~21_combout\ : std_logic;
SIGNAL \s_data~22_combout\ : std_logic;
SIGNAL \s_data~23_combout\ : std_logic;
SIGNAL \s_data~24_combout\ : std_logic;
SIGNAL \s_data~25_combout\ : std_logic;
SIGNAL \s_data~26_combout\ : std_logic;
SIGNAL \s_data~27_combout\ : std_logic;
SIGNAL \s_data~28_combout\ : std_logic;
SIGNAL \s_data~29_combout\ : std_logic;
SIGNAL \s_data~30_combout\ : std_logic;
SIGNAL \s_data~31_combout\ : std_logic;
SIGNAL \s_data~32_combout\ : std_logic;
SIGNAL \s_data~33_combout\ : std_logic;
SIGNAL \s_data~34_combout\ : std_logic;
SIGNAL \s_data~35_combout\ : std_logic;
SIGNAL \s_data~36_combout\ : std_logic;
SIGNAL \s_data~37_combout\ : std_logic;
SIGNAL \s_data~38_combout\ : std_logic;
SIGNAL \s_data~39_combout\ : std_logic;
SIGNAL \s_data~40_combout\ : std_logic;
SIGNAL \s_data~41_combout\ : std_logic;
SIGNAL \s_data~42_combout\ : std_logic;
SIGNAL \s_data~43_combout\ : std_logic;
SIGNAL \s_data~44_combout\ : std_logic;
SIGNAL \s_data~45_combout\ : std_logic;
SIGNAL \s_data~46_combout\ : std_logic;
SIGNAL \s_data~47_combout\ : std_logic;
SIGNAL \s_data~48_combout\ : std_logic;
SIGNAL \s_data~49_combout\ : std_logic;
SIGNAL \s_data~50_combout\ : std_logic;
SIGNAL \s_data~51_combout\ : std_logic;
SIGNAL \s_data~52_combout\ : std_logic;
SIGNAL \s_data~53_combout\ : std_logic;
SIGNAL \s_data~54_combout\ : std_logic;
SIGNAL \s_data~55_combout\ : std_logic;
SIGNAL \s_data~56_combout\ : std_logic;
SIGNAL \s_data~57_combout\ : std_logic;
SIGNAL \s_data~58_combout\ : std_logic;
SIGNAL \s_data~59_combout\ : std_logic;
SIGNAL \s_data~60_combout\ : std_logic;
SIGNAL \s_data~61_combout\ : std_logic;
SIGNAL \s_data~62_combout\ : std_logic;
SIGNAL \s_data~63_combout\ : std_logic;
SIGNAL \s_data~64_combout\ : std_logic;
SIGNAL \s_data~65_combout\ : std_logic;
SIGNAL \s_data~66_combout\ : std_logic;
SIGNAL \s_data~67_combout\ : std_logic;
SIGNAL \s_data~68_combout\ : std_logic;
SIGNAL \s_data~69_combout\ : std_logic;
SIGNAL \s_data~70_combout\ : std_logic;
SIGNAL \s_data~71_combout\ : std_logic;
SIGNAL \s_data~72_combout\ : std_logic;
SIGNAL \s_data~73_combout\ : std_logic;
SIGNAL \s_data~74_combout\ : std_logic;
SIGNAL \s_data~75_combout\ : std_logic;
SIGNAL \s_data~76_combout\ : std_logic;
SIGNAL \s_data~77_combout\ : std_logic;
SIGNAL \s_data~78_combout\ : std_logic;
SIGNAL \s_data~79_combout\ : std_logic;
SIGNAL \s_data~80_combout\ : std_logic;
SIGNAL \s_data~81_combout\ : std_logic;
SIGNAL \s_data~82_combout\ : std_logic;
SIGNAL \s_data~83_combout\ : std_logic;
SIGNAL \s_data~84_combout\ : std_logic;
SIGNAL \s_data~85_combout\ : std_logic;
SIGNAL \s_data~86_combout\ : std_logic;
SIGNAL \s_data~87_combout\ : std_logic;
SIGNAL \s_data~88_combout\ : std_logic;
SIGNAL \s_data~89_combout\ : std_logic;
SIGNAL \s_data~90_combout\ : std_logic;
SIGNAL \s_data~91_combout\ : std_logic;
SIGNAL \s_data~92_combout\ : std_logic;
SIGNAL \s_data~93_combout\ : std_logic;
SIGNAL \s_data~94_combout\ : std_logic;
SIGNAL \s_data~95_combout\ : std_logic;
SIGNAL \s_data~96_combout\ : std_logic;
SIGNAL \s_data~97_combout\ : std_logic;
SIGNAL \s_data~98_combout\ : std_logic;
SIGNAL \s_data~99_combout\ : std_logic;
SIGNAL \s_data~100_combout\ : std_logic;
SIGNAL \s_data~101_combout\ : std_logic;
SIGNAL \s_data~102_combout\ : std_logic;
SIGNAL \s_data~103_combout\ : std_logic;
SIGNAL \s_data~104_combout\ : std_logic;
SIGNAL \s_data~105_combout\ : std_logic;
SIGNAL \s_data~106_combout\ : std_logic;
SIGNAL \s_data~107_combout\ : std_logic;
SIGNAL \s_data~108_combout\ : std_logic;
SIGNAL \s_data~109_combout\ : std_logic;
SIGNAL \s_data~110_combout\ : std_logic;
SIGNAL \s_data~111_combout\ : std_logic;
SIGNAL \s_data~112_combout\ : std_logic;
SIGNAL \s_data~113_combout\ : std_logic;
SIGNAL \s_data~114_combout\ : std_logic;
SIGNAL \s_data~115_combout\ : std_logic;
SIGNAL \s_data~116_combout\ : std_logic;
SIGNAL \s_data~117_combout\ : std_logic;
SIGNAL \s_data~118_combout\ : std_logic;
SIGNAL \s_data~119_combout\ : std_logic;
SIGNAL \s_data~120_combout\ : std_logic;
SIGNAL \s_data~121_combout\ : std_logic;
SIGNAL \s_data~122_combout\ : std_logic;
SIGNAL \s_data~123_combout\ : std_logic;
SIGNAL \s_data~124_combout\ : std_logic;
SIGNAL \s_data~125_combout\ : std_logic;
SIGNAL \s_data~126_combout\ : std_logic;
SIGNAL \s_data~127_combout\ : std_logic;
SIGNAL \s_data~128_combout\ : std_logic;
SIGNAL \s_data~129_combout\ : std_logic;
SIGNAL \s_data~130_combout\ : std_logic;
SIGNAL \s_data~131_combout\ : std_logic;
SIGNAL \s_data~132_combout\ : std_logic;
SIGNAL \s_data~133_combout\ : std_logic;
SIGNAL \s_data~134_combout\ : std_logic;
SIGNAL \s_data~135_combout\ : std_logic;
SIGNAL \s_data~136_combout\ : std_logic;
SIGNAL \s_data~137_combout\ : std_logic;
SIGNAL \s_data~138_combout\ : std_logic;
SIGNAL \s_data~139_combout\ : std_logic;
SIGNAL \s_data~140_combout\ : std_logic;
SIGNAL \s_data~141_combout\ : std_logic;
SIGNAL \s_data~142_combout\ : std_logic;
SIGNAL \s_data~143_combout\ : std_logic;
SIGNAL \s_data~144_combout\ : std_logic;
SIGNAL \s_data~145_combout\ : std_logic;
SIGNAL \s_data~146_combout\ : std_logic;
SIGNAL \s_data~147_combout\ : std_logic;
SIGNAL \s_data~148_combout\ : std_logic;
SIGNAL \s_data~149_combout\ : std_logic;
SIGNAL \s_data~150_combout\ : std_logic;
SIGNAL \s_data~151_combout\ : std_logic;
SIGNAL \s_data~152_combout\ : std_logic;
SIGNAL \s_data~153_combout\ : std_logic;
SIGNAL \s_data~154_combout\ : std_logic;
SIGNAL \s_data~155_combout\ : std_logic;
SIGNAL \s_data~156_combout\ : std_logic;
SIGNAL \s_data~157_combout\ : std_logic;
SIGNAL \s_data~158_combout\ : std_logic;
SIGNAL \s_data~159_combout\ : std_logic;
SIGNAL \s_data~160_combout\ : std_logic;
SIGNAL \s_data~161_combout\ : std_logic;
SIGNAL \s_data~162_combout\ : std_logic;
SIGNAL \s_data~163_combout\ : std_logic;
SIGNAL \s_data~164_combout\ : std_logic;
SIGNAL \s_data~165_combout\ : std_logic;
SIGNAL \s_data~166_combout\ : std_logic;
SIGNAL \s_data~167_combout\ : std_logic;
SIGNAL \s_data~168_combout\ : std_logic;
SIGNAL \s_data~169_combout\ : std_logic;
SIGNAL \s_data~170_combout\ : std_logic;
SIGNAL \s_data~171_combout\ : std_logic;
SIGNAL \s_data~172_combout\ : std_logic;
SIGNAL \s_data~173_combout\ : std_logic;
SIGNAL \s_data~174_combout\ : std_logic;
SIGNAL \s_data~175_combout\ : std_logic;
SIGNAL \s_data~176_combout\ : std_logic;
SIGNAL \s_data~177_combout\ : std_logic;
SIGNAL \s_data~178_combout\ : std_logic;
SIGNAL \s_data~179_combout\ : std_logic;
SIGNAL \s_data~180_combout\ : std_logic;
SIGNAL \s_data~181_combout\ : std_logic;
SIGNAL \s_data~182_combout\ : std_logic;
SIGNAL \s_data~183_combout\ : std_logic;
SIGNAL \s_data~184_combout\ : std_logic;
SIGNAL \s_data~185_combout\ : std_logic;
SIGNAL \s_data~186_combout\ : std_logic;
SIGNAL \s_data~187_combout\ : std_logic;
SIGNAL \s_data~188_combout\ : std_logic;
SIGNAL \s_data~190_combout\ : std_logic;
SIGNAL \s_data~191_combout\ : std_logic;
SIGNAL \s_data~192_combout\ : std_logic;
SIGNAL \s_data~193_combout\ : std_logic;
SIGNAL \s_data~194_combout\ : std_logic;
SIGNAL \s_empty~0_combout\ : std_logic;
SIGNAL \s_empty~1_combout\ : std_logic;
SIGNAL \s_empty~2_combout\ : std_logic;
SIGNAL \s_empty~3_combout\ : std_logic;
SIGNAL \s_empty~4_combout\ : std_logic;
SIGNAL \s_empty~5_combout\ : std_logic;
SIGNAL \s_empty~6_combout\ : std_logic;
SIGNAL \s_empty~7_combout\ : std_logic;
SIGNAL \s_empty~8_combout\ : std_logic;
SIGNAL \in1_endofpacket~combout\ : std_logic;
SIGNAL \s_endofpacket~0_combout\ : std_logic;
SIGNAL \s_endofpacket~1_combout\ : std_logic;
SIGNAL \s_endofpacket~2_combout\ : std_logic;
SIGNAL \s_endofpacket~regout\ : std_logic;
SIGNAL \s_startofpacket~0_combout\ : std_logic;
SIGNAL \s_startofpacket~1_combout\ : std_logic;
SIGNAL \s_startofpacket~2_combout\ : std_logic;
SIGNAL \s_startofpacket~regout\ : std_logic;
SIGNAL \s_valid~0_combout\ : std_logic;
SIGNAL \s_valid~1_combout\ : std_logic;
SIGNAL \s_valid~2_combout\ : std_logic;
SIGNAL \s_valid~regout\ : std_logic;
SIGNAL \s_channel~0_combout\ : std_logic;
SIGNAL \s_channel[1]~feeder_combout\ : std_logic;
SIGNAL \s_channel~1_combout\ : std_logic;
SIGNAL s_selector : std_logic_vector(3 DOWNTO 0);
SIGNAL s_quantum3 : std_logic_vector(6 DOWNTO 0);
SIGNAL s_quantum2 : std_logic_vector(6 DOWNTO 0);
SIGNAL s_quantum1 : std_logic_vector(6 DOWNTO 0);
SIGNAL s_quantum0 : std_logic_vector(6 DOWNTO 0);
SIGNAL s_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL s_deficit3 : std_logic_vector(12 DOWNTO 0);
SIGNAL s_deficit2 : std_logic_vector(12 DOWNTO 0);
SIGNAL s_deficit1 : std_logic_vector(12 DOWNTO 0);
SIGNAL s_deficit0 : std_logic_vector(12 DOWNTO 0);
SIGNAL s_data : std_logic_vector(63 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(127 DOWNTO 0);
SIGNAL \in3_empty~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \in3_data~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \in2_empty~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \in2_data~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \in1_empty~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \in1_data~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \in0_empty~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \in0_data~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \csr_writedata~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_csr_reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset_reset_n~clkctrl_outclk\ : std_logic;

BEGIN

ww_csr_address <= csr_address;
ww_csr_read <= csr_read;
csr_readdata <= ww_csr_readdata;
ww_csr_write <= csr_write;
ww_csr_writedata <= csr_writedata;
csr_waitrequest <= ww_csr_waitrequest;
ww_csr_clk_clk <= csr_clk_clk;
ww_csr_reset_reset_n <= csr_reset_reset_n;
ww_clk_clk <= clk_clk;
ww_reset_reset_n <= reset_reset_n;
ww_in0_data <= in0_data;
in0_ready <= ww_in0_ready;
ww_in0_valid <= in0_valid;
ww_in0_startofpacket <= in0_startofpacket;
ww_in0_endofpacket <= in0_endofpacket;
ww_in0_empty <= in0_empty;
ww_in1_data <= in1_data;
in1_ready <= ww_in1_ready;
ww_in1_valid <= in1_valid;
ww_in1_startofpacket <= in1_startofpacket;
ww_in1_endofpacket <= in1_endofpacket;
ww_in1_empty <= in1_empty;
ww_in2_data <= in2_data;
in2_ready <= ww_in2_ready;
ww_in2_valid <= in2_valid;
ww_in2_startofpacket <= in2_startofpacket;
ww_in2_endofpacket <= in2_endofpacket;
ww_in2_empty <= in2_empty;
ww_in3_data <= in3_data;
in3_ready <= ww_in3_ready;
ww_in3_valid <= in3_valid;
ww_in3_startofpacket <= in3_startofpacket;
ww_in3_endofpacket <= in3_endofpacket;
ww_in3_empty <= in3_empty;
out_data <= ww_out_data;
out_empty <= ww_out_empty;
out_endofpacket <= ww_out_endofpacket;
ww_out_ready <= out_ready;
out_startofpacket <= ww_out_startofpacket;
out_valid <= ww_out_valid;
out_channel <= ww_out_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_clk~combout\);

\csr_clk_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \csr_clk_clk~combout\);

\reset_reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_reset_n~combout\);

\csr_reset_reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \csr_reset_reset_n~combout\);
\ALT_INV_csr_reset_reset_n~clkctrl_outclk\ <= NOT \csr_reset_reset_n~clkctrl_outclk\;
\ALT_INV_reset_reset_n~clkctrl_outclk\ <= NOT \reset_reset_n~clkctrl_outclk\;

-- Location: LCCOMB_X2_Y20_N4
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = s_deficit1(0) $ (VCC)
-- \Add1~13\ = CARRY(s_deficit1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_deficit1(0),
	datad => VCC,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X2_Y20_N6
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (s_deficit1(1) & (\Add1~13\ & VCC)) # (!s_deficit1(1) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!s_deficit1(1) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit1(1),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X2_Y20_N8
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (s_deficit1(2) & ((GND) # (!\Add1~15\))) # (!s_deficit1(2) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((s_deficit1(2)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit1(2),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X2_Y20_N10
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (s_deficit1(3) & (\Add1~17\ & VCC)) # (!s_deficit1(3) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!s_deficit1(3) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit1(3),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X2_Y20_N12
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (s_deficit1(4) & ((GND) # (!\Add1~19\))) # (!s_deficit1(4) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((s_deficit1(4)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit1(4),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X2_Y20_N14
\Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (s_deficit1(5) & (\Add1~21\ & VCC)) # (!s_deficit1(5) & (!\Add1~21\))
-- \Add1~23\ = CARRY((!s_deficit1(5) & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit1(5),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X2_Y20_N16
\Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (\s_deficit1[6]~26_combout\ & ((GND) # (!\Add1~23\))) # (!\s_deficit1[6]~26_combout\ & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((\s_deficit1[6]~26_combout\) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[6]~26_combout\,
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X2_Y20_N18
\Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\s_deficit1[7]~22_combout\ & (\Add1~25\ & VCC)) # (!\s_deficit1[7]~22_combout\ & (!\Add1~25\))
-- \Add1~27\ = CARRY((!\s_deficit1[7]~22_combout\ & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[7]~22_combout\,
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X2_Y20_N20
\Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (\s_deficit1[8]~18_combout\ & ((GND) # (!\Add1~27\))) # (!\s_deficit1[8]~18_combout\ & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((\s_deficit1[8]~18_combout\) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[8]~18_combout\,
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X2_Y20_N22
\Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (\s_deficit1[9]~14_combout\ & (\Add1~29\ & VCC)) # (!\s_deficit1[9]~14_combout\ & (!\Add1~29\))
-- \Add1~31\ = CARRY((!\s_deficit1[9]~14_combout\ & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[9]~14_combout\,
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X2_Y20_N24
\Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\s_deficit1[10]~10_combout\ & ((GND) # (!\Add1~31\))) # (!\s_deficit1[10]~10_combout\ & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((\s_deficit1[10]~10_combout\) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[10]~10_combout\,
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X2_Y20_N26
\Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (\s_deficit1[11]~6_combout\ & (\Add1~33\ & VCC)) # (!\s_deficit1[11]~6_combout\ & (!\Add1~33\))
-- \Add1~35\ = CARRY((!\s_deficit1[11]~6_combout\ & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[11]~6_combout\,
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X2_Y20_N28
\Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = \Add1~35\ $ (\s_deficit1[12]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s_deficit1[12]~2_combout\,
	cin => \Add1~35\,
	combout => \Add1~36_combout\);

-- Location: LCCOMB_X3_Y23_N6
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = s_deficit0(0) $ (VCC)
-- \Add0~13\ = CARRY(s_deficit0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit0(0),
	datad => VCC,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y23_N8
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (s_deficit0(1) & (\Add0~13\ & VCC)) # (!s_deficit0(1) & (!\Add0~13\))
-- \Add0~15\ = CARRY((!s_deficit0(1) & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit0(1),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X3_Y23_N10
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (s_deficit0(2) & ((GND) # (!\Add0~15\))) # (!s_deficit0(2) & (\Add0~15\ $ (GND)))
-- \Add0~17\ = CARRY((s_deficit0(2)) # (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit0(2),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y23_N12
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (s_deficit0(3) & (\Add0~17\ & VCC)) # (!s_deficit0(3) & (!\Add0~17\))
-- \Add0~19\ = CARRY((!s_deficit0(3) & !\Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit0(3),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y23_N14
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (s_deficit0(4) & ((GND) # (!\Add0~19\))) # (!s_deficit0(4) & (\Add0~19\ $ (GND)))
-- \Add0~21\ = CARRY((s_deficit0(4)) # (!\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit0(4),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X3_Y23_N16
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (s_deficit0(5) & (\Add0~21\ & VCC)) # (!s_deficit0(5) & (!\Add0~21\))
-- \Add0~23\ = CARRY((!s_deficit0(5) & !\Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit0(5),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X3_Y23_N18
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\s_deficit0[6]~26_combout\ & ((GND) # (!\Add0~23\))) # (!\s_deficit0[6]~26_combout\ & (\Add0~23\ $ (GND)))
-- \Add0~25\ = CARRY((\s_deficit0[6]~26_combout\) # (!\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[6]~26_combout\,
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X3_Y23_N20
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\s_deficit0[7]~22_combout\ & (\Add0~25\ & VCC)) # (!\s_deficit0[7]~22_combout\ & (!\Add0~25\))
-- \Add0~27\ = CARRY((!\s_deficit0[7]~22_combout\ & !\Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[7]~22_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X3_Y23_N22
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\s_deficit0[8]~18_combout\ & ((GND) # (!\Add0~27\))) # (!\s_deficit0[8]~18_combout\ & (\Add0~27\ $ (GND)))
-- \Add0~29\ = CARRY((\s_deficit0[8]~18_combout\) # (!\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[8]~18_combout\,
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X3_Y23_N24
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\s_deficit0[9]~14_combout\ & (\Add0~29\ & VCC)) # (!\s_deficit0[9]~14_combout\ & (!\Add0~29\))
-- \Add0~31\ = CARRY((!\s_deficit0[9]~14_combout\ & !\Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[9]~14_combout\,
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X3_Y23_N26
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\s_deficit0[10]~10_combout\ & ((GND) # (!\Add0~31\))) # (!\s_deficit0[10]~10_combout\ & (\Add0~31\ $ (GND)))
-- \Add0~33\ = CARRY((\s_deficit0[10]~10_combout\) # (!\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[10]~10_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X3_Y23_N28
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (\s_deficit0[11]~6_combout\ & (\Add0~33\ & VCC)) # (!\s_deficit0[11]~6_combout\ & (!\Add0~33\))
-- \Add0~35\ = CARRY((!\s_deficit0[11]~6_combout\ & !\Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[11]~6_combout\,
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X3_Y23_N30
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \s_deficit0[12]~2_combout\ $ (\Add0~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[12]~2_combout\,
	cin => \Add0~35\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X3_Y25_N6
\Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = s_deficit3(0) $ (VCC)
-- \Add3~13\ = CARRY(s_deficit3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit3(0),
	datad => VCC,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X3_Y25_N16
\Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (s_deficit3(5) & (\Add3~21\ & VCC)) # (!s_deficit3(5) & (!\Add3~21\))
-- \Add3~23\ = CARRY((!s_deficit3(5) & !\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit3(5),
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X3_Y25_N18
\Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\s_deficit3[6]~26_combout\ & ((GND) # (!\Add3~23\))) # (!\s_deficit3[6]~26_combout\ & (\Add3~23\ $ (GND)))
-- \Add3~25\ = CARRY((\s_deficit3[6]~26_combout\) # (!\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[6]~26_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X3_Y25_N20
\Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\s_deficit3[7]~22_combout\ & (\Add3~25\ & VCC)) # (!\s_deficit3[7]~22_combout\ & (!\Add3~25\))
-- \Add3~27\ = CARRY((!\s_deficit3[7]~22_combout\ & !\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[7]~22_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X3_Y25_N22
\Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\s_deficit3[8]~18_combout\ & ((GND) # (!\Add3~27\))) # (!\s_deficit3[8]~18_combout\ & (\Add3~27\ $ (GND)))
-- \Add3~29\ = CARRY((\s_deficit3[8]~18_combout\) # (!\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[8]~18_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X3_Y25_N24
\Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\s_deficit3[9]~14_combout\ & (\Add3~29\ & VCC)) # (!\s_deficit3[9]~14_combout\ & (!\Add3~29\))
-- \Add3~31\ = CARRY((!\s_deficit3[9]~14_combout\ & !\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[9]~14_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X3_Y25_N26
\Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\s_deficit3[10]~10_combout\ & ((GND) # (!\Add3~31\))) # (!\s_deficit3[10]~10_combout\ & (\Add3~31\ $ (GND)))
-- \Add3~33\ = CARRY((\s_deficit3[10]~10_combout\) # (!\Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[10]~10_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X9_Y24_N4
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (s_deficit2(2) & ((GND) # (!\Add2~15\))) # (!s_deficit2(2) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((s_deficit2(2)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_deficit2(2),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X9_Y24_N12
\Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (\s_deficit2[6]~26_combout\ & ((GND) # (!\Add2~23\))) # (!\s_deficit2[6]~26_combout\ & (\Add2~23\ $ (GND)))
-- \Add2~25\ = CARRY((\s_deficit2[6]~26_combout\) # (!\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[6]~26_combout\,
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X9_Y24_N14
\Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\s_deficit2[7]~22_combout\ & (\Add2~25\ & VCC)) # (!\s_deficit2[7]~22_combout\ & (!\Add2~25\))
-- \Add2~27\ = CARRY((!\s_deficit2[7]~22_combout\ & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[7]~22_combout\,
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X9_Y24_N16
\Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (\s_deficit2[8]~18_combout\ & ((GND) # (!\Add2~27\))) # (!\s_deficit2[8]~18_combout\ & (\Add2~27\ $ (GND)))
-- \Add2~29\ = CARRY((\s_deficit2[8]~18_combout\) # (!\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[8]~18_combout\,
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X9_Y24_N18
\Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (\s_deficit2[9]~14_combout\ & (\Add2~29\ & VCC)) # (!\s_deficit2[9]~14_combout\ & (!\Add2~29\))
-- \Add2~31\ = CARRY((!\s_deficit2[9]~14_combout\ & !\Add2~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[9]~14_combout\,
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X9_Y24_N20
\Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\s_deficit2[10]~10_combout\ & ((GND) # (!\Add2~31\))) # (!\s_deficit2[10]~10_combout\ & (\Add2~31\ $ (GND)))
-- \Add2~33\ = CARRY((\s_deficit2[10]~10_combout\) # (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[10]~10_combout\,
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X9_Y24_N22
\Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (\s_deficit2[11]~6_combout\ & (\Add2~33\ & VCC)) # (!\s_deficit2[11]~6_combout\ & (!\Add2~33\))
-- \Add2~35\ = CARRY((!\s_deficit2[11]~6_combout\ & !\Add2~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[11]~6_combout\,
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X9_Y24_N24
\Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = \s_deficit2[12]~2_combout\ $ (\Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[12]~2_combout\,
	cin => \Add2~35\,
	combout => \Add2~36_combout\);

-- Location: LCCOMB_X2_Y23_N4
\Selector12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\s_g0~regout\ & ((\Selector12~2_combout\) # ((\sched~0_combout\ & !\s_state.S0~regout\)))) # (!\s_g0~regout\ & (\sched~0_combout\ & (!\s_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g0~regout\,
	datab => \sched~0_combout\,
	datac => \s_state.S0~regout\,
	datad => \Selector12~2_combout\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X1_Y23_N10
\arbiter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \arbiter~0_combout\ = (!\s_g3~regout\ & (!\s_g2~regout\ & !\s_g1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datac => \s_g2~regout\,
	datad => \s_g1~regout\,
	combout => \arbiter~0_combout\);

-- Location: LCCOMB_X5_Y24_N20
\s_state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~28_combout\ = (\in2_startofpacket~combout\ & (!\in2_valid~combout\ & ((!\in3_valid~combout\) # (!\in3_startofpacket~combout\)))) # (!\in2_startofpacket~combout\ & (((!\in3_valid~combout\)) # (!\in3_startofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_startofpacket~combout\,
	datab => \in3_startofpacket~combout\,
	datac => \in2_valid~combout\,
	datad => \in3_valid~combout\,
	combout => \s_state~28_combout\);

-- Location: LCCOMB_X1_Y23_N22
\s_g0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~10_combout\ = (!\arbiter~1_combout\ & (\s_g0~6_combout\ & ((!\sched~3_combout\) # (!\s_g3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arbiter~1_combout\,
	datab => \s_g3~regout\,
	datac => \sched~3_combout\,
	datad => \s_g0~6_combout\,
	combout => \s_g0~10_combout\);

-- Location: LCCOMB_X1_Y23_N24
\s_g1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~2_combout\ = (\arbiter~0_combout\ & (((\sched~3_combout\ & \s_g3~regout\)) # (!\s_g0~regout\))) # (!\arbiter~0_combout\ & (\sched~3_combout\ & (\s_g3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arbiter~0_combout\,
	datab => \sched~3_combout\,
	datac => \s_g3~regout\,
	datad => \s_g0~regout\,
	combout => \s_g1~2_combout\);

-- Location: LCCOMB_X2_Y23_N28
\s_g2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g2~2_combout\ = (((\sched~4_combout\ & \s_g1~regout\)) # (!\sched~5_combout\)) # (!\s_g2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \s_g2~regout\,
	datac => \s_g1~regout\,
	datad => \sched~5_combout\,
	combout => \s_g2~2_combout\);

-- Location: LCCOMB_X1_Y23_N12
\s_g2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g2~3_combout\ = (\Selector12~2_combout\ & ((\arbiter~1_combout\) # (\s_g2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arbiter~1_combout\,
	datab => \s_g2~2_combout\,
	datad => \Selector12~2_combout\,
	combout => \s_g2~3_combout\);

-- Location: LCCOMB_X1_Y20_N24
\s_data~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~189_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(62))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(62)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \in2_data~combout\(62),
	datac => \in3_data~combout\(62),
	datad => \s_data[8]~1_combout\,
	combout => \s_data~189_combout\);

-- Location: LCCOMB_X7_Y24_N28
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\in2_startofpacket~combout\ & (\in2_valid~combout\ & \s_state.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_startofpacket~combout\,
	datab => \in2_valid~combout\,
	datad => \s_state.S2~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X4_Y23_N18
\s_state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~32_combout\ = (\s_state.S1~regout\ & (((\sched~1_combout\)))) # (!\s_state.S1~regout\ & (!\sched~6_combout\ & ((!\s_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~6_combout\,
	datab => \sched~1_combout\,
	datac => \s_state.S1~regout\,
	datad => \s_state.S2~regout\,
	combout => \s_state~32_combout\);

-- Location: LCCOMB_X4_Y23_N12
\s_state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~33_combout\ = (\s_state~32_combout\ & ((\s_state.S1~regout\ & ((!\sched~6_combout\))) # (!\s_state.S1~regout\ & (!\sched~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~0_combout\,
	datab => \s_state~32_combout\,
	datac => \s_state.S1~regout\,
	datad => \sched~6_combout\,
	combout => \s_state~33_combout\);

-- Location: LCCOMB_X3_Y24_N10
\s_state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~36_combout\ = (!\s_state~35_combout\ & (!\s_state.S3~regout\ & ((\Selector10~0_combout\) # (\s_state~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \s_state~33_combout\,
	datac => \s_state~35_combout\,
	datad => \s_state.S3~regout\,
	combout => \s_state~36_combout\);

-- Location: LCCOMB_X3_Y24_N12
\s_state~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~42_combout\ = (\s_state~31_combout\) # ((!\s_state~41_combout\ & (!\s_state~39_combout\ & \s_state~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~31_combout\,
	datab => \s_state~41_combout\,
	datac => \s_state~39_combout\,
	datad => \s_state~36_combout\,
	combout => \s_state~42_combout\);

-- Location: LCCOMB_X5_Y24_N22
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_selector(0) & (!s_selector(1) & (!s_selector(3) & !s_selector(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_selector(1),
	datac => s_selector(3),
	datad => s_selector(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y24_N28
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\s_deficit0[10]~10_combout\) # ((\s_deficit0[9]~14_combout\) # ((\s_deficit0[11]~6_combout\) # (\s_deficit0[12]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[10]~10_combout\,
	datab => \s_deficit0[9]~14_combout\,
	datac => \s_deficit0[11]~6_combout\,
	datad => \s_deficit0[12]~2_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X3_Y24_N22
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\s_deficit0[7]~22_combout\) # ((\s_deficit0[8]~18_combout\) # ((\s_deficit0[6]~26_combout\) # (\Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[7]~22_combout\,
	datab => \s_deficit0[8]~18_combout\,
	datac => \s_deficit0[6]~26_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X4_Y24_N28
\s_state~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~44_combout\ = (!\s_state~66_combout\ & (\Equal1~0_combout\ & ((\s_state~69_combout\) # (!\s_state~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~66_combout\,
	datab => \s_state~69_combout\,
	datac => \Equal1~0_combout\,
	datad => \s_state~67_combout\,
	combout => \s_state~44_combout\);

-- Location: LCCOMB_X4_Y23_N2
\s_state~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~53_combout\ = (\s_state.S3~regout\ & (!\sched~2_combout\ & (!\sched~0_combout\))) # (!\s_state.S3~regout\ & (((\sched~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_state.S3~regout\,
	datac => \sched~0_combout\,
	datad => \sched~6_combout\,
	combout => \s_state~53_combout\);

-- Location: LCCOMB_X4_Y24_N6
\s_state~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~54_combout\ = (\s_state~53_combout\ & (!\s_state~41_combout\ & ((\s_state.S3~regout\) # (\s_state~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \s_state~53_combout\,
	datac => \s_state~71_combout\,
	datad => \s_state~41_combout\,
	combout => \s_state~54_combout\);

-- Location: LCCOMB_X4_Y24_N24
\s_state~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~55_combout\ = (!\s_state~31_combout\ & ((\s_state~35_combout\) # ((!\s_state~39_combout\ & \s_state~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~35_combout\,
	datab => \s_state~39_combout\,
	datac => \s_state~31_combout\,
	datad => \s_state~54_combout\,
	combout => \s_state~55_combout\);

-- Location: LCCOMB_X4_Y23_N16
\s_state~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~57_combout\ = (\s_state.S3~regout\ & (!\sched~2_combout\ & ((\sched~0_combout\)))) # (!\s_state.S3~regout\ & ((\s_state.S2~regout\ & (!\sched~2_combout\)) # (!\s_state.S2~regout\ & ((\sched~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_state.S2~regout\,
	datac => \sched~0_combout\,
	datad => \s_state.S3~regout\,
	combout => \s_state~57_combout\);

-- Location: LCCOMB_X6_Y24_N8
\s_state~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~58_combout\ = (\s_state.S3~regout\) # ((\s_state~29_combout\) # ((!\s_state.S1~regout\ & !\s_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \s_state.S1~regout\,
	datac => \s_state.S2~regout\,
	datad => \s_state~29_combout\,
	combout => \s_state~58_combout\);

-- Location: LCCOMB_X3_Y24_N26
\s_state~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~59_combout\ = (\s_state~39_combout\) # ((\s_state~58_combout\ & (\s_state~57_combout\ & !\s_state~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~58_combout\,
	datab => \s_state~57_combout\,
	datac => \s_state~39_combout\,
	datad => \s_state~41_combout\,
	combout => \s_state~59_combout\);

-- Location: LCCOMB_X3_Y24_N16
\s_state~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~60_combout\ = (!\s_state~31_combout\ & (!\s_state~35_combout\ & \s_state~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~31_combout\,
	datac => \s_state~35_combout\,
	datad => \s_state~59_combout\,
	combout => \s_state~60_combout\);

-- Location: LCCOMB_X4_Y23_N10
\s_state~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~62_combout\ = (\s_state.S2~regout\ & (\sched~2_combout\)) # (!\s_state.S2~regout\ & (((\s_state.S1~regout\ & !\sched~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_state.S2~regout\,
	datac => \s_state.S1~regout\,
	datad => \sched~6_combout\,
	combout => \s_state~62_combout\);

-- Location: LCCOMB_X5_Y24_N24
\s_state~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~63_combout\ = (!\s_state.S3~regout\ & ((!\in2_startofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \in2_valid~combout\,
	datad => \in2_startofpacket~combout\,
	combout => \s_state~63_combout\);

-- Location: LCCOMB_X4_Y24_N26
\s_state~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~64_combout\ = (\s_state~68_combout\ & (((\s_state~62_combout\ & \s_state~63_combout\)) # (!\s_state~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~62_combout\,
	datab => \s_state~63_combout\,
	datac => \s_state~68_combout\,
	datad => \s_state~72_combout\,
	combout => \s_state~64_combout\);

-- Location: LCFF_X1_Y24_N1
\s_deficit1[12]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[12]~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[12]~_emulated_regout\);

-- Location: LCFF_X1_Y24_N17
\s_deficit1[11]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[11]~7_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[11]~_emulated_regout\);

-- Location: LCCOMB_X1_Y24_N6
\s_deficit1[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[11]~6_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[11]~_emulated_regout\ $ ((\s_deficit1[11]~5_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[11]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[11]~5_combout\,
	datad => s_quantum1(5),
	combout => \s_deficit1[11]~6_combout\);

-- Location: LCFF_X2_Y20_N1
\s_deficit1[10]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[10]~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[10]~_emulated_regout\);

-- Location: LCFF_X2_Y20_N3
\s_deficit1[9]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[9]~15_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[9]~_emulated_regout\);

-- Location: LCFF_X2_Y20_N31
\s_deficit1[8]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[8]~19_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[8]~_emulated_regout\);

-- Location: LCFF_X1_Y24_N19
\s_deficit1[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[7]~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[7]~_emulated_regout\);

-- Location: LCCOMB_X1_Y24_N12
\s_deficit1[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[7]~22_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[7]~_emulated_regout\ $ ((\s_deficit1[7]~21_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[7]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[7]~21_combout\,
	datad => s_quantum1(1),
	combout => \s_deficit1[7]~22_combout\);

-- Location: LCFF_X1_Y23_N17
\s_deficit1[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit1[6]~27_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit1[6]~_emulated_regout\);

-- Location: LCFF_X2_Y24_N11
\s_deficit0[12]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[12]~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[12]~_emulated_regout\);

-- Location: LCCOMB_X2_Y24_N12
\s_deficit0[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[12]~2_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[12]~_emulated_regout\ $ (((\s_deficit0[12]~1_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[12]~_emulated_regout\,
	datab => s_quantum0(6),
	datac => \s_deficit0[12]~1_combout\,
	datad => \reset_reset_n~combout\,
	combout => \s_deficit0[12]~2_combout\);

-- Location: LCFF_X2_Y24_N7
\s_deficit0[11]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[11]~7_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[11]~_emulated_regout\);

-- Location: LCCOMB_X1_Y24_N30
\s_deficit0[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[11]~6_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[11]~_emulated_regout\ $ (((\s_deficit0[11]~5_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum0(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[11]~_emulated_regout\,
	datab => s_quantum0(5),
	datac => \s_deficit0[11]~5_combout\,
	datad => \reset_reset_n~combout\,
	combout => \s_deficit0[11]~6_combout\);

-- Location: LCFF_X2_Y23_N31
\s_deficit0[10]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[10]~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[10]~_emulated_regout\);

-- Location: LCCOMB_X2_Y24_N24
\s_deficit0[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[10]~10_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[10]~_emulated_regout\ $ ((\s_deficit0[10]~9_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum0(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[10]~_emulated_regout\,
	datab => \s_deficit0[10]~9_combout\,
	datac => s_quantum0(4),
	datad => \reset_reset_n~combout\,
	combout => \s_deficit0[10]~10_combout\);

-- Location: LCFF_X2_Y24_N3
\s_deficit0[9]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[9]~15_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[9]~_emulated_regout\);

-- Location: LCCOMB_X2_Y24_N0
\s_deficit0[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[9]~14_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[9]~13_combout\ $ ((\s_deficit0[9]~_emulated_regout\)))) # (!\reset_reset_n~combout\ & (((s_quantum0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[9]~13_combout\,
	datab => \s_deficit0[9]~_emulated_regout\,
	datac => s_quantum0(3),
	datad => \reset_reset_n~combout\,
	combout => \s_deficit0[9]~14_combout\);

-- Location: LCFF_X2_Y24_N27
\s_deficit0[8]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[8]~19_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[8]~_emulated_regout\);

-- Location: LCCOMB_X2_Y24_N16
\s_deficit0[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[8]~18_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[8]~_emulated_regout\ $ ((\s_deficit0[8]~17_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum0(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[8]~_emulated_regout\,
	datab => \s_deficit0[8]~17_combout\,
	datac => \reset_reset_n~combout\,
	datad => s_quantum0(2),
	combout => \s_deficit0[8]~18_combout\);

-- Location: LCFF_X2_Y23_N25
\s_deficit0[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[7]~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[7]~_emulated_regout\);

-- Location: LCCOMB_X2_Y23_N14
\s_deficit0[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[7]~22_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[7]~_emulated_regout\ $ (((\s_deficit0[7]~21_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[7]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => s_quantum0(1),
	datad => \s_deficit0[7]~21_combout\,
	combout => \s_deficit0[7]~22_combout\);

-- Location: LCFF_X2_Y23_N21
\s_deficit0[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit0[6]~27_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit0[6]~_emulated_regout\);

-- Location: LCCOMB_X3_Y23_N2
\s_deficit0[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[6]~26_combout\ = (\reset_reset_n~combout\ & (\s_deficit0[6]~_emulated_regout\ $ (((\s_deficit0[6]~25_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[6]~_emulated_regout\,
	datab => s_quantum0(0),
	datac => \s_deficit0[6]~25_combout\,
	datad => \reset_reset_n~combout\,
	combout => \s_deficit0[6]~26_combout\);

-- Location: LCFF_X2_Y25_N9
\s_deficit3[9]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[9]~15_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[9]~_emulated_regout\);

-- Location: LCFF_X1_Y25_N25
\s_deficit3[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[6]~27_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[6]~_emulated_regout\);

-- Location: LCCOMB_X1_Y25_N30
\s_deficit3[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[6]~26_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[6]~_emulated_regout\ $ ((\s_deficit3[6]~25_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[6]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit3[6]~25_combout\,
	datad => s_quantum3(0),
	combout => \s_deficit3[6]~26_combout\);

-- Location: LCFF_X8_Y24_N5
\s_deficit2[12]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[12]~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[12]~_emulated_regout\);

-- Location: LCCOMB_X7_Y24_N16
\s_deficit2[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[12]~2_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[12]~_emulated_regout\ $ (((\s_deficit2[12]~1_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum2(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[12]~_emulated_regout\,
	datab => s_quantum2(6),
	datac => \s_deficit2[12]~1_combout\,
	datad => \reset_reset_n~combout\,
	combout => \s_deficit2[12]~2_combout\);

-- Location: LCFF_X8_Y24_N7
\s_deficit2[11]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[11]~7_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[11]~_emulated_regout\);

-- Location: LCFF_X7_Y24_N25
\s_deficit2[10]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[10]~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[10]~_emulated_regout\);

-- Location: LCFF_X8_Y24_N21
\s_deficit2[8]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[8]~19_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[8]~_emulated_regout\);

-- Location: LCFF_X8_Y24_N13
\s_deficit2[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[7]~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[7]~_emulated_regout\);

-- Location: LCFF_X8_Y24_N17
\s_deficit2[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[6]~27_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[6]~_emulated_regout\);

-- Location: LCFF_X2_Y20_N7
\s_deficit1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(5));

-- Location: LCFF_X2_Y20_N13
\s_deficit1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~39_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(4));

-- Location: LCFF_X2_Y20_N17
\s_deficit1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~40_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(3));

-- Location: LCFF_X2_Y20_N11
\s_deficit1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(2));

-- Location: LCFF_X2_Y20_N29
\s_deficit1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~42_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(1));

-- Location: LCFF_X2_Y20_N23
\s_deficit1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add1~43_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit1[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit1(0));

-- Location: LCCOMB_X1_Y24_N0
\s_deficit1[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[12]~3_combout\ = \s_deficit1[12]~1_combout\ $ (((\sched~4_combout\ & ((s_quantum1(6)))) # (!\sched~4_combout\ & (\Add1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \s_deficit1[12]~1_combout\,
	datac => \Add1~36_combout\,
	datad => s_quantum1(6),
	combout => \s_deficit1[12]~3_combout\);

-- Location: LCCOMB_X6_Y24_N6
\s_deficit1[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[12]~35_combout\ = (s_selector(1) & (!s_selector(0) & (\s_state.S1~regout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(1),
	datab => s_selector(0),
	datac => \s_state.S1~regout\,
	datad => \Equal2~0_combout\,
	combout => \s_deficit1[12]~35_combout\);

-- Location: LCCOMB_X2_Y24_N14
\s_deficit1[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[12]~36_combout\ = (\s_deficit1[12]~35_combout\ & ((\sched~4_combout\ & (!\Equal4~1_combout\)) # (!\sched~4_combout\ & (\Equal4~1_combout\ & \s_g1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \Equal4~1_combout\,
	datac => \s_g1~regout\,
	datad => \s_deficit1[12]~35_combout\,
	combout => \s_deficit1[12]~36_combout\);

-- Location: LCCOMB_X1_Y24_N16
\s_deficit1[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[11]~7_combout\ = \s_deficit1[11]~5_combout\ $ (((\sched~4_combout\ & (s_quantum1(5))) # (!\sched~4_combout\ & ((\Add1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[11]~5_combout\,
	datab => s_quantum1(5),
	datac => \sched~4_combout\,
	datad => \Add1~34_combout\,
	combout => \s_deficit1[11]~7_combout\);

-- Location: LCCOMB_X2_Y20_N0
\s_deficit1[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[10]~11_combout\ = \s_deficit1[10]~9_combout\ $ (((\sched~4_combout\ & (s_quantum1(4))) # (!\sched~4_combout\ & ((\Add1~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[10]~9_combout\,
	datab => s_quantum1(4),
	datac => \Add1~32_combout\,
	datad => \sched~4_combout\,
	combout => \s_deficit1[10]~11_combout\);

-- Location: LCCOMB_X2_Y20_N2
\s_deficit1[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[9]~15_combout\ = \s_deficit1[9]~13_combout\ $ (((\sched~4_combout\ & ((s_quantum1(3)))) # (!\sched~4_combout\ & (\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \Add1~30_combout\,
	datac => s_quantum1(3),
	datad => \s_deficit1[9]~13_combout\,
	combout => \s_deficit1[9]~15_combout\);

-- Location: LCCOMB_X2_Y20_N30
\s_deficit1[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[8]~19_combout\ = \s_deficit1[8]~17_combout\ $ (((\sched~4_combout\ & (s_quantum1(2))) # (!\sched~4_combout\ & ((\Add1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => s_quantum1(2),
	datac => \s_deficit1[8]~17_combout\,
	datad => \Add1~28_combout\,
	combout => \s_deficit1[8]~19_combout\);

-- Location: LCCOMB_X1_Y24_N18
\s_deficit1[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[7]~23_combout\ = \s_deficit1[7]~21_combout\ $ (((\sched~4_combout\ & (s_quantum1(1))) # (!\sched~4_combout\ & ((\Add1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \s_deficit1[7]~21_combout\,
	datac => s_quantum1(1),
	datad => \Add1~26_combout\,
	combout => \s_deficit1[7]~23_combout\);

-- Location: LCCOMB_X1_Y23_N16
\s_deficit1[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[6]~27_combout\ = \s_deficit1[6]~25_combout\ $ (((\sched~4_combout\ & ((s_quantum1(0)))) # (!\sched~4_combout\ & (\Add1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datab => \s_deficit1[6]~25_combout\,
	datac => \sched~4_combout\,
	datad => s_quantum1(0),
	combout => \s_deficit1[6]~27_combout\);

-- Location: LCFF_X2_Y23_N3
\s_deficit0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(5));

-- Location: LCFF_X2_Y23_N17
\s_deficit0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~39_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(4));

-- Location: LCFF_X2_Y23_N7
\s_deficit0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~40_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(3));

-- Location: LCFF_X2_Y23_N9
\s_deficit0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(2));

-- Location: LCFF_X2_Y23_N27
\s_deficit0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~42_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(1));

-- Location: LCFF_X2_Y23_N13
\s_deficit0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add0~43_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit0[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit0(0));

-- Location: LCCOMB_X2_Y23_N0
\sched~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~7_combout\ = (\in0_valid~combout\ & \in0_endofpacket~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \sched~7_combout\);

-- Location: LCCOMB_X2_Y24_N10
\s_deficit0[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[12]~3_combout\ = \s_deficit0[12]~1_combout\ $ (((\sched~7_combout\ & (s_quantum0(6))) # (!\sched~7_combout\ & ((\Add0~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[12]~1_combout\,
	datab => s_quantum0(6),
	datac => \Add0~36_combout\,
	datad => \sched~7_combout\,
	combout => \s_deficit0[12]~3_combout\);

-- Location: LCCOMB_X5_Y24_N10
\s_deficit0[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[12]~35_combout\ = (!\s_state.S0~regout\ & (s_selector(1) & (!s_selector(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S0~regout\,
	datab => s_selector(1),
	datac => s_selector(0),
	datad => \Equal2~0_combout\,
	combout => \s_deficit0[12]~35_combout\);

-- Location: LCCOMB_X2_Y23_N22
\s_deficit0[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[12]~36_combout\ = (\s_deficit0[12]~35_combout\ & ((\sched~7_combout\ & ((!\Equal3~1_combout\))) # (!\sched~7_combout\ & (\s_g0~regout\ & \Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g0~regout\,
	datab => \sched~7_combout\,
	datac => \s_deficit0[12]~35_combout\,
	datad => \Equal3~1_combout\,
	combout => \s_deficit0[12]~36_combout\);

-- Location: LCCOMB_X2_Y24_N6
\s_deficit0[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[11]~7_combout\ = \s_deficit0[11]~5_combout\ $ (((\sched~7_combout\ & (s_quantum0(5))) # (!\sched~7_combout\ & ((\Add0~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum0(5),
	datab => \sched~7_combout\,
	datac => \s_deficit0[11]~5_combout\,
	datad => \Add0~34_combout\,
	combout => \s_deficit0[11]~7_combout\);

-- Location: LCCOMB_X2_Y23_N30
\s_deficit0[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[10]~11_combout\ = \s_deficit0[10]~9_combout\ $ (((\sched~7_combout\ & (s_quantum0(4))) # (!\sched~7_combout\ & ((\Add0~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum0(4),
	datab => \Add0~32_combout\,
	datac => \sched~7_combout\,
	datad => \s_deficit0[10]~9_combout\,
	combout => \s_deficit0[10]~11_combout\);

-- Location: LCCOMB_X2_Y24_N2
\s_deficit0[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[9]~15_combout\ = \s_deficit0[9]~13_combout\ $ (((\sched~7_combout\ & (s_quantum0(3))) # (!\sched~7_combout\ & ((\Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum0(3),
	datab => \s_deficit0[9]~13_combout\,
	datac => \Add0~30_combout\,
	datad => \sched~7_combout\,
	combout => \s_deficit0[9]~15_combout\);

-- Location: LCCOMB_X2_Y24_N26
\s_deficit0[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[8]~19_combout\ = \s_deficit0[8]~17_combout\ $ (((\sched~7_combout\ & ((s_quantum0(2)))) # (!\sched~7_combout\ & (\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \sched~7_combout\,
	datac => \s_deficit0[8]~17_combout\,
	datad => s_quantum0(2),
	combout => \s_deficit0[8]~19_combout\);

-- Location: LCCOMB_X2_Y23_N24
\s_deficit0[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[7]~23_combout\ = \s_deficit0[7]~21_combout\ $ (((\sched~7_combout\ & (s_quantum0(1))) # (!\sched~7_combout\ & ((\Add0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[7]~21_combout\,
	datab => s_quantum0(1),
	datac => \sched~7_combout\,
	datad => \Add0~26_combout\,
	combout => \s_deficit0[7]~23_combout\);

-- Location: LCCOMB_X2_Y23_N20
\s_deficit0[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[6]~27_combout\ = \s_deficit0[6]~25_combout\ $ (((\sched~7_combout\ & ((s_quantum0(0)))) # (!\sched~7_combout\ & (\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~7_combout\,
	datab => \Add0~24_combout\,
	datac => s_quantum0(0),
	datad => \s_deficit0[6]~25_combout\,
	combout => \s_deficit0[6]~27_combout\);

-- Location: LCFF_X2_Y25_N13
\s_deficit3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add3~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(5));

-- Location: LCFF_X3_Y25_N17
\s_deficit3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add3~43_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(0));

-- Location: LCCOMB_X2_Y25_N8
\s_deficit3[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[9]~15_combout\ = \s_deficit3[9]~13_combout\ $ (((\sched~3_combout\ & (s_quantum3(3))) # (!\sched~3_combout\ & ((\Add3~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum3(3),
	datab => \sched~3_combout\,
	datac => \Add3~30_combout\,
	datad => \s_deficit3[9]~13_combout\,
	combout => \s_deficit3[9]~15_combout\);

-- Location: LCCOMB_X1_Y25_N24
\s_deficit3[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[6]~27_combout\ = \s_deficit3[6]~25_combout\ $ (((\sched~3_combout\ & (s_quantum3(0))) # (!\sched~3_combout\ & ((\Add3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum3(0),
	datab => \s_deficit3[6]~25_combout\,
	datac => \Add3~24_combout\,
	datad => \sched~3_combout\,
	combout => \s_deficit3[6]~27_combout\);

-- Location: LCFF_X8_Y24_N31
\s_deficit2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(2));

-- Location: LCCOMB_X8_Y24_N4
\s_deficit2[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[12]~3_combout\ = \s_deficit2[12]~1_combout\ $ (((\sched~5_combout\ & (s_quantum2(6))) # (!\sched~5_combout\ & ((\Add2~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum2(6),
	datab => \Add2~36_combout\,
	datac => \sched~5_combout\,
	datad => \s_deficit2[12]~1_combout\,
	combout => \s_deficit2[12]~3_combout\);

-- Location: LCCOMB_X8_Y24_N6
\s_deficit2[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[11]~7_combout\ = \s_deficit2[11]~5_combout\ $ (((\sched~5_combout\ & (s_quantum2(5))) # (!\sched~5_combout\ & ((\Add2~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum2(5),
	datab => \sched~5_combout\,
	datac => \Add2~34_combout\,
	datad => \s_deficit2[11]~5_combout\,
	combout => \s_deficit2[11]~7_combout\);

-- Location: LCCOMB_X7_Y24_N24
\s_deficit2[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[10]~11_combout\ = \s_deficit2[10]~9_combout\ $ (((\sched~5_combout\ & ((s_quantum2(4)))) # (!\sched~5_combout\ & (\Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~5_combout\,
	datab => \s_deficit2[10]~9_combout\,
	datac => \Add2~32_combout\,
	datad => s_quantum2(4),
	combout => \s_deficit2[10]~11_combout\);

-- Location: LCCOMB_X8_Y24_N20
\s_deficit2[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[8]~19_combout\ = \s_deficit2[8]~17_combout\ $ (((\sched~5_combout\ & ((s_quantum2(2)))) # (!\sched~5_combout\ & (\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~28_combout\,
	datab => \s_deficit2[8]~17_combout\,
	datac => \sched~5_combout\,
	datad => s_quantum2(2),
	combout => \s_deficit2[8]~19_combout\);

-- Location: LCCOMB_X8_Y24_N12
\s_deficit2[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[7]~23_combout\ = \s_deficit2[7]~21_combout\ $ (((\sched~5_combout\ & ((s_quantum2(1)))) # (!\sched~5_combout\ & (\Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[7]~21_combout\,
	datab => \Add2~26_combout\,
	datac => \sched~5_combout\,
	datad => s_quantum2(1),
	combout => \s_deficit2[7]~23_combout\);

-- Location: LCCOMB_X8_Y24_N16
\s_deficit2[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[6]~27_combout\ = \s_deficit2[6]~25_combout\ $ (((\sched~5_combout\ & ((s_quantum2(0)))) # (!\sched~5_combout\ & (\Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \sched~5_combout\,
	datac => \s_deficit2[6]~25_combout\,
	datad => s_quantum2(0),
	combout => \s_deficit2[6]~27_combout\);

-- Location: LCCOMB_X1_Y23_N20
\s_g0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~12_combout\ = (\s_g3~regout\ & (((\sched~3_combout\)))) # (!\s_g3~regout\ & (!\s_g1~regout\ & (!\s_g2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g1~regout\,
	datab => \s_g3~regout\,
	datac => \s_g2~regout\,
	datad => \sched~3_combout\,
	combout => \s_g0~12_combout\);

-- Location: LCCOMB_X1_Y23_N26
\s_g1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~7_combout\ = (\Selector12~2_combout\ & (((\arbiter~1_combout\) # (!\in1_valid~combout\)) # (!\in1_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datab => \Selector12~2_combout\,
	datac => \arbiter~1_combout\,
	datad => \in1_valid~combout\,
	combout => \s_g1~7_combout\);

-- Location: LCCOMB_X5_Y24_N30
\s_state~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~69_combout\ = ((\in3_startofpacket~combout\ & \in3_valid~combout\)) # (!\s_state.S3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \in3_startofpacket~combout\,
	datad => \in3_valid~combout\,
	combout => \s_state~69_combout\);

-- Location: LCCOMB_X4_Y23_N30
\s_state~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~71_combout\ = (!\s_state.S2~regout\ & (((\s_state.S1~regout\) # (!\in0_valid~combout\)) # (!\in0_startofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_startofpacket~combout\,
	datab => \in0_valid~combout\,
	datac => \s_state.S1~regout\,
	datad => \s_state.S2~regout\,
	combout => \s_state~71_combout\);

-- Location: LCCOMB_X4_Y24_N2
\s_state~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~72_combout\ = (!\s_state~41_combout\ & (((!\in3_valid~combout\) # (!\in3_startofpacket~combout\)) # (!\s_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \in3_startofpacket~combout\,
	datac => \in3_valid~combout\,
	datad => \s_state~41_combout\,
	combout => \s_state~72_combout\);

-- Location: LCCOMB_X1_Y20_N20
\Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\Add1~22_combout\ & ((!\in1_valid~combout\) # (!\in1_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datac => \Add1~22_combout\,
	datad => \in1_valid~combout\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X1_Y20_N26
\Add1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (\Add1~20_combout\ & ((!\in1_valid~combout\) # (!\in1_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datac => \Add1~20_combout\,
	datad => \in1_valid~combout\,
	combout => \Add1~39_combout\);

-- Location: LCCOMB_X1_Y20_N4
\Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (\Add1~18_combout\ & ((!\in1_valid~combout\) # (!\in1_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datac => \Add1~18_combout\,
	datad => \in1_valid~combout\,
	combout => \Add1~40_combout\);

-- Location: LCCOMB_X1_Y20_N30
\Add1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\Add1~16_combout\ & ((!\in1_valid~combout\) # (!\in1_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datac => \Add1~16_combout\,
	datad => \in1_valid~combout\,
	combout => \Add1~41_combout\);

-- Location: LCCOMB_X1_Y20_N0
\Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (\Add1~14_combout\ & ((!\in1_endofpacket~combout\) # (!\in1_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_valid~combout\,
	datac => \Add1~14_combout\,
	datad => \in1_endofpacket~combout\,
	combout => \Add1~42_combout\);

-- Location: LCCOMB_X1_Y20_N6
\Add1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (\Add1~12_combout\ & ((!\in1_endofpacket~combout\) # (!\in1_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_valid~combout\,
	datac => \Add1~12_combout\,
	datad => \in1_endofpacket~combout\,
	combout => \Add1~43_combout\);

-- Location: LCCOMB_X2_Y23_N2
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Add0~22_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X2_Y23_N16
\Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~20_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~39_combout\);

-- Location: LCCOMB_X2_Y23_N6
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\Add0~18_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~40_combout\);

-- Location: LCCOMB_X2_Y23_N8
\Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\Add0~16_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~14_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X2_Y23_N12
\Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (\Add0~12_combout\ & ((!\in0_endofpacket~combout\) # (!\in0_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \in0_valid~combout\,
	datad => \in0_endofpacket~combout\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X1_Y25_N4
\Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\Add3~22_combout\ & ((!\in3_endofpacket~combout\) # (!\in3_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_valid~combout\,
	datac => \in3_endofpacket~combout\,
	datad => \Add3~22_combout\,
	combout => \Add3~38_combout\);

-- Location: LCCOMB_X4_Y25_N14
\Add3~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~43_combout\ = (\Add3~12_combout\ & ((!\in3_valid~combout\) # (!\in3_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_endofpacket~combout\,
	datac => \Add3~12_combout\,
	datad => \in3_valid~combout\,
	combout => \Add3~43_combout\);

-- Location: LCCOMB_X8_Y24_N30
\Add2~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = (\Add2~16_combout\ & ((!\in2_endofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \in2_endofpacket~combout\,
	datad => \Add2~16_combout\,
	combout => \Add2~41_combout\);

-- Location: LCCOMB_X1_Y24_N24
\s_deficit1[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[11]~5_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[11]~5_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[11]~5_combout\,
	datac => s_quantum1(5),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit1[11]~5_combout\);

-- Location: LCCOMB_X2_Y24_N4
\s_deficit1[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[7]~21_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[7]~21_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[7]~21_combout\,
	datac => s_quantum1(1),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit1[7]~21_combout\);

-- Location: LCCOMB_X2_Y24_N20
\s_deficit0[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[12]~1_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[12]~1_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[12]~1_combout\,
	datac => s_quantum0(6),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit0[12]~1_combout\);

-- Location: LCCOMB_X1_Y24_N20
\s_deficit0[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[11]~5_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[11]~5_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[11]~5_combout\,
	datac => s_quantum0(5),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit0[11]~5_combout\);

-- Location: LCCOMB_X2_Y24_N22
\s_deficit0[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[10]~9_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[10]~9_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[10]~9_combout\,
	datac => s_quantum0(4),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit0[10]~9_combout\);

-- Location: LCCOMB_X2_Y24_N8
\s_deficit0[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[9]~13_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[9]~13_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit0[9]~13_combout\,
	datac => s_quantum0(3),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit0[9]~13_combout\);

-- Location: LCCOMB_X2_Y24_N30
\s_deficit0[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[8]~17_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[8]~17_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[8]~17_combout\,
	datac => s_quantum0(2),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit0[8]~17_combout\);

-- Location: LCCOMB_X1_Y23_N14
\s_deficit0[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[7]~21_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[7]~21_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[7]~21_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum0(1),
	combout => \s_deficit0[7]~21_combout\);

-- Location: LCCOMB_X3_Y23_N4
\s_deficit0[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit0[6]~25_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit0[6]~25_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum0(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit0[6]~25_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum0(0),
	combout => \s_deficit0[6]~25_combout\);

-- Location: LCCOMB_X2_Y25_N12
\s_deficit3[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[11]~5_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[11]~5_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[11]~5_combout\,
	datab => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum3(5),
	combout => \s_deficit3[11]~5_combout\);

-- Location: LCCOMB_X1_Y25_N20
\s_deficit3[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[6]~25_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[6]~25_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[6]~25_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum3(0),
	combout => \s_deficit3[6]~25_combout\);

-- Location: LCCOMB_X7_Y24_N4
\s_deficit2[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[12]~1_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[12]~1_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[12]~1_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum2(6),
	combout => \s_deficit2[12]~1_combout\);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(0),
	combout => \in2_data~combout\(0));

-- Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(1),
	combout => \in3_data~combout\(1));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(1),
	combout => \in0_data~combout\(1));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(2),
	combout => \in3_data~combout\(2));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(2),
	combout => \in0_data~combout\(2));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(3),
	combout => \in1_data~combout\(3));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(3),
	combout => \in0_data~combout\(3));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(4),
	combout => \in2_data~combout\(4));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(4),
	combout => \in0_data~combout\(4));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(5),
	combout => \in2_data~combout\(5));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(6),
	combout => \in1_data~combout\(6));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(6),
	combout => \in2_data~combout\(6));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(7),
	combout => \in1_data~combout\(7));

-- Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(7),
	combout => \in0_data~combout\(7));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(8),
	combout => \in1_data~combout\(8));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(8),
	combout => \in3_data~combout\(8));

-- Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(9),
	combout => \in3_data~combout\(9));

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(9),
	combout => \in0_data~combout\(9));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(10),
	combout => \in1_data~combout\(10));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(10),
	combout => \in2_data~combout\(10));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(11),
	combout => \in2_data~combout\(11));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(11),
	combout => \in1_data~combout\(11));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(12),
	combout => \in3_data~combout\(12));

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(12),
	combout => \in0_data~combout\(12));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(13),
	combout => \in2_data~combout\(13));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(13),
	combout => \in3_data~combout\(13));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(14),
	combout => \in1_data~combout\(14));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(14),
	combout => \in2_data~combout\(14));

-- Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(15),
	combout => \in2_data~combout\(15));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(15),
	combout => \in1_data~combout\(15));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(16),
	combout => \in3_data~combout\(16));

-- Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(17),
	combout => \in2_data~combout\(17));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(17),
	combout => \in3_data~combout\(17));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(18),
	combout => \in3_data~combout\(18));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(18),
	combout => \in0_data~combout\(18));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(19),
	combout => \in3_data~combout\(19));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(19),
	combout => \in0_data~combout\(19));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(20),
	combout => \in1_data~combout\(20));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(20),
	combout => \in3_data~combout\(20));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(21),
	combout => \in2_data~combout\(21));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(21),
	combout => \in3_data~combout\(21));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(22),
	combout => \in1_data~combout\(22));

-- Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(22),
	combout => \in3_data~combout\(22));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(23),
	combout => \in1_data~combout\(23));

-- Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(23),
	combout => \in0_data~combout\(23));

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(24),
	combout => \in2_data~combout\(24));

-- Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(24),
	combout => \in0_data~combout\(24));

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(25),
	combout => \in2_data~combout\(25));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(25),
	combout => \in3_data~combout\(25));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(26),
	combout => \in1_data~combout\(26));

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(26),
	combout => \in2_data~combout\(26));

-- Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(27),
	combout => \in3_data~combout\(27));

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(27),
	combout => \in0_data~combout\(27));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(28),
	combout => \in1_data~combout\(28));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(28),
	combout => \in3_data~combout\(28));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(29),
	combout => \in1_data~combout\(29));

-- Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(29),
	combout => \in0_data~combout\(29));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(30),
	combout => \in3_data~combout\(30));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(31),
	combout => \in3_data~combout\(31));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(31),
	combout => \in0_data~combout\(31));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(32),
	combout => \in2_data~combout\(32));

-- Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(32),
	combout => \in0_data~combout\(32));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(33),
	combout => \in3_data~combout\(33));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(33),
	combout => \in0_data~combout\(33));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(34),
	combout => \in1_data~combout\(34));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(34),
	combout => \in3_data~combout\(34));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(35),
	combout => \in3_data~combout\(35));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(36),
	combout => \in1_data~combout\(36));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(36),
	combout => \in2_data~combout\(36));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(37),
	combout => \in1_data~combout\(37));

-- Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(37),
	combout => \in0_data~combout\(37));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(38),
	combout => \in1_data~combout\(38));

-- Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(38),
	combout => \in3_data~combout\(38));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(39),
	combout => \in1_data~combout\(39));

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(40),
	combout => \in2_data~combout\(40));

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(40),
	combout => \in0_data~combout\(40));

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(41),
	combout => \in1_data~combout\(41));

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(42),
	combout => \in2_data~combout\(42));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(42),
	combout => \in0_data~combout\(42));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(43),
	combout => \in2_data~combout\(43));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(43),
	combout => \in3_data~combout\(43));

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(44),
	combout => \in1_data~combout\(44));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(44),
	combout => \in2_data~combout\(44));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(45),
	combout => \in3_data~combout\(45));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(46),
	combout => \in3_data~combout\(46));

-- Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(46),
	combout => \in0_data~combout\(46));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(47),
	combout => \in1_data~combout\(47));

-- Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(47),
	combout => \in0_data~combout\(47));

-- Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(48),
	combout => \in3_data~combout\(48));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(48),
	combout => \in0_data~combout\(48));

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(49),
	combout => \in2_data~combout\(49));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(49),
	combout => \in1_data~combout\(49));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(50),
	combout => \in2_data~combout\(50));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(50),
	combout => \in0_data~combout\(50));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(51),
	combout => \in2_data~combout\(51));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(51),
	combout => \in3_data~combout\(51));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(52),
	combout => \in3_data~combout\(52));

-- Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(52),
	combout => \in0_data~combout\(52));

-- Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(53),
	combout => \in1_data~combout\(53));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(53),
	combout => \in0_data~combout\(53));

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(54),
	combout => \in1_data~combout\(54));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(54),
	combout => \in2_data~combout\(54));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(55),
	combout => \in1_data~combout\(55));

-- Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(55),
	combout => \in0_data~combout\(55));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(56),
	combout => \in2_data~combout\(56));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(56),
	combout => \in0_data~combout\(56));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(57),
	combout => \in1_data~combout\(57));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(58),
	combout => \in3_data~combout\(58));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(58),
	combout => \in0_data~combout\(58));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(59),
	combout => \in3_data~combout\(59));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(59),
	combout => \in0_data~combout\(59));

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(60),
	combout => \in2_data~combout\(60));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(60),
	combout => \in0_data~combout\(60));

-- Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(61),
	combout => \in2_data~combout\(61));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(61),
	combout => \in1_data~combout\(61));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(62),
	combout => \in2_data~combout\(62));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(62),
	combout => \in3_data~combout\(62));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(63),
	combout => \in1_data~combout\(63));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(63),
	combout => \in0_data~combout\(63));

-- Location: PIN_AG2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_empty(0),
	combout => \in2_empty~combout\(0));

-- Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_empty(0),
	combout => \in0_empty~combout\(0));

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_empty(1),
	combout => \in2_empty~combout\(1));

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_empty(1),
	combout => \in3_empty~combout\(1));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_empty(2),
	combout => \in1_empty~combout\(2));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_empty(2),
	combout => \in2_empty~combout\(2));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_clk_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_clk_clk,
	combout => \csr_clk_clk~combout\);

-- Location: CLKCTRL_G1
\csr_clk_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \csr_clk_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \csr_clk_clk~clkctrl_outclk\);

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(0),
	combout => \csr_writedata~combout\(0));

-- Location: LCCOMB_X1_Y25_N0
\s_quantum3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_quantum3[0]~feeder_combout\ = \csr_writedata~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(0),
	combout => \s_quantum3[0]~feeder_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_reset_reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_reset_reset_n,
	combout => \csr_reset_reset_n~combout\);

-- Location: LCCOMB_X7_Y24_N30
\s_quantum3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_quantum3[0]~0_combout\ = (\csr_write~combout\ & \csr_reset_reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \csr_write~combout\,
	datad => \csr_reset_reset_n~combout\,
	combout => \s_quantum3[0]~0_combout\);

-- Location: LCFF_X1_Y25_N1
\s_quantum3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_quantum3[0]~feeder_combout\,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(1),
	combout => \csr_writedata~combout\(1));

-- Location: LCFF_X1_Y25_N7
\s_quantum3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(1),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(2),
	combout => \csr_writedata~combout\(2));

-- Location: LCFF_X2_Y25_N25
\s_quantum3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(2),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(2));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(3),
	combout => \csr_writedata~combout\(3));

-- Location: LCFF_X2_Y25_N11
\s_quantum3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(3),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(3));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(4),
	combout => \csr_writedata~combout\(4));

-- Location: LCFF_X1_Y25_N13
\s_quantum3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(4),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(4));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(5),
	combout => \csr_writedata~combout\(5));

-- Location: LCCOMB_X2_Y25_N28
\s_quantum3[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_quantum3[5]~feeder_combout\ = \csr_writedata~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(5),
	combout => \s_quantum3[5]~feeder_combout\);

-- Location: LCFF_X2_Y25_N29
\s_quantum3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_quantum3[5]~feeder_combout\,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(5));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(6),
	combout => \csr_writedata~combout\(6));

-- Location: LCFF_X2_Y25_N3
\s_quantum3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(6),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum3(6));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(7),
	combout => \csr_writedata~combout\(7));

-- Location: LCFF_X8_Y24_N9
\s_quantum2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(7),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(0));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(8),
	combout => \csr_writedata~combout\(8));

-- Location: LCFF_X7_Y24_N29
\s_quantum2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(8),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(1));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(9),
	combout => \csr_writedata~combout\(9));

-- Location: LCFF_X8_Y24_N19
\s_quantum2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(9),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(2));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(10),
	combout => \csr_writedata~combout\(10));

-- Location: LCFF_X7_Y24_N31
\s_quantum2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(10),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(3));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(11),
	combout => \csr_writedata~combout\(11));

-- Location: LCFF_X7_Y24_N13
\s_quantum2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(11),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(4));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(12),
	combout => \csr_writedata~combout\(12));

-- Location: LCFF_X7_Y24_N23
\s_quantum2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(12),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(5));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(13),
	combout => \csr_writedata~combout\(13));

-- Location: LCFF_X7_Y24_N1
\s_quantum2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(13),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum2(6));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(14),
	combout => \csr_writedata~combout\(14));

-- Location: LCFF_X1_Y23_N13
\s_quantum1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(14),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(0));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(15),
	combout => \csr_writedata~combout\(15));

-- Location: LCFF_X2_Y24_N5
\s_quantum1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(15),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(1));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(16),
	combout => \csr_writedata~combout\(16));

-- Location: LCFF_X1_Y25_N27
\s_quantum1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(16),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(2));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(17),
	combout => \csr_writedata~combout\(17));

-- Location: LCFF_X1_Y24_N9
\s_quantum1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(17),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(3));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(18),
	combout => \csr_writedata~combout\(18));

-- Location: LCFF_X1_Y24_N15
\s_quantum1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(18),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(4));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(19),
	combout => \csr_writedata~combout\(19));

-- Location: LCFF_X1_Y24_N25
\s_quantum1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(19),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(5));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(20),
	combout => \csr_writedata~combout\(20));

-- Location: LCFF_X1_Y24_N3
\s_quantum1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(20),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum1(6));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(21),
	combout => \csr_writedata~combout\(21));

-- Location: LCCOMB_X3_Y23_N0
\s_quantum0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_quantum0[0]~feeder_combout\ = \csr_writedata~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(21),
	combout => \s_quantum0[0]~feeder_combout\);

-- Location: LCFF_X3_Y23_N1
\s_quantum0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_quantum0[0]~feeder_combout\,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(0));

-- Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(22),
	combout => \csr_writedata~combout\(22));

-- Location: LCFF_X1_Y23_N31
\s_quantum0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(22),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(1));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(23),
	combout => \csr_writedata~combout\(23));

-- Location: LCFF_X2_Y24_N31
\s_quantum0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(23),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(2));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(24),
	combout => \csr_writedata~combout\(24));

-- Location: LCFF_X2_Y24_N9
\s_quantum0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(24),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(3));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(25),
	combout => \csr_writedata~combout\(25));

-- Location: LCFF_X2_Y24_N23
\s_quantum0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(25),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(4));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(26),
	combout => \csr_writedata~combout\(26));

-- Location: LCFF_X1_Y24_N21
\s_quantum0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(26),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(5));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(27),
	combout => \csr_writedata~combout\(27));

-- Location: LCFF_X2_Y24_N21
\s_quantum0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(27),
	sload => VCC,
	ena => \s_quantum3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_quantum0(6));

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(28),
	combout => \csr_writedata~combout\(28));

-- Location: CLKCTRL_G11
\csr_reset_reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \csr_reset_reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \csr_reset_reset_n~clkctrl_outclk\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_write~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_write,
	combout => \csr_write~combout\);

-- Location: LCFF_X5_Y24_N25
\s_selector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(28),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(0));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(29),
	combout => \csr_writedata~combout\(29));

-- Location: LCFF_X5_Y24_N31
\s_selector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(29),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(1));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(30),
	combout => \csr_writedata~combout\(30));

-- Location: LCFF_X5_Y24_N17
\s_selector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(30),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(2));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_writedata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_writedata(31),
	combout => \csr_writedata~combout\(31));

-- Location: LCFF_X5_Y24_N23
\s_selector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(31),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(3));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\out_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_out_ready,
	combout => \out_ready~combout\);

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_valid,
	combout => \in0_valid~combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_startofpacket,
	combout => \in1_startofpacket~combout\);

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_startofpacket,
	combout => \in3_startofpacket~combout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_valid,
	combout => \in3_valid~combout\);

-- Location: LCCOMB_X1_Y25_N26
\sched~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~2_combout\ = (\in3_startofpacket~combout\ & \in3_valid~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_startofpacket~combout\,
	datad => \in3_valid~combout\,
	combout => \sched~2_combout\);

-- Location: LCCOMB_X4_Y23_N28
\sched~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~0_combout\ = (\in0_startofpacket~combout\ & \in0_valid~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_startofpacket~combout\,
	datad => \in0_valid~combout\,
	combout => \sched~0_combout\);

-- Location: LCCOMB_X5_Y24_N6
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((s_selector(3)) # ((s_selector(2)) # (s_selector(1)))) # (!s_selector(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_selector(3),
	datac => s_selector(2),
	datad => s_selector(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X5_Y24_N4
\s_state~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~67_combout\ = (!\sched~0_combout\ & (!\Equal1~0_combout\ & ((!\in1_startofpacket~combout\) # (!\in1_valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_valid~combout\,
	datab => \sched~0_combout\,
	datac => \in1_startofpacket~combout\,
	datad => \Equal1~0_combout\,
	combout => \s_state~67_combout\);

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_valid,
	combout => \in2_valid~combout\);

-- Location: LCCOMB_X5_Y24_N28
\s_state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~30_combout\ = (!s_selector(0) & (s_selector(1) & (!s_selector(2) & !s_selector(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_selector(1),
	datac => s_selector(2),
	datad => s_selector(3),
	combout => \s_state~30_combout\);

-- Location: LCCOMB_X5_Y24_N2
\s_state~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~66_combout\ = (\in2_endofpacket~combout\ & (\in2_valid~combout\ & (\s_state.S2~regout\ & \s_state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_endofpacket~combout\,
	datab => \in2_valid~combout\,
	datac => \s_state.S2~regout\,
	datad => \s_state~30_combout\,
	combout => \s_state~66_combout\);

-- Location: LCCOMB_X5_Y24_N8
\s_state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~31_combout\ = (\s_state~66_combout\) # ((\s_state.S3~regout\ & (!\sched~2_combout\ & \s_state~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \sched~2_combout\,
	datac => \s_state~67_combout\,
	datad => \s_state~66_combout\,
	combout => \s_state~31_combout\);

-- Location: LCCOMB_X5_Y24_N14
\s_state~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~70_combout\ = (!\Equal1~0_combout\ & ((!\in1_startofpacket~combout\) # (!\in1_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_valid~combout\,
	datac => \in1_startofpacket~combout\,
	datad => \Equal1~0_combout\,
	combout => \s_state~70_combout\);

-- Location: LCCOMB_X3_Y24_N18
\s_state~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~65_combout\ = (\s_state~64_combout\ & (\s_state~51_combout\ & (\s_state.S0~regout\))) # (!\s_state~64_combout\ & ((\s_state~50_combout\) # ((\s_state~51_combout\ & \s_state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~64_combout\,
	datab => \s_state~51_combout\,
	datac => \s_state.S0~regout\,
	datad => \s_state~50_combout\,
	combout => \s_state~65_combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_reset_n,
	combout => \reset_reset_n~combout\);

-- Location: CLKCTRL_G2
\reset_reset_n~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_reset_n~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_reset_n~clkctrl_outclk\);

-- Location: LCFF_X3_Y24_N19
\s_state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state~65_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S0~regout\);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_endofpacket,
	combout => \in0_endofpacket~combout\);

-- Location: LCCOMB_X4_Y24_N30
\s_state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~37_combout\ = (\in0_valid~combout\ & (!\s_state.S0~regout\ & (\in0_endofpacket~combout\ & \s_state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_valid~combout\,
	datab => \s_state.S0~regout\,
	datac => \in0_endofpacket~combout\,
	datad => \s_state~30_combout\,
	combout => \s_state~37_combout\);

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_valid,
	combout => \in1_valid~combout\);

-- Location: LCCOMB_X1_Y23_N30
\sched~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~4_combout\ = (\in1_endofpacket~combout\ & \in1_valid~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_endofpacket~combout\,
	datad => \in1_valid~combout\,
	combout => \sched~4_combout\);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_startofpacket,
	combout => \in2_startofpacket~combout\);

-- Location: LCCOMB_X5_Y24_N26
\s_state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~29_combout\ = (\s_state.S2~regout\ & ((!\in2_startofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \s_state.S2~regout\,
	datad => \in2_startofpacket~combout\,
	combout => \s_state~29_combout\);

-- Location: LCCOMB_X5_Y24_N18
\s_state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~34_combout\ = (!\sched~2_combout\ & (\s_state~29_combout\ & (!\sched~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_state~29_combout\,
	datac => \sched~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_state~34_combout\);

-- Location: LCCOMB_X4_Y24_N12
\s_state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~35_combout\ = (\s_state~34_combout\) # ((\s_state.S1~regout\ & (\s_state~30_combout\ & \sched~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S1~regout\,
	datab => \s_state~30_combout\,
	datac => \sched~4_combout\,
	datad => \s_state~34_combout\,
	combout => \s_state~35_combout\);

-- Location: LCCOMB_X4_Y24_N20
\s_state~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~68_combout\ = (!\s_state~38_combout\ & (!\s_state~37_combout\ & (!\s_state~31_combout\ & !\s_state~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~38_combout\,
	datab => \s_state~37_combout\,
	datac => \s_state~31_combout\,
	datad => \s_state~35_combout\,
	combout => \s_state~68_combout\);

-- Location: LCCOMB_X4_Y24_N14
\s_state~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~39_combout\ = (\s_state~38_combout\) # (\s_state~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_state~38_combout\,
	datad => \s_state~37_combout\,
	combout => \s_state~39_combout\);

-- Location: LCCOMB_X1_Y25_N18
\s_deficit1[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[8]~17_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[8]~17_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[8]~17_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum1(2),
	combout => \s_deficit1[8]~17_combout\);

-- Location: LCCOMB_X1_Y24_N28
\s_deficit1[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[8]~18_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[8]~_emulated_regout\ $ ((\s_deficit1[8]~17_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[8]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[8]~17_combout\,
	datad => s_quantum1(2),
	combout => \s_deficit1[8]~18_combout\);

-- Location: LCCOMB_X1_Y23_N4
\s_deficit1[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[6]~25_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[6]~25_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[6]~25_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum1(0),
	combout => \s_deficit1[6]~25_combout\);

-- Location: LCCOMB_X1_Y23_N2
\s_deficit1[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[6]~26_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[6]~_emulated_regout\ $ ((\s_deficit1[6]~25_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[6]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[6]~25_combout\,
	datad => s_quantum1(0),
	combout => \s_deficit1[6]~26_combout\);

-- Location: LCCOMB_X1_Y24_N2
\s_deficit1[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[12]~1_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[12]~1_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[12]~1_combout\,
	datac => s_quantum1(6),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit1[12]~1_combout\);

-- Location: LCCOMB_X1_Y24_N26
\s_deficit1[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[12]~2_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[12]~_emulated_regout\ $ ((\s_deficit1[12]~1_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[12]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[12]~1_combout\,
	datad => s_quantum1(6),
	combout => \s_deficit1[12]~2_combout\);

-- Location: LCCOMB_X1_Y24_N14
\s_deficit1[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[10]~9_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[10]~9_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[10]~9_combout\,
	datac => s_quantum1(4),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit1[10]~9_combout\);

-- Location: LCCOMB_X1_Y24_N4
\s_deficit1[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[10]~10_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[10]~_emulated_regout\ $ (((\s_deficit1[10]~9_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum1(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[10]~_emulated_regout\,
	datab => s_quantum1(4),
	datac => \s_deficit1[10]~9_combout\,
	datad => \reset_reset_n~combout\,
	combout => \s_deficit1[10]~10_combout\);

-- Location: LCCOMB_X1_Y24_N8
\s_deficit1[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[9]~13_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit1[9]~13_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit1[9]~13_combout\,
	datac => s_quantum1(3),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit1[9]~13_combout\);

-- Location: LCCOMB_X1_Y24_N22
\s_deficit1[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit1[9]~14_combout\ = (\reset_reset_n~combout\ & (\s_deficit1[9]~_emulated_regout\ $ ((\s_deficit1[9]~13_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[9]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit1[9]~13_combout\,
	datad => s_quantum1(3),
	combout => \s_deficit1[9]~14_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\s_deficit1[11]~6_combout\) # ((\s_deficit1[12]~2_combout\) # ((\s_deficit1[10]~10_combout\) # (\s_deficit1[9]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[11]~6_combout\,
	datab => \s_deficit1[12]~2_combout\,
	datac => \s_deficit1[10]~10_combout\,
	datad => \s_deficit1[9]~14_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X2_Y24_N18
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\s_deficit1[7]~22_combout\) # ((\s_deficit1[8]~18_combout\) # ((\s_deficit1[6]~26_combout\) # (\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit1[7]~22_combout\,
	datab => \s_deficit1[8]~18_combout\,
	datac => \s_deficit1[6]~26_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X3_Y24_N20
\s_state~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~43_combout\ = (\s_state~35_combout\ & (((\Equal4~1_combout\)))) # (!\s_state~35_combout\ & (\Equal3~1_combout\ & (\s_state~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \s_state~35_combout\,
	datac => \s_state~39_combout\,
	datad => \Equal4~1_combout\,
	combout => \s_state~43_combout\);

-- Location: LCCOMB_X2_Y25_N24
\s_deficit3[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[8]~17_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[8]~17_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[8]~17_combout\,
	datac => s_quantum3(2),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit3[8]~17_combout\);

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_endofpacket,
	combout => \in3_endofpacket~combout\);

-- Location: LCCOMB_X1_Y25_N6
\sched~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~3_combout\ = (\in3_endofpacket~combout\ & \in3_valid~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_endofpacket~combout\,
	datad => \in3_valid~combout\,
	combout => \sched~3_combout\);

-- Location: LCCOMB_X2_Y25_N16
\s_deficit3[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[8]~19_combout\ = \s_deficit3[8]~17_combout\ $ (((\sched~3_combout\ & ((s_quantum3(2)))) # (!\sched~3_combout\ & (\Add3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~28_combout\,
	datab => s_quantum3(2),
	datac => \s_deficit3[8]~17_combout\,
	datad => \sched~3_combout\,
	combout => \s_deficit3[8]~19_combout\);

-- Location: LCCOMB_X5_Y24_N16
\sched~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~6_combout\ = (\in1_startofpacket~combout\ & \in1_valid~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_startofpacket~combout\,
	datad => \in1_valid~combout\,
	combout => \sched~6_combout\);

-- Location: LCCOMB_X4_Y23_N14
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\sched~6_combout\ & ((\s_state.S1~regout\) # ((!\sched~0_combout\ & !\s_state.S0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~0_combout\,
	datab => \s_state.S1~regout\,
	datac => \s_state.S0~regout\,
	datad => \sched~6_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X7_Y24_N0
\sched~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~1_combout\ = (\in2_valid~combout\ & \in2_startofpacket~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datad => \in2_startofpacket~combout\,
	combout => \sched~1_combout\);

-- Location: LCCOMB_X3_Y24_N0
\s_state~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~52_combout\ = (\s_state~42_combout\ & ((\s_state~50_combout\) # ((\s_state~51_combout\ & \s_state.S3~regout\)))) # (!\s_state~42_combout\ & (\s_state~51_combout\ & (\s_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~42_combout\,
	datab => \s_state~51_combout\,
	datac => \s_state.S3~regout\,
	datad => \s_state~50_combout\,
	combout => \s_state~52_combout\);

-- Location: LCFF_X3_Y24_N1
\s_state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state~52_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S3~regout\);

-- Location: LCCOMB_X4_Y23_N8
\s_g3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g3~0_combout\ = (\s_state.S3~regout\) # ((!\sched~1_combout\ & ((\s_state.S2~regout\) # (\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S2~regout\,
	datab => \Selector15~0_combout\,
	datac => \sched~1_combout\,
	datad => \s_state.S3~regout\,
	combout => \s_g3~0_combout\);

-- Location: LCCOMB_X4_Y23_N6
\arbiter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \arbiter~1_combout\ = (\in0_endofpacket~combout\ & (\in0_valid~combout\ & \s_g0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_endofpacket~combout\,
	datab => \in0_valid~combout\,
	datac => \s_g0~regout\,
	combout => \arbiter~1_combout\);

-- Location: LCCOMB_X1_Y23_N6
\s_g1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~3_combout\ = (\s_g1~2_combout\) # ((\arbiter~1_combout\) # (!\s_g0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g1~2_combout\,
	datac => \arbiter~1_combout\,
	datad => \s_g0~6_combout\,
	combout => \s_g1~3_combout\);

-- Location: LCCOMB_X4_Y24_N0
\s_g0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~8_combout\ = (\s_state.S0~regout\ & (((\in3_startofpacket~combout\ & \in3_valid~combout\)) # (!\s_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \in3_startofpacket~combout\,
	datac => \in3_valid~combout\,
	datad => \s_state.S0~regout\,
	combout => \s_g0~8_combout\);

-- Location: LCCOMB_X4_Y23_N4
\s_g2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g2~0_combout\ = (!\sched~6_combout\ & ((\s_state.S1~regout\) # ((!\sched~0_combout\ & !\s_g0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~0_combout\,
	datab => \s_g0~8_combout\,
	datac => \s_state.S1~regout\,
	datad => \sched~6_combout\,
	combout => \s_g2~0_combout\);

-- Location: LCCOMB_X5_Y23_N2
\s_g2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g2~1_combout\ = (\sched~1_combout\ & (\s_g1~3_combout\ & ((\s_g2~0_combout\) # (\s_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~1_combout\,
	datab => \s_g2~0_combout\,
	datac => \s_g1~3_combout\,
	datad => \s_state.S2~regout\,
	combout => \s_g2~1_combout\);

-- Location: LCCOMB_X5_Y23_N4
\s_g2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g2~4_combout\ = (\s_g2~1_combout\) # ((\s_g2~regout\ & ((\s_g2~3_combout\) # (!\s_g1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g2~3_combout\,
	datab => \s_g1~3_combout\,
	datac => \s_g2~regout\,
	datad => \s_g2~1_combout\,
	combout => \s_g2~4_combout\);

-- Location: LCFF_X5_Y23_N5
s_g2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_g2~4_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_g2~regout\);

-- Location: LCCOMB_X4_Y23_N20
\s_g1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~4_combout\ = ((!\sched~2_combout\ & ((\s_state.S3~regout\) # (\s_state~29_combout\)))) # (!\s_state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_state.S3~regout\,
	datac => \s_state.S0~regout\,
	datad => \s_state~29_combout\,
	combout => \s_g1~4_combout\);

-- Location: LCCOMB_X4_Y23_N26
\s_g1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~5_combout\ = (\sched~6_combout\ & ((\s_state.S1~regout\) # ((!\sched~0_combout\ & \s_g1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~0_combout\,
	datab => \s_state.S1~regout\,
	datac => \s_g1~4_combout\,
	datad => \sched~6_combout\,
	combout => \s_g1~5_combout\);

-- Location: LCCOMB_X5_Y23_N14
\s_g1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g1~6_combout\ = (\s_g1~3_combout\ & ((\s_g1~5_combout\) # ((\s_g1~7_combout\ & \s_g1~regout\)))) # (!\s_g1~3_combout\ & (((\s_g1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g1~7_combout\,
	datab => \s_g1~3_combout\,
	datac => \s_g1~regout\,
	datad => \s_g1~5_combout\,
	combout => \s_g1~6_combout\);

-- Location: LCFF_X5_Y23_N15
s_g1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_g1~6_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_g1~regout\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_endofpacket,
	combout => \in2_endofpacket~combout\);

-- Location: LCCOMB_X7_Y24_N12
\sched~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \sched~5_combout\ = (\in2_valid~combout\ & \in2_endofpacket~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datad => \in2_endofpacket~combout\,
	combout => \sched~5_combout\);

-- Location: LCCOMB_X2_Y23_N18
\s_g0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~6_combout\ = (\sched~4_combout\ & (!\s_g1~regout\ & ((!\sched~5_combout\) # (!\s_g2~regout\)))) # (!\sched~4_combout\ & (((!\sched~5_combout\)) # (!\s_g2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~4_combout\,
	datab => \s_g2~regout\,
	datac => \s_g1~regout\,
	datad => \sched~5_combout\,
	combout => \s_g0~6_combout\);

-- Location: LCCOMB_X1_Y23_N8
\s_g3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g3~1_combout\ = (\sched~3_combout\ & (\s_g0~6_combout\ & (!\arbiter~1_combout\ & \s_g3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~3_combout\,
	datab => \s_g0~6_combout\,
	datac => \arbiter~1_combout\,
	datad => \s_g3~regout\,
	combout => \s_g3~1_combout\);

-- Location: LCCOMB_X2_Y23_N10
\Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\s_state.S1~regout\) # (((\s_state.S2~regout\) # (\s_state.S3~regout\)) # (!\s_state.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S1~regout\,
	datab => \s_state.S0~regout\,
	datac => \s_state.S2~regout\,
	datad => \s_state.S3~regout\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X1_Y23_N18
\s_g3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g3~2_combout\ = (\s_g1~3_combout\ & (((\s_g3~1_combout\) # (!\Selector12~2_combout\)) # (!\s_g3~regout\))) # (!\s_g1~3_combout\ & (!\s_g3~regout\ & (\s_g3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g1~3_combout\,
	datab => \s_g3~regout\,
	datac => \s_g3~1_combout\,
	datad => \Selector12~2_combout\,
	combout => \s_g3~2_combout\);

-- Location: LCCOMB_X4_Y23_N22
\s_g3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g3~3_combout\ = (\s_g3~2_combout\ & (\sched~2_combout\ & (\s_g3~0_combout\))) # (!\s_g3~2_combout\ & (((\s_g3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~2_combout\,
	datab => \s_g3~0_combout\,
	datac => \s_g3~regout\,
	datad => \s_g3~2_combout\,
	combout => \s_g3~3_combout\);

-- Location: LCFF_X4_Y23_N23
s_g3 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_g3~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_g3~regout\);

-- Location: LCCOMB_X5_Y24_N12
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!s_selector(2) & !s_selector(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_selector(2),
	datad => s_selector(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X5_Y24_N0
\s_deficit3[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[12]~35_combout\ = (\s_state.S3~regout\ & (s_selector(1) & (!s_selector(0) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => s_selector(1),
	datac => s_selector(0),
	datad => \Equal2~0_combout\,
	combout => \s_deficit3[12]~35_combout\);

-- Location: LCCOMB_X2_Y25_N26
\s_deficit3[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[12]~36_combout\ = (\s_deficit3[12]~35_combout\ & ((\sched~3_combout\ & (!\Equal6~1_combout\)) # (!\sched~3_combout\ & (\Equal6~1_combout\ & \s_g3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~3_combout\,
	datab => \Equal6~1_combout\,
	datac => \s_g3~regout\,
	datad => \s_deficit3[12]~35_combout\,
	combout => \s_deficit3[12]~36_combout\);

-- Location: LCFF_X2_Y25_N17
\s_deficit3[8]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[8]~19_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[8]~_emulated_regout\);

-- Location: LCCOMB_X2_Y25_N30
\s_deficit3[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[8]~18_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[8]~_emulated_regout\ $ ((\s_deficit3[8]~17_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_reset_n~combout\,
	datab => \s_deficit3[8]~_emulated_regout\,
	datac => \s_deficit3[8]~17_combout\,
	datad => s_quantum3(2),
	combout => \s_deficit3[8]~18_combout\);

-- Location: LCCOMB_X1_Y25_N10
\s_deficit3[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[7]~21_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[7]~21_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[7]~21_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum3(1),
	combout => \s_deficit3[7]~21_combout\);

-- Location: LCCOMB_X1_Y25_N8
\s_deficit3[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[7]~23_combout\ = \s_deficit3[7]~21_combout\ $ (((\sched~3_combout\ & ((s_quantum3(1)))) # (!\sched~3_combout\ & (\Add3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~26_combout\,
	datab => \sched~3_combout\,
	datac => s_quantum3(1),
	datad => \s_deficit3[7]~21_combout\,
	combout => \s_deficit3[7]~23_combout\);

-- Location: LCFF_X1_Y25_N9
\s_deficit3[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[7]~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[7]~_emulated_regout\);

-- Location: LCCOMB_X1_Y25_N22
\s_deficit3[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[7]~22_combout\ = (\reset_reset_n~combout\ & ((\s_deficit3[7]~_emulated_regout\ $ (\s_deficit3[7]~21_combout\)))) # (!\reset_reset_n~combout\ & (s_quantum3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_quantum3(1),
	datab => \reset_reset_n~combout\,
	datac => \s_deficit3[7]~_emulated_regout\,
	datad => \s_deficit3[7]~21_combout\,
	combout => \s_deficit3[7]~22_combout\);

-- Location: LCCOMB_X2_Y25_N2
\s_deficit3[12]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[12]~1_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[12]~1_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[12]~1_combout\,
	datac => s_quantum3(6),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit3[12]~1_combout\);

-- Location: LCCOMB_X1_Y25_N28
\s_deficit3[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[10]~9_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[10]~9_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[10]~9_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum3(4),
	combout => \s_deficit3[10]~9_combout\);

-- Location: LCCOMB_X1_Y25_N16
\s_deficit3[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[10]~11_combout\ = \s_deficit3[10]~9_combout\ $ (((\sched~3_combout\ & ((s_quantum3(4)))) # (!\sched~3_combout\ & (\Add3~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datab => \s_deficit3[10]~9_combout\,
	datac => s_quantum3(4),
	datad => \sched~3_combout\,
	combout => \s_deficit3[10]~11_combout\);

-- Location: LCFF_X1_Y25_N17
\s_deficit3[10]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[10]~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[10]~_emulated_regout\);

-- Location: LCCOMB_X1_Y25_N2
\s_deficit3[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[10]~10_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[10]~_emulated_regout\ $ (((\s_deficit3[10]~9_combout\))))) # (!\reset_reset_n~combout\ & (((s_quantum3(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_reset_n~combout\,
	datab => \s_deficit3[10]~_emulated_regout\,
	datac => s_quantum3(4),
	datad => \s_deficit3[10]~9_combout\,
	combout => \s_deficit3[10]~10_combout\);

-- Location: LCCOMB_X2_Y25_N10
\s_deficit3[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[9]~13_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit3[9]~13_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[9]~13_combout\,
	datac => s_quantum3(3),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit3[9]~13_combout\);

-- Location: LCCOMB_X2_Y25_N6
\s_deficit3[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[9]~14_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[9]~_emulated_regout\ $ ((\s_deficit3[9]~13_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum3(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[9]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit3[9]~13_combout\,
	datad => s_quantum3(3),
	combout => \s_deficit3[9]~14_combout\);

-- Location: LCCOMB_X3_Y25_N8
\Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (s_deficit3(1) & (\Add3~13\ & VCC)) # (!s_deficit3(1) & (!\Add3~13\))
-- \Add3~15\ = CARRY((!s_deficit3(1) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit3(1),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X4_Y25_N12
\Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Add3~14_combout\ & ((!\in3_endofpacket~combout\) # (!\in3_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_valid~combout\,
	datac => \in3_endofpacket~combout\,
	datad => \Add3~14_combout\,
	combout => \Add3~42_combout\);

-- Location: LCFF_X3_Y25_N29
\s_deficit3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \Add3~42_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(1));

-- Location: LCCOMB_X3_Y25_N10
\Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (s_deficit3(2) & ((GND) # (!\Add3~15\))) # (!s_deficit3(2) & (\Add3~15\ $ (GND)))
-- \Add3~17\ = CARRY((s_deficit3(2)) # (!\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit3(2),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X3_Y25_N0
\Add3~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~41_combout\ = (\Add3~16_combout\ & ((!\in3_endofpacket~combout\) # (!\in3_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_valid~combout\,
	datac => \in3_endofpacket~combout\,
	datad => \Add3~16_combout\,
	combout => \Add3~41_combout\);

-- Location: LCFF_X3_Y25_N1
\s_deficit3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add3~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(2));

-- Location: LCCOMB_X3_Y25_N12
\Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (s_deficit3(3) & (\Add3~17\ & VCC)) # (!s_deficit3(3) & (!\Add3~17\))
-- \Add3~19\ = CARRY((!s_deficit3(3) & !\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit3(3),
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X3_Y25_N2
\Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\Add3~18_combout\ & ((!\in3_endofpacket~combout\) # (!\in3_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_valid~combout\,
	datac => \in3_endofpacket~combout\,
	datad => \Add3~18_combout\,
	combout => \Add3~40_combout\);

-- Location: LCFF_X3_Y25_N3
\s_deficit3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add3~40_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(3));

-- Location: LCCOMB_X3_Y25_N14
\Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (s_deficit3(4) & ((GND) # (!\Add3~19\))) # (!s_deficit3(4) & (\Add3~19\ $ (GND)))
-- \Add3~21\ = CARRY((s_deficit3(4)) # (!\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit3(4),
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X3_Y25_N4
\Add3~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~39_combout\ = (\Add3~20_combout\ & ((!\in3_endofpacket~combout\) # (!\in3_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in3_valid~combout\,
	datac => \Add3~20_combout\,
	datad => \in3_endofpacket~combout\,
	combout => \Add3~39_combout\);

-- Location: LCFF_X3_Y25_N5
\s_deficit3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add3~39_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit3(4));

-- Location: LCCOMB_X3_Y25_N28
\Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\s_deficit3[11]~6_combout\ & (\Add3~33\ & VCC)) # (!\s_deficit3[11]~6_combout\ & (!\Add3~33\))
-- \Add3~35\ = CARRY((!\s_deficit3[11]~6_combout\ & !\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit3[11]~6_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X2_Y25_N20
\s_deficit3[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[11]~7_combout\ = \s_deficit3[11]~5_combout\ $ (((\sched~3_combout\ & ((s_quantum3(5)))) # (!\sched~3_combout\ & (\Add3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[11]~5_combout\,
	datab => \Add3~34_combout\,
	datac => s_quantum3(5),
	datad => \sched~3_combout\,
	combout => \s_deficit3[11]~7_combout\);

-- Location: LCFF_X2_Y25_N21
\s_deficit3[11]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[11]~7_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[11]~_emulated_regout\);

-- Location: LCCOMB_X2_Y25_N14
\s_deficit3[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[11]~6_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[11]~5_combout\ $ ((\s_deficit3[11]~_emulated_regout\)))) # (!\reset_reset_n~combout\ & (((s_quantum3(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[11]~5_combout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit3[11]~_emulated_regout\,
	datad => s_quantum3(5),
	combout => \s_deficit3[11]~6_combout\);

-- Location: LCCOMB_X3_Y25_N30
\Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = \Add3~35\ $ (\s_deficit3[12]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \s_deficit3[12]~2_combout\,
	cin => \Add3~35\,
	combout => \Add3~36_combout\);

-- Location: LCCOMB_X2_Y25_N4
\s_deficit3[12]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[12]~3_combout\ = \s_deficit3[12]~1_combout\ $ (((\sched~3_combout\ & (s_quantum3(6))) # (!\sched~3_combout\ & ((\Add3~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~3_combout\,
	datab => s_quantum3(6),
	datac => \s_deficit3[12]~1_combout\,
	datad => \Add3~36_combout\,
	combout => \s_deficit3[12]~3_combout\);

-- Location: LCFF_X2_Y25_N5
\s_deficit3[12]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit3[12]~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit3[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit3[12]~_emulated_regout\);

-- Location: LCCOMB_X2_Y25_N22
\s_deficit3[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit3[12]~2_combout\ = (\reset_reset_n~combout\ & (\s_deficit3[12]~_emulated_regout\ $ ((\s_deficit3[12]~1_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum3(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_reset_n~combout\,
	datab => \s_deficit3[12]~_emulated_regout\,
	datac => \s_deficit3[12]~1_combout\,
	datad => s_quantum3(6),
	combout => \s_deficit3[12]~2_combout\);

-- Location: LCCOMB_X2_Y25_N0
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\s_deficit3[9]~14_combout\) # ((\s_deficit3[12]~2_combout\) # ((\s_deficit3[11]~6_combout\) # (\s_deficit3[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[9]~14_combout\,
	datab => \s_deficit3[12]~2_combout\,
	datac => \s_deficit3[11]~6_combout\,
	datad => \s_deficit3[10]~10_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X2_Y25_N18
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\s_deficit3[6]~26_combout\) # ((\s_deficit3[8]~18_combout\) # ((\s_deficit3[7]~22_combout\) # (\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit3[6]~26_combout\,
	datab => \s_deficit3[8]~18_combout\,
	datac => \s_deficit3[7]~22_combout\,
	datad => \Equal6~0_combout\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X4_Y24_N4
\s_state~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~40_combout\ = (\s_state.S3~regout\ & (\in3_endofpacket~combout\ & (\in3_valid~combout\ & \s_state~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \in3_endofpacket~combout\,
	datac => \in3_valid~combout\,
	datad => \s_state~30_combout\,
	combout => \s_state~40_combout\);

-- Location: LCCOMB_X4_Y24_N18
\s_state~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~41_combout\ = (\s_state~40_combout\) # ((!\sched~1_combout\ & (!\s_state.S0~regout\ & \s_state~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~1_combout\,
	datab => \s_state.S0~regout\,
	datac => \s_state~40_combout\,
	datad => \s_state~67_combout\,
	combout => \s_state~41_combout\);

-- Location: LCCOMB_X3_Y24_N2
\s_state~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~45_combout\ = (\Equal1~0_combout\ & (((\Equal6~1_combout\) # (!\s_state~41_combout\)))) # (!\Equal1~0_combout\ & (!\sched~2_combout\ & ((\s_state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \sched~2_combout\,
	datac => \Equal6~1_combout\,
	datad => \s_state~41_combout\,
	combout => \s_state~45_combout\);

-- Location: LCCOMB_X3_Y24_N24
\s_state~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~46_combout\ = (\s_state~44_combout\ & ((\s_state~43_combout\) # ((\s_state~68_combout\ & \s_state~45_combout\)))) # (!\s_state~44_combout\ & (\s_state~68_combout\ & ((\s_state~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~44_combout\,
	datab => \s_state~68_combout\,
	datac => \s_state~43_combout\,
	datad => \s_state~45_combout\,
	combout => \s_state~46_combout\);

-- Location: LCCOMB_X8_Y24_N18
\s_deficit2[8]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[8]~17_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[8]~17_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[8]~17_combout\,
	datac => s_quantum2(2),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit2[8]~17_combout\);

-- Location: LCCOMB_X8_Y24_N2
\s_deficit2[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[8]~18_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[8]~_emulated_regout\ $ ((\s_deficit2[8]~17_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[8]~_emulated_regout\,
	datab => \s_deficit2[8]~17_combout\,
	datac => \reset_reset_n~combout\,
	datad => s_quantum2(2),
	combout => \s_deficit2[8]~18_combout\);

-- Location: LCCOMB_X8_Y24_N8
\s_deficit2[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[6]~25_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[6]~25_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[6]~25_combout\,
	datac => s_quantum2(0),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit2[6]~25_combout\);

-- Location: LCCOMB_X8_Y24_N22
\s_deficit2[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[6]~26_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[6]~_emulated_regout\ $ ((\s_deficit2[6]~25_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[6]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit2[6]~25_combout\,
	datad => s_quantum2(0),
	combout => \s_deficit2[6]~26_combout\);

-- Location: LCCOMB_X7_Y24_N6
\s_deficit2[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[7]~21_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[7]~21_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[7]~21_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum2(1),
	combout => \s_deficit2[7]~21_combout\);

-- Location: LCCOMB_X8_Y24_N26
\s_deficit2[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[7]~22_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[7]~_emulated_regout\ $ ((\s_deficit2[7]~21_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[7]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit2[7]~21_combout\,
	datad => s_quantum2(1),
	combout => \s_deficit2[7]~22_combout\);

-- Location: LCCOMB_X9_Y24_N0
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = s_deficit2(0) $ (VCC)
-- \Add2~13\ = CARRY(s_deficit2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_deficit2(0),
	datad => VCC,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X9_Y24_N26
\Add2~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~43_combout\ = (\Add2~12_combout\ & ((!\in2_endofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \in2_endofpacket~combout\,
	datad => \Add2~12_combout\,
	combout => \Add2~43_combout\);

-- Location: LCCOMB_X6_Y24_N16
\s_deficit2[12]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[12]~35_combout\ = (s_selector(1) & (!s_selector(0) & (\s_state.S2~regout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(1),
	datab => s_selector(0),
	datac => \s_state.S2~regout\,
	datad => \Equal2~0_combout\,
	combout => \s_deficit2[12]~35_combout\);

-- Location: LCCOMB_X8_Y24_N14
\s_deficit2[12]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[12]~36_combout\ = (\s_deficit2[12]~35_combout\ & ((\Equal5~1_combout\ & (\s_g2~regout\ & !\sched~5_combout\)) # (!\Equal5~1_combout\ & ((\sched~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g2~regout\,
	datab => \Equal5~1_combout\,
	datac => \sched~5_combout\,
	datad => \s_deficit2[12]~35_combout\,
	combout => \s_deficit2[12]~36_combout\);

-- Location: LCFF_X9_Y24_N27
\s_deficit2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~43_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(0));

-- Location: LCCOMB_X9_Y24_N2
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (s_deficit2(1) & (\Add2~13\ & VCC)) # (!s_deficit2(1) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!s_deficit2(1) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit2(1),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X8_Y24_N24
\Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (\Add2~14_combout\ & ((!\in2_endofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \in2_endofpacket~combout\,
	datad => \Add2~14_combout\,
	combout => \Add2~42_combout\);

-- Location: LCFF_X8_Y24_N25
\s_deficit2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~42_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(1));

-- Location: LCCOMB_X9_Y24_N6
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (s_deficit2(3) & (\Add2~17\ & VCC)) # (!s_deficit2(3) & (!\Add2~17\))
-- \Add2~19\ = CARRY((!s_deficit2(3) & !\Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit2(3),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X9_Y24_N28
\Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (\Add2~18_combout\ & ((!\in2_endofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \in2_endofpacket~combout\,
	datad => \Add2~18_combout\,
	combout => \Add2~40_combout\);

-- Location: LCFF_X9_Y24_N29
\s_deficit2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~40_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(3));

-- Location: LCCOMB_X9_Y24_N8
\Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (s_deficit2(4) & ((GND) # (!\Add2~19\))) # (!s_deficit2(4) & (\Add2~19\ $ (GND)))
-- \Add2~21\ = CARRY((s_deficit2(4)) # (!\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit2(4),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X8_Y24_N28
\Add2~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (\Add2~20_combout\ & ((!\in2_valid~combout\) # (!\in2_endofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_endofpacket~combout\,
	datac => \in2_valid~combout\,
	datad => \Add2~20_combout\,
	combout => \Add2~39_combout\);

-- Location: LCFF_X8_Y24_N29
\s_deficit2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~39_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(4));

-- Location: LCCOMB_X9_Y24_N10
\Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (s_deficit2(5) & (\Add2~21\ & VCC)) # (!s_deficit2(5) & (!\Add2~21\))
-- \Add2~23\ = CARRY((!s_deficit2(5) & !\Add2~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_deficit2(5),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X9_Y24_N30
\Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add2~22_combout\ & ((!\in2_endofpacket~combout\) # (!\in2_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \in2_valid~combout\,
	datac => \in2_endofpacket~combout\,
	datad => \Add2~22_combout\,
	combout => \Add2~38_combout\);

-- Location: LCFF_X9_Y24_N31
\s_deficit2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Add2~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_deficit2(5));

-- Location: LCCOMB_X7_Y24_N20
\s_deficit2[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[9]~13_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[9]~13_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[9]~13_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum2(3),
	combout => \s_deficit2[9]~13_combout\);

-- Location: LCCOMB_X7_Y24_N8
\s_deficit2[9]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[9]~15_combout\ = \s_deficit2[9]~13_combout\ $ (((\sched~5_combout\ & ((s_quantum2(3)))) # (!\sched~5_combout\ & (\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~5_combout\,
	datab => \Add2~30_combout\,
	datac => \s_deficit2[9]~13_combout\,
	datad => s_quantum2(3),
	combout => \s_deficit2[9]~15_combout\);

-- Location: LCFF_X7_Y24_N9
\s_deficit2[9]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_deficit2[9]~15_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_deficit2[12]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_deficit2[9]~_emulated_regout\);

-- Location: LCCOMB_X7_Y24_N26
\s_deficit2[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[9]~14_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[9]~13_combout\ $ ((\s_deficit2[9]~_emulated_regout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[9]~13_combout\,
	datab => \s_deficit2[9]~_emulated_regout\,
	datac => \reset_reset_n~combout\,
	datad => s_quantum2(3),
	combout => \s_deficit2[9]~14_combout\);

-- Location: LCCOMB_X7_Y24_N22
\s_deficit2[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[11]~5_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[11]~5_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[11]~5_combout\,
	datac => s_quantum2(5),
	datad => \reset_reset_n~clkctrl_outclk\,
	combout => \s_deficit2[11]~5_combout\);

-- Location: LCCOMB_X7_Y24_N14
\s_deficit2[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[11]~6_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[11]~_emulated_regout\ $ ((\s_deficit2[11]~5_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[11]~_emulated_regout\,
	datab => \reset_reset_n~combout\,
	datac => \s_deficit2[11]~5_combout\,
	datad => s_quantum2(5),
	combout => \s_deficit2[11]~6_combout\);

-- Location: LCCOMB_X7_Y24_N2
\s_deficit2[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[10]~9_combout\ = (GLOBAL(\reset_reset_n~clkctrl_outclk\) & (\s_deficit2[10]~9_combout\)) # (!GLOBAL(\reset_reset_n~clkctrl_outclk\) & ((s_quantum2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_deficit2[10]~9_combout\,
	datac => \reset_reset_n~clkctrl_outclk\,
	datad => s_quantum2(4),
	combout => \s_deficit2[10]~9_combout\);

-- Location: LCCOMB_X7_Y24_N10
\s_deficit2[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_deficit2[10]~10_combout\ = (\reset_reset_n~combout\ & (\s_deficit2[10]~_emulated_regout\ $ ((\s_deficit2[10]~9_combout\)))) # (!\reset_reset_n~combout\ & (((s_quantum2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[10]~_emulated_regout\,
	datab => \s_deficit2[10]~9_combout\,
	datac => \reset_reset_n~combout\,
	datad => s_quantum2(4),
	combout => \s_deficit2[10]~10_combout\);

-- Location: LCCOMB_X7_Y24_N18
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (\s_deficit2[12]~2_combout\) # ((\s_deficit2[9]~14_combout\) # ((\s_deficit2[11]~6_combout\) # (\s_deficit2[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[12]~2_combout\,
	datab => \s_deficit2[9]~14_combout\,
	datac => \s_deficit2[11]~6_combout\,
	datad => \s_deficit2[10]~10_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X8_Y24_N0
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\s_deficit2[7]~22_combout\) # ((\s_deficit2[8]~18_combout\) # ((\s_deficit2[6]~26_combout\) # (\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_deficit2[7]~22_combout\,
	datab => \s_deficit2[8]~18_combout\,
	datac => \s_deficit2[6]~26_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X8_Y24_N10
\s_state~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~47_combout\ = (\s_state~31_combout\ & ((\Equal1~0_combout\ & ((\Equal5~1_combout\))) # (!\Equal1~0_combout\ & (!\sched~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sched~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \s_state~31_combout\,
	datad => \Equal5~1_combout\,
	combout => \s_state~47_combout\);

-- Location: LCCOMB_X3_Y24_N30
\s_state~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~50_combout\ = (!\Equal0~0_combout\ & (!\s_state~49_combout\ & (!\s_state~46_combout\ & !\s_state~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s_state~49_combout\,
	datac => \s_state~46_combout\,
	datad => \s_state~47_combout\,
	combout => \s_state~50_combout\);

-- Location: LCCOMB_X3_Y24_N28
\s_state~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~61_combout\ = (\s_state~60_combout\ & ((\s_state~50_combout\) # ((\s_state~51_combout\ & \s_state.S1~regout\)))) # (!\s_state~60_combout\ & (\s_state~51_combout\ & (\s_state.S1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~60_combout\,
	datab => \s_state~51_combout\,
	datac => \s_state.S1~regout\,
	datad => \s_state~50_combout\,
	combout => \s_state~61_combout\);

-- Location: LCFF_X3_Y24_N29
\s_state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state~61_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S1~regout\);

-- Location: LCCOMB_X4_Y24_N16
\s_state~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~38_combout\ = (\s_state~28_combout\ & (\s_state.S1~regout\ & (!\sched~6_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~28_combout\,
	datab => \s_state.S1~regout\,
	datac => \sched~6_combout\,
	datad => \Equal1~0_combout\,
	combout => \s_state~38_combout\);

-- Location: LCCOMB_X4_Y24_N22
\s_state~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~48_combout\ = (!\Equal1~0_combout\ & (!\sched~0_combout\ & ((\s_state~38_combout\) # (\s_state~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \sched~0_combout\,
	datac => \s_state~38_combout\,
	datad => \s_state~37_combout\,
	combout => \s_state~48_combout\);

-- Location: LCCOMB_X4_Y24_N8
\s_state~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~49_combout\ = (!\s_state~31_combout\ & ((\s_state~35_combout\ & (\s_state~70_combout\)) # (!\s_state~35_combout\ & ((\s_state~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~35_combout\,
	datab => \s_state~31_combout\,
	datac => \s_state~70_combout\,
	datad => \s_state~48_combout\,
	combout => \s_state~49_combout\);

-- Location: LCCOMB_X3_Y24_N8
\s_state~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~51_combout\ = (!\Equal0~0_combout\ & ((\s_state~49_combout\) # ((\s_state~46_combout\) # (\s_state~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \s_state~49_combout\,
	datac => \s_state~46_combout\,
	datad => \s_state~47_combout\,
	combout => \s_state~51_combout\);

-- Location: LCCOMB_X3_Y24_N6
\s_state~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state~56_combout\ = (\s_state~55_combout\ & ((\s_state~50_combout\) # ((\s_state~51_combout\ & \s_state.S2~regout\)))) # (!\s_state~55_combout\ & (\s_state~51_combout\ & (\s_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~55_combout\,
	datab => \s_state~51_combout\,
	datac => \s_state.S2~regout\,
	datad => \s_state~50_combout\,
	combout => \s_state~56_combout\);

-- Location: LCFF_X3_Y24_N7
\s_state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state~56_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S2~regout\);

-- Location: LCCOMB_X3_Y24_N4
\Selector12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\s_state.S2~regout\) # ((\s_state.S1~regout\ & ((!\in1_startofpacket~combout\) # (!\in1_valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_valid~combout\,
	datab => \in1_startofpacket~combout\,
	datac => \s_state.S2~regout\,
	datad => \s_state.S1~regout\,
	combout => \Selector12~4_combout\);

-- Location: LCCOMB_X4_Y24_N10
\s_g0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~9_combout\ = ((\s_state~28_combout\ & \Selector12~4_combout\)) # (!\s_g0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state~28_combout\,
	datab => \Selector12~4_combout\,
	datad => \s_g0~8_combout\,
	combout => \s_g0~9_combout\);

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_startofpacket,
	combout => \in0_startofpacket~combout\);

-- Location: LCCOMB_X4_Y23_N24
\s_g0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~13_combout\ = (\arbiter~1_combout\ & (\in0_valid~combout\ & (\s_g0~9_combout\ & \in0_startofpacket~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \arbiter~1_combout\,
	datab => \in0_valid~combout\,
	datac => \s_g0~9_combout\,
	datad => \in0_startofpacket~combout\,
	combout => \s_g0~13_combout\);

-- Location: LCCOMB_X3_Y24_N14
\Selector12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~6_combout\ = (\s_state.S3~regout\) # ((\Selector12~4_combout\ & ((!\in2_startofpacket~combout\) # (!\in2_valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_valid~combout\,
	datab => \in2_startofpacket~combout\,
	datac => \Selector12~4_combout\,
	datad => \s_state.S3~regout\,
	combout => \Selector12~6_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Selector12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (\Selector12~3_combout\) # ((\sched~0_combout\ & (!\sched~2_combout\ & \Selector12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~3_combout\,
	datab => \sched~0_combout\,
	datac => \sched~2_combout\,
	datad => \Selector12~6_combout\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X1_Y23_N0
\s_g0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~7_combout\ = (\Selector12~5_combout\ & (!\arbiter~1_combout\ & ((\s_g0~12_combout\) # (!\s_g0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g0~12_combout\,
	datab => \Selector12~5_combout\,
	datac => \arbiter~1_combout\,
	datad => \s_g0~6_combout\,
	combout => \s_g0~7_combout\);

-- Location: LCCOMB_X5_Y23_N0
\s_g0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_g0~11_combout\ = (\s_g0~13_combout\) # ((\s_g0~7_combout\) # ((\s_g0~10_combout\ & \s_g0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g0~10_combout\,
	datab => \s_g0~13_combout\,
	datac => \s_g0~regout\,
	datad => \s_g0~7_combout\,
	combout => \s_g0~11_combout\);

-- Location: LCFF_X5_Y23_N1
s_g0 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_g0~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_g0~regout\);

-- Location: LCCOMB_X4_Y23_N0
\in0_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in0_ready~0_combout\ = (\out_ready~combout\ & \s_g0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~combout\,
	datac => \s_g0~regout\,
	combout => \in0_ready~0_combout\);

-- Location: LCCOMB_X1_Y22_N28
\in1_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1_ready~0_combout\ = (\out_ready~combout\ & \s_g1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~combout\,
	datad => \s_g1~regout\,
	combout => \in1_ready~0_combout\);

-- Location: LCCOMB_X1_Y22_N26
\in2_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in2_ready~0_combout\ = (\out_ready~combout\ & \s_g2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~combout\,
	datad => \s_g2~regout\,
	combout => \in2_ready~0_combout\);

-- Location: LCCOMB_X1_Y20_N28
\in3_ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \in3_ready~0_combout\ = (\s_g3~regout\ & \out_ready~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_g3~regout\,
	datad => \out_ready~combout\,
	combout => \in3_ready~0_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_clk,
	combout => \clk_clk~combout\);

-- Location: CLKCTRL_G3
\clk_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_clk~clkctrl_outclk\);

-- Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(0),
	combout => \in1_data~combout\(0));

-- Location: PIN_R28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(0),
	combout => \in0_data~combout\(0));

-- Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(0),
	combout => \in3_data~combout\(0));

-- Location: LCCOMB_X5_Y23_N24
\s_data[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data[8]~0_combout\ = (!\s_g1~regout\ & !\s_g0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_g1~regout\,
	datad => \s_g0~regout\,
	combout => \s_data[8]~0_combout\);

-- Location: LCCOMB_X5_Y23_N22
\s_data[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data[8]~1_combout\ = (\s_g0~regout\) # ((!\s_g1~regout\ & \s_g2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_g1~regout\,
	datac => \s_g2~regout\,
	datad => \s_g0~regout\,
	combout => \s_data[8]~1_combout\);

-- Location: LCCOMB_X94_Y26_N30
\s_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~2_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(0))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(0)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(0),
	datab => \in3_data~combout\(0),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~2_combout\);

-- Location: LCCOMB_X94_Y26_N8
\s_data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~3_combout\ = (\s_data[8]~0_combout\ & (((\s_data~2_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~2_combout\ & ((\in0_data~combout\(0)))) # (!\s_data~2_combout\ & (\in1_data~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \in1_data~combout\(0),
	datac => \in0_data~combout\(0),
	datad => \s_data~2_combout\,
	combout => \s_data~3_combout\);

-- Location: LCCOMB_X5_Y23_N28
\s_data[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data[8]~4_combout\ = (!\s_g1~regout\ & \s_g2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_g1~regout\,
	datac => \s_g2~regout\,
	combout => \s_data[8]~4_combout\);

-- Location: LCCOMB_X94_Y26_N16
\s_data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~5_combout\ = (\s_data~3_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data~3_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~5_combout\);

-- Location: LCFF_X94_Y26_N17
\s_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~5_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(0));

-- Location: PIN_R29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(1),
	combout => \in2_data~combout\(1));

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(1),
	combout => \in1_data~combout\(1));

-- Location: LCCOMB_X94_Y26_N10
\s_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~6_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(1) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(1)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(1),
	datab => \in1_data~combout\(1),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~6_combout\);

-- Location: LCCOMB_X94_Y26_N0
\s_data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~7_combout\ = (\s_data[8]~1_combout\ & ((\s_data~6_combout\ & (\in0_data~combout\(1))) # (!\s_data~6_combout\ & ((\in2_data~combout\(1)))))) # (!\s_data[8]~1_combout\ & (((\s_data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(1),
	datab => \in2_data~combout\(1),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~6_combout\,
	combout => \s_data~7_combout\);

-- Location: LCCOMB_X94_Y26_N14
\s_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~8_combout\ = (\s_data~7_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~7_combout\,
	combout => \s_data~8_combout\);

-- Location: LCFF_X94_Y26_N15
\s_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~8_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(1));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(2),
	combout => \in1_data~combout\(2));

-- Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(2),
	combout => \in2_data~combout\(2));

-- Location: LCCOMB_X1_Y4_N26
\s_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~9_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(2)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(2))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(2),
	datab => \in2_data~combout\(2),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~9_combout\);

-- Location: LCCOMB_X1_Y4_N24
\s_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~10_combout\ = (\s_data[8]~0_combout\ & (((\s_data~9_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~9_combout\ & (\in0_data~combout\(2))) # (!\s_data~9_combout\ & ((\in1_data~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(2),
	datab => \in1_data~combout\(2),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~9_combout\,
	combout => \s_data~10_combout\);

-- Location: LCCOMB_X1_Y4_N12
\s_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~11_combout\ = (\s_data~10_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~10_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~11_combout\);

-- Location: LCFF_X1_Y4_N13
\s_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(2));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(3),
	combout => \in2_data~combout\(3));

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(3),
	combout => \in3_data~combout\(3));

-- Location: LCCOMB_X74_Y50_N2
\s_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~12_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(3) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(3)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(3),
	datab => \in3_data~combout\(3),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~12_combout\);

-- Location: LCCOMB_X74_Y50_N0
\s_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~13_combout\ = (\s_data[8]~1_combout\ & ((\s_data~12_combout\ & (\in0_data~combout\(3))) # (!\s_data~12_combout\ & ((\in2_data~combout\(3)))))) # (!\s_data[8]~1_combout\ & (((\s_data~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(3),
	datab => \in2_data~combout\(3),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~12_combout\,
	combout => \s_data~13_combout\);

-- Location: LCCOMB_X74_Y50_N16
\s_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~14_combout\ = (\s_data~13_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~13_combout\,
	combout => \s_data~14_combout\);

-- Location: LCFF_X74_Y50_N17
\s_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~14_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(3));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(4),
	combout => \in1_data~combout\(4));

-- Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(4),
	combout => \in3_data~combout\(4));

-- Location: LCCOMB_X15_Y1_N30
\s_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~15_combout\ = (\s_data[8]~1_combout\ & ((\in2_data~combout\(4)) # ((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (((\in3_data~combout\(4) & \s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(4),
	datab => \in3_data~combout\(4),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~15_combout\);

-- Location: LCCOMB_X15_Y1_N24
\s_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~16_combout\ = (\s_data[8]~0_combout\ & (((\s_data~15_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~15_combout\ & (\in0_data~combout\(4))) # (!\s_data~15_combout\ & ((\in1_data~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(4),
	datab => \s_data[8]~0_combout\,
	datac => \in1_data~combout\(4),
	datad => \s_data~15_combout\,
	combout => \s_data~16_combout\);

-- Location: LCCOMB_X15_Y1_N28
\s_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~17_combout\ = (\s_data~16_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~16_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~17_combout\);

-- Location: LCFF_X15_Y1_N29
\s_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~17_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(4));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(5),
	combout => \in0_data~combout\(5));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(5),
	combout => \in3_data~combout\(5));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(5),
	combout => \in1_data~combout\(5));

-- Location: LCCOMB_X1_Y42_N2
\s_data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~18_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(5) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(5)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \in3_data~combout\(5),
	datac => \in1_data~combout\(5),
	datad => \s_data[8]~1_combout\,
	combout => \s_data~18_combout\);

-- Location: LCCOMB_X1_Y42_N24
\s_data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~19_combout\ = (\s_data[8]~1_combout\ & ((\s_data~18_combout\ & ((\in0_data~combout\(5)))) # (!\s_data~18_combout\ & (\in2_data~combout\(5))))) # (!\s_data[8]~1_combout\ & (((\s_data~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(5),
	datab => \s_data[8]~1_combout\,
	datac => \in0_data~combout\(5),
	datad => \s_data~18_combout\,
	combout => \s_data~19_combout\);

-- Location: LCCOMB_X1_Y42_N20
\s_data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~20_combout\ = (\s_data~19_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~19_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~20_combout\);

-- Location: LCFF_X1_Y42_N21
\s_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~20_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(5));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(6),
	combout => \in0_data~combout\(6));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(6),
	combout => \in3_data~combout\(6));

-- Location: LCCOMB_X65_Y50_N26
\s_data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~21_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(6))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(6)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(6),
	datab => \in3_data~combout\(6),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~21_combout\);

-- Location: LCCOMB_X65_Y50_N0
\s_data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~22_combout\ = (\s_data[8]~0_combout\ & (((\s_data~21_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~21_combout\ & ((\in0_data~combout\(6)))) # (!\s_data~21_combout\ & (\in1_data~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(6),
	datab => \in0_data~combout\(6),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~21_combout\,
	combout => \s_data~22_combout\);

-- Location: LCCOMB_X65_Y50_N4
\s_data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~23_combout\ = (\s_data~22_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~22_combout\,
	combout => \s_data~23_combout\);

-- Location: LCFF_X65_Y50_N5
\s_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(6));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(7),
	combout => \in2_data~combout\(7));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(7),
	combout => \in3_data~combout\(7));

-- Location: LCCOMB_X94_Y47_N12
\s_data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~24_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(7)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(7),
	datab => \in3_data~combout\(7),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~24_combout\);

-- Location: LCCOMB_X94_Y47_N18
\s_data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~25_combout\ = (\s_data[8]~1_combout\ & ((\s_data~24_combout\ & (\in0_data~combout\(7))) # (!\s_data~24_combout\ & ((\in2_data~combout\(7)))))) # (!\s_data[8]~1_combout\ & (((\s_data~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(7),
	datab => \in2_data~combout\(7),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~24_combout\,
	combout => \s_data~25_combout\);

-- Location: LCCOMB_X94_Y47_N8
\s_data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~26_combout\ = (\s_data~25_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~25_combout\,
	combout => \s_data~26_combout\);

-- Location: LCFF_X94_Y47_N9
\s_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~26_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(7));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(8),
	combout => \in0_data~combout\(8));

-- Location: PIN_AG7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(8),
	combout => \in2_data~combout\(8));

-- Location: LCCOMB_X15_Y1_N2
\s_data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~27_combout\ = (\s_data[8]~1_combout\ & (((\in2_data~combout\(8)) # (!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(8) & ((\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(8),
	datab => \in2_data~combout\(8),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~27_combout\);

-- Location: LCCOMB_X15_Y1_N8
\s_data~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~28_combout\ = (\s_data[8]~0_combout\ & (((\s_data~27_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~27_combout\ & ((\in0_data~combout\(8)))) # (!\s_data~27_combout\ & (\in1_data~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(8),
	datab => \s_data[8]~0_combout\,
	datac => \in0_data~combout\(8),
	datad => \s_data~27_combout\,
	combout => \s_data~28_combout\);

-- Location: LCCOMB_X15_Y1_N6
\s_data~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~29_combout\ = (\s_data~28_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~28_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~29_combout\);

-- Location: LCFF_X15_Y1_N7
\s_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~29_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(8));

-- Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(9),
	combout => \in2_data~combout\(9));

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(9),
	combout => \in1_data~combout\(9));

-- Location: LCCOMB_X94_Y35_N2
\s_data~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~30_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(9) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(9)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(9),
	datab => \in1_data~combout\(9),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~30_combout\);

-- Location: LCCOMB_X94_Y35_N0
\s_data~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~31_combout\ = (\s_data[8]~1_combout\ & ((\s_data~30_combout\ & (\in0_data~combout\(9))) # (!\s_data~30_combout\ & ((\in2_data~combout\(9)))))) # (!\s_data[8]~1_combout\ & (((\s_data~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(9),
	datab => \in2_data~combout\(9),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~30_combout\,
	combout => \s_data~31_combout\);

-- Location: LCCOMB_X94_Y35_N16
\s_data~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~32_combout\ = (\s_data~31_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~31_combout\,
	combout => \s_data~32_combout\);

-- Location: LCFF_X94_Y35_N17
\s_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~32_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(9));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(10),
	combout => \in0_data~combout\(10));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(10),
	combout => \in3_data~combout\(10));

-- Location: LCCOMB_X65_Y50_N2
\s_data~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~33_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(10))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(10)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(10),
	datab => \in3_data~combout\(10),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~33_combout\);

-- Location: LCCOMB_X65_Y50_N12
\s_data~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~34_combout\ = (\s_data[8]~0_combout\ & (((\s_data~33_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~33_combout\ & ((\in0_data~combout\(10)))) # (!\s_data~33_combout\ & (\in1_data~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(10),
	datab => \in0_data~combout\(10),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~33_combout\,
	combout => \s_data~34_combout\);

-- Location: LCCOMB_X65_Y50_N10
\s_data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~35_combout\ = (\s_data~34_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~34_combout\,
	combout => \s_data~35_combout\);

-- Location: LCFF_X65_Y50_N11
\s_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~35_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(10));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(11),
	combout => \in0_data~combout\(11));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(11),
	combout => \in3_data~combout\(11));

-- Location: LCCOMB_X1_Y20_N12
\s_data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~36_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(11)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(11),
	datab => \s_data[8]~1_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \in3_data~combout\(11),
	combout => \s_data~36_combout\);

-- Location: LCCOMB_X1_Y20_N22
\s_data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~37_combout\ = (\s_data[8]~1_combout\ & ((\s_data~36_combout\ & ((\in0_data~combout\(11)))) # (!\s_data~36_combout\ & (\in2_data~combout\(11))))) # (!\s_data[8]~1_combout\ & (((\s_data~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(11),
	datab => \s_data[8]~1_combout\,
	datac => \in0_data~combout\(11),
	datad => \s_data~36_combout\,
	combout => \s_data~37_combout\);

-- Location: LCCOMB_X1_Y20_N10
\s_data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~38_combout\ = (\s_data~37_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data~37_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~38_combout\);

-- Location: LCFF_X1_Y20_N11
\s_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(11));

-- Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(12),
	combout => \in1_data~combout\(12));

-- Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(12),
	combout => \in2_data~combout\(12));

-- Location: LCCOMB_X94_Y47_N0
\s_data~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~39_combout\ = (\s_data[8]~1_combout\ & (((\in2_data~combout\(12)) # (!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(12) & ((\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(12),
	datab => \in2_data~combout\(12),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~39_combout\);

-- Location: LCCOMB_X94_Y47_N2
\s_data~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~40_combout\ = (\s_data[8]~0_combout\ & (((\s_data~39_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~39_combout\ & (\in0_data~combout\(12))) # (!\s_data~39_combout\ & ((\in1_data~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(12),
	datab => \in1_data~combout\(12),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~39_combout\,
	combout => \s_data~40_combout\);

-- Location: LCCOMB_X94_Y47_N6
\s_data~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~41_combout\ = (\s_data~40_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~40_combout\,
	combout => \s_data~41_combout\);

-- Location: LCFF_X94_Y47_N7
\s_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(12));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(13),
	combout => \in0_data~combout\(13));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(13),
	combout => \in1_data~combout\(13));

-- Location: LCCOMB_X1_Y42_N14
\s_data~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~42_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(13) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(13)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(13),
	datab => \in1_data~combout\(13),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~42_combout\);

-- Location: LCCOMB_X1_Y42_N0
\s_data~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~43_combout\ = (\s_data~42_combout\ & (((\in0_data~combout\(13)) # (!\s_data[8]~1_combout\)))) # (!\s_data~42_combout\ & (\in2_data~combout\(13) & ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(13),
	datab => \in0_data~combout\(13),
	datac => \s_data~42_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~43_combout\);

-- Location: LCCOMB_X1_Y42_N10
\s_data~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~44_combout\ = (\s_data~43_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~43_combout\,
	combout => \s_data~44_combout\);

-- Location: LCFF_X1_Y42_N11
\s_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~44_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(13));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(14),
	combout => \in0_data~combout\(14));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(14),
	combout => \in3_data~combout\(14));

-- Location: LCCOMB_X65_Y50_N6
\s_data~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~45_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(14))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(14)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(14),
	datab => \in3_data~combout\(14),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~45_combout\);

-- Location: LCCOMB_X65_Y50_N28
\s_data~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~46_combout\ = (\s_data[8]~0_combout\ & (((\s_data~45_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~45_combout\ & ((\in0_data~combout\(14)))) # (!\s_data~45_combout\ & (\in1_data~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(14),
	datab => \in0_data~combout\(14),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~45_combout\,
	combout => \s_data~46_combout\);

-- Location: LCCOMB_X65_Y50_N20
\s_data~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~47_combout\ = (\s_data~46_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~46_combout\,
	combout => \s_data~47_combout\);

-- Location: LCFF_X65_Y50_N21
\s_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~47_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(14));

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(15),
	combout => \in0_data~combout\(15));

-- Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(15),
	combout => \in3_data~combout\(15));

-- Location: LCCOMB_X71_Y28_N2
\s_data~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~48_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(15) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(15)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(15),
	datab => \in3_data~combout\(15),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~48_combout\);

-- Location: LCCOMB_X71_Y28_N12
\s_data~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~49_combout\ = (\s_data[8]~1_combout\ & ((\s_data~48_combout\ & ((\in0_data~combout\(15)))) # (!\s_data~48_combout\ & (\in2_data~combout\(15))))) # (!\s_data[8]~1_combout\ & (((\s_data~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(15),
	datab => \s_data[8]~1_combout\,
	datac => \in0_data~combout\(15),
	datad => \s_data~48_combout\,
	combout => \s_data~49_combout\);

-- Location: LCCOMB_X71_Y28_N0
\s_data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~50_combout\ = (\s_data~49_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~49_combout\,
	combout => \s_data~50_combout\);

-- Location: LCFF_X71_Y28_N1
\s_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~50_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(15));

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(16),
	combout => \in0_data~combout\(16));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(16),
	combout => \in2_data~combout\(16));

-- Location: LCCOMB_X1_Y20_N8
\s_data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~51_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(16)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(16))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(16),
	datab => \in2_data~combout\(16),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~51_combout\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(16),
	combout => \in1_data~combout\(16));

-- Location: LCCOMB_X1_Y20_N18
\s_data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~52_combout\ = (\s_data[8]~0_combout\ & (((\s_data~51_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~51_combout\ & (\in0_data~combout\(16))) # (!\s_data~51_combout\ & ((\in1_data~combout\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \in0_data~combout\(16),
	datac => \s_data~51_combout\,
	datad => \in1_data~combout\(16),
	combout => \s_data~52_combout\);

-- Location: LCCOMB_X1_Y20_N16
\s_data~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~53_combout\ = (\s_data~52_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data~52_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~53_combout\);

-- Location: LCFF_X1_Y20_N17
\s_data[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~53_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(16));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(17),
	combout => \in0_data~combout\(17));

-- Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(17),
	combout => \in1_data~combout\(17));

-- Location: LCCOMB_X1_Y4_N30
\s_data~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~54_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(17) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(17)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(17),
	datab => \in1_data~combout\(17),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~54_combout\);

-- Location: LCCOMB_X1_Y4_N4
\s_data~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~55_combout\ = (\s_data[8]~1_combout\ & ((\s_data~54_combout\ & ((\in0_data~combout\(17)))) # (!\s_data~54_combout\ & (\in2_data~combout\(17))))) # (!\s_data[8]~1_combout\ & (((\s_data~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(17),
	datab => \s_data[8]~1_combout\,
	datac => \in0_data~combout\(17),
	datad => \s_data~54_combout\,
	combout => \s_data~55_combout\);

-- Location: LCCOMB_X1_Y4_N18
\s_data~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~56_combout\ = (\s_data~55_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~55_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~56_combout\);

-- Location: LCFF_X1_Y4_N19
\s_data[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~56_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(17));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(18),
	combout => \in1_data~combout\(18));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(18),
	combout => \in2_data~combout\(18));

-- Location: LCCOMB_X14_Y50_N18
\s_data~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~57_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(18)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(18))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(18),
	datab => \in2_data~combout\(18),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~57_combout\);

-- Location: LCCOMB_X14_Y50_N12
\s_data~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~58_combout\ = (\s_data[8]~0_combout\ & (((\s_data~57_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~57_combout\ & (\in0_data~combout\(18))) # (!\s_data~57_combout\ & ((\in1_data~combout\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(18),
	datab => \in1_data~combout\(18),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~57_combout\,
	combout => \s_data~58_combout\);

-- Location: LCCOMB_X14_Y50_N8
\s_data~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~59_combout\ = (\s_data~58_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~58_combout\,
	combout => \s_data~59_combout\);

-- Location: LCFF_X14_Y50_N9
\s_data[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~59_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(18));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(19),
	combout => \in1_data~combout\(19));

-- Location: LCCOMB_X14_Y50_N26
\s_data~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~60_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(19) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(19)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(19),
	datab => \in1_data~combout\(19),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~60_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(19),
	combout => \in2_data~combout\(19));

-- Location: LCCOMB_X14_Y50_N20
\s_data~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~61_combout\ = (\s_data~60_combout\ & ((\in0_data~combout\(19)) # ((!\s_data[8]~1_combout\)))) # (!\s_data~60_combout\ & (((\in2_data~combout\(19) & \s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(19),
	datab => \s_data~60_combout\,
	datac => \in2_data~combout\(19),
	datad => \s_data[8]~1_combout\,
	combout => \s_data~61_combout\);

-- Location: LCCOMB_X14_Y50_N10
\s_data~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~62_combout\ = (\s_data~61_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~61_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~62_combout\);

-- Location: LCFF_X14_Y50_N11
\s_data[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~62_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(19));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(20),
	combout => \in0_data~combout\(20));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(20),
	combout => \in2_data~combout\(20));

-- Location: LCCOMB_X14_Y50_N6
\s_data~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~63_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(20)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(20))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(20),
	datab => \in2_data~combout\(20),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~63_combout\);

-- Location: LCCOMB_X14_Y50_N0
\s_data~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~64_combout\ = (\s_data[8]~0_combout\ & (((\s_data~63_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~63_combout\ & ((\in0_data~combout\(20)))) # (!\s_data~63_combout\ & (\in1_data~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(20),
	datab => \in0_data~combout\(20),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~63_combout\,
	combout => \s_data~64_combout\);

-- Location: LCCOMB_X14_Y50_N24
\s_data~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~65_combout\ = (\s_data~64_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~64_combout\,
	combout => \s_data~65_combout\);

-- Location: LCFF_X14_Y50_N25
\s_data[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~65_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(20));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(21),
	combout => \in0_data~combout\(21));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(21),
	combout => \in1_data~combout\(21));

-- Location: LCCOMB_X14_Y50_N14
\s_data~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~66_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(21) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(21)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(21),
	datab => \in1_data~combout\(21),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~66_combout\);

-- Location: LCCOMB_X14_Y50_N4
\s_data~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~67_combout\ = (\s_data~66_combout\ & (((\in0_data~combout\(21)) # (!\s_data[8]~1_combout\)))) # (!\s_data~66_combout\ & (\in2_data~combout\(21) & ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(21),
	datab => \in0_data~combout\(21),
	datac => \s_data~66_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~67_combout\);

-- Location: LCCOMB_X14_Y50_N2
\s_data~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~68_combout\ = (\s_data~67_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~67_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~68_combout\);

-- Location: LCFF_X14_Y50_N3
\s_data[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~68_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(21));

-- Location: PIN_AF1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(22),
	combout => \in0_data~combout\(22));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(22),
	combout => \in2_data~combout\(22));

-- Location: LCCOMB_X1_Y4_N10
\s_data~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~69_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(22)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(22))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(22),
	datab => \in2_data~combout\(22),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~69_combout\);

-- Location: LCCOMB_X1_Y4_N16
\s_data~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~70_combout\ = (\s_data[8]~0_combout\ & (((\s_data~69_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~69_combout\ & ((\in0_data~combout\(22)))) # (!\s_data~69_combout\ & (\in1_data~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(22),
	datab => \in0_data~combout\(22),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~69_combout\,
	combout => \s_data~70_combout\);

-- Location: LCCOMB_X1_Y4_N0
\s_data~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~71_combout\ = (\s_data~70_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~70_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~71_combout\);

-- Location: LCFF_X1_Y4_N1
\s_data[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~71_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(22));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(23),
	combout => \in2_data~combout\(23));

-- Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(23),
	combout => \in3_data~combout\(23));

-- Location: LCCOMB_X94_Y26_N6
\s_data~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~72_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(23) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(23)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(23),
	datab => \in3_data~combout\(23),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~72_combout\);

-- Location: LCCOMB_X94_Y26_N28
\s_data~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~73_combout\ = (\s_data[8]~1_combout\ & ((\s_data~72_combout\ & (\in0_data~combout\(23))) # (!\s_data~72_combout\ & ((\in2_data~combout\(23)))))) # (!\s_data[8]~1_combout\ & (((\s_data~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(23),
	datab => \in2_data~combout\(23),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~72_combout\,
	combout => \s_data~73_combout\);

-- Location: LCCOMB_X94_Y26_N4
\s_data~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~74_combout\ = (\s_data~73_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~73_combout\,
	combout => \s_data~74_combout\);

-- Location: LCFF_X94_Y26_N5
\s_data[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~74_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(23));

-- Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(24),
	combout => \in1_data~combout\(24));

-- Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(24),
	combout => \in3_data~combout\(24));

-- Location: LCCOMB_X94_Y19_N2
\s_data~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~75_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(24))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(24)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(24),
	datab => \in3_data~combout\(24),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~75_combout\);

-- Location: LCCOMB_X94_Y19_N0
\s_data~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~76_combout\ = (\s_data[8]~0_combout\ & (((\s_data~75_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~75_combout\ & (\in0_data~combout\(24))) # (!\s_data~75_combout\ & ((\in1_data~combout\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(24),
	datab => \in1_data~combout\(24),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~75_combout\,
	combout => \s_data~76_combout\);

-- Location: LCCOMB_X94_Y19_N16
\s_data~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~77_combout\ = (\s_data~76_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_g3~regout\,
	datad => \s_data~76_combout\,
	combout => \s_data~77_combout\);

-- Location: LCFF_X94_Y19_N17
\s_data[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~77_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(24));

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(25),
	combout => \in0_data~combout\(25));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(25),
	combout => \in1_data~combout\(25));

-- Location: LCCOMB_X94_Y26_N18
\s_data~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~78_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(25) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(25)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(25),
	datab => \in1_data~combout\(25),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~78_combout\);

-- Location: LCCOMB_X94_Y26_N12
\s_data~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~79_combout\ = (\s_data[8]~1_combout\ & ((\s_data~78_combout\ & ((\in0_data~combout\(25)))) # (!\s_data~78_combout\ & (\in2_data~combout\(25))))) # (!\s_data[8]~1_combout\ & (((\s_data~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(25),
	datab => \in0_data~combout\(25),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~78_combout\,
	combout => \s_data~79_combout\);

-- Location: LCCOMB_X94_Y26_N22
\s_data~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~80_combout\ = (\s_data~79_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~79_combout\,
	combout => \s_data~80_combout\);

-- Location: LCFF_X94_Y26_N23
\s_data[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~80_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(25));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(26),
	combout => \in0_data~combout\(26));

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(26),
	combout => \in3_data~combout\(26));

-- Location: LCCOMB_X94_Y31_N12
\s_data~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~81_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(26))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(26)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(26),
	datab => \in3_data~combout\(26),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~81_combout\);

-- Location: LCCOMB_X94_Y31_N18
\s_data~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~82_combout\ = (\s_data[8]~0_combout\ & (((\s_data~81_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~81_combout\ & ((\in0_data~combout\(26)))) # (!\s_data~81_combout\ & (\in1_data~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(26),
	datab => \in0_data~combout\(26),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~81_combout\,
	combout => \s_data~82_combout\);

-- Location: LCCOMB_X94_Y31_N16
\s_data~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~83_combout\ = (\s_data~82_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_g3~regout\,
	datad => \s_data~82_combout\,
	combout => \s_data~83_combout\);

-- Location: LCFF_X94_Y31_N17
\s_data[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~83_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(26));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(27),
	combout => \in2_data~combout\(27));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(27),
	combout => \in1_data~combout\(27));

-- Location: LCCOMB_X94_Y26_N2
\s_data~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~84_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(27) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(27)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(27),
	datab => \in1_data~combout\(27),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~84_combout\);

-- Location: LCCOMB_X94_Y26_N20
\s_data~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~85_combout\ = (\s_data[8]~1_combout\ & ((\s_data~84_combout\ & (\in0_data~combout\(27))) # (!\s_data~84_combout\ & ((\in2_data~combout\(27)))))) # (!\s_data[8]~1_combout\ & (((\s_data~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(27),
	datab => \in2_data~combout\(27),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~84_combout\,
	combout => \s_data~85_combout\);

-- Location: LCCOMB_X94_Y26_N24
\s_data~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~86_combout\ = (\s_data~85_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~85_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~86_combout\);

-- Location: LCFF_X94_Y26_N25
\s_data[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~86_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(27));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(28),
	combout => \in0_data~combout\(28));

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(28),
	combout => \in2_data~combout\(28));

-- Location: LCCOMB_X94_Y31_N28
\s_data~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~87_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(28)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(28))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(28),
	datab => \in2_data~combout\(28),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~87_combout\);

-- Location: LCCOMB_X94_Y31_N2
\s_data~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~88_combout\ = (\s_data[8]~0_combout\ & (((\s_data~87_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~87_combout\ & ((\in0_data~combout\(28)))) # (!\s_data~87_combout\ & (\in1_data~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(28),
	datab => \in0_data~combout\(28),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~87_combout\,
	combout => \s_data~88_combout\);

-- Location: LCCOMB_X94_Y31_N10
\s_data~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~89_combout\ = (\s_data~88_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_g3~regout\,
	datad => \s_data~88_combout\,
	combout => \s_data~89_combout\);

-- Location: LCFF_X94_Y31_N11
\s_data[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~89_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(28));

-- Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(29),
	combout => \in2_data~combout\(29));

-- Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(29),
	combout => \in3_data~combout\(29));

-- Location: LCCOMB_X94_Y21_N2
\s_data~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~90_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(29) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(29)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(29),
	datab => \in3_data~combout\(29),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~90_combout\);

-- Location: LCCOMB_X94_Y21_N0
\s_data~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~91_combout\ = (\s_data[8]~1_combout\ & ((\s_data~90_combout\ & (\in0_data~combout\(29))) # (!\s_data~90_combout\ & ((\in2_data~combout\(29)))))) # (!\s_data[8]~1_combout\ & (((\s_data~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(29),
	datab => \s_data[8]~1_combout\,
	datac => \in2_data~combout\(29),
	datad => \s_data~90_combout\,
	combout => \s_data~91_combout\);

-- Location: LCCOMB_X94_Y21_N16
\s_data~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~92_combout\ = (\s_data~91_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~91_combout\,
	combout => \s_data~92_combout\);

-- Location: LCFF_X94_Y21_N17
\s_data[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~92_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(29));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(30),
	combout => \in1_data~combout\(30));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(30),
	combout => \in0_data~combout\(30));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(30),
	combout => \in2_data~combout\(30));

-- Location: LCCOMB_X93_Y15_N2
\s_data~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~93_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(30)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(30))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(30),
	datab => \in2_data~combout\(30),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~93_combout\);

-- Location: LCCOMB_X93_Y15_N0
\s_data~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~94_combout\ = (\s_data[8]~0_combout\ & (((\s_data~93_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~93_combout\ & ((\in0_data~combout\(30)))) # (!\s_data~93_combout\ & (\in1_data~combout\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \in1_data~combout\(30),
	datac => \in0_data~combout\(30),
	datad => \s_data~93_combout\,
	combout => \s_data~94_combout\);

-- Location: LCCOMB_X93_Y15_N24
\s_data~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~95_combout\ = (\s_data~94_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~94_combout\,
	combout => \s_data~95_combout\);

-- Location: LCFF_X93_Y15_N25
\s_data[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~95_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(30));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(31),
	combout => \in2_data~combout\(31));

-- Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(31),
	combout => \in1_data~combout\(31));

-- Location: LCCOMB_X94_Y15_N30
\s_data~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~96_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & (\in3_data~combout\(31))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(31),
	datab => \in1_data~combout\(31),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~96_combout\);

-- Location: LCCOMB_X94_Y15_N8
\s_data~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~97_combout\ = (\s_data[8]~1_combout\ & ((\s_data~96_combout\ & (\in0_data~combout\(31))) # (!\s_data~96_combout\ & ((\in2_data~combout\(31)))))) # (!\s_data[8]~1_combout\ & (((\s_data~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(31),
	datab => \in2_data~combout\(31),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~96_combout\,
	combout => \s_data~97_combout\);

-- Location: LCCOMB_X94_Y15_N4
\s_data~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~98_combout\ = (\s_data~97_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~97_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~98_combout\);

-- Location: LCFF_X94_Y15_N5
\s_data[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~98_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(31));

-- Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(32),
	combout => \in1_data~combout\(32));

-- Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(32),
	combout => \in3_data~combout\(32));

-- Location: LCCOMB_X94_Y15_N6
\s_data~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~99_combout\ = (\s_data[8]~1_combout\ & ((\in2_data~combout\(32)) # ((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (((\in3_data~combout\(32) & \s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(32),
	datab => \in3_data~combout\(32),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~99_combout\);

-- Location: LCCOMB_X94_Y15_N16
\s_data~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~100_combout\ = (\s_data[8]~0_combout\ & (((\s_data~99_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~99_combout\ & (\in0_data~combout\(32))) # (!\s_data~99_combout\ & ((\in1_data~combout\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(32),
	datab => \in1_data~combout\(32),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~99_combout\,
	combout => \s_data~100_combout\);

-- Location: LCCOMB_X94_Y15_N26
\s_data~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~101_combout\ = (\s_data~100_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~100_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_data~101_combout\);

-- Location: LCFF_X94_Y15_N27
\s_data[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~101_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(32));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(33),
	combout => \in2_data~combout\(33));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(33),
	combout => \in1_data~combout\(33));

-- Location: LCCOMB_X32_Y50_N2
\s_data~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~102_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & (\in3_data~combout\(33))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(33),
	datab => \in1_data~combout\(33),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~102_combout\);

-- Location: LCCOMB_X32_Y50_N28
\s_data~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~103_combout\ = (\s_data[8]~1_combout\ & ((\s_data~102_combout\ & (\in0_data~combout\(33))) # (!\s_data~102_combout\ & ((\in2_data~combout\(33)))))) # (!\s_data[8]~1_combout\ & (((\s_data~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(33),
	datab => \in2_data~combout\(33),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~102_combout\,
	combout => \s_data~103_combout\);

-- Location: LCCOMB_X32_Y50_N4
\s_data~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~104_combout\ = (\s_data~103_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~103_combout\,
	combout => \s_data~104_combout\);

-- Location: LCFF_X32_Y50_N5
\s_data[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~104_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(33));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(34),
	combout => \in0_data~combout\(34));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(34),
	combout => \in2_data~combout\(34));

-- Location: LCCOMB_X14_Y50_N22
\s_data~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~105_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(34)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(34))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(34),
	datab => \in2_data~combout\(34),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~105_combout\);

-- Location: LCCOMB_X14_Y50_N28
\s_data~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~106_combout\ = (\s_data[8]~0_combout\ & (((\s_data~105_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~105_combout\ & ((\in0_data~combout\(34)))) # (!\s_data~105_combout\ & (\in1_data~combout\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(34),
	datab => \in0_data~combout\(34),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~105_combout\,
	combout => \s_data~106_combout\);

-- Location: LCCOMB_X14_Y50_N16
\s_data~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~107_combout\ = (\s_data~106_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~106_combout\,
	combout => \s_data~107_combout\);

-- Location: LCFF_X14_Y50_N17
\s_data[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~107_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(34));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(35),
	combout => \in0_data~combout\(35));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(35),
	combout => \in2_data~combout\(35));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(35),
	combout => \in1_data~combout\(35));

-- Location: LCCOMB_X32_Y50_N10
\s_data~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~108_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & (\in3_data~combout\(35))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(35),
	datab => \in1_data~combout\(35),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~108_combout\);

-- Location: LCCOMB_X32_Y50_N16
\s_data~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~109_combout\ = (\s_data[8]~1_combout\ & ((\s_data~108_combout\ & (\in0_data~combout\(35))) # (!\s_data~108_combout\ & ((\in2_data~combout\(35)))))) # (!\s_data[8]~1_combout\ & (((\s_data~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~1_combout\,
	datab => \in0_data~combout\(35),
	datac => \in2_data~combout\(35),
	datad => \s_data~108_combout\,
	combout => \s_data~109_combout\);

-- Location: LCCOMB_X32_Y50_N6
\s_data~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~110_combout\ = (\s_data~109_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~109_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~110_combout\);

-- Location: LCFF_X32_Y50_N7
\s_data[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~110_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(35));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(36),
	combout => \in0_data~combout\(36));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(36),
	combout => \in3_data~combout\(36));

-- Location: LCCOMB_X94_Y15_N18
\s_data~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~111_combout\ = (\s_data[8]~1_combout\ & ((\in2_data~combout\(36)) # ((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (((\in3_data~combout\(36) & \s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(36),
	datab => \in3_data~combout\(36),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~111_combout\);

-- Location: LCCOMB_X94_Y15_N12
\s_data~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~112_combout\ = (\s_data[8]~0_combout\ & (((\s_data~111_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~111_combout\ & ((\in0_data~combout\(36)))) # (!\s_data~111_combout\ & (\in1_data~combout\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(36),
	datab => \in0_data~combout\(36),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~111_combout\,
	combout => \s_data~112_combout\);

-- Location: LCCOMB_X94_Y15_N20
\s_data~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~113_combout\ = (\s_data~112_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~112_combout\,
	combout => \s_data~113_combout\);

-- Location: LCFF_X94_Y15_N21
\s_data[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~113_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(36));

-- Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(37),
	combout => \in2_data~combout\(37));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(37),
	combout => \in3_data~combout\(37));

-- Location: LCCOMB_X94_Y15_N10
\s_data~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~114_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(37)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(37),
	datab => \in3_data~combout\(37),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~114_combout\);

-- Location: LCCOMB_X94_Y15_N0
\s_data~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~115_combout\ = (\s_data[8]~1_combout\ & ((\s_data~114_combout\ & (\in0_data~combout\(37))) # (!\s_data~114_combout\ & ((\in2_data~combout\(37)))))) # (!\s_data[8]~1_combout\ & (((\s_data~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(37),
	datab => \in2_data~combout\(37),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~114_combout\,
	combout => \s_data~115_combout\);

-- Location: LCCOMB_X94_Y15_N14
\s_data~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~116_combout\ = (\s_data~115_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~115_combout\,
	combout => \s_data~116_combout\);

-- Location: LCFF_X94_Y15_N15
\s_data[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~116_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(37));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(38),
	combout => \in0_data~combout\(38));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(38),
	combout => \in2_data~combout\(38));

-- Location: LCCOMB_X94_Y15_N2
\s_data~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~117_combout\ = (\s_data[8]~1_combout\ & (((\in2_data~combout\(38)) # (!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(38) & ((\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(38),
	datab => \in2_data~combout\(38),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~117_combout\);

-- Location: LCCOMB_X94_Y15_N28
\s_data~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~118_combout\ = (\s_data[8]~0_combout\ & (((\s_data~117_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~117_combout\ & ((\in0_data~combout\(38)))) # (!\s_data~117_combout\ & (\in1_data~combout\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(38),
	datab => \in0_data~combout\(38),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~117_combout\,
	combout => \s_data~118_combout\);

-- Location: LCCOMB_X94_Y15_N24
\s_data~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~119_combout\ = (\s_data~118_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~118_combout\,
	combout => \s_data~119_combout\);

-- Location: LCFF_X94_Y15_N25
\s_data[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~119_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(38));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(39),
	combout => \in2_data~combout\(39));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(39),
	combout => \in0_data~combout\(39));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(39),
	combout => \in3_data~combout\(39));

-- Location: LCCOMB_X32_Y50_N22
\s_data~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~120_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(39)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(39),
	datab => \in3_data~combout\(39),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~120_combout\);

-- Location: LCCOMB_X32_Y50_N12
\s_data~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~121_combout\ = (\s_data[8]~1_combout\ & ((\s_data~120_combout\ & ((\in0_data~combout\(39)))) # (!\s_data~120_combout\ & (\in2_data~combout\(39))))) # (!\s_data[8]~1_combout\ & (((\s_data~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~1_combout\,
	datab => \in2_data~combout\(39),
	datac => \in0_data~combout\(39),
	datad => \s_data~120_combout\,
	combout => \s_data~121_combout\);

-- Location: LCCOMB_X32_Y50_N20
\s_data~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~122_combout\ = (\s_data~121_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~121_combout\,
	combout => \s_data~122_combout\);

-- Location: LCFF_X32_Y50_N21
\s_data[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~122_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(39));

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(40),
	combout => \in1_data~combout\(40));

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(40),
	combout => \in3_data~combout\(40));

-- Location: LCCOMB_X43_Y1_N30
\s_data~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~123_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(40))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(40)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(40),
	datab => \in3_data~combout\(40),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~123_combout\);

-- Location: LCCOMB_X43_Y1_N20
\s_data~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~124_combout\ = (\s_data[8]~0_combout\ & (((\s_data~123_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~123_combout\ & (\in0_data~combout\(40))) # (!\s_data~123_combout\ & ((\in1_data~combout\(40))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(40),
	datab => \in1_data~combout\(40),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~123_combout\,
	combout => \s_data~124_combout\);

-- Location: LCCOMB_X43_Y1_N12
\s_data~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~125_combout\ = (\s_data~124_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~124_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~125_combout\);

-- Location: LCFF_X43_Y1_N13
\s_data[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~125_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(40));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(41),
	combout => \in0_data~combout\(41));

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(41),
	combout => \in2_data~combout\(41));

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(41),
	combout => \in3_data~combout\(41));

-- Location: LCCOMB_X43_Y1_N22
\s_data~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~126_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(41) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(41)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(41),
	datab => \in3_data~combout\(41),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~126_combout\);

-- Location: LCCOMB_X43_Y1_N4
\s_data~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~127_combout\ = (\s_data[8]~1_combout\ & ((\s_data~126_combout\ & (\in0_data~combout\(41))) # (!\s_data~126_combout\ & ((\in2_data~combout\(41)))))) # (!\s_data[8]~1_combout\ & (((\s_data~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~1_combout\,
	datab => \in0_data~combout\(41),
	datac => \in2_data~combout\(41),
	datad => \s_data~126_combout\,
	combout => \s_data~127_combout\);

-- Location: LCCOMB_X43_Y1_N10
\s_data~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~128_combout\ = (\s_data~127_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~127_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~128_combout\);

-- Location: LCFF_X43_Y1_N11
\s_data[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~128_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(41));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(42),
	combout => \in1_data~combout\(42));

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(42),
	combout => \in3_data~combout\(42));

-- Location: LCCOMB_X43_Y1_N18
\s_data~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~129_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(42))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(42)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(42),
	datab => \in3_data~combout\(42),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~129_combout\);

-- Location: LCCOMB_X43_Y1_N16
\s_data~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~130_combout\ = (\s_data[8]~0_combout\ & (((\s_data~129_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~129_combout\ & (\in0_data~combout\(42))) # (!\s_data~129_combout\ & ((\in1_data~combout\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(42),
	datab => \in1_data~combout\(42),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~129_combout\,
	combout => \s_data~130_combout\);

-- Location: LCCOMB_X43_Y1_N0
\s_data~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~131_combout\ = (\s_data~130_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~130_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~131_combout\);

-- Location: LCFF_X43_Y1_N1
\s_data[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~131_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(42));

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(43),
	combout => \in0_data~combout\(43));

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(43),
	combout => \in1_data~combout\(43));

-- Location: LCCOMB_X43_Y1_N26
\s_data~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~132_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(43) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(43)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(43),
	datab => \in1_data~combout\(43),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~132_combout\);

-- Location: LCCOMB_X43_Y1_N24
\s_data~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~133_combout\ = (\s_data[8]~1_combout\ & ((\s_data~132_combout\ & ((\in0_data~combout\(43)))) # (!\s_data~132_combout\ & (\in2_data~combout\(43))))) # (!\s_data[8]~1_combout\ & (((\s_data~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(43),
	datab => \s_data[8]~1_combout\,
	datac => \in0_data~combout\(43),
	datad => \s_data~132_combout\,
	combout => \s_data~133_combout\);

-- Location: LCCOMB_X43_Y1_N14
\s_data~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~134_combout\ = (\s_data~133_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~133_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~134_combout\);

-- Location: LCFF_X43_Y1_N15
\s_data[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~134_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(43));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(44),
	combout => \in0_data~combout\(44));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(44),
	combout => \in3_data~combout\(44));

-- Location: LCCOMB_X43_Y1_N2
\s_data~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~135_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(44))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(44)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(44),
	datab => \in3_data~combout\(44),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~135_combout\);

-- Location: LCCOMB_X43_Y1_N8
\s_data~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~136_combout\ = (\s_data[8]~0_combout\ & (((\s_data~135_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~135_combout\ & ((\in0_data~combout\(44)))) # (!\s_data~135_combout\ & (\in1_data~combout\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(44),
	datab => \in0_data~combout\(44),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~135_combout\,
	combout => \s_data~136_combout\);

-- Location: LCCOMB_X43_Y1_N28
\s_data~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~137_combout\ = (\s_data~136_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~136_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~137_combout\);

-- Location: LCFF_X43_Y1_N29
\s_data[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~137_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(44));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(45),
	combout => \in0_data~combout\(45));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(45),
	combout => \in2_data~combout\(45));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(45),
	combout => \in1_data~combout\(45));

-- Location: LCCOMB_X32_Y50_N30
\s_data~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~138_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(45) & (!\s_data[8]~1_combout\))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\) # (\in1_data~combout\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(45),
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~1_combout\,
	datad => \in1_data~combout\(45),
	combout => \s_data~138_combout\);

-- Location: LCCOMB_X32_Y50_N0
\s_data~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~139_combout\ = (\s_data[8]~1_combout\ & ((\s_data~138_combout\ & (\in0_data~combout\(45))) # (!\s_data~138_combout\ & ((\in2_data~combout\(45)))))) # (!\s_data[8]~1_combout\ & (((\s_data~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~1_combout\,
	datab => \in0_data~combout\(45),
	datac => \in2_data~combout\(45),
	datad => \s_data~138_combout\,
	combout => \s_data~139_combout\);

-- Location: LCCOMB_X32_Y50_N18
\s_data~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~140_combout\ = (\s_data~139_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~139_combout\,
	combout => \s_data~140_combout\);

-- Location: LCFF_X32_Y50_N19
\s_data[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~140_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(45));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(46),
	combout => \in1_data~combout\(46));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(46),
	combout => \in2_data~combout\(46));

-- Location: LCCOMB_X66_Y1_N10
\s_data~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~141_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(46)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(46))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(46),
	datab => \in2_data~combout\(46),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~141_combout\);

-- Location: LCCOMB_X66_Y1_N28
\s_data~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~142_combout\ = (\s_data[8]~0_combout\ & (((\s_data~141_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~141_combout\ & (\in0_data~combout\(46))) # (!\s_data~141_combout\ & ((\in1_data~combout\(46))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(46),
	datab => \in1_data~combout\(46),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~141_combout\,
	combout => \s_data~142_combout\);

-- Location: LCCOMB_X66_Y1_N16
\s_data~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~143_combout\ = (\s_data~142_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~142_combout\,
	combout => \s_data~143_combout\);

-- Location: LCFF_X66_Y1_N17
\s_data[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~143_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(46));

-- Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(47),
	combout => \in2_data~combout\(47));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(47),
	combout => \in3_data~combout\(47));

-- Location: LCCOMB_X66_Y1_N26
\s_data~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~144_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(47) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(47)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(47),
	datab => \in3_data~combout\(47),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~144_combout\);

-- Location: LCCOMB_X66_Y1_N20
\s_data~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~145_combout\ = (\s_data[8]~1_combout\ & ((\s_data~144_combout\ & (\in0_data~combout\(47))) # (!\s_data~144_combout\ & ((\in2_data~combout\(47)))))) # (!\s_data[8]~1_combout\ & (((\s_data~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(47),
	datab => \in2_data~combout\(47),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~144_combout\,
	combout => \s_data~145_combout\);

-- Location: LCCOMB_X66_Y1_N18
\s_data~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~146_combout\ = (\s_data~145_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~145_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~146_combout\);

-- Location: LCFF_X66_Y1_N19
\s_data[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~146_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(47));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(48),
	combout => \in1_data~combout\(48));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(48),
	combout => \in2_data~combout\(48));

-- Location: LCCOMB_X66_Y1_N6
\s_data~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~147_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(48)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(48))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(48),
	datab => \in2_data~combout\(48),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~147_combout\);

-- Location: LCCOMB_X66_Y1_N12
\s_data~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~148_combout\ = (\s_data[8]~0_combout\ & (((\s_data~147_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~147_combout\ & (\in0_data~combout\(48))) # (!\s_data~147_combout\ & ((\in1_data~combout\(48))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(48),
	datab => \in1_data~combout\(48),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~147_combout\,
	combout => \s_data~148_combout\);

-- Location: LCCOMB_X66_Y1_N24
\s_data~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~149_combout\ = (\s_data~148_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~148_combout\,
	combout => \s_data~149_combout\);

-- Location: LCFF_X66_Y1_N25
\s_data[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~149_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(48));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(49),
	combout => \in0_data~combout\(49));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(49),
	combout => \in3_data~combout\(49));

-- Location: LCCOMB_X66_Y1_N22
\s_data~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~150_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(49) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(49)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(49),
	datab => \in3_data~combout\(49),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~150_combout\);

-- Location: LCCOMB_X66_Y1_N0
\s_data~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~151_combout\ = (\s_data[8]~1_combout\ & ((\s_data~150_combout\ & ((\in0_data~combout\(49)))) # (!\s_data~150_combout\ & (\in2_data~combout\(49))))) # (!\s_data[8]~1_combout\ & (((\s_data~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(49),
	datab => \in0_data~combout\(49),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~150_combout\,
	combout => \s_data~151_combout\);

-- Location: LCCOMB_X66_Y1_N2
\s_data~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~152_combout\ = (\s_data~151_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~151_combout\,
	combout => \s_data~152_combout\);

-- Location: LCFF_X66_Y1_N3
\s_data[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~152_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(49));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(50),
	combout => \in1_data~combout\(50));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(50),
	combout => \in3_data~combout\(50));

-- Location: LCCOMB_X66_Y1_N30
\s_data~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~153_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(50))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(50)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(50),
	datab => \in3_data~combout\(50),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~153_combout\);

-- Location: LCCOMB_X66_Y1_N4
\s_data~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~154_combout\ = (\s_data[8]~0_combout\ & (((\s_data~153_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~153_combout\ & (\in0_data~combout\(50))) # (!\s_data~153_combout\ & ((\in1_data~combout\(50))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(50),
	datab => \in1_data~combout\(50),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~153_combout\,
	combout => \s_data~154_combout\);

-- Location: LCCOMB_X66_Y1_N8
\s_data~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~155_combout\ = (\s_data~154_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~154_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~155_combout\);

-- Location: LCFF_X66_Y1_N9
\s_data[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~155_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(50));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(51),
	combout => \in0_data~combout\(51));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(51),
	combout => \in1_data~combout\(51));

-- Location: LCCOMB_X36_Y50_N2
\s_data~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~156_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & (\in3_data~combout\(51))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(51),
	datab => \in1_data~combout\(51),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~156_combout\);

-- Location: LCCOMB_X36_Y50_N0
\s_data~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~157_combout\ = (\s_data[8]~1_combout\ & ((\s_data~156_combout\ & ((\in0_data~combout\(51)))) # (!\s_data~156_combout\ & (\in2_data~combout\(51))))) # (!\s_data[8]~1_combout\ & (((\s_data~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(51),
	datab => \in0_data~combout\(51),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~156_combout\,
	combout => \s_data~157_combout\);

-- Location: LCCOMB_X36_Y50_N16
\s_data~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~158_combout\ = (\s_data~157_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~157_combout\,
	combout => \s_data~158_combout\);

-- Location: LCFF_X36_Y50_N17
\s_data[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~158_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(51));

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(52),
	combout => \in1_data~combout\(52));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(52),
	combout => \in2_data~combout\(52));

-- Location: LCCOMB_X94_Y37_N26
\s_data~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~159_combout\ = (\s_data[8]~1_combout\ & (((\in2_data~combout\(52)) # (!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(52) & ((\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(52),
	datab => \in2_data~combout\(52),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~159_combout\);

-- Location: LCCOMB_X94_Y37_N8
\s_data~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~160_combout\ = (\s_data[8]~0_combout\ & (((\s_data~159_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~159_combout\ & (\in0_data~combout\(52))) # (!\s_data~159_combout\ & ((\in1_data~combout\(52))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(52),
	datab => \in1_data~combout\(52),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~159_combout\,
	combout => \s_data~160_combout\);

-- Location: LCCOMB_X94_Y37_N16
\s_data~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~161_combout\ = (\s_data~160_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~160_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~161_combout\);

-- Location: LCFF_X94_Y37_N17
\s_data[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~161_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(52));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(53),
	combout => \in2_data~combout\(53));

-- Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(53),
	combout => \in3_data~combout\(53));

-- Location: LCCOMB_X94_Y37_N22
\s_data~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~162_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(53)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(53),
	datab => \in3_data~combout\(53),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~162_combout\);

-- Location: LCCOMB_X94_Y37_N28
\s_data~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~163_combout\ = (\s_data[8]~1_combout\ & ((\s_data~162_combout\ & (\in0_data~combout\(53))) # (!\s_data~162_combout\ & ((\in2_data~combout\(53)))))) # (!\s_data[8]~1_combout\ & (((\s_data~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(53),
	datab => \in2_data~combout\(53),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~162_combout\,
	combout => \s_data~163_combout\);

-- Location: LCCOMB_X94_Y37_N6
\s_data~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~164_combout\ = (\s_data~163_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~163_combout\,
	combout => \s_data~164_combout\);

-- Location: LCFF_X94_Y37_N7
\s_data[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~164_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(53));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(54),
	combout => \in0_data~combout\(54));

-- Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(54),
	combout => \in3_data~combout\(54));

-- Location: LCCOMB_X94_Y37_N18
\s_data~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~165_combout\ = (\s_data[8]~1_combout\ & ((\in2_data~combout\(54)) # ((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (((\in3_data~combout\(54) & \s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(54),
	datab => \in3_data~combout\(54),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~165_combout\);

-- Location: LCCOMB_X94_Y37_N4
\s_data~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~166_combout\ = (\s_data[8]~0_combout\ & (((\s_data~165_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~165_combout\ & ((\in0_data~combout\(54)))) # (!\s_data~165_combout\ & (\in1_data~combout\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(54),
	datab => \in0_data~combout\(54),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~165_combout\,
	combout => \s_data~166_combout\);

-- Location: LCCOMB_X94_Y37_N24
\s_data~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~167_combout\ = (\s_data~166_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~166_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~167_combout\);

-- Location: LCFF_X94_Y37_N25
\s_data[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~167_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(54));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(55),
	combout => \in2_data~combout\(55));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(55),
	combout => \in3_data~combout\(55));

-- Location: LCCOMB_X94_Y37_N30
\s_data~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~168_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(55) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(55)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(55),
	datab => \in3_data~combout\(55),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~168_combout\);

-- Location: LCCOMB_X94_Y37_N12
\s_data~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~169_combout\ = (\s_data[8]~1_combout\ & ((\s_data~168_combout\ & (\in0_data~combout\(55))) # (!\s_data~168_combout\ & ((\in2_data~combout\(55)))))) # (!\s_data[8]~1_combout\ & (((\s_data~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(55),
	datab => \in2_data~combout\(55),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~168_combout\,
	combout => \s_data~169_combout\);

-- Location: LCCOMB_X94_Y37_N10
\s_data~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~170_combout\ = (\s_data~169_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~169_combout\,
	combout => \s_data~170_combout\);

-- Location: LCFF_X94_Y37_N11
\s_data[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~170_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(55));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(56),
	combout => \in1_data~combout\(56));

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(56),
	combout => \in3_data~combout\(56));

-- Location: LCCOMB_X94_Y37_N2
\s_data~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~171_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_data~combout\(56))) # (!\s_data[8]~1_combout\ & ((\in3_data~combout\(56)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(56),
	datab => \in3_data~combout\(56),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~171_combout\);

-- Location: LCCOMB_X94_Y37_N0
\s_data~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~172_combout\ = (\s_data[8]~0_combout\ & (((\s_data~171_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~171_combout\ & (\in0_data~combout\(56))) # (!\s_data~171_combout\ & ((\in1_data~combout\(56))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(56),
	datab => \in1_data~combout\(56),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~171_combout\,
	combout => \s_data~172_combout\);

-- Location: LCCOMB_X94_Y37_N20
\s_data~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~173_combout\ = (\s_data~172_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~4_combout\,
	datad => \s_data~172_combout\,
	combout => \s_data~173_combout\);

-- Location: LCFF_X94_Y37_N21
\s_data[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~173_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(56));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(57),
	combout => \in0_data~combout\(57));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(57),
	combout => \in2_data~combout\(57));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(57),
	combout => \in3_data~combout\(57));

-- Location: LCCOMB_X32_Y50_N26
\s_data~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~174_combout\ = (\s_data[8]~0_combout\ & (((!\s_data[8]~1_combout\ & \in3_data~combout\(57))))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(57)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(57),
	datab => \s_data[8]~0_combout\,
	datac => \s_data[8]~1_combout\,
	datad => \in3_data~combout\(57),
	combout => \s_data~174_combout\);

-- Location: LCCOMB_X32_Y50_N24
\s_data~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~175_combout\ = (\s_data[8]~1_combout\ & ((\s_data~174_combout\ & (\in0_data~combout\(57))) # (!\s_data~174_combout\ & ((\in2_data~combout\(57)))))) # (!\s_data[8]~1_combout\ & (((\s_data~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~1_combout\,
	datab => \in0_data~combout\(57),
	datac => \in2_data~combout\(57),
	datad => \s_data~174_combout\,
	combout => \s_data~175_combout\);

-- Location: LCCOMB_X32_Y50_N8
\s_data~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~176_combout\ = (\s_data~175_combout\ & ((\s_g3~regout\) # ((\s_data[8]~4_combout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_g3~regout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~175_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~176_combout\);

-- Location: LCFF_X32_Y50_N9
\s_data[57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~176_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(57));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(58),
	combout => \in1_data~combout\(58));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(58),
	combout => \in2_data~combout\(58));

-- Location: LCCOMB_X1_Y42_N26
\s_data~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~177_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_data~combout\(58)))) # (!\s_data[8]~1_combout\ & (\in3_data~combout\(58))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(58),
	datab => \in2_data~combout\(58),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~177_combout\);

-- Location: LCCOMB_X1_Y42_N28
\s_data~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~178_combout\ = (\s_data[8]~0_combout\ & (((\s_data~177_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~177_combout\ & (\in0_data~combout\(58))) # (!\s_data~177_combout\ & ((\in1_data~combout\(58))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(58),
	datab => \in1_data~combout\(58),
	datac => \s_data[8]~0_combout\,
	datad => \s_data~177_combout\,
	combout => \s_data~178_combout\);

-- Location: LCCOMB_X1_Y42_N8
\s_data~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~179_combout\ = (\s_data~178_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data~178_combout\,
	combout => \s_data~179_combout\);

-- Location: LCFF_X1_Y42_N9
\s_data[58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~179_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(58));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(59),
	combout => \in2_data~combout\(59));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(59),
	combout => \in1_data~combout\(59));

-- Location: LCCOMB_X65_Y50_N22
\s_data~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~180_combout\ = (\s_data[8]~0_combout\ & (\in3_data~combout\(59) & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_data~combout\(59)) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_data~combout\(59),
	datab => \in1_data~combout\(59),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~180_combout\);

-- Location: LCCOMB_X65_Y50_N8
\s_data~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~181_combout\ = (\s_data[8]~1_combout\ & ((\s_data~180_combout\ & (\in0_data~combout\(59))) # (!\s_data~180_combout\ & ((\in2_data~combout\(59)))))) # (!\s_data[8]~1_combout\ & (((\s_data~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(59),
	datab => \in2_data~combout\(59),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~180_combout\,
	combout => \s_data~181_combout\);

-- Location: LCCOMB_X65_Y50_N18
\s_data~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~182_combout\ = (\s_data~181_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~181_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~182_combout\);

-- Location: LCFF_X65_Y50_N19
\s_data[59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~182_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(59));

-- Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(60),
	combout => \in1_data~combout\(60));

-- Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(60),
	combout => \in3_data~combout\(60));

-- Location: LCCOMB_X15_Y1_N10
\s_data~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~183_combout\ = (\s_data[8]~1_combout\ & ((\in2_data~combout\(60)) # ((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & (((\in3_data~combout\(60) & \s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(60),
	datab => \in3_data~combout\(60),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~183_combout\);

-- Location: LCCOMB_X15_Y1_N4
\s_data~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~184_combout\ = (\s_data[8]~0_combout\ & (((\s_data~183_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data~183_combout\ & (\in0_data~combout\(60))) # (!\s_data~183_combout\ & ((\in1_data~combout\(60))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(60),
	datab => \s_data[8]~0_combout\,
	datac => \in1_data~combout\(60),
	datad => \s_data~183_combout\,
	combout => \s_data~184_combout\);

-- Location: LCCOMB_X15_Y1_N0
\s_data~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~185_combout\ = (\s_data~184_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~184_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~185_combout\);

-- Location: LCFF_X15_Y1_N1
\s_data[60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~185_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(60));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(61),
	combout => \in0_data~combout\(61));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(61),
	combout => \in3_data~combout\(61));

-- Location: LCCOMB_X15_Y1_N22
\s_data~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~186_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & ((\in3_data~combout\(61)))) # (!\s_data[8]~0_combout\ & (\in1_data~combout\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(61),
	datab => \in3_data~combout\(61),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~186_combout\);

-- Location: LCCOMB_X15_Y1_N16
\s_data~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~187_combout\ = (\s_data[8]~1_combout\ & ((\s_data~186_combout\ & ((\in0_data~combout\(61)))) # (!\s_data~186_combout\ & (\in2_data~combout\(61))))) # (!\s_data[8]~1_combout\ & (((\s_data~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_data~combout\(61),
	datab => \in0_data~combout\(61),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~186_combout\,
	combout => \s_data~187_combout\);

-- Location: LCCOMB_X15_Y1_N26
\s_data~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~188_combout\ = (\s_data~187_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data~187_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_data~188_combout\);

-- Location: LCFF_X15_Y1_N27
\s_data[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~188_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(61));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_data(62),
	combout => \in1_data~combout\(62));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_data(62),
	combout => \in0_data~combout\(62));

-- Location: LCCOMB_X1_Y20_N14
\s_data~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~190_combout\ = (\s_data~189_combout\ & (((\s_data[8]~0_combout\) # (\in0_data~combout\(62))))) # (!\s_data~189_combout\ & (\in1_data~combout\(62) & (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data~189_combout\,
	datab => \in1_data~combout\(62),
	datac => \s_data[8]~0_combout\,
	datad => \in0_data~combout\(62),
	combout => \s_data~190_combout\);

-- Location: LCCOMB_X1_Y20_N2
\s_data~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~191_combout\ = (\s_data~190_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_data~190_combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~191_combout\);

-- Location: LCFF_X1_Y20_N3
\s_data[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~191_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(62));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in2_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in2_data(63),
	combout => \in2_data~combout\(63));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_data(63),
	combout => \in3_data~combout\(63));

-- Location: LCCOMB_X65_Y50_N30
\s_data~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~192_combout\ = (\s_data[8]~0_combout\ & (((\in3_data~combout\(63) & !\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & ((\in1_data~combout\(63)) # ((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_data~combout\(63),
	datab => \in3_data~combout\(63),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_data~192_combout\);

-- Location: LCCOMB_X65_Y50_N24
\s_data~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~193_combout\ = (\s_data[8]~1_combout\ & ((\s_data~192_combout\ & (\in0_data~combout\(63))) # (!\s_data~192_combout\ & ((\in2_data~combout\(63)))))) # (!\s_data[8]~1_combout\ & (((\s_data~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_data~combout\(63),
	datab => \in2_data~combout\(63),
	datac => \s_data[8]~1_combout\,
	datad => \s_data~192_combout\,
	combout => \s_data~193_combout\);

-- Location: LCCOMB_X65_Y50_N16
\s_data~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_data~194_combout\ = (\s_data~193_combout\ & (((\s_data[8]~4_combout\) # (\s_g3~regout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~4_combout\,
	datac => \s_data~193_combout\,
	datad => \s_g3~regout\,
	combout => \s_data~194_combout\);

-- Location: LCFF_X65_Y50_N17
\s_data[63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_data~194_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_data(63));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_empty(0),
	combout => \in1_empty~combout\(0));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_empty(0),
	combout => \in3_empty~combout\(0));

-- Location: LCCOMB_X1_Y4_N22
\s_empty~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~0_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_empty~combout\(0))) # (!\s_data[8]~1_combout\ & ((\in3_empty~combout\(0)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_empty~combout\(0),
	datab => \in3_empty~combout\(0),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_empty~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\s_empty~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~1_combout\ = (\s_data[8]~0_combout\ & (((\s_empty~0_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_empty~0_combout\ & (\in0_empty~combout\(0))) # (!\s_empty~0_combout\ & ((\in1_empty~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_empty~combout\(0),
	datab => \s_data[8]~0_combout\,
	datac => \in1_empty~combout\(0),
	datad => \s_empty~0_combout\,
	combout => \s_empty~1_combout\);

-- Location: LCCOMB_X1_Y4_N6
\s_empty~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~2_combout\ = (\s_empty~1_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_empty~1_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_empty~2_combout\);

-- Location: LCFF_X1_Y4_N7
\s_empty[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_empty~2_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_empty(0));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_empty(1),
	combout => \in0_empty~combout\(1));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_empty(1),
	combout => \in1_empty~combout\(1));

-- Location: LCCOMB_X15_Y1_N18
\s_empty~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~3_combout\ = (\s_data[8]~1_combout\ & (((!\s_data[8]~0_combout\)))) # (!\s_data[8]~1_combout\ & ((\s_data[8]~0_combout\ & (\in3_empty~combout\(1))) # (!\s_data[8]~0_combout\ & ((\in1_empty~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_empty~combout\(1),
	datab => \in1_empty~combout\(1),
	datac => \s_data[8]~1_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_empty~3_combout\);

-- Location: LCCOMB_X15_Y1_N20
\s_empty~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~4_combout\ = (\s_data[8]~1_combout\ & ((\s_empty~3_combout\ & ((\in0_empty~combout\(1)))) # (!\s_empty~3_combout\ & (\in2_empty~combout\(1))))) # (!\s_data[8]~1_combout\ & (((\s_empty~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_empty~combout\(1),
	datab => \in0_empty~combout\(1),
	datac => \s_data[8]~1_combout\,
	datad => \s_empty~3_combout\,
	combout => \s_empty~4_combout\);

-- Location: LCCOMB_X15_Y1_N12
\s_empty~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~5_combout\ = (\s_empty~4_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_empty~4_combout\,
	datad => \s_data[8]~0_combout\,
	combout => \s_empty~5_combout\);

-- Location: LCFF_X15_Y1_N13
\s_empty[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_empty~5_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_empty(1));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in0_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in0_empty(2),
	combout => \in0_empty~combout\(2));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in3_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in3_empty(2),
	combout => \in3_empty~combout\(2));

-- Location: LCCOMB_X1_Y4_N2
\s_empty~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~6_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & (\in2_empty~combout\(2))) # (!\s_data[8]~1_combout\ & ((\in3_empty~combout\(2)))))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in2_empty~combout\(2),
	datab => \in3_empty~combout\(2),
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_empty~6_combout\);

-- Location: LCCOMB_X1_Y4_N20
\s_empty~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~7_combout\ = (\s_data[8]~0_combout\ & (((\s_empty~6_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_empty~6_combout\ & ((\in0_empty~combout\(2)))) # (!\s_empty~6_combout\ & (\in1_empty~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1_empty~combout\(2),
	datab => \in0_empty~combout\(2),
	datac => \s_data[8]~0_combout\,
	datad => \s_empty~6_combout\,
	combout => \s_empty~7_combout\);

-- Location: LCCOMB_X1_Y4_N28
\s_empty~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_empty~8_combout\ = (\s_empty~7_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_empty~7_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_empty~8_combout\);

-- Location: LCFF_X1_Y4_N29
\s_empty[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_empty~8_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_empty(2));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in1_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in1_endofpacket,
	combout => \in1_endofpacket~combout\);

-- Location: LCCOMB_X5_Y23_N6
\s_endofpacket~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_endofpacket~0_combout\ = (\s_data[8]~0_combout\ & (!\s_data[8]~1_combout\ & ((\in3_endofpacket~combout\)))) # (!\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\) # ((\in1_endofpacket~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_data[8]~1_combout\,
	datac => \in1_endofpacket~combout\,
	datad => \in3_endofpacket~combout\,
	combout => \s_endofpacket~0_combout\);

-- Location: LCCOMB_X5_Y23_N16
\s_endofpacket~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_endofpacket~1_combout\ = (\s_data[8]~1_combout\ & ((\s_endofpacket~0_combout\ & (\in0_endofpacket~combout\)) # (!\s_endofpacket~0_combout\ & ((\in2_endofpacket~combout\))))) # (!\s_data[8]~1_combout\ & (((\s_endofpacket~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_endofpacket~combout\,
	datab => \s_data[8]~1_combout\,
	datac => \in2_endofpacket~combout\,
	datad => \s_endofpacket~0_combout\,
	combout => \s_endofpacket~1_combout\);

-- Location: LCCOMB_X5_Y23_N18
\s_endofpacket~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_endofpacket~2_combout\ = (\s_endofpacket~1_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_endofpacket~1_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_endofpacket~2_combout\);

-- Location: LCFF_X5_Y23_N19
s_endofpacket : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_endofpacket~2_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_endofpacket~regout\);

-- Location: LCCOMB_X1_Y42_N30
\s_startofpacket~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_startofpacket~0_combout\ = (\s_data[8]~0_combout\ & ((\s_data[8]~1_combout\ & ((\in2_startofpacket~combout\))) # (!\s_data[8]~1_combout\ & (\in3_startofpacket~combout\)))) # (!\s_data[8]~0_combout\ & (((\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_startofpacket~combout\,
	datab => \in2_startofpacket~combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_startofpacket~0_combout\);

-- Location: LCCOMB_X1_Y42_N16
\s_startofpacket~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_startofpacket~1_combout\ = (\s_data[8]~0_combout\ & (((\s_startofpacket~0_combout\)))) # (!\s_data[8]~0_combout\ & ((\s_startofpacket~0_combout\ & (\in0_startofpacket~combout\)) # (!\s_startofpacket~0_combout\ & ((\in1_startofpacket~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_startofpacket~combout\,
	datab => \in1_startofpacket~combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_startofpacket~0_combout\,
	combout => \s_startofpacket~1_combout\);

-- Location: LCCOMB_X1_Y42_N18
\s_startofpacket~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_startofpacket~2_combout\ = (\s_startofpacket~1_combout\ & (((\s_g3~regout\) # (\s_data[8]~4_combout\)) # (!\s_data[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~0_combout\,
	datab => \s_g3~regout\,
	datac => \s_startofpacket~1_combout\,
	datad => \s_data[8]~4_combout\,
	combout => \s_startofpacket~2_combout\);

-- Location: LCFF_X1_Y42_N19
s_startofpacket : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_startofpacket~2_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_startofpacket~regout\);

-- Location: LCCOMB_X1_Y42_N22
\s_valid~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_valid~0_combout\ = (\s_data[8]~0_combout\ & (\in3_valid~combout\ & ((!\s_data[8]~1_combout\)))) # (!\s_data[8]~0_combout\ & (((\in1_valid~combout\) # (\s_data[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in3_valid~combout\,
	datab => \in1_valid~combout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_data[8]~1_combout\,
	combout => \s_valid~0_combout\);

-- Location: LCCOMB_X1_Y42_N12
\s_valid~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_valid~1_combout\ = (\s_data[8]~1_combout\ & ((\s_valid~0_combout\ & (\in0_valid~combout\)) # (!\s_valid~0_combout\ & ((\in2_valid~combout\))))) # (!\s_data[8]~1_combout\ & (((\s_valid~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0_valid~combout\,
	datab => \s_data[8]~1_combout\,
	datac => \in2_valid~combout\,
	datad => \s_valid~0_combout\,
	combout => \s_valid~1_combout\);

-- Location: LCCOMB_X1_Y42_N4
\s_valid~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_valid~2_combout\ = (\s_valid~1_combout\ & ((\s_data[8]~4_combout\) # ((\s_g3~regout\) # (!\s_data[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_data[8]~4_combout\,
	datab => \s_g3~regout\,
	datac => \s_data[8]~0_combout\,
	datad => \s_valid~1_combout\,
	combout => \s_valid~2_combout\);

-- Location: LCFF_X1_Y42_N5
s_valid : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_valid~2_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_valid~regout\);

-- Location: LCCOMB_X5_Y23_N12
\s_channel~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~0_combout\ = (!\s_g1~regout\ & (!\s_g2~regout\ & \s_g3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_g1~regout\,
	datac => \s_g2~regout\,
	datad => \s_g3~regout\,
	combout => \s_channel~0_combout\);

-- Location: LCFF_X5_Y23_N13
\s_channel[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~0_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sclr => \s_g0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(0));

-- Location: LCCOMB_X5_Y23_N30
\s_channel[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel[1]~feeder_combout\ = \s_data[8]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_data[8]~4_combout\,
	combout => \s_channel[1]~feeder_combout\);

-- Location: LCFF_X5_Y23_N31
\s_channel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel[1]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sclr => \s_g0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(1));

-- Location: LCCOMB_X5_Y23_N8
\s_channel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~1_combout\ = (\s_g1~regout\ & !\s_g0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_g1~regout\,
	datac => \s_g0~regout\,
	combout => \s_channel~1_combout\);

-- Location: LCFF_X5_Y23_N9
\s_channel[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~1_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(2));

-- Location: LCFF_X2_Y23_N1
\s_channel[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \s_g0~regout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(3));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(0));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(2));

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(3));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(4));

-- Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(5));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(6));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(7));

-- Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(8));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(9));

-- Location: PIN_AF28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(10));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(11));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(12));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(13));

-- Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_address[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_address(15));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\csr_read~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_csr_read);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(0));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(1));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(2));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(3));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(4));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(5));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum3(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(7));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(8));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(9));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(10));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(11));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(12));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum2(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(13));

-- Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(14));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(15));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(16));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(17));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(18));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(19));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum1(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(20));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(21));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(22));

-- Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(23));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(24));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(25));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(26));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_quantum0(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(27));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_selector(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(28));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_selector(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(29));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_selector(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(30));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_readdata[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_selector(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(31));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\csr_waitrequest~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_waitrequest);

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in0_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in0_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in0_ready);

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in1_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in1_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in1_ready);

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in2_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in2_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in2_ready);

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in3_ready~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \in3_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in3_ready);

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(0));

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(1));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(3));

-- Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(4));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(6));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(7));

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(8));

-- Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(9));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(10));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(11));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(12));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(13));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(14));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(15));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(16));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(17));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(18));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(19));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(20));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(21));

-- Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(22));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(23));

-- Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(24));

-- Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(25));

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(26));

-- Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(27));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(28));

-- Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(29));

-- Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(30));

-- Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(31));

-- Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(32));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(33));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(34));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(35));

-- Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(36));

-- Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(37));

-- Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(38));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(39));

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(40));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(41));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(42));

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(43));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(44));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(45));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(46));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(47));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(48));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(49));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(50));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(51));

-- Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(52));

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(53));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(54));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(55));

-- Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(56));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(57));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(58));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(59));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(60));

-- Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(61));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(62));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_data(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(63));

-- Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_empty(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(0));

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_empty(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(1));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_empty(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(2));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \s_endofpacket~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_endofpacket);

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \s_startofpacket~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_startofpacket);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \s_valid~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_valid);

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_channel(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(0));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_channel(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(1));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_channel(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(2));

-- Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => s_channel(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(3));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(4));

-- Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(5));

-- Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(6));

-- Location: PIN_AD27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(7));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(8));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(9));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(10));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(11));

-- Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(12));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(13));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(14));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(15));

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(16));

-- Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(17));

-- Location: PIN_AG24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(18));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(19));

-- Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(20));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(21));

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(22));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(23));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(24));

-- Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(25));

-- Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(26));

-- Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(27));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(28));

-- Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(29));

-- Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(30));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(31));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(32));

-- Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(33));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(34));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(35));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(36));

-- Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(37));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(38));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(39));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(40));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(41));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(42));

-- Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(43));

-- Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(44));

-- Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(45));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(46));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(47));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(48));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(49));

-- Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(50));

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(51));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(52));

-- Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(53));

-- Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(54));

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(55));

-- Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(56));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(57));

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(58));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(59));

-- Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(60));

-- Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(61));

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(62));

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(63));

-- Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[64]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(64));

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[65]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(65));

-- Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[66]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(66));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[67]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(67));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[68]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(68));

-- Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[69]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(69));

-- Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[70]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(70));

-- Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[71]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(71));

-- Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[72]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(72));

-- Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[73]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(73));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[74]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(74));

-- Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[75]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(75));

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[76]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(76));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[77]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(77));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[78]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(78));

-- Location: PIN_AD26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[79]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(79));

-- Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[80]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(80));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[81]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(81));

-- Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[82]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(82));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[83]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(83));

-- Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[84]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(84));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[85]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(85));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[86]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(86));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[87]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(87));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[88]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(88));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[89]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(89));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[90]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(90));

-- Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[91]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(91));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[92]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(92));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[93]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(93));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[94]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(94));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[95]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(95));

-- Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[96]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(96));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[97]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(97));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[98]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(98));

-- Location: PIN_AD8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[99]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(99));

-- Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[100]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(100));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[101]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(101));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[102]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(102));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[103]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(103));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[104]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(104));

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[105]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(105));

-- Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[106]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(106));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[107]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(107));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[108]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(108));

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[109]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(109));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[110]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(110));

-- Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[111]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(111));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[112]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(112));

-- Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[113]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(113));

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[114]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(114));

-- Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[115]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(115));

-- Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[116]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(116));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[117]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(117));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[118]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(118));

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[119]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(119));

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[120]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(120));

-- Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[121]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(121));

-- Location: PIN_AJ29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[122]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(122));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[123]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(123));

-- Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[124]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(124));

-- Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[125]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(125));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[126]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(126));

-- Location: PIN_AG28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\out_channel[127]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(127));
END structure;


