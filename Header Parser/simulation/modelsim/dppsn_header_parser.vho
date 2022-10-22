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

-- DATE "01/14/2020 22:36:08"

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

ENTITY 	dppsn_header_parser IS
    PORT (
	csr_address : IN std_logic_vector(15 DOWNTO 0);
	csr_read : IN std_logic;
	csr_readdata : OUT std_logic_vector(31 DOWNTO 0);
	csr_write : IN std_logic;
	csr_writedata : IN std_logic_vector(31 DOWNTO 0);
	csr_waitrequest : OUT std_logic;
	csr_clk_clk : IN std_logic;
	csr_reset_reset_n : IN std_logic;
	reset_reset_n : IN std_logic;
	clk_clk : IN std_logic;
	in_data : IN std_logic_vector(63 DOWNTO 0);
	in_ready : OUT std_logic;
	in_valid : IN std_logic;
	in_startofpacket : IN std_logic;
	in_endofpacket : IN std_logic;
	in_empty : IN std_logic_vector(2 DOWNTO 0);
	in_channel : IN std_logic_vector(127 DOWNTO 0);
	out_data : OUT std_logic_vector(63 DOWNTO 0);
	out_empty : OUT std_logic_vector(2 DOWNTO 0);
	out_endofpacket : OUT std_logic;
	out_ready : IN std_logic;
	out_startofpacket : OUT std_logic;
	out_valid : OUT std_logic;
	out_channel : OUT std_logic_vector(127 DOWNTO 0)
	);
END dppsn_header_parser;

-- Design Ports Information
-- csr_address[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[2]	=>  Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[4]	=>  Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[5]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[6]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[7]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[8]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[9]	=>  Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[10]	=>  Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[11]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[12]	=>  Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[14]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_address[15]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_read	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_readdata[0]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[4]	=>  Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[5]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[6]	=>  Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[7]	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[8]	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[9]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[10]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[11]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[12]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[13]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[14]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[15]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[16]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[17]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[18]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[19]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[20]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[21]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[22]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[23]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[24]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[25]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[26]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[27]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[28]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[29]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[30]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_readdata[31]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- csr_writedata[16]	=>  Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[17]	=>  Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[18]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[19]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[20]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[21]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[22]	=>  Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[23]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[24]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[25]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[26]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[27]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[28]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[29]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[30]	=>  Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[31]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_waitrequest	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in_ready	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- in_channel[4]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[5]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[6]	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[7]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[8]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[9]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[10]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[11]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[12]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[13]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[14]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[15]	=>  Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[16]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[17]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[18]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[19]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[20]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[21]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[22]	=>  Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[23]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[24]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[25]	=>  Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[26]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[27]	=>  Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[28]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[29]	=>  Location: PIN_AH24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[30]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[31]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[32]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[33]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[34]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[35]	=>  Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[36]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[37]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[38]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[39]	=>  Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[40]	=>  Location: PIN_R28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[41]	=>  Location: PIN_R29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[42]	=>  Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[43]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[44]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[45]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[46]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[47]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[48]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[49]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[50]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[51]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[52]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[53]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[54]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[55]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[56]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[57]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[58]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[59]	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[60]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[61]	=>  Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[62]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[63]	=>  Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[64]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[65]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[66]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[67]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[68]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[69]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[70]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[71]	=>  Location: PIN_AG24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[72]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[73]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[74]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[75]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[76]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[77]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[78]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[79]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[80]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[81]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[82]	=>  Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[83]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[84]	=>  Location: PIN_AG29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[85]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[86]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[87]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[88]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[89]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[90]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[91]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[92]	=>  Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[93]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[94]	=>  Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[95]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[96]	=>  Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[97]	=>  Location: PIN_AK28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[98]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[99]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[100]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[101]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[102]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[103]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[104]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[105]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[106]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[107]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[108]	=>  Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[109]	=>  Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[110]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[111]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[112]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[113]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[114]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[115]	=>  Location: PIN_AF1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[116]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[117]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[118]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[119]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[120]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[121]	=>  Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[122]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[123]	=>  Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[124]	=>  Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[125]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[126]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[127]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- out_data[0]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[2]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[3]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[4]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[7]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[8]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[10]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[11]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[12]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[13]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[14]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[15]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[16]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[17]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[18]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[19]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[20]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[21]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[22]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[23]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[24]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[25]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[26]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[27]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[28]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[29]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[30]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[31]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[32]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[33]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[34]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[35]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[36]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[37]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[38]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[39]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[40]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[41]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[42]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[43]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[44]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[45]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[46]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[47]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[48]	=>  Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[49]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[50]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[51]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[52]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[53]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[54]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[55]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[56]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[57]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[58]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[59]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[60]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[61]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[62]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_data[63]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[0]	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[1]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_empty[2]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_endofpacket	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_startofpacket	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_valid	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[0]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[1]	=>  Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[2]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[3]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[4]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[5]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[6]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[7]	=>  Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[8]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[9]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[10]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[11]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[12]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[13]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[14]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[15]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[16]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[17]	=>  Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[18]	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[19]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[20]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[21]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[22]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[23]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[24]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[25]	=>  Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[26]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[27]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[28]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[29]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[30]	=>  Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[31]	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[32]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[33]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[34]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[35]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[36]	=>  Location: PIN_AJ23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[37]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[38]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[39]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[40]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[41]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[42]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[43]	=>  Location: PIN_AK25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[44]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[45]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[46]	=>  Location: PIN_Y28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[47]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[48]	=>  Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[49]	=>  Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[50]	=>  Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[51]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[52]	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[53]	=>  Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[54]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[55]	=>  Location: PIN_AA29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[56]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[57]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[58]	=>  Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[59]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[60]	=>  Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[61]	=>  Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[62]	=>  Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[63]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[64]	=>  Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[65]	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[66]	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[67]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[68]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[69]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[70]	=>  Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[71]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[72]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[73]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[74]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[75]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[76]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[77]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[78]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[79]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[80]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[81]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[82]	=>  Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[83]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[84]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[85]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[86]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[87]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[88]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[89]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[90]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[91]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[92]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[93]	=>  Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[94]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[95]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[96]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[97]	=>  Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[98]	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[99]	=>  Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[100]	=>  Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[101]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[102]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[103]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[104]	=>  Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[105]	=>  Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[106]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[107]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[108]	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[109]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[110]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[111]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[112]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[113]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[114]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[115]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[116]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[117]	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[118]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[119]	=>  Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[120]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[121]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[122]	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[123]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[124]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[125]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[126]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_channel[127]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- out_ready	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[0]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_clk_clk	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_reset_reset_n	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_write	=>  Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[1]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[2]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[3]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[4]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[5]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[6]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[7]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[8]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[9]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[10]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[11]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[12]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[13]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[14]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- csr_writedata[15]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_reset_n	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_valid	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[8]	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[9]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[10]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[11]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[12]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[13]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[14]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[15]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[16]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[17]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[18]	=>  Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[19]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[20]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[21]	=>  Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[22]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[23]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[24]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[25]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[26]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[27]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[28]	=>  Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[29]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[30]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[31]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[32]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[33]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[34]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[35]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[36]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[37]	=>  Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[38]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[39]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[40]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[41]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[42]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[43]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[44]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[45]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[46]	=>  Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[47]	=>  Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[48]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[49]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[50]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[51]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[52]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[53]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[54]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[55]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[56]	=>  Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[57]	=>  Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[58]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[59]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[60]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[61]	=>  Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[62]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[63]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_empty[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_empty[1]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_empty[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_endofpacket	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_startofpacket	=>  Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[0]	=>  Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[1]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[2]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_channel[3]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dppsn_header_parser IS
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
SIGNAL ww_reset_reset_n : std_logic;
SIGNAL ww_clk_clk : std_logic;
SIGNAL ww_in_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_in_ready : std_logic;
SIGNAL ww_in_valid : std_logic;
SIGNAL ww_in_startofpacket : std_logic;
SIGNAL ww_in_endofpacket : std_logic;
SIGNAL ww_in_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_in_channel : std_logic_vector(127 DOWNTO 0);
SIGNAL ww_out_data : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_out_empty : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_out_endofpacket : std_logic;
SIGNAL ww_out_ready : std_logic;
SIGNAL ww_out_startofpacket : std_logic;
SIGNAL ww_out_valid : std_logic;
SIGNAL ww_out_channel : std_logic_vector(127 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTADATAIN_bus\ : std_logic_vector(33 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\ : std_logic_vector(33 DOWNTO 0);
SIGNAL \clk_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \csr_clk_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \csr_reset_reset_n~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ : std_logic;
SIGNAL \s_channel_temp[4]~6_combout\ : std_logic;
SIGNAL \s_channel_temp[8]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[12]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[13]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[78]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[16]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[22]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[95]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[35]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[99]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[38]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[40]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[106]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[107]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[108]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[44]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[113]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[50]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[114]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[118]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[57]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[59]~feeder_combout\ : std_logic;
SIGNAL \csr_clk_clk~combout\ : std_logic;
SIGNAL \csr_clk_clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_selector[0]~feeder_combout\ : std_logic;
SIGNAL \csr_reset_reset_n~combout\ : std_logic;
SIGNAL \csr_reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \csr_write~combout\ : std_logic;
SIGNAL \s_selector[2]~feeder_combout\ : std_logic;
SIGNAL \s_selector[5]~feeder_combout\ : std_logic;
SIGNAL \s_selector[6]~0_combout\ : std_logic;
SIGNAL \s_selector[8]~feeder_combout\ : std_logic;
SIGNAL \s_selector[10]~feeder_combout\ : std_logic;
SIGNAL \s_selector[13]~feeder_combout\ : std_logic;
SIGNAL \s_selector[15]~1_combout\ : std_logic;
SIGNAL \out_ready~combout\ : std_logic;
SIGNAL \clk_clk~combout\ : std_logic;
SIGNAL \clk_clk~clkctrl_outclk\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ : std_logic;
SIGNAL \reset_reset_n~combout\ : std_logic;
SIGNAL \reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|dffe4~feeder_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|dffe4~regout\ : std_logic;
SIGNAL \s_delay_data[0][0]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][0]~regout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~5\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \s_delay_data[0][1]~regout\ : std_logic;
SIGNAL \s_delay_data[0][2]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][2]~regout\ : std_logic;
SIGNAL \s_delay_data[0][3]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][3]~regout\ : std_logic;
SIGNAL \s_delay_data[0][4]~regout\ : std_logic;
SIGNAL \s_delay_data[0][5]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][5]~regout\ : std_logic;
SIGNAL \s_delay_data[0][6]~regout\ : std_logic;
SIGNAL \s_delay_data[0][7]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][7]~regout\ : std_logic;
SIGNAL \s_delay_data[0][8]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][8]~regout\ : std_logic;
SIGNAL \s_delay_data[0][9]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][9]~regout\ : std_logic;
SIGNAL \s_delay_data[0][10]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][10]~regout\ : std_logic;
SIGNAL \s_delay_data[0][11]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][11]~regout\ : std_logic;
SIGNAL \s_delay_data[0][12]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][12]~regout\ : std_logic;
SIGNAL \s_delay_data[0][13]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][13]~regout\ : std_logic;
SIGNAL \s_delay_data[0][14]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][14]~regout\ : std_logic;
SIGNAL \s_delay_data[0][15]~regout\ : std_logic;
SIGNAL \s_delay_data[0][16]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][16]~regout\ : std_logic;
SIGNAL \s_delay_data[0][17]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][17]~regout\ : std_logic;
SIGNAL \s_delay_data[0][18]~regout\ : std_logic;
SIGNAL \s_delay_data[0][19]~regout\ : std_logic;
SIGNAL \s_delay_data[0][20]~regout\ : std_logic;
SIGNAL \s_delay_data[0][21]~regout\ : std_logic;
SIGNAL \s_delay_data[0][22]~regout\ : std_logic;
SIGNAL \s_delay_data[0][23]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][23]~regout\ : std_logic;
SIGNAL \s_delay_data[0][24]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][24]~regout\ : std_logic;
SIGNAL \s_delay_data[0][25]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][25]~regout\ : std_logic;
SIGNAL \s_delay_data[0][26]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][26]~regout\ : std_logic;
SIGNAL \s_delay_data[0][27]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][27]~regout\ : std_logic;
SIGNAL \s_delay_data[0][28]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][28]~regout\ : std_logic;
SIGNAL \s_delay_data[0][29]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][29]~regout\ : std_logic;
SIGNAL \s_delay_data[0][30]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][30]~regout\ : std_logic;
SIGNAL \s_delay_data[0][31]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][31]~regout\ : std_logic;
SIGNAL \s_delay_data[0][32]~regout\ : std_logic;
SIGNAL \s_delay_data[0][33]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][33]~regout\ : std_logic;
SIGNAL \s_delay_data[0][34]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][34]~regout\ : std_logic;
SIGNAL \s_delay_data[0][35]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][35]~regout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a1\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a2\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a3\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a4\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a5\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a6\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a7\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a8\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a9\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a10\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a11\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a12\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a13\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a14\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a15\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a16\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a17\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a18\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a19\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a20\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a21\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a22\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a23\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a24\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a25\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a26\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a27\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a28\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a29\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a30\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a31\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a32\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a33\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a34\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a35\ : std_logic;
SIGNAL \s_delay_data[0][36]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][36]~regout\ : std_logic;
SIGNAL \s_delay_data[0][37]~regout\ : std_logic;
SIGNAL \s_delay_data[0][38]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][38]~regout\ : std_logic;
SIGNAL \s_delay_data[0][39]~regout\ : std_logic;
SIGNAL \s_delay_data[0][40]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][40]~regout\ : std_logic;
SIGNAL \s_delay_data[0][41]~regout\ : std_logic;
SIGNAL \s_delay_data[0][42]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][42]~regout\ : std_logic;
SIGNAL \s_delay_data[0][43]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][43]~regout\ : std_logic;
SIGNAL \s_delay_data[0][44]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][44]~regout\ : std_logic;
SIGNAL \s_delay_data[0][45]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][45]~regout\ : std_logic;
SIGNAL \s_delay_data[0][46]~regout\ : std_logic;
SIGNAL \s_delay_data[0][47]~regout\ : std_logic;
SIGNAL \s_delay_data[0][48]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][48]~regout\ : std_logic;
SIGNAL \s_delay_data[0][49]~regout\ : std_logic;
SIGNAL \s_delay_data[0][50]~regout\ : std_logic;
SIGNAL \s_delay_data[0][51]~regout\ : std_logic;
SIGNAL \s_delay_data[0][52]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][52]~regout\ : std_logic;
SIGNAL \s_delay_data[0][53]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][53]~regout\ : std_logic;
SIGNAL \s_delay_data[0][54]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][54]~regout\ : std_logic;
SIGNAL \s_delay_data[0][55]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][55]~regout\ : std_logic;
SIGNAL \s_delay_data[0][56]~regout\ : std_logic;
SIGNAL \s_delay_data[0][57]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][57]~regout\ : std_logic;
SIGNAL \s_delay_data[0][58]~regout\ : std_logic;
SIGNAL \s_delay_data[0][59]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][59]~regout\ : std_logic;
SIGNAL \s_delay_data[0][60]~regout\ : std_logic;
SIGNAL \s_delay_data[0][61]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][61]~regout\ : std_logic;
SIGNAL \s_delay_data[0][62]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][62]~regout\ : std_logic;
SIGNAL \s_delay_data[0][63]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data[0][63]~regout\ : std_logic;
SIGNAL \s_delay_empty[0][0]~regout\ : std_logic;
SIGNAL \s_delay_empty[0][1]~feeder_combout\ : std_logic;
SIGNAL \s_delay_empty[0][1]~regout\ : std_logic;
SIGNAL \s_delay_empty[0][2]~feeder_combout\ : std_logic;
SIGNAL \s_delay_empty[0][2]~regout\ : std_logic;
SIGNAL \in_endofpacket~combout\ : std_logic;
SIGNAL \in_startofpacket~combout\ : std_logic;
SIGNAL \in_valid~combout\ : std_logic;
SIGNAL \s_delay_valid[0]~feeder_combout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36~portbdataout\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a37\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a38\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a39\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a40\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a41\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a42\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a43\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a44\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a45\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a46\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a47\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a48\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a49\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a50\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a51\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a52\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a53\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a54\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a55\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a56\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a57\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a58\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a59\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a60\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a61\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a62\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a63\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a64\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a65\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a66\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a67\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a68\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a69\ : std_logic;
SIGNAL \s_channel_in[0]~feeder_combout\ : std_logic;
SIGNAL \s_channel_in[0]~1_combout\ : std_logic;
SIGNAL \s_state.S1~regout\ : std_logic;
SIGNAL \s_state.S2~regout\ : std_logic;
SIGNAL \s_state.S3~regout\ : std_logic;
SIGNAL \s_state.S4~feeder_combout\ : std_logic;
SIGNAL \s_state.S4~regout\ : std_logic;
SIGNAL \s_state.S5~regout\ : std_logic;
SIGNAL \s_state.S6~regout\ : std_logic;
SIGNAL \s_state.S7~feeder_combout\ : std_logic;
SIGNAL \s_state.S7~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \s_state.S0~regout\ : std_logic;
SIGNAL \s_channel_in[0]~0_combout\ : std_logic;
SIGNAL \s_channel[0]~0_combout\ : std_logic;
SIGNAL \s_channel_in[1]~feeder_combout\ : std_logic;
SIGNAL \s_channel[1]~feeder_combout\ : std_logic;
SIGNAL \s_channel_in[2]~feeder_combout\ : std_logic;
SIGNAL \s_channel[2]~feeder_combout\ : std_logic;
SIGNAL \s_channel_in[3]~feeder_combout\ : std_logic;
SIGNAL \s_channel[3]~feeder_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~5_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~1_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~8_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~7_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~9_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~0_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~2_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~4_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~10_combout\ : std_logic;
SIGNAL \s_channel~1_combout\ : std_logic;
SIGNAL \s_channel_temp[5]~feeder_combout\ : std_logic;
SIGNAL \s_channel~2_combout\ : std_logic;
SIGNAL \s_channel_temp[6]~feeder_combout\ : std_logic;
SIGNAL \s_channel~3_combout\ : std_logic;
SIGNAL \s_channel~4_combout\ : std_logic;
SIGNAL \s_channel~5_combout\ : std_logic;
SIGNAL \s_channel~6_combout\ : std_logic;
SIGNAL \s_channel_temp[10]~feeder_combout\ : std_logic;
SIGNAL \s_channel~7_combout\ : std_logic;
SIGNAL \s_channel_temp[11]~feeder_combout\ : std_logic;
SIGNAL \s_channel~8_combout\ : std_logic;
SIGNAL \s_channel~9_combout\ : std_logic;
SIGNAL \s_channel~10_combout\ : std_logic;
SIGNAL \s_channel_temp[14]~feeder_combout\ : std_logic;
SIGNAL \s_channel~11_combout\ : std_logic;
SIGNAL \s_channel_temp[15]~feeder_combout\ : std_logic;
SIGNAL \s_channel~12_combout\ : std_logic;
SIGNAL \s_channel~13_combout\ : std_logic;
SIGNAL \s_channel~14_combout\ : std_logic;
SIGNAL \s_channel~15_combout\ : std_logic;
SIGNAL \s_channel_temp[19]~feeder_combout\ : std_logic;
SIGNAL \s_channel~16_combout\ : std_logic;
SIGNAL \s_channel_temp[20]~feeder_combout\ : std_logic;
SIGNAL \s_channel~17_combout\ : std_logic;
SIGNAL \s_channel_temp[21]~feeder_combout\ : std_logic;
SIGNAL \s_channel~18_combout\ : std_logic;
SIGNAL \s_channel~19_combout\ : std_logic;
SIGNAL \s_channel~20_combout\ : std_logic;
SIGNAL \s_channel_temp[24]~feeder_combout\ : std_logic;
SIGNAL \s_channel~21_combout\ : std_logic;
SIGNAL \s_channel~22_combout\ : std_logic;
SIGNAL \s_channel~23_combout\ : std_logic;
SIGNAL \s_channel~24_combout\ : std_logic;
SIGNAL \s_channel~25_combout\ : std_logic;
SIGNAL \s_channel~26_combout\ : std_logic;
SIGNAL \s_channel~27_combout\ : std_logic;
SIGNAL \s_channel_temp[31]~feeder_combout\ : std_logic;
SIGNAL \s_channel~28_combout\ : std_logic;
SIGNAL \s_channel_temp[32]~feeder_combout\ : std_logic;
SIGNAL \s_channel~29_combout\ : std_logic;
SIGNAL \s_channel~30_combout\ : std_logic;
SIGNAL \s_channel~31_combout\ : std_logic;
SIGNAL \s_channel~32_combout\ : std_logic;
SIGNAL \s_channel~33_combout\ : std_logic;
SIGNAL \s_channel_temp[37]~feeder_combout\ : std_logic;
SIGNAL \s_channel~34_combout\ : std_logic;
SIGNAL \s_channel~35_combout\ : std_logic;
SIGNAL \s_channel_temp[39]~feeder_combout\ : std_logic;
SIGNAL \s_channel~36_combout\ : std_logic;
SIGNAL \s_channel~37_combout\ : std_logic;
SIGNAL \s_channel~38_combout\ : std_logic;
SIGNAL \s_channel~39_combout\ : std_logic;
SIGNAL \s_channel_temp[43]~feeder_combout\ : std_logic;
SIGNAL \s_channel~40_combout\ : std_logic;
SIGNAL \s_channel~41_combout\ : std_logic;
SIGNAL \s_channel_temp[45]~feeder_combout\ : std_logic;
SIGNAL \s_channel~42_combout\ : std_logic;
SIGNAL \s_channel~43_combout\ : std_logic;
SIGNAL \s_channel~44_combout\ : std_logic;
SIGNAL \s_channel~45_combout\ : std_logic;
SIGNAL \s_channel_temp[49]~feeder_combout\ : std_logic;
SIGNAL \s_channel~46_combout\ : std_logic;
SIGNAL \s_channel~47_combout\ : std_logic;
SIGNAL \s_channel_temp[51]~feeder_combout\ : std_logic;
SIGNAL \s_channel~48_combout\ : std_logic;
SIGNAL \s_channel~49_combout\ : std_logic;
SIGNAL \s_channel_temp[53]~feeder_combout\ : std_logic;
SIGNAL \s_channel~50_combout\ : std_logic;
SIGNAL \s_channel_temp[54]~feeder_combout\ : std_logic;
SIGNAL \s_channel~51_combout\ : std_logic;
SIGNAL \s_channel~52_combout\ : std_logic;
SIGNAL \s_channel_temp[56]~feeder_combout\ : std_logic;
SIGNAL \s_channel~53_combout\ : std_logic;
SIGNAL \s_channel~54_combout\ : std_logic;
SIGNAL \s_channel_temp[58]~feeder_combout\ : std_logic;
SIGNAL \s_channel~55_combout\ : std_logic;
SIGNAL \s_channel~56_combout\ : std_logic;
SIGNAL \s_channel_temp[60]~feeder_combout\ : std_logic;
SIGNAL \s_channel~57_combout\ : std_logic;
SIGNAL \s_channel~58_combout\ : std_logic;
SIGNAL \s_channel_temp[62]~feeder_combout\ : std_logic;
SIGNAL \s_channel~59_combout\ : std_logic;
SIGNAL \s_channel_temp[63]~feeder_combout\ : std_logic;
SIGNAL \s_channel~60_combout\ : std_logic;
SIGNAL \s_channel_temp[4]~3_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~11_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~12_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~14_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~13_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~15_combout\ : std_logic;
SIGNAL \s_channel_temp[64]~16_combout\ : std_logic;
SIGNAL \s_channel~61_combout\ : std_logic;
SIGNAL \s_channel_temp[65]~feeder_combout\ : std_logic;
SIGNAL \s_channel~62_combout\ : std_logic;
SIGNAL \s_channel~63_combout\ : std_logic;
SIGNAL \s_channel~64_combout\ : std_logic;
SIGNAL \s_channel_temp[68]~feeder_combout\ : std_logic;
SIGNAL \s_channel~65_combout\ : std_logic;
SIGNAL \s_channel_temp[69]~feeder_combout\ : std_logic;
SIGNAL \s_channel~66_combout\ : std_logic;
SIGNAL \s_channel~67_combout\ : std_logic;
SIGNAL \s_channel~68_combout\ : std_logic;
SIGNAL \s_channel_temp[72]~feeder_combout\ : std_logic;
SIGNAL \s_channel~69_combout\ : std_logic;
SIGNAL \s_channel~70_combout\ : std_logic;
SIGNAL \s_channel_temp[74]~feeder_combout\ : std_logic;
SIGNAL \s_channel~71_combout\ : std_logic;
SIGNAL \s_channel_temp[75]~feeder_combout\ : std_logic;
SIGNAL \s_channel~72_combout\ : std_logic;
SIGNAL \s_channel_temp[76]~feeder_combout\ : std_logic;
SIGNAL \s_channel~73_combout\ : std_logic;
SIGNAL \s_channel~74_combout\ : std_logic;
SIGNAL \s_channel~75_combout\ : std_logic;
SIGNAL \s_channel_temp[79]~feeder_combout\ : std_logic;
SIGNAL \s_channel~76_combout\ : std_logic;
SIGNAL \s_channel_temp[80]~feeder_combout\ : std_logic;
SIGNAL \s_channel~77_combout\ : std_logic;
SIGNAL \s_channel_temp[81]~feeder_combout\ : std_logic;
SIGNAL \s_channel~78_combout\ : std_logic;
SIGNAL \s_channel_temp[82]~feeder_combout\ : std_logic;
SIGNAL \s_channel~79_combout\ : std_logic;
SIGNAL \s_channel_temp[83]~feeder_combout\ : std_logic;
SIGNAL \s_channel~80_combout\ : std_logic;
SIGNAL \s_channel~81_combout\ : std_logic;
SIGNAL \s_channel~82_combout\ : std_logic;
SIGNAL \s_channel_temp[86]~feeder_combout\ : std_logic;
SIGNAL \s_channel~83_combout\ : std_logic;
SIGNAL \s_channel~84_combout\ : std_logic;
SIGNAL \s_channel~85_combout\ : std_logic;
SIGNAL \s_channel~86_combout\ : std_logic;
SIGNAL \s_channel~87_combout\ : std_logic;
SIGNAL \s_channel_temp[91]~feeder_combout\ : std_logic;
SIGNAL \s_channel~88_combout\ : std_logic;
SIGNAL \s_channel_temp[92]~feeder_combout\ : std_logic;
SIGNAL \s_channel~89_combout\ : std_logic;
SIGNAL \s_channel_temp[93]~feeder_combout\ : std_logic;
SIGNAL \s_channel~90_combout\ : std_logic;
SIGNAL \s_channel_temp[94]~feeder_combout\ : std_logic;
SIGNAL \s_channel~91_combout\ : std_logic;
SIGNAL \s_channel~92_combout\ : std_logic;
SIGNAL \s_channel~93_combout\ : std_logic;
SIGNAL \s_channel_temp[97]~feeder_combout\ : std_logic;
SIGNAL \s_channel~94_combout\ : std_logic;
SIGNAL \s_channel~95_combout\ : std_logic;
SIGNAL \s_channel~96_combout\ : std_logic;
SIGNAL \s_channel_temp[100]~feeder_combout\ : std_logic;
SIGNAL \s_channel~97_combout\ : std_logic;
SIGNAL \s_channel~98_combout\ : std_logic;
SIGNAL \s_channel_temp[102]~feeder_combout\ : std_logic;
SIGNAL \s_channel~99_combout\ : std_logic;
SIGNAL \s_channel~100_combout\ : std_logic;
SIGNAL \s_channel~101_combout\ : std_logic;
SIGNAL \s_channel~102_combout\ : std_logic;
SIGNAL \s_channel~103_combout\ : std_logic;
SIGNAL \s_channel~104_combout\ : std_logic;
SIGNAL \s_channel~105_combout\ : std_logic;
SIGNAL \s_channel~106_combout\ : std_logic;
SIGNAL \s_channel_temp[110]~feeder_combout\ : std_logic;
SIGNAL \s_channel~107_combout\ : std_logic;
SIGNAL \s_channel~108_combout\ : std_logic;
SIGNAL \s_channel~109_combout\ : std_logic;
SIGNAL \s_channel~110_combout\ : std_logic;
SIGNAL \s_channel~111_combout\ : std_logic;
SIGNAL \s_channel~112_combout\ : std_logic;
SIGNAL \s_channel_temp[116]~feeder_combout\ : std_logic;
SIGNAL \s_channel~113_combout\ : std_logic;
SIGNAL \s_channel~114_combout\ : std_logic;
SIGNAL \s_channel~115_combout\ : std_logic;
SIGNAL \s_channel~116_combout\ : std_logic;
SIGNAL \s_channel_temp[120]~feeder_combout\ : std_logic;
SIGNAL \s_channel~117_combout\ : std_logic;
SIGNAL \s_channel~118_combout\ : std_logic;
SIGNAL \s_channel_temp[122]~feeder_combout\ : std_logic;
SIGNAL \s_channel~119_combout\ : std_logic;
SIGNAL \s_channel_temp[123]~feeder_combout\ : std_logic;
SIGNAL \s_channel~120_combout\ : std_logic;
SIGNAL \s_channel~121_combout\ : std_logic;
SIGNAL \s_channel~122_combout\ : std_logic;
SIGNAL \s_channel_temp[126]~feeder_combout\ : std_logic;
SIGNAL \s_channel~123_combout\ : std_logic;
SIGNAL \s_channel_temp[127]~feeder_combout\ : std_logic;
SIGNAL \s_channel~124_combout\ : std_logic;
SIGNAL s_selector : std_logic_vector(15 DOWNTO 0);
SIGNAL s_delay_valid : std_logic_vector(0 TO 7);
SIGNAL s_delay_startofpacket : std_logic_vector(0 TO 7);
SIGNAL s_delay_endofpacket : std_logic_vector(0 TO 7);
SIGNAL s_channel_temp : std_logic_vector(127 DOWNTO 0);
SIGNAL s_channel_in : std_logic_vector(3 DOWNTO 0);
SIGNAL s_channel : std_logic_vector(127 DOWNTO 0);
SIGNAL \in_empty~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \in_data~combout\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \in_channel~combout\ : std_logic_vector(127 DOWNTO 0);
SIGNAL \csr_writedata~combout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_csr_reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset_reset_n~clkctrl_outclk\ : std_logic;
SIGNAL \s_delay_data_rtl_0|auto_generated|ALT_INV_dffe4~regout\ : std_logic;
SIGNAL ALT_INV_s_selector : std_logic_vector(15 DOWNTO 6);

BEGIN

ww_csr_address <= csr_address;
ww_csr_read <= csr_read;
csr_readdata <= ww_csr_readdata;
ww_csr_write <= csr_write;
ww_csr_writedata <= csr_writedata;
csr_waitrequest <= ww_csr_waitrequest;
ww_csr_clk_clk <= csr_clk_clk;
ww_csr_reset_reset_n <= csr_reset_reset_n;
ww_reset_reset_n <= reset_reset_n;
ww_clk_clk <= clk_clk;
ww_in_data <= in_data;
in_ready <= ww_in_ready;
ww_in_valid <= in_valid;
ww_in_startofpacket <= in_startofpacket;
ww_in_endofpacket <= in_endofpacket;
ww_in_empty <= in_empty;
ww_in_channel <= in_channel;
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

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ <= (\s_delay_data[0][35]~regout\ & \s_delay_data[0][34]~regout\ & \s_delay_data[0][33]~regout\ & \s_delay_data[0][32]~regout\ & \s_delay_data[0][31]~regout\ & 
\s_delay_data[0][30]~regout\ & \s_delay_data[0][29]~regout\ & \s_delay_data[0][28]~regout\ & \s_delay_data[0][27]~regout\ & \s_delay_data[0][26]~regout\ & \s_delay_data[0][25]~regout\ & \s_delay_data[0][24]~regout\ & \s_delay_data[0][23]~regout\ & 
\s_delay_data[0][22]~regout\ & \s_delay_data[0][21]~regout\ & \s_delay_data[0][20]~regout\ & \s_delay_data[0][19]~regout\ & \s_delay_data[0][18]~regout\ & \s_delay_data[0][17]~regout\ & \s_delay_data[0][16]~regout\ & \s_delay_data[0][15]~regout\ & 
\s_delay_data[0][14]~regout\ & \s_delay_data[0][13]~regout\ & \s_delay_data[0][12]~regout\ & \s_delay_data[0][11]~regout\ & \s_delay_data[0][10]~regout\ & \s_delay_data[0][9]~regout\ & \s_delay_data[0][8]~regout\ & \s_delay_data[0][7]~regout\ & 
\s_delay_data[0][6]~regout\ & \s_delay_data[0][5]~regout\ & \s_delay_data[0][4]~regout\ & \s_delay_data[0][3]~regout\ & \s_delay_data[0][2]~regout\ & \s_delay_data[0][1]~regout\ & \s_delay_data[0][0]~regout\);

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ <= (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & 
\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ <= (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & 
\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(0);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a1\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(1);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a2\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(2);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a3\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(3);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a4\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(4);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a5\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(5);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a6\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(6);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a7\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(7);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a8\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(8);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a9\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(9);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a10\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(10);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a11\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(11);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a12\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(12);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a13\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(13);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a14\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(14);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a15\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(15);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a16\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(16);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a17\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(17);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a18\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(18);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a19\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(19);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a20\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(20);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a21\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(21);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a22\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(22);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a23\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(23);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a24\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(24);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a25\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(25);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a26\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(26);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a27\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(27);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a28\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(28);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a29\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(29);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a30\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(30);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a31\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(31);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a32\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(32);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a33\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(33);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a34\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(34);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a35\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(35);

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTADATAIN_bus\ <= (s_delay_valid(0) & s_delay_startofpacket(0) & s_delay_endofpacket(0) & \s_delay_empty[0][2]~regout\ & \s_delay_empty[0][1]~regout\ & \s_delay_empty[0][0]~regout\ & 
\s_delay_data[0][63]~regout\ & \s_delay_data[0][62]~regout\ & \s_delay_data[0][61]~regout\ & \s_delay_data[0][60]~regout\ & \s_delay_data[0][59]~regout\ & \s_delay_data[0][58]~regout\ & \s_delay_data[0][57]~regout\ & \s_delay_data[0][56]~regout\ & 
\s_delay_data[0][55]~regout\ & \s_delay_data[0][54]~regout\ & \s_delay_data[0][53]~regout\ & \s_delay_data[0][52]~regout\ & \s_delay_data[0][51]~regout\ & \s_delay_data[0][50]~regout\ & \s_delay_data[0][49]~regout\ & \s_delay_data[0][48]~regout\ & 
\s_delay_data[0][47]~regout\ & \s_delay_data[0][46]~regout\ & \s_delay_data[0][45]~regout\ & \s_delay_data[0][44]~regout\ & \s_delay_data[0][43]~regout\ & \s_delay_data[0][42]~regout\ & \s_delay_data[0][41]~regout\ & \s_delay_data[0][40]~regout\ & 
\s_delay_data[0][39]~regout\ & \s_delay_data[0][38]~regout\ & \s_delay_data[0][37]~regout\ & \s_delay_data[0][36]~regout\);

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTAADDR_bus\ <= (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & 
\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBADDR_bus\ <= (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & 
\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36~portbdataout\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(0);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a37\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(1);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a38\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(2);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a39\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(3);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a40\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(4);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a41\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(5);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a42\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(6);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a43\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(7);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a44\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(8);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a45\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(9);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a46\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(10);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a47\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(11);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a48\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(12);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a49\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(13);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a50\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(14);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a51\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(15);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a52\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(16);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a53\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(17);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a54\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(18);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a55\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(19);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a56\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(20);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a57\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(21);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a58\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(22);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a59\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(23);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a60\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(24);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a61\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(25);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a62\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(26);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a63\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(27);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a64\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(28);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a65\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(29);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a66\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(30);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a67\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(31);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a68\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(32);
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a69\ <= \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\(33);

\clk_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_clk~combout\);

\csr_clk_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \csr_clk_clk~combout\);

\reset_reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset_reset_n~combout\);

\csr_reset_reset_n~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \csr_reset_reset_n~combout\);
\ALT_INV_csr_reset_reset_n~clkctrl_outclk\ <= NOT \csr_reset_reset_n~clkctrl_outclk\;
\ALT_INV_reset_reset_n~clkctrl_outclk\ <= NOT \reset_reset_n~clkctrl_outclk\;
\s_delay_data_rtl_0|auto_generated|ALT_INV_dffe4~regout\ <= NOT \s_delay_data_rtl_0|auto_generated|dffe4~regout\;
ALT_INV_s_selector(15) <= NOT s_selector(15);
ALT_INV_s_selector(6) <= NOT s_selector(6);

-- Location: LCFF_X54_Y26_N25
\s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(0));

-- Location: LCCOMB_X54_Y26_N24
\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ = \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(0) $ (VCC)
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ = CARRY(\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(0),
	datad => VCC,
	combout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\);

-- Location: LCFF_X61_Y26_N23
\s_channel_temp[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[8]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(8));

-- Location: LCFF_X62_Y26_N11
\s_channel_temp[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[12]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(12));

-- Location: LCFF_X62_Y26_N21
\s_channel_temp[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[13]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(13));

-- Location: LCFF_X58_Y25_N31
\s_channel_temp[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[16]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(16));

-- Location: LCFF_X63_Y26_N3
\s_channel_temp[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(17),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(17));

-- Location: LCFF_X53_Y26_N17
\s_channel_temp[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[22]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(22));

-- Location: LCFF_X63_Y26_N11
\s_channel_temp[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(25),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(25));

-- Location: LCFF_X58_Y25_N25
\s_channel_temp[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(27),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(27));

-- Location: LCFF_X58_Y25_N21
\s_channel_temp[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[35]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(35));

-- Location: LCFF_X53_Y26_N11
\s_channel_temp[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[38]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(38));

-- Location: LCFF_X53_Y26_N5
\s_channel_temp[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[40]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(40));

-- Location: LCFF_X57_Y27_N23
\s_channel_temp[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[44]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(44));

-- Location: LCFF_X62_Y26_N9
\s_channel_temp[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(46),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(46));

-- Location: LCFF_X57_Y27_N13
\s_channel_temp[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(48),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(48));

-- Location: LCFF_X63_Y26_N7
\s_channel_temp[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[50]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(50));

-- Location: LCFF_X61_Y26_N27
\s_channel_temp[57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[57]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(57));

-- Location: LCFF_X58_Y24_N1
\s_channel_temp[59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[59]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(59));

-- Location: LCFF_X59_Y28_N7
\s_channel_temp[78]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[78]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(78));

-- Location: LCFF_X59_Y26_N19
\s_channel_temp[84]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(20),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(84));

-- Location: LCFF_X59_Y28_N11
\s_channel_temp[95]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[95]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(95));

-- Location: LCFF_X58_Y25_N13
\s_channel_temp[99]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[99]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(99));

-- Location: LCFF_X59_Y26_N29
\s_channel_temp[105]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(41),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(105));

-- Location: LCFF_X59_Y26_N15
\s_channel_temp[106]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[106]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(106));

-- Location: LCFF_X59_Y26_N17
\s_channel_temp[107]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[107]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(107));

-- Location: LCFF_X60_Y26_N1
\s_channel_temp[108]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[108]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(108));

-- Location: LCFF_X57_Y25_N7
\s_channel_temp[109]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(45),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(109));

-- Location: LCFF_X59_Y24_N11
\s_channel_temp[111]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(47),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(111));

-- Location: LCFF_X59_Y26_N27
\s_channel_temp[113]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[113]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(113));

-- Location: LCFF_X59_Y27_N11
\s_channel_temp[114]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[114]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(114));

-- Location: LCFF_X59_Y26_N5
\s_channel_temp[115]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(51),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(115));

-- Location: LCFF_X57_Y25_N21
\s_channel_temp[117]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(53),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(117));

-- Location: LCFF_X58_Y25_N7
\s_channel_temp[118]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[118]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(118));

-- Location: LCFF_X59_Y24_N21
\s_channel_temp[124]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(60),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(124));

-- Location: LCFF_X60_Y26_N7
\s_channel_temp[125]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(61),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(125));

-- Location: LCCOMB_X58_Y26_N24
\s_channel_temp[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~6_combout\ = (!\s_state.S2~regout\ & (\s_state.S4~regout\ & (s_selector(3) & !\s_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S2~regout\,
	datab => \s_state.S4~regout\,
	datac => s_selector(3),
	datad => \s_state.S3~regout\,
	combout => \s_channel_temp[4]~6_combout\);

-- Location: LCCOMB_X61_Y26_N22
\s_channel_temp[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[8]~feeder_combout\ = \in_data~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(8),
	combout => \s_channel_temp[8]~feeder_combout\);

-- Location: LCCOMB_X62_Y26_N10
\s_channel_temp[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[12]~feeder_combout\ = \in_data~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(12),
	combout => \s_channel_temp[12]~feeder_combout\);

-- Location: LCCOMB_X62_Y26_N20
\s_channel_temp[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[13]~feeder_combout\ = \in_data~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(13),
	combout => \s_channel_temp[13]~feeder_combout\);

-- Location: LCCOMB_X59_Y28_N6
\s_channel_temp[78]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[78]~feeder_combout\ = \in_data~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(14),
	combout => \s_channel_temp[78]~feeder_combout\);

-- Location: LCCOMB_X58_Y25_N30
\s_channel_temp[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[16]~feeder_combout\ = \in_data~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(16),
	combout => \s_channel_temp[16]~feeder_combout\);

-- Location: LCCOMB_X53_Y26_N16
\s_channel_temp[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[22]~feeder_combout\ = \in_data~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(22),
	combout => \s_channel_temp[22]~feeder_combout\);

-- Location: LCCOMB_X59_Y28_N10
\s_channel_temp[95]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[95]~feeder_combout\ = \in_data~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(31),
	combout => \s_channel_temp[95]~feeder_combout\);

-- Location: LCCOMB_X58_Y25_N20
\s_channel_temp[35]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[35]~feeder_combout\ = \in_data~combout\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(35),
	combout => \s_channel_temp[35]~feeder_combout\);

-- Location: LCCOMB_X58_Y25_N12
\s_channel_temp[99]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[99]~feeder_combout\ = \in_data~combout\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(35),
	combout => \s_channel_temp[99]~feeder_combout\);

-- Location: LCCOMB_X53_Y26_N10
\s_channel_temp[38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[38]~feeder_combout\ = \in_data~combout\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(38),
	combout => \s_channel_temp[38]~feeder_combout\);

-- Location: LCCOMB_X53_Y26_N4
\s_channel_temp[40]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[40]~feeder_combout\ = \in_data~combout\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(40),
	combout => \s_channel_temp[40]~feeder_combout\);

-- Location: LCCOMB_X59_Y26_N14
\s_channel_temp[106]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[106]~feeder_combout\ = \in_data~combout\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(42),
	combout => \s_channel_temp[106]~feeder_combout\);

-- Location: LCCOMB_X59_Y26_N16
\s_channel_temp[107]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[107]~feeder_combout\ = \in_data~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(43),
	combout => \s_channel_temp[107]~feeder_combout\);

-- Location: LCCOMB_X60_Y26_N0
\s_channel_temp[108]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[108]~feeder_combout\ = \in_data~combout\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(44),
	combout => \s_channel_temp[108]~feeder_combout\);

-- Location: LCCOMB_X57_Y27_N22
\s_channel_temp[44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[44]~feeder_combout\ = \in_data~combout\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(44),
	combout => \s_channel_temp[44]~feeder_combout\);

-- Location: LCCOMB_X59_Y26_N26
\s_channel_temp[113]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[113]~feeder_combout\ = \in_data~combout\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(49),
	combout => \s_channel_temp[113]~feeder_combout\);

-- Location: LCCOMB_X63_Y26_N6
\s_channel_temp[50]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[50]~feeder_combout\ = \in_data~combout\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(50),
	combout => \s_channel_temp[50]~feeder_combout\);

-- Location: LCCOMB_X59_Y27_N10
\s_channel_temp[114]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[114]~feeder_combout\ = \in_data~combout\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(50),
	combout => \s_channel_temp[114]~feeder_combout\);

-- Location: LCCOMB_X58_Y25_N6
\s_channel_temp[118]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[118]~feeder_combout\ = \in_data~combout\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(54),
	combout => \s_channel_temp[118]~feeder_combout\);

-- Location: LCCOMB_X61_Y26_N26
\s_channel_temp[57]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[57]~feeder_combout\ = \in_data~combout\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(57),
	combout => \s_channel_temp[57]~feeder_combout\);

-- Location: LCCOMB_X58_Y24_N0
\s_channel_temp[59]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[59]~feeder_combout\ = \in_data~combout\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(59),
	combout => \s_channel_temp[59]~feeder_combout\);

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

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X62_Y25_N0
\s_selector[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[0]~feeder_combout\ = \csr_writedata~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(0),
	combout => \s_selector[0]~feeder_combout\);

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

-- Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y25_N1
\s_selector[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[0]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(0));

-- Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N17
\s_selector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(1),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(1));

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X58_Y26_N2
\s_selector[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[2]~feeder_combout\ = \csr_writedata~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(2),
	combout => \s_selector[2]~feeder_combout\);

-- Location: LCFF_X58_Y26_N3
\s_selector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[2]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(2));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N25
\s_selector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(3),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(3));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N19
\s_selector[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(4),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(4));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X58_Y26_N0
\s_selector[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[5]~feeder_combout\ = \csr_writedata~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(5),
	combout => \s_selector[5]~feeder_combout\);

-- Location: LCFF_X58_Y26_N1
\s_selector[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[5]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(5));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X57_Y26_N30
\s_selector[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[6]~0_combout\ = !\csr_writedata~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \csr_writedata~combout\(6),
	combout => \s_selector[6]~0_combout\);

-- Location: LCFF_X57_Y26_N19
\s_selector[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \s_selector[6]~0_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(6));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N31
\s_selector[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(7),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(7));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X60_Y25_N4
\s_selector[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[8]~feeder_combout\ = \csr_writedata~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(8),
	combout => \s_selector[8]~feeder_combout\);

-- Location: LCFF_X60_Y25_N5
\s_selector[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[8]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(8));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N5
\s_selector[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(9),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(9));

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X58_Y26_N22
\s_selector[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[10]~feeder_combout\ = \csr_writedata~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(10),
	combout => \s_selector[10]~feeder_combout\);

-- Location: LCFF_X58_Y26_N23
\s_selector[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[10]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(10));

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N9
\s_selector[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(11),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(11));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X58_Y26_N27
\s_selector[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(12),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(12));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X58_Y26_N12
\s_selector[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[13]~feeder_combout\ = \csr_writedata~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(13),
	combout => \s_selector[13]~feeder_combout\);

-- Location: LCFF_X58_Y26_N13
\s_selector[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	datain => \s_selector[13]~feeder_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(13));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X57_Y26_N1
\s_selector[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \csr_writedata~combout\(14),
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(14));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X61_Y8_N4
\s_selector[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_selector[15]~1_combout\ = !\csr_writedata~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \csr_writedata~combout\(15),
	combout => \s_selector[15]~1_combout\);

-- Location: LCFF_X57_Y26_N7
\s_selector[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \csr_clk_clk~clkctrl_outclk\,
	sdata => \s_selector[15]~1_combout\,
	aclr => \ALT_INV_csr_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \csr_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_selector(15));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X54_Y26_N26
\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ = (\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(1) & ((GND) # (!\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\))) # 
-- (!\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(1) & (\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ $ (GND)))
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ = CARRY((\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(1)) # (!\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(1),
	datad => VCC,
	cin => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\);

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

-- Location: LCCOMB_X54_Y26_N4
\s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\ = (\out_ready~combout\ & !\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~combout\,
	datad => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\);

-- Location: LCFF_X54_Y26_N27
\s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(1));

-- Location: LCCOMB_X54_Y26_N28
\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ = (\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(2) & (\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(2) & (!\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ & VCC))
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ = CARRY((\s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(2) & !\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(2),
	datad => VCC,
	cin => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\);

-- Location: LCFF_X54_Y26_N29
\s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_delay_data_rtl_0|auto_generated|cntr3|counter_reg_bit9a[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr3|pre_hazard\(2));

-- Location: LCCOMB_X54_Y26_N30
\s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\ = \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X54_Y26_N0
\s_delay_data_rtl_0|auto_generated|dffe4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|dffe4~feeder_combout\ = \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_delay_data_rtl_0|auto_generated|cntr3|counter_comb_bita2~0_combout\,
	combout => \s_delay_data_rtl_0|auto_generated|dffe4~feeder_combout\);

-- Location: LCFF_X54_Y26_N1
\s_delay_data_rtl_0|auto_generated|dffe4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|dffe4~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|dffe4~regout\);

-- Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(0),
	combout => \in_data~combout\(0));

-- Location: LCCOMB_X54_Y27_N12
\s_delay_data[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][0]~feeder_combout\ = \in_data~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(0),
	combout => \s_delay_data[0][0]~feeder_combout\);

-- Location: LCFF_X54_Y27_N13
\s_delay_data[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][0]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][0]~regout\);

-- Location: LCCOMB_X56_Y25_N24
\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ = \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0) $ (VCC)
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\ = CARRY(\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	datad => VCC,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\);

-- Location: LCCOMB_X56_Y25_N26
\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ = (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & (!\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\)) # 
-- (!\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1) & ((\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\) # (GND)))
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ = CARRY((!\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\) # (!\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	datad => VCC,
	cin => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~1\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\);

-- Location: LCCOMB_X56_Y25_N28
\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ = (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & (\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ $ (GND))) # 
-- (!\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & (!\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\ & VCC))
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~5\ = CARRY((\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & !\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2),
	datad => VCC,
	cin => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~3\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\,
	cout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~5\);

-- Location: LCCOMB_X56_Y25_N0
\s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\ = (\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\ & (!\s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\ & 
-- !\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~4_combout\,
	datac => \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\,
	datad => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\);

-- Location: LCFF_X56_Y25_N1
\s_delay_data_rtl_0|auto_generated|cntr1|counter_reg_bit6a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[2]~2_combout\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2));

-- Location: LCCOMB_X56_Y25_N30
\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\ = \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[2]~5\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\);

-- Location: LCCOMB_X56_Y25_N22
\s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = (\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\ & (!\s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\ & 
-- !\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[1]~2_combout\,
	datac => \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\,
	datad => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: LCFF_X56_Y25_N23
\s_delay_data_rtl_0|auto_generated|cntr1|counter_reg_bit6a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1));

-- Location: LCCOMB_X56_Y25_N14
\s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\ = (\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2) & (!\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0) & 
-- !\s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(2),
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0),
	datac => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(1),
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X56_Y25_N4
\s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = (!\s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\ & (\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\ & 
-- !\s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_delay_data_rtl_0|auto_generated|cntr1|cmpr8|aneb_result_wire[0]~0_combout\,
	datac => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[0]~0_combout\,
	datad => \s_delay_data_rtl_0|auto_generated|cntr1|add_sub7_result_int[3]~6_combout\,
	combout => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: LCFF_X56_Y25_N5
\s_delay_data_rtl_0|auto_generated|cntr1|counter_reg_bit6a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data_rtl_0|auto_generated|cntr1|current_reg_q_w\(0));

-- Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(1),
	combout => \in_data~combout\(1));

-- Location: LCFF_X54_Y27_N3
\s_delay_data[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(1),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][1]~regout\);

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(2),
	combout => \in_data~combout\(2));

-- Location: LCCOMB_X54_Y27_N0
\s_delay_data[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][2]~feeder_combout\ = \in_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(2),
	combout => \s_delay_data[0][2]~feeder_combout\);

-- Location: LCFF_X54_Y27_N1
\s_delay_data[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][2]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][2]~regout\);

-- Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(3),
	combout => \in_data~combout\(3));

-- Location: LCCOMB_X58_Y27_N8
\s_delay_data[0][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][3]~feeder_combout\ = \in_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(3),
	combout => \s_delay_data[0][3]~feeder_combout\);

-- Location: LCFF_X58_Y27_N9
\s_delay_data[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][3]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][3]~regout\);

-- Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(4),
	combout => \in_data~combout\(4));

-- Location: LCFF_X56_Y27_N25
\s_delay_data[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(4),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][4]~regout\);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(5),
	combout => \in_data~combout\(5));

-- Location: LCCOMB_X54_Y27_N26
\s_delay_data[0][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][5]~feeder_combout\ = \in_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(5),
	combout => \s_delay_data[0][5]~feeder_combout\);

-- Location: LCFF_X54_Y27_N27
\s_delay_data[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][5]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][5]~regout\);

-- Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(6),
	combout => \in_data~combout\(6));

-- Location: LCFF_X54_Y27_N17
\s_delay_data[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(6),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][6]~regout\);

-- Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(7),
	combout => \in_data~combout\(7));

-- Location: LCCOMB_X56_Y27_N14
\s_delay_data[0][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][7]~feeder_combout\ = \in_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(7),
	combout => \s_delay_data[0][7]~feeder_combout\);

-- Location: LCFF_X56_Y27_N15
\s_delay_data[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][7]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][7]~regout\);

-- Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(8),
	combout => \in_data~combout\(8));

-- Location: LCCOMB_X54_Y27_N30
\s_delay_data[0][8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][8]~feeder_combout\ = \in_data~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(8),
	combout => \s_delay_data[0][8]~feeder_combout\);

-- Location: LCFF_X54_Y27_N31
\s_delay_data[0][8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][8]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][8]~regout\);

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(9),
	combout => \in_data~combout\(9));

-- Location: LCCOMB_X54_Y27_N20
\s_delay_data[0][9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][9]~feeder_combout\ = \in_data~combout\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(9),
	combout => \s_delay_data[0][9]~feeder_combout\);

-- Location: LCFF_X54_Y27_N21
\s_delay_data[0][9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][9]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][9]~regout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(10),
	combout => \in_data~combout\(10));

-- Location: LCCOMB_X54_Y27_N14
\s_delay_data[0][10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][10]~feeder_combout\ = \in_data~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(10),
	combout => \s_delay_data[0][10]~feeder_combout\);

-- Location: LCFF_X54_Y27_N15
\s_delay_data[0][10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][10]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][10]~regout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(11),
	combout => \in_data~combout\(11));

-- Location: LCCOMB_X56_Y27_N28
\s_delay_data[0][11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][11]~feeder_combout\ = \in_data~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(11),
	combout => \s_delay_data[0][11]~feeder_combout\);

-- Location: LCFF_X56_Y27_N29
\s_delay_data[0][11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][11]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][11]~regout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(12),
	combout => \in_data~combout\(12));

-- Location: LCCOMB_X56_Y27_N10
\s_delay_data[0][12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][12]~feeder_combout\ = \in_data~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(12),
	combout => \s_delay_data[0][12]~feeder_combout\);

-- Location: LCFF_X56_Y27_N11
\s_delay_data[0][12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][12]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][12]~regout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(13),
	combout => \in_data~combout\(13));

-- Location: LCCOMB_X56_Y27_N16
\s_delay_data[0][13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][13]~feeder_combout\ = \in_data~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(13),
	combout => \s_delay_data[0][13]~feeder_combout\);

-- Location: LCFF_X56_Y27_N17
\s_delay_data[0][13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][13]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][13]~regout\);

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(14),
	combout => \in_data~combout\(14));

-- Location: LCCOMB_X56_Y27_N2
\s_delay_data[0][14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][14]~feeder_combout\ = \in_data~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(14),
	combout => \s_delay_data[0][14]~feeder_combout\);

-- Location: LCFF_X56_Y27_N3
\s_delay_data[0][14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][14]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][14]~regout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(15),
	combout => \in_data~combout\(15));

-- Location: LCFF_X56_Y27_N13
\s_delay_data[0][15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(15),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][15]~regout\);

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(16),
	combout => \in_data~combout\(16));

-- Location: LCCOMB_X56_Y27_N30
\s_delay_data[0][16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][16]~feeder_combout\ = \in_data~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(16),
	combout => \s_delay_data[0][16]~feeder_combout\);

-- Location: LCFF_X56_Y27_N31
\s_delay_data[0][16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][16]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][16]~regout\);

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(17),
	combout => \in_data~combout\(17));

-- Location: LCCOMB_X54_Y27_N8
\s_delay_data[0][17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][17]~feeder_combout\ = \in_data~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(17),
	combout => \s_delay_data[0][17]~feeder_combout\);

-- Location: LCFF_X54_Y27_N9
\s_delay_data[0][17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][17]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][17]~regout\);

-- Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(18),
	combout => \in_data~combout\(18));

-- Location: LCFF_X54_Y27_N11
\s_delay_data[0][18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(18),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][18]~regout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(19),
	combout => \in_data~combout\(19));

-- Location: LCFF_X58_Y27_N7
\s_delay_data[0][19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(19),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][19]~regout\);

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(20),
	combout => \in_data~combout\(20));

-- Location: LCFF_X56_Y27_N1
\s_delay_data[0][20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(20),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][20]~regout\);

-- Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(21),
	combout => \in_data~combout\(21));

-- Location: LCFF_X58_Y27_N29
\s_delay_data[0][21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(21),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][21]~regout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(22),
	combout => \in_data~combout\(22));

-- Location: LCFF_X54_Y27_N25
\s_delay_data[0][22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(22),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][22]~regout\);

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(23),
	combout => \in_data~combout\(23));

-- Location: LCCOMB_X56_Y27_N22
\s_delay_data[0][23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][23]~feeder_combout\ = \in_data~combout\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(23),
	combout => \s_delay_data[0][23]~feeder_combout\);

-- Location: LCFF_X56_Y27_N23
\s_delay_data[0][23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][23]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][23]~regout\);

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(24),
	combout => \in_data~combout\(24));

-- Location: LCCOMB_X54_Y27_N6
\s_delay_data[0][24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][24]~feeder_combout\ = \in_data~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(24),
	combout => \s_delay_data[0][24]~feeder_combout\);

-- Location: LCFF_X54_Y27_N7
\s_delay_data[0][24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][24]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][24]~regout\);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(25),
	combout => \in_data~combout\(25));

-- Location: LCCOMB_X54_Y27_N28
\s_delay_data[0][25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][25]~feeder_combout\ = \in_data~combout\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(25),
	combout => \s_delay_data[0][25]~feeder_combout\);

-- Location: LCFF_X54_Y27_N29
\s_delay_data[0][25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][25]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][25]~regout\);

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(26),
	combout => \in_data~combout\(26));

-- Location: LCCOMB_X56_Y27_N20
\s_delay_data[0][26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][26]~feeder_combout\ = \in_data~combout\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(26),
	combout => \s_delay_data[0][26]~feeder_combout\);

-- Location: LCFF_X56_Y27_N21
\s_delay_data[0][26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][26]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][26]~regout\);

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(27),
	combout => \in_data~combout\(27));

-- Location: LCCOMB_X54_Y27_N22
\s_delay_data[0][27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][27]~feeder_combout\ = \in_data~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(27),
	combout => \s_delay_data[0][27]~feeder_combout\);

-- Location: LCFF_X54_Y27_N23
\s_delay_data[0][27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][27]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][27]~regout\);

-- Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(28),
	combout => \in_data~combout\(28));

-- Location: LCCOMB_X58_Y27_N22
\s_delay_data[0][28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][28]~feeder_combout\ = \in_data~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(28),
	combout => \s_delay_data[0][28]~feeder_combout\);

-- Location: LCFF_X58_Y27_N23
\s_delay_data[0][28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][28]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][28]~regout\);

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(29),
	combout => \in_data~combout\(29));

-- Location: LCCOMB_X56_Y27_N26
\s_delay_data[0][29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][29]~feeder_combout\ = \in_data~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(29),
	combout => \s_delay_data[0][29]~feeder_combout\);

-- Location: LCFF_X56_Y27_N27
\s_delay_data[0][29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][29]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][29]~regout\);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(30),
	combout => \in_data~combout\(30));

-- Location: LCCOMB_X56_Y27_N4
\s_delay_data[0][30]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][30]~feeder_combout\ = \in_data~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(30),
	combout => \s_delay_data[0][30]~feeder_combout\);

-- Location: LCFF_X56_Y27_N5
\s_delay_data[0][30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][30]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][30]~regout\);

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(31),
	combout => \in_data~combout\(31));

-- Location: LCCOMB_X56_Y27_N6
\s_delay_data[0][31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][31]~feeder_combout\ = \in_data~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(31),
	combout => \s_delay_data[0][31]~feeder_combout\);

-- Location: LCFF_X56_Y27_N7
\s_delay_data[0][31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][31]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][31]~regout\);

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(32),
	combout => \in_data~combout\(32));

-- Location: LCFF_X56_Y27_N9
\s_delay_data[0][32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(32),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][32]~regout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(33),
	combout => \in_data~combout\(33));

-- Location: LCCOMB_X56_Y27_N18
\s_delay_data[0][33]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][33]~feeder_combout\ = \in_data~combout\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(33),
	combout => \s_delay_data[0][33]~feeder_combout\);

-- Location: LCFF_X56_Y27_N19
\s_delay_data[0][33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][33]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][33]~regout\);

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(34),
	combout => \in_data~combout\(34));

-- Location: LCCOMB_X54_Y27_N4
\s_delay_data[0][34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][34]~feeder_combout\ = \in_data~combout\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(34),
	combout => \s_delay_data[0][34]~feeder_combout\);

-- Location: LCFF_X54_Y27_N5
\s_delay_data[0][34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][34]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][34]~regout\);

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(35),
	combout => \in_data~combout\(35));

-- Location: LCCOMB_X54_Y27_N18
\s_delay_data[0][35]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][35]~feeder_combout\ = \in_data~combout\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(35),
	combout => \s_delay_data[0][35]~feeder_combout\);

-- Location: LCFF_X54_Y27_N19
\s_delay_data[0][35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][35]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][35]~regout\);

-- Location: M4K_X55_Y27
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altshift_taps:s_delay_data_rtl_0|shift_taps_d1n:auto_generated|altsyncram_kta1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 5,
	port_a_logical_ram_width => 70,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 5,
	port_b_logical_ram_width => 70,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk_clk~clkctrl_outclk\,
	ena0 => \out_ready~combout\,
	clr0 => \s_delay_data_rtl_0|auto_generated|ALT_INV_dffe4~regout\,
	portadatain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(36),
	combout => \in_data~combout\(36));

-- Location: LCCOMB_X56_Y26_N12
\s_delay_data[0][36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][36]~feeder_combout\ = \in_data~combout\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(36),
	combout => \s_delay_data[0][36]~feeder_combout\);

-- Location: LCFF_X56_Y26_N13
\s_delay_data[0][36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][36]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][36]~regout\);

-- Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(37),
	combout => \in_data~combout\(37));

-- Location: LCFF_X57_Y26_N3
\s_delay_data[0][37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(37),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][37]~regout\);

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(38),
	combout => \in_data~combout\(38));

-- Location: LCCOMB_X53_Y26_N0
\s_delay_data[0][38]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][38]~feeder_combout\ = \in_data~combout\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(38),
	combout => \s_delay_data[0][38]~feeder_combout\);

-- Location: LCFF_X53_Y26_N1
\s_delay_data[0][38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][38]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][38]~regout\);

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(39),
	combout => \in_data~combout\(39));

-- Location: LCFF_X56_Y26_N11
\s_delay_data[0][39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(39),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][39]~regout\);

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(40),
	combout => \in_data~combout\(40));

-- Location: LCCOMB_X54_Y26_N2
\s_delay_data[0][40]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][40]~feeder_combout\ = \in_data~combout\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(40),
	combout => \s_delay_data[0][40]~feeder_combout\);

-- Location: LCFF_X54_Y26_N3
\s_delay_data[0][40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][40]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][40]~regout\);

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(41),
	combout => \in_data~combout\(41));

-- Location: LCFF_X54_Y26_N13
\s_delay_data[0][41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(41),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][41]~regout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(42),
	combout => \in_data~combout\(42));

-- Location: LCCOMB_X57_Y26_N22
\s_delay_data[0][42]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][42]~feeder_combout\ = \in_data~combout\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(42),
	combout => \s_delay_data[0][42]~feeder_combout\);

-- Location: LCFF_X57_Y26_N23
\s_delay_data[0][42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][42]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][42]~regout\);

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(43),
	combout => \in_data~combout\(43));

-- Location: LCCOMB_X56_Y26_N8
\s_delay_data[0][43]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][43]~feeder_combout\ = \in_data~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(43),
	combout => \s_delay_data[0][43]~feeder_combout\);

-- Location: LCFF_X56_Y26_N9
\s_delay_data[0][43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][43]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][43]~regout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(44),
	combout => \in_data~combout\(44));

-- Location: LCCOMB_X56_Y26_N30
\s_delay_data[0][44]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][44]~feeder_combout\ = \in_data~combout\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(44),
	combout => \s_delay_data[0][44]~feeder_combout\);

-- Location: LCFF_X56_Y26_N31
\s_delay_data[0][44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][44]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][44]~regout\);

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(45),
	combout => \in_data~combout\(45));

-- Location: LCCOMB_X54_Y26_N14
\s_delay_data[0][45]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][45]~feeder_combout\ = \in_data~combout\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(45),
	combout => \s_delay_data[0][45]~feeder_combout\);

-- Location: LCFF_X54_Y26_N15
\s_delay_data[0][45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][45]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][45]~regout\);

-- Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(46),
	combout => \in_data~combout\(46));

-- Location: LCFF_X56_Y26_N5
\s_delay_data[0][46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(46),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][46]~regout\);

-- Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(47),
	combout => \in_data~combout\(47));

-- Location: LCFF_X56_Y26_N3
\s_delay_data[0][47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(47),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][47]~regout\);

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(48),
	combout => \in_data~combout\(48));

-- Location: LCCOMB_X56_Y26_N24
\s_delay_data[0][48]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][48]~feeder_combout\ = \in_data~combout\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(48),
	combout => \s_delay_data[0][48]~feeder_combout\);

-- Location: LCFF_X56_Y26_N25
\s_delay_data[0][48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][48]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][48]~regout\);

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(49),
	combout => \in_data~combout\(49));

-- Location: LCFF_X56_Y26_N27
\s_delay_data[0][49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(49),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][49]~regout\);

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(50),
	combout => \in_data~combout\(50));

-- Location: LCFF_X54_Y26_N9
\s_delay_data[0][50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(50),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][50]~regout\);

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(51),
	combout => \in_data~combout\(51));

-- Location: LCFF_X56_Y26_N17
\s_delay_data[0][51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(51),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][51]~regout\);

-- Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(52),
	combout => \in_data~combout\(52));

-- Location: LCCOMB_X56_Y26_N14
\s_delay_data[0][52]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][52]~feeder_combout\ = \in_data~combout\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(52),
	combout => \s_delay_data[0][52]~feeder_combout\);

-- Location: LCFF_X56_Y26_N15
\s_delay_data[0][52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][52]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][52]~regout\);

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(53),
	combout => \in_data~combout\(53));

-- Location: LCCOMB_X53_Y26_N2
\s_delay_data[0][53]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][53]~feeder_combout\ = \in_data~combout\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(53),
	combout => \s_delay_data[0][53]~feeder_combout\);

-- Location: LCFF_X53_Y26_N3
\s_delay_data[0][53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][53]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][53]~regout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(54),
	combout => \in_data~combout\(54));

-- Location: LCCOMB_X56_Y26_N0
\s_delay_data[0][54]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][54]~feeder_combout\ = \in_data~combout\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(54),
	combout => \s_delay_data[0][54]~feeder_combout\);

-- Location: LCFF_X56_Y26_N1
\s_delay_data[0][54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][54]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][54]~regout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(55),
	combout => \in_data~combout\(55));

-- Location: LCCOMB_X56_Y26_N22
\s_delay_data[0][55]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][55]~feeder_combout\ = \in_data~combout\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(55),
	combout => \s_delay_data[0][55]~feeder_combout\);

-- Location: LCFF_X56_Y26_N23
\s_delay_data[0][55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][55]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][55]~regout\);

-- Location: PIN_T25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(56),
	combout => \in_data~combout\(56));

-- Location: LCFF_X57_Y26_N29
\s_delay_data[0][56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(56),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][56]~regout\);

-- Location: PIN_T24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(57),
	combout => \in_data~combout\(57));

-- Location: LCCOMB_X56_Y26_N28
\s_delay_data[0][57]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][57]~feeder_combout\ = \in_data~combout\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(57),
	combout => \s_delay_data[0][57]~feeder_combout\);

-- Location: LCFF_X56_Y26_N29
\s_delay_data[0][57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][57]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][57]~regout\);

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(58),
	combout => \in_data~combout\(58));

-- Location: LCFF_X56_Y26_N7
\s_delay_data[0][58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(58),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][58]~regout\);

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(59),
	combout => \in_data~combout\(59));

-- Location: LCCOMB_X57_Y26_N10
\s_delay_data[0][59]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][59]~feeder_combout\ = \in_data~combout\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(59),
	combout => \s_delay_data[0][59]~feeder_combout\);

-- Location: LCFF_X57_Y26_N11
\s_delay_data[0][59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][59]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][59]~regout\);

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(60),
	combout => \in_data~combout\(60));

-- Location: LCFF_X56_Y26_N21
\s_delay_data[0][60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(60),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][60]~regout\);

-- Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(61),
	combout => \in_data~combout\(61));

-- Location: LCCOMB_X56_Y26_N18
\s_delay_data[0][61]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][61]~feeder_combout\ = \in_data~combout\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(61),
	combout => \s_delay_data[0][61]~feeder_combout\);

-- Location: LCFF_X56_Y26_N19
\s_delay_data[0][61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][61]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][61]~regout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(62),
	combout => \in_data~combout\(62));

-- Location: LCCOMB_X54_Y26_N10
\s_delay_data[0][62]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][62]~feeder_combout\ = \in_data~combout\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(62),
	combout => \s_delay_data[0][62]~feeder_combout\);

-- Location: LCFF_X54_Y26_N11
\s_delay_data[0][62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][62]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][62]~regout\);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_data[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_data(63),
	combout => \in_data~combout\(63));

-- Location: LCCOMB_X54_Y26_N20
\s_delay_data[0][63]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_data[0][63]~feeder_combout\ = \in_data~combout\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(63),
	combout => \s_delay_data[0][63]~feeder_combout\);

-- Location: LCFF_X54_Y26_N21
\s_delay_data[0][63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_data[0][63]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_data[0][63]~regout\);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_empty[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_empty(0),
	combout => \in_empty~combout\(0));

-- Location: LCFF_X54_Y26_N31
\s_delay_empty[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_empty~combout\(0),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_empty[0][0]~regout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_empty[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_empty(1),
	combout => \in_empty~combout\(1));

-- Location: LCCOMB_X54_Y26_N18
\s_delay_empty[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_empty[0][1]~feeder_combout\ = \in_empty~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_empty~combout\(1),
	combout => \s_delay_empty[0][1]~feeder_combout\);

-- Location: LCFF_X54_Y26_N19
\s_delay_empty[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_empty[0][1]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_empty[0][1]~regout\);

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_empty[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_empty(2),
	combout => \in_empty~combout\(2));

-- Location: LCCOMB_X54_Y26_N16
\s_delay_empty[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_empty[0][2]~feeder_combout\ = \in_empty~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_empty~combout\(2),
	combout => \s_delay_empty[0][2]~feeder_combout\);

-- Location: LCFF_X54_Y26_N17
\s_delay_empty[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_empty[0][2]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_delay_empty[0][2]~regout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_endofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_endofpacket,
	combout => \in_endofpacket~combout\);

-- Location: LCFF_X54_Y26_N7
\s_delay_endofpacket[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_endofpacket~combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_delay_endofpacket(0));

-- Location: PIN_AD20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_startofpacket~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_startofpacket,
	combout => \in_startofpacket~combout\);

-- Location: LCFF_X54_Y26_N5
\s_delay_startofpacket[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_startofpacket~combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_delay_startofpacket(0));

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_valid~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_valid,
	combout => \in_valid~combout\);

-- Location: LCCOMB_X54_Y26_N22
\s_delay_valid[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_delay_valid[0]~feeder_combout\ = \in_valid~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_valid~combout\,
	combout => \s_delay_valid[0]~feeder_combout\);

-- Location: LCFF_X54_Y26_N23
\s_delay_valid[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_delay_valid[0]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_delay_valid(0));

-- Location: M4K_X55_Y26
\s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altshift_taps:s_delay_data_rtl_0|shift_taps_d1n:auto_generated|altsyncram_kta1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 34,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 5,
	port_a_logical_ram_width => 70,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 34,
	port_b_first_address => 0,
	port_b_first_bit_number => 36,
	port_b_last_address => 7,
	port_b_logical_ram_depth => 5,
	port_b_logical_ram_width => 70,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbrewe => VCC,
	clk0 => \clk_clk~clkctrl_outclk\,
	ena0 => \out_ready~combout\,
	clr0 => \s_delay_data_rtl_0|auto_generated|ALT_INV_dffe4~regout\,
	portadatain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTADATAIN_bus\,
	portaaddr => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTAADDR_bus\,
	portbaddr => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36_PORTBDATAOUT_bus\);

-- Location: PIN_AJ9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(0),
	combout => \in_channel~combout\(0));

-- Location: LCCOMB_X33_Y4_N4
\s_channel_in[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[0]~feeder_combout\ = \in_channel~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_channel~combout\(0),
	combout => \s_channel_in[0]~feeder_combout\);

-- Location: LCCOMB_X57_Y26_N4
\s_channel_in[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[0]~1_combout\ = (\in_valid~combout\ & (\in_startofpacket~combout\ & !\s_state.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datac => \in_startofpacket~combout\,
	datad => \s_state.S0~regout\,
	combout => \s_channel_in[0]~1_combout\);

-- Location: LCFF_X57_Y26_N5
\s_state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_in[0]~1_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S1~regout\);

-- Location: LCFF_X57_Y26_N13
\s_state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \s_state.S1~regout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S2~regout\);

-- Location: LCFF_X57_Y26_N21
\s_state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \s_state.S2~regout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S3~regout\);

-- Location: LCCOMB_X57_Y26_N8
\s_state.S4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state.S4~feeder_combout\ = \s_state.S3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_state.S3~regout\,
	combout => \s_state.S4~feeder_combout\);

-- Location: LCFF_X57_Y26_N9
\s_state.S4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state.S4~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S4~regout\);

-- Location: LCFF_X57_Y26_N31
\s_state.S5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \s_state.S4~regout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S5~regout\);

-- Location: LCFF_X57_Y26_N25
\s_state.S6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \s_state.S5~regout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S6~regout\);

-- Location: LCCOMB_X56_Y25_N2
\s_state.S7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_state.S7~feeder_combout\ = \s_state.S6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_state.S6~regout\,
	combout => \s_state.S7~feeder_combout\);

-- Location: LCFF_X56_Y25_N3
\s_state.S7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_state.S7~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S7~regout\);

-- Location: LCCOMB_X57_Y26_N26
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\s_state.S7~regout\ & ((\s_state.S0~regout\) # ((\in_startofpacket~combout\ & \in_valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~combout\,
	datab => \s_state.S7~regout\,
	datac => \s_state.S0~regout\,
	datad => \in_valid~combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X57_Y26_N27
\s_state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s_state.S0~regout\);

-- Location: LCCOMB_X33_Y4_N12
\s_channel_in[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[0]~0_combout\ = (\out_ready~combout\ & (\in_startofpacket~combout\ & (\in_valid~combout\ & !\s_state.S0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~combout\,
	datab => \in_startofpacket~combout\,
	datac => \in_valid~combout\,
	datad => \s_state.S0~regout\,
	combout => \s_channel_in[0]~0_combout\);

-- Location: LCFF_X33_Y4_N5
\s_channel_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_in[0]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_in(0));

-- Location: LCCOMB_X56_Y25_N8
\s_channel[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel[0]~0_combout\ = (\out_ready~combout\ & \s_state.S7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \out_ready~combout\,
	datad => \s_state.S7~regout\,
	combout => \s_channel[0]~0_combout\);

-- Location: LCFF_X33_Y4_N29
\s_channel[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => s_channel_in(0),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(0));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(1),
	combout => \in_channel~combout\(1));

-- Location: LCCOMB_X33_Y4_N22
\s_channel_in[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[1]~feeder_combout\ = \in_channel~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_channel~combout\(1),
	combout => \s_channel_in[1]~feeder_combout\);

-- Location: LCFF_X33_Y4_N23
\s_channel_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_in[1]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_in(1));

-- Location: LCCOMB_X33_Y4_N26
\s_channel[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel[1]~feeder_combout\ = s_channel_in(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_channel_in(1),
	combout => \s_channel[1]~feeder_combout\);

-- Location: LCFF_X33_Y4_N27
\s_channel[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel[1]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(1));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(2),
	combout => \in_channel~combout\(2));

-- Location: LCCOMB_X33_Y4_N0
\s_channel_in[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[2]~feeder_combout\ = \in_channel~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_channel~combout\(2),
	combout => \s_channel_in[2]~feeder_combout\);

-- Location: LCFF_X33_Y4_N1
\s_channel_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_in[2]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_in(2));

-- Location: LCCOMB_X33_Y4_N20
\s_channel[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel[2]~feeder_combout\ = s_channel_in(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_channel_in(2),
	combout => \s_channel[2]~feeder_combout\);

-- Location: LCFF_X33_Y4_N21
\s_channel[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel[2]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(2));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(3),
	combout => \in_channel~combout\(3));

-- Location: LCCOMB_X33_Y4_N10
\s_channel_in[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_in[3]~feeder_combout\ = \in_channel~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_channel~combout\(3),
	combout => \s_channel_in[3]~feeder_combout\);

-- Location: LCFF_X33_Y4_N11
\s_channel_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_in[3]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_in[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_in(3));

-- Location: LCCOMB_X33_Y4_N2
\s_channel[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel[3]~feeder_combout\ = s_channel_in(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => s_channel_in(3),
	combout => \s_channel[3]~feeder_combout\);

-- Location: LCFF_X33_Y4_N3
\s_channel[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel[3]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(3));

-- Location: LCCOMB_X57_Y26_N12
\s_channel_temp[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~5_combout\ = (\in_valid~combout\ & (!\s_state.S1~regout\ & \s_state.S0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \s_state.S1~regout\,
	datad => \s_state.S0~regout\,
	combout => \s_channel_temp[4]~5_combout\);

-- Location: LCCOMB_X57_Y26_N28
\s_channel_temp[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~1_combout\ = (!\s_state.S3~regout\ & (!\s_state.S4~regout\ & !\s_state.S2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S3~regout\,
	datab => \s_state.S4~regout\,
	datad => \s_state.S2~regout\,
	combout => \s_channel_temp[4]~1_combout\);

-- Location: LCCOMB_X58_Y26_N16
\s_channel_temp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~8_combout\ = (\s_state.S6~regout\ & (((s_selector(1))))) # (!\s_state.S6~regout\ & (\s_state.S5~regout\ & ((s_selector(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S5~regout\,
	datab => \s_state.S6~regout\,
	datac => s_selector(1),
	datad => s_selector(2),
	combout => \s_channel_temp[4]~8_combout\);

-- Location: LCCOMB_X58_Y26_N18
\s_channel_temp[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~7_combout\ = (\s_state.S2~regout\ & (((s_selector(5))))) # (!\s_state.S2~regout\ & (\s_state.S3~regout\ & (s_selector(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S2~regout\,
	datab => \s_state.S3~regout\,
	datac => s_selector(4),
	datad => s_selector(5),
	combout => \s_channel_temp[4]~7_combout\);

-- Location: LCCOMB_X58_Y26_N20
\s_channel_temp[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~9_combout\ = (\s_channel_temp[4]~6_combout\) # ((\s_channel_temp[4]~7_combout\) # ((\s_channel_temp[4]~1_combout\ & \s_channel_temp[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel_temp[4]~6_combout\,
	datab => \s_channel_temp[4]~1_combout\,
	datac => \s_channel_temp[4]~8_combout\,
	datad => \s_channel_temp[4]~7_combout\,
	combout => \s_channel_temp[4]~9_combout\);

-- Location: LCCOMB_X57_Y26_N16
\s_channel_temp[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~0_combout\ = (\s_state.S6~regout\) # ((\s_state.S5~regout\) # ((\in_startofpacket~combout\ & \in_valid~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_startofpacket~combout\,
	datab => \in_valid~combout\,
	datac => \s_state.S6~regout\,
	datad => \s_state.S5~regout\,
	combout => \s_channel_temp[4]~0_combout\);

-- Location: LCCOMB_X57_Y26_N14
\s_channel_temp[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~2_combout\ = (!\s_state.S0~regout\ & ((\s_state.S1~regout\) # ((\s_channel_temp[4]~0_combout\) # (!\s_channel_temp[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S0~regout\,
	datab => \s_state.S1~regout\,
	datac => \s_channel_temp[4]~0_combout\,
	datad => \s_channel_temp[4]~1_combout\,
	combout => \s_channel_temp[4]~2_combout\);

-- Location: LCCOMB_X58_Y26_N30
\s_channel_temp[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~4_combout\ = (\s_channel_temp[4]~3_combout\ & (((s_selector(7) & \s_channel_temp[4]~2_combout\)) # (!s_selector(6)))) # (!\s_channel_temp[4]~3_combout\ & (((s_selector(7) & \s_channel_temp[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel_temp[4]~3_combout\,
	datab => s_selector(6),
	datac => s_selector(7),
	datad => \s_channel_temp[4]~2_combout\,
	combout => \s_channel_temp[4]~4_combout\);

-- Location: LCCOMB_X58_Y26_N10
\s_channel_temp[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~10_combout\ = (\out_ready~combout\ & ((\s_channel_temp[4]~4_combout\) # ((\s_channel_temp[4]~5_combout\ & \s_channel_temp[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~combout\,
	datab => \s_channel_temp[4]~5_combout\,
	datac => \s_channel_temp[4]~9_combout\,
	datad => \s_channel_temp[4]~4_combout\,
	combout => \s_channel_temp[4]~10_combout\);

-- Location: LCFF_X58_Y25_N1
\s_channel_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(4),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(4));

-- Location: LCCOMB_X63_Y25_N16
\s_channel~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~1_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(4)))) # (!\in_valid~combout\ & (s_channel_temp(4))))) # (!s_selector(0) & (s_channel_temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_channel_temp(4),
	datac => \in_valid~combout\,
	datad => \in_data~combout\(4),
	combout => \s_channel~1_combout\);

-- Location: LCFF_X63_Y25_N17
\s_channel[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~1_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(4));

-- Location: LCCOMB_X61_Y26_N16
\s_channel_temp[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[5]~feeder_combout\ = \in_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(5),
	combout => \s_channel_temp[5]~feeder_combout\);

-- Location: LCFF_X61_Y26_N17
\s_channel_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[5]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(5));

-- Location: LCCOMB_X61_Y25_N8
\s_channel~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~2_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(5))) # (!s_selector(0) & ((s_channel_temp(5)))))) # (!\in_valid~combout\ & (((s_channel_temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(5),
	datab => s_channel_temp(5),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~2_combout\);

-- Location: LCFF_X61_Y25_N9
\s_channel[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~2_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(5));

-- Location: LCCOMB_X62_Y26_N4
\s_channel_temp[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[6]~feeder_combout\ = \in_data~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(6),
	combout => \s_channel_temp[6]~feeder_combout\);

-- Location: LCFF_X62_Y26_N5
\s_channel_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[6]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(6));

-- Location: LCCOMB_X62_Y26_N12
\s_channel~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~3_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(6))) # (!s_selector(0) & ((s_channel_temp(6)))))) # (!\in_valid~combout\ & (((s_channel_temp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(6),
	datab => s_channel_temp(6),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~3_combout\);

-- Location: LCFF_X62_Y26_N13
\s_channel[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~3_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(6));

-- Location: LCFF_X58_Y25_N27
\s_channel_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(7),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(7));

-- Location: LCCOMB_X61_Y25_N10
\s_channel~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~4_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(7))) # (!s_selector(0) & ((s_channel_temp(7)))))) # (!\in_valid~combout\ & (((s_channel_temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(7),
	datab => s_channel_temp(7),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~4_combout\);

-- Location: LCFF_X61_Y25_N11
\s_channel[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~4_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(7));

-- Location: LCCOMB_X61_Y25_N28
\s_channel~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~5_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(8)))) # (!s_selector(0) & (s_channel_temp(8))))) # (!\in_valid~combout\ & (s_channel_temp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(8),
	datab => \in_data~combout\(8),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~5_combout\);

-- Location: LCFF_X61_Y25_N29
\s_channel[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~5_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(8));

-- Location: LCFF_X57_Y27_N5
\s_channel_temp[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(9),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(9));

-- Location: LCCOMB_X57_Y25_N12
\s_channel~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~6_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(9))) # (!s_selector(0) & ((s_channel_temp(9)))))) # (!\in_valid~combout\ & (((s_channel_temp(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(9),
	datab => s_channel_temp(9),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~6_combout\);

-- Location: LCFF_X57_Y25_N13
\s_channel[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~6_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(9));

-- Location: LCCOMB_X62_Y26_N14
\s_channel_temp[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[10]~feeder_combout\ = \in_data~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(10),
	combout => \s_channel_temp[10]~feeder_combout\);

-- Location: LCFF_X62_Y26_N15
\s_channel_temp[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[10]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(10));

-- Location: LCCOMB_X62_Y26_N2
\s_channel~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~7_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(10))) # (!s_selector(0) & ((s_channel_temp(10)))))) # (!\in_valid~combout\ & (((s_channel_temp(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(10),
	datac => s_channel_temp(10),
	datad => s_selector(0),
	combout => \s_channel~7_combout\);

-- Location: LCFF_X62_Y26_N3
\s_channel[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~7_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(10));

-- Location: LCCOMB_X62_Y26_N28
\s_channel_temp[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[11]~feeder_combout\ = \in_data~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(11),
	combout => \s_channel_temp[11]~feeder_combout\);

-- Location: LCFF_X62_Y26_N29
\s_channel_temp[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[11]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(11));

-- Location: LCCOMB_X62_Y26_N24
\s_channel~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~8_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(11))) # (!s_selector(0) & ((s_channel_temp(11)))))) # (!\in_valid~combout\ & (((s_channel_temp(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(11),
	datac => s_channel_temp(11),
	datad => s_selector(0),
	combout => \s_channel~8_combout\);

-- Location: LCFF_X62_Y26_N25
\s_channel[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~8_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(11));

-- Location: LCCOMB_X62_Y26_N22
\s_channel~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~9_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(12)))) # (!s_selector(0) & (s_channel_temp(12))))) # (!\in_valid~combout\ & (s_channel_temp(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(12),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(12),
	datad => s_selector(0),
	combout => \s_channel~9_combout\);

-- Location: LCFF_X62_Y26_N23
\s_channel[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~9_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(12));

-- Location: LCCOMB_X62_Y26_N0
\s_channel~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~10_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(13)))) # (!s_selector(0) & (s_channel_temp(13))))) # (!\in_valid~combout\ & (s_channel_temp(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(13),
	datab => \in_data~combout\(13),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~10_combout\);

-- Location: LCFF_X62_Y26_N1
\s_channel[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~10_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(13));

-- Location: LCCOMB_X58_Y25_N28
\s_channel_temp[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[14]~feeder_combout\ = \in_data~combout\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(14),
	combout => \s_channel_temp[14]~feeder_combout\);

-- Location: LCFF_X58_Y25_N29
\s_channel_temp[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[14]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(14));

-- Location: LCCOMB_X62_Y25_N18
\s_channel~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~11_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(14)))) # (!s_selector(0) & (s_channel_temp(14))))) # (!\in_valid~combout\ & (s_channel_temp(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(14),
	datac => \in_data~combout\(14),
	datad => s_selector(0),
	combout => \s_channel~11_combout\);

-- Location: LCFF_X62_Y25_N19
\s_channel[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~11_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(14));

-- Location: LCCOMB_X61_Y26_N24
\s_channel_temp[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[15]~feeder_combout\ = \in_data~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(15),
	combout => \s_channel_temp[15]~feeder_combout\);

-- Location: LCFF_X61_Y26_N25
\s_channel_temp[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[15]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(15));

-- Location: LCCOMB_X61_Y25_N14
\s_channel~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~12_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(15))) # (!s_selector(0) & ((s_channel_temp(15)))))) # (!\in_valid~combout\ & (((s_channel_temp(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(15),
	datab => s_channel_temp(15),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~12_combout\);

-- Location: LCFF_X61_Y25_N15
\s_channel[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~12_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(15));

-- Location: LCCOMB_X66_Y25_N8
\s_channel~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~13_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(16)))) # (!s_selector(0) & (s_channel_temp(16))))) # (!\in_valid~combout\ & (s_channel_temp(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(16),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(16),
	datad => s_selector(0),
	combout => \s_channel~13_combout\);

-- Location: LCFF_X66_Y25_N9
\s_channel[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~13_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(16));

-- Location: LCCOMB_X63_Y26_N0
\s_channel~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~14_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(17)))) # (!s_selector(0) & (s_channel_temp(17))))) # (!\in_valid~combout\ & (s_channel_temp(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(17),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(17),
	datad => s_selector(0),
	combout => \s_channel~14_combout\);

-- Location: LCFF_X63_Y26_N1
\s_channel[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~14_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(17));

-- Location: LCFF_X63_Y26_N9
\s_channel_temp[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(18),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(18));

-- Location: LCCOMB_X63_Y26_N22
\s_channel~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~15_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(18))) # (!s_selector(0) & ((s_channel_temp(18)))))) # (!\in_valid~combout\ & (((s_channel_temp(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(18),
	datab => \in_valid~combout\,
	datac => s_channel_temp(18),
	datad => s_selector(0),
	combout => \s_channel~15_combout\);

-- Location: LCFF_X63_Y26_N23
\s_channel[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~15_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(18));

-- Location: LCCOMB_X61_Y26_N30
\s_channel_temp[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[19]~feeder_combout\ = \in_data~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(19),
	combout => \s_channel_temp[19]~feeder_combout\);

-- Location: LCFF_X61_Y26_N31
\s_channel_temp[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[19]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(19));

-- Location: LCCOMB_X61_Y25_N4
\s_channel~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~16_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(19))) # (!s_selector(0) & ((s_channel_temp(19)))))) # (!\in_valid~combout\ & (((s_channel_temp(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(19),
	datab => s_channel_temp(19),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~16_combout\);

-- Location: LCFF_X61_Y25_N5
\s_channel[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~16_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(19));

-- Location: LCCOMB_X63_Y26_N14
\s_channel_temp[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[20]~feeder_combout\ = \in_data~combout\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(20),
	combout => \s_channel_temp[20]~feeder_combout\);

-- Location: LCFF_X63_Y26_N15
\s_channel_temp[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[20]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(20));

-- Location: LCCOMB_X63_Y26_N28
\s_channel~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~17_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(20))) # (!s_selector(0) & ((s_channel_temp(20)))))) # (!\in_valid~combout\ & (((s_channel_temp(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(20),
	datab => \in_valid~combout\,
	datac => s_channel_temp(20),
	datad => s_selector(0),
	combout => \s_channel~17_combout\);

-- Location: LCFF_X63_Y26_N29
\s_channel[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~17_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(20));

-- Location: LCCOMB_X63_Y26_N4
\s_channel_temp[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[21]~feeder_combout\ = \in_data~combout\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(21),
	combout => \s_channel_temp[21]~feeder_combout\);

-- Location: LCFF_X63_Y26_N5
\s_channel_temp[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[21]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(21));

-- Location: LCCOMB_X63_Y26_N30
\s_channel~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~18_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(21))) # (!s_selector(0) & ((s_channel_temp(21)))))) # (!\in_valid~combout\ & (((s_channel_temp(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(21),
	datac => s_channel_temp(21),
	datad => s_selector(0),
	combout => \s_channel~18_combout\);

-- Location: LCFF_X63_Y26_N31
\s_channel[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~18_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(21));

-- Location: LCCOMB_X60_Y25_N6
\s_channel~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~19_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(22)))) # (!s_selector(0) & (s_channel_temp(22))))) # (!\in_valid~combout\ & (s_channel_temp(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(22),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(22),
	datad => s_selector(0),
	combout => \s_channel~19_combout\);

-- Location: LCFF_X60_Y25_N7
\s_channel[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~19_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(22));

-- Location: LCFF_X57_Y27_N27
\s_channel_temp[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(23),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(23));

-- Location: LCCOMB_X62_Y25_N20
\s_channel~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~20_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(23))) # (!s_selector(0) & ((s_channel_temp(23)))))) # (!\in_valid~combout\ & (((s_channel_temp(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(0),
	datac => \in_data~combout\(23),
	datad => s_channel_temp(23),
	combout => \s_channel~20_combout\);

-- Location: LCFF_X62_Y25_N21
\s_channel[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~20_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(23));

-- Location: LCCOMB_X58_Y25_N4
\s_channel_temp[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[24]~feeder_combout\ = \in_data~combout\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(24),
	combout => \s_channel_temp[24]~feeder_combout\);

-- Location: LCFF_X58_Y25_N5
\s_channel_temp[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[24]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(24));

-- Location: LCCOMB_X57_Y25_N10
\s_channel~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~21_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(24)))) # (!s_selector(0) & (s_channel_temp(24))))) # (!\in_valid~combout\ & (s_channel_temp(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(24),
	datac => \in_data~combout\(24),
	datad => s_selector(0),
	combout => \s_channel~21_combout\);

-- Location: LCFF_X57_Y25_N11
\s_channel[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~21_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(24));

-- Location: LCCOMB_X63_Y26_N12
\s_channel~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~22_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(25)))) # (!s_selector(0) & (s_channel_temp(25))))) # (!\in_valid~combout\ & (s_channel_temp(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(25),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(25),
	datad => s_selector(0),
	combout => \s_channel~22_combout\);

-- Location: LCFF_X63_Y26_N13
\s_channel[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~22_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(25));

-- Location: LCFF_X58_Y25_N3
\s_channel_temp[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(26),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(26));

-- Location: LCCOMB_X62_Y25_N26
\s_channel~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~23_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(26)))) # (!s_selector(0) & (s_channel_temp(26))))) # (!\in_valid~combout\ & (((s_channel_temp(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(0),
	datac => s_channel_temp(26),
	datad => \in_data~combout\(26),
	combout => \s_channel~23_combout\);

-- Location: LCFF_X62_Y25_N27
\s_channel[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~23_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(26));

-- Location: LCCOMB_X66_Y25_N6
\s_channel~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~24_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(27)))) # (!s_selector(0) & (s_channel_temp(27))))) # (!\in_valid~combout\ & (s_channel_temp(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(27),
	datab => \in_data~combout\(27),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~24_combout\);

-- Location: LCFF_X66_Y25_N7
\s_channel[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~24_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(27));

-- Location: LCFF_X61_Y26_N29
\s_channel_temp[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(28),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(28));

-- Location: LCCOMB_X62_Y25_N24
\s_channel~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~25_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(28)))) # (!s_selector(0) & (s_channel_temp(28))))) # (!\in_valid~combout\ & (((s_channel_temp(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(0),
	datac => s_channel_temp(28),
	datad => \in_data~combout\(28),
	combout => \s_channel~25_combout\);

-- Location: LCFF_X62_Y25_N25
\s_channel[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~25_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(28));

-- Location: LCFF_X61_Y26_N19
\s_channel_temp[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(29),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(29));

-- Location: LCCOMB_X62_Y25_N14
\s_channel~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~26_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(29))) # (!s_selector(0) & ((s_channel_temp(29)))))) # (!\in_valid~combout\ & (((s_channel_temp(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(29),
	datac => s_channel_temp(29),
	datad => s_selector(0),
	combout => \s_channel~26_combout\);

-- Location: LCFF_X62_Y25_N15
\s_channel[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~26_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(29));

-- Location: LCFF_X62_Y26_N31
\s_channel_temp[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(30),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(30));

-- Location: LCCOMB_X63_Y25_N18
\s_channel~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~27_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(30))) # (!s_selector(0) & ((s_channel_temp(30)))))) # (!\in_valid~combout\ & (((s_channel_temp(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(30),
	datab => \in_valid~combout\,
	datac => s_selector(0),
	datad => s_channel_temp(30),
	combout => \s_channel~27_combout\);

-- Location: LCFF_X63_Y25_N19
\s_channel[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~27_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(30));

-- Location: LCCOMB_X61_Y26_N12
\s_channel_temp[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[31]~feeder_combout\ = \in_data~combout\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(31),
	combout => \s_channel_temp[31]~feeder_combout\);

-- Location: LCFF_X61_Y26_N13
\s_channel_temp[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[31]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(31));

-- Location: LCCOMB_X63_Y25_N4
\s_channel~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~28_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(31)))) # (!\in_valid~combout\ & (s_channel_temp(31))))) # (!s_selector(0) & (s_channel_temp(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_channel_temp(31),
	datac => \in_valid~combout\,
	datad => \in_data~combout\(31),
	combout => \s_channel~28_combout\);

-- Location: LCFF_X63_Y25_N5
\s_channel[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~28_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(31));

-- Location: LCCOMB_X58_Y25_N10
\s_channel_temp[32]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[32]~feeder_combout\ = \in_data~combout\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(32),
	combout => \s_channel_temp[32]~feeder_combout\);

-- Location: LCFF_X58_Y25_N11
\s_channel_temp[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[32]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(32));

-- Location: LCCOMB_X62_Y25_N16
\s_channel~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~29_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(32))) # (!s_selector(0) & ((s_channel_temp(32)))))) # (!\in_valid~combout\ & (((s_channel_temp(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(0),
	datac => \in_data~combout\(32),
	datad => s_channel_temp(32),
	combout => \s_channel~29_combout\);

-- Location: LCFF_X62_Y25_N17
\s_channel[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~29_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(32));

-- Location: LCFF_X57_Y27_N9
\s_channel_temp[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(33),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(33));

-- Location: LCCOMB_X62_Y25_N30
\s_channel~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~30_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(33))) # (!s_selector(0) & ((s_channel_temp(33)))))) # (!\in_valid~combout\ & (((s_channel_temp(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(33),
	datac => s_channel_temp(33),
	datad => s_selector(0),
	combout => \s_channel~30_combout\);

-- Location: LCFF_X62_Y25_N31
\s_channel[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~30_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(33));

-- Location: LCFF_X61_Y26_N15
\s_channel_temp[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(34),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(34));

-- Location: LCCOMB_X61_Y25_N6
\s_channel~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~31_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(34))) # (!s_selector(0) & ((s_channel_temp(34)))))) # (!\in_valid~combout\ & (((s_channel_temp(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(34),
	datab => s_channel_temp(34),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~31_combout\);

-- Location: LCFF_X61_Y25_N7
\s_channel[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~31_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(34));

-- Location: LCCOMB_X60_Y25_N16
\s_channel~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~32_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(35)))) # (!s_selector(0) & (s_channel_temp(35))))) # (!\in_valid~combout\ & (s_channel_temp(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(35),
	datab => \in_data~combout\(35),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~32_combout\);

-- Location: LCFF_X60_Y25_N17
\s_channel[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~32_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(35));

-- Location: LCFF_X61_Y26_N5
\s_channel_temp[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(36),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(36));

-- Location: LCCOMB_X65_Y25_N20
\s_channel~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~33_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(36))) # (!s_selector(0) & ((s_channel_temp(36)))))) # (!\in_valid~combout\ & (((s_channel_temp(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(36),
	datab => s_channel_temp(36),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~33_combout\);

-- Location: LCFF_X65_Y25_N21
\s_channel[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~33_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(36));

-- Location: LCCOMB_X63_Y26_N16
\s_channel_temp[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[37]~feeder_combout\ = \in_data~combout\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(37),
	combout => \s_channel_temp[37]~feeder_combout\);

-- Location: LCFF_X63_Y26_N17
\s_channel_temp[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[37]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(37));

-- Location: LCCOMB_X63_Y25_N14
\s_channel~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~34_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(37)))) # (!\in_valid~combout\ & (s_channel_temp(37))))) # (!s_selector(0) & (s_channel_temp(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_channel_temp(37),
	datac => \in_valid~combout\,
	datad => \in_data~combout\(37),
	combout => \s_channel~34_combout\);

-- Location: LCFF_X63_Y25_N15
\s_channel[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~34_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(37));

-- Location: LCCOMB_X60_Y25_N22
\s_channel~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~35_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(38)))) # (!s_selector(0) & (s_channel_temp(38))))) # (!\in_valid~combout\ & (s_channel_temp(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(38),
	datab => \in_data~combout\(38),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~35_combout\);

-- Location: LCFF_X60_Y25_N23
\s_channel[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~35_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(38));

-- Location: LCCOMB_X63_Y26_N18
\s_channel_temp[39]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[39]~feeder_combout\ = \in_data~combout\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(39),
	combout => \s_channel_temp[39]~feeder_combout\);

-- Location: LCFF_X63_Y26_N19
\s_channel_temp[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[39]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(39));

-- Location: LCCOMB_X63_Y26_N26
\s_channel~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~36_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(39))) # (!s_selector(0) & ((s_channel_temp(39)))))) # (!\in_valid~combout\ & (((s_channel_temp(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(39),
	datab => s_channel_temp(39),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~36_combout\);

-- Location: LCFF_X63_Y26_N27
\s_channel[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~36_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(39));

-- Location: LCCOMB_X60_Y25_N8
\s_channel~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~37_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(40)))) # (!s_selector(0) & (s_channel_temp(40))))) # (!\in_valid~combout\ & (s_channel_temp(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(40),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(40),
	datad => s_selector(0),
	combout => \s_channel~37_combout\);

-- Location: LCFF_X60_Y25_N9
\s_channel[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~37_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(40));

-- Location: LCFF_X53_Y26_N7
\s_channel_temp[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(41),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(41));

-- Location: LCCOMB_X60_Y25_N10
\s_channel~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~38_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(41))) # (!s_selector(0) & ((s_channel_temp(41)))))) # (!\in_valid~combout\ & (((s_channel_temp(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(41),
	datab => s_channel_temp(41),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~38_combout\);

-- Location: LCFF_X60_Y25_N11
\s_channel[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~38_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(41));

-- Location: LCFF_X63_Y26_N21
\s_channel_temp[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(42),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(42));

-- Location: LCCOMB_X63_Y25_N8
\s_channel~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~39_combout\ = (s_selector(0) & ((\in_valid~combout\ & (\in_data~combout\(42))) # (!\in_valid~combout\ & ((s_channel_temp(42)))))) # (!s_selector(0) & (((s_channel_temp(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => \in_data~combout\(42),
	datac => \in_valid~combout\,
	datad => s_channel_temp(42),
	combout => \s_channel~39_combout\);

-- Location: LCFF_X63_Y25_N9
\s_channel[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~39_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(42));

-- Location: LCCOMB_X58_Y25_N22
\s_channel_temp[43]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[43]~feeder_combout\ = \in_data~combout\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(43),
	combout => \s_channel_temp[43]~feeder_combout\);

-- Location: LCFF_X58_Y25_N23
\s_channel_temp[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[43]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(43));

-- Location: LCCOMB_X57_Y25_N4
\s_channel~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~40_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(43))) # (!s_selector(0) & ((s_channel_temp(43)))))) # (!\in_valid~combout\ & (((s_channel_temp(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(43),
	datab => s_channel_temp(43),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~40_combout\);

-- Location: LCFF_X57_Y25_N5
\s_channel[43]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~40_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(43));

-- Location: LCCOMB_X65_Y25_N18
\s_channel~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~41_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(44)))) # (!s_selector(0) & (s_channel_temp(44))))) # (!\in_valid~combout\ & (s_channel_temp(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(44),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(44),
	datad => s_selector(0),
	combout => \s_channel~41_combout\);

-- Location: LCFF_X65_Y25_N19
\s_channel[44]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~41_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(44));

-- Location: LCCOMB_X53_Y26_N12
\s_channel_temp[45]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[45]~feeder_combout\ = \in_data~combout\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(45),
	combout => \s_channel_temp[45]~feeder_combout\);

-- Location: LCFF_X53_Y26_N13
\s_channel_temp[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[45]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(45));

-- Location: LCCOMB_X57_Y25_N18
\s_channel~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~42_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(45)))) # (!s_selector(0) & (s_channel_temp(45))))) # (!\in_valid~combout\ & (s_channel_temp(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(45),
	datac => \in_data~combout\(45),
	datad => s_selector(0),
	combout => \s_channel~42_combout\);

-- Location: LCFF_X57_Y25_N19
\s_channel[45]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~42_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(45));

-- Location: LCCOMB_X63_Y25_N22
\s_channel~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~43_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(46)))) # (!s_selector(0) & (s_channel_temp(46))))) # (!\in_valid~combout\ & (s_channel_temp(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(46),
	datab => \in_valid~combout\,
	datac => s_selector(0),
	datad => \in_data~combout\(46),
	combout => \s_channel~43_combout\);

-- Location: LCFF_X63_Y25_N23
\s_channel[46]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~43_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(46));

-- Location: LCFF_X58_Y24_N5
\s_channel_temp[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(47),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(47));

-- Location: LCCOMB_X63_Y25_N28
\s_channel~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~44_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(47))) # (!s_selector(0) & ((s_channel_temp(47)))))) # (!\in_valid~combout\ & (((s_channel_temp(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(47),
	datab => \in_valid~combout\,
	datac => s_selector(0),
	datad => s_channel_temp(47),
	combout => \s_channel~44_combout\);

-- Location: LCFF_X63_Y25_N29
\s_channel[47]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~44_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(47));

-- Location: LCCOMB_X65_Y25_N8
\s_channel~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~45_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(48)))) # (!s_selector(0) & (s_channel_temp(48))))) # (!\in_valid~combout\ & (s_channel_temp(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(48),
	datab => \in_data~combout\(48),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~45_combout\);

-- Location: LCFF_X65_Y25_N9
\s_channel[48]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~45_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(48));

-- Location: LCCOMB_X58_Y24_N6
\s_channel_temp[49]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[49]~feeder_combout\ = \in_data~combout\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(49),
	combout => \s_channel_temp[49]~feeder_combout\);

-- Location: LCFF_X58_Y24_N7
\s_channel_temp[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[49]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(49));

-- Location: LCCOMB_X62_Y25_N28
\s_channel~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~46_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(49))) # (!s_selector(0) & ((s_channel_temp(49)))))) # (!\in_valid~combout\ & (((s_channel_temp(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(49),
	datac => s_channel_temp(49),
	datad => s_selector(0),
	combout => \s_channel~46_combout\);

-- Location: LCFF_X62_Y25_N29
\s_channel[49]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~46_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(49));

-- Location: LCCOMB_X63_Y26_N24
\s_channel~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~47_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(50)))) # (!s_selector(0) & (s_channel_temp(50))))) # (!\in_valid~combout\ & (s_channel_temp(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(50),
	datab => \in_data~combout\(50),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~47_combout\);

-- Location: LCFF_X63_Y26_N25
\s_channel[50]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~47_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(50));

-- Location: LCCOMB_X58_Y25_N16
\s_channel_temp[51]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[51]~feeder_combout\ = \in_data~combout\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(51),
	combout => \s_channel_temp[51]~feeder_combout\);

-- Location: LCFF_X58_Y25_N17
\s_channel_temp[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[51]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(51));

-- Location: LCCOMB_X62_Y25_N10
\s_channel~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~48_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(51)))) # (!s_selector(0) & (s_channel_temp(51))))) # (!\in_valid~combout\ & (((s_channel_temp(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(0),
	datac => s_channel_temp(51),
	datad => \in_data~combout\(51),
	combout => \s_channel~48_combout\);

-- Location: LCFF_X62_Y25_N11
\s_channel[51]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~48_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(51));

-- Location: LCFF_X61_Y26_N11
\s_channel_temp[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(52),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(52));

-- Location: LCCOMB_X63_Y25_N30
\s_channel~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~49_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(52)))) # (!\in_valid~combout\ & (s_channel_temp(52))))) # (!s_selector(0) & (s_channel_temp(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_channel_temp(52),
	datac => \in_valid~combout\,
	datad => \in_data~combout\(52),
	combout => \s_channel~49_combout\);

-- Location: LCFF_X63_Y25_N31
\s_channel[52]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~49_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(52));

-- Location: LCCOMB_X53_Y26_N26
\s_channel_temp[53]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[53]~feeder_combout\ = \in_data~combout\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(53),
	combout => \s_channel_temp[53]~feeder_combout\);

-- Location: LCFF_X53_Y26_N27
\s_channel_temp[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[53]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(53));

-- Location: LCCOMB_X61_Y25_N12
\s_channel~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~50_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(53))) # (!s_selector(0) & ((s_channel_temp(53)))))) # (!\in_valid~combout\ & (((s_channel_temp(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(53),
	datac => s_channel_temp(53),
	datad => s_selector(0),
	combout => \s_channel~50_combout\);

-- Location: LCFF_X61_Y25_N13
\s_channel[53]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~50_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(53));

-- Location: LCCOMB_X58_Y25_N14
\s_channel_temp[54]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[54]~feeder_combout\ = \in_data~combout\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(54),
	combout => \s_channel_temp[54]~feeder_combout\);

-- Location: LCFF_X58_Y25_N15
\s_channel_temp[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[54]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(54));

-- Location: LCCOMB_X62_Y25_N12
\s_channel~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~51_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(54))) # (!s_selector(0) & ((s_channel_temp(54)))))) # (!\in_valid~combout\ & (((s_channel_temp(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(54),
	datab => s_channel_temp(54),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~51_combout\);

-- Location: LCFF_X62_Y25_N13
\s_channel[54]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~51_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(54));

-- Location: LCFF_X61_Y26_N21
\s_channel_temp[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(55),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(55));

-- Location: LCCOMB_X61_Y25_N18
\s_channel~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~52_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(55)))) # (!s_selector(0) & (s_channel_temp(55))))) # (!\in_valid~combout\ & (s_channel_temp(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(55),
	datac => \in_data~combout\(55),
	datad => s_selector(0),
	combout => \s_channel~52_combout\);

-- Location: LCFF_X61_Y25_N19
\s_channel[55]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~52_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(55));

-- Location: LCCOMB_X62_Y26_N6
\s_channel_temp[56]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[56]~feeder_combout\ = \in_data~combout\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(56),
	combout => \s_channel_temp[56]~feeder_combout\);

-- Location: LCFF_X62_Y26_N7
\s_channel_temp[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[56]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(56));

-- Location: LCCOMB_X63_Y25_N20
\s_channel~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~53_combout\ = (s_selector(0) & ((\in_valid~combout\ & (\in_data~combout\(56))) # (!\in_valid~combout\ & ((s_channel_temp(56)))))) # (!s_selector(0) & (((s_channel_temp(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => \in_data~combout\(56),
	datac => \in_valid~combout\,
	datad => s_channel_temp(56),
	combout => \s_channel~53_combout\);

-- Location: LCFF_X63_Y25_N21
\s_channel[56]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~53_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(56));

-- Location: LCCOMB_X61_Y25_N16
\s_channel~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~54_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(57)))) # (!s_selector(0) & (s_channel_temp(57))))) # (!\in_valid~combout\ & (s_channel_temp(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(57),
	datab => \in_data~combout\(57),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~54_combout\);

-- Location: LCFF_X61_Y25_N17
\s_channel[57]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~54_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(57));

-- Location: LCCOMB_X61_Y26_N8
\s_channel_temp[58]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[58]~feeder_combout\ = \in_data~combout\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(58),
	combout => \s_channel_temp[58]~feeder_combout\);

-- Location: LCFF_X61_Y26_N9
\s_channel_temp[58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[58]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(58));

-- Location: LCCOMB_X63_Y25_N10
\s_channel~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~55_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(58)))) # (!\in_valid~combout\ & (s_channel_temp(58))))) # (!s_selector(0) & (((s_channel_temp(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => \in_valid~combout\,
	datac => s_channel_temp(58),
	datad => \in_data~combout\(58),
	combout => \s_channel~55_combout\);

-- Location: LCFF_X63_Y25_N11
\s_channel[58]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~55_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(58));

-- Location: LCCOMB_X66_Y25_N24
\s_channel~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~56_combout\ = (\in_valid~combout\ & ((s_selector(0) & ((\in_data~combout\(59)))) # (!s_selector(0) & (s_channel_temp(59))))) # (!\in_valid~combout\ & (s_channel_temp(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(59),
	datab => \in_data~combout\(59),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~56_combout\);

-- Location: LCFF_X66_Y25_N25
\s_channel[59]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~56_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(59));

-- Location: LCCOMB_X58_Y26_N14
\s_channel_temp[60]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[60]~feeder_combout\ = \in_data~combout\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(60),
	combout => \s_channel_temp[60]~feeder_combout\);

-- Location: LCFF_X58_Y26_N15
\s_channel_temp[60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[60]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(60));

-- Location: LCCOMB_X63_Y25_N12
\s_channel~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~57_combout\ = (s_selector(0) & ((\in_valid~combout\ & ((\in_data~combout\(60)))) # (!\in_valid~combout\ & (s_channel_temp(60))))) # (!s_selector(0) & (s_channel_temp(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(0),
	datab => s_channel_temp(60),
	datac => \in_valid~combout\,
	datad => \in_data~combout\(60),
	combout => \s_channel~57_combout\);

-- Location: LCFF_X63_Y25_N13
\s_channel[60]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~57_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(60));

-- Location: LCFF_X62_Y26_N17
\s_channel_temp[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(61),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(61));

-- Location: LCCOMB_X63_Y25_N6
\s_channel~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~58_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(61))) # (!s_selector(0) & ((s_channel_temp(61)))))) # (!\in_valid~combout\ & (((s_channel_temp(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(61),
	datab => \in_valid~combout\,
	datac => s_selector(0),
	datad => s_channel_temp(61),
	combout => \s_channel~58_combout\);

-- Location: LCFF_X63_Y25_N7
\s_channel[61]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~58_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(61));

-- Location: LCCOMB_X61_Y26_N6
\s_channel_temp[62]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[62]~feeder_combout\ = \in_data~combout\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(62),
	combout => \s_channel_temp[62]~feeder_combout\);

-- Location: LCFF_X61_Y26_N7
\s_channel_temp[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[62]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(62));

-- Location: LCCOMB_X62_Y25_N22
\s_channel~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~59_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(62))) # (!s_selector(0) & ((s_channel_temp(62)))))) # (!\in_valid~combout\ & (((s_channel_temp(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(62),
	datac => s_channel_temp(62),
	datad => s_selector(0),
	combout => \s_channel~59_combout\);

-- Location: LCFF_X62_Y25_N23
\s_channel[62]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~59_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(62));

-- Location: LCCOMB_X62_Y26_N26
\s_channel_temp[63]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[63]~feeder_combout\ = \in_data~combout\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(63),
	combout => \s_channel_temp[63]~feeder_combout\);

-- Location: LCFF_X62_Y26_N27
\s_channel_temp[63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[63]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(63));

-- Location: LCCOMB_X62_Y26_N18
\s_channel~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~60_combout\ = (\in_valid~combout\ & ((s_selector(0) & (\in_data~combout\(63))) # (!s_selector(0) & ((s_channel_temp(63)))))) # (!\in_valid~combout\ & (((s_channel_temp(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(63),
	datab => s_channel_temp(63),
	datac => \in_valid~combout\,
	datad => s_selector(0),
	combout => \s_channel~60_combout\);

-- Location: LCFF_X62_Y26_N19
\s_channel[63]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~60_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(63));

-- Location: LCCOMB_X57_Y26_N2
\s_channel_temp[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[4]~3_combout\ = (\s_state.S0~regout\ & (\s_state.S1~regout\ & \in_valid~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S0~regout\,
	datab => \s_state.S1~regout\,
	datad => \in_valid~combout\,
	combout => \s_channel_temp[4]~3_combout\);

-- Location: LCCOMB_X57_Y26_N0
\s_channel_temp[64]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~11_combout\ = (s_selector(15) & (\s_channel_temp[4]~3_combout\ & (s_selector(14)))) # (!s_selector(15) & ((\s_channel_temp[4]~2_combout\) # ((\s_channel_temp[4]~3_combout\ & s_selector(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_selector(15),
	datab => \s_channel_temp[4]~3_combout\,
	datac => s_selector(14),
	datad => \s_channel_temp[4]~2_combout\,
	combout => \s_channel_temp[64]~11_combout\);

-- Location: LCCOMB_X58_Y26_N8
\s_channel_temp[64]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~12_combout\ = (\s_state.S4~regout\ & (!\s_state.S3~regout\ & (s_selector(11) & !\s_state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S4~regout\,
	datab => \s_state.S3~regout\,
	datac => s_selector(11),
	datad => \s_state.S2~regout\,
	combout => \s_channel_temp[64]~12_combout\);

-- Location: LCCOMB_X58_Y26_N4
\s_channel_temp[64]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~14_combout\ = (\s_state.S6~regout\ & (((s_selector(9))))) # (!\s_state.S6~regout\ & (\s_state.S5~regout\ & ((s_selector(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S5~regout\,
	datab => \s_state.S6~regout\,
	datac => s_selector(9),
	datad => s_selector(10),
	combout => \s_channel_temp[64]~14_combout\);

-- Location: LCCOMB_X58_Y26_N26
\s_channel_temp[64]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~13_combout\ = (\s_state.S2~regout\ & (((s_selector(13))))) # (!\s_state.S2~regout\ & (\s_state.S3~regout\ & (s_selector(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_state.S2~regout\,
	datab => \s_state.S3~regout\,
	datac => s_selector(12),
	datad => s_selector(13),
	combout => \s_channel_temp[64]~13_combout\);

-- Location: LCCOMB_X58_Y26_N28
\s_channel_temp[64]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~15_combout\ = (\s_channel_temp[64]~12_combout\) # ((\s_channel_temp[64]~13_combout\) # ((\s_channel_temp[4]~1_combout\ & \s_channel_temp[64]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_channel_temp[4]~1_combout\,
	datab => \s_channel_temp[64]~12_combout\,
	datac => \s_channel_temp[64]~14_combout\,
	datad => \s_channel_temp[64]~13_combout\,
	combout => \s_channel_temp[64]~15_combout\);

-- Location: LCCOMB_X58_Y26_N6
\s_channel_temp[64]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[64]~16_combout\ = (\out_ready~combout\ & ((\s_channel_temp[64]~11_combout\) # ((\s_channel_temp[4]~5_combout\ & \s_channel_temp[64]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_ready~combout\,
	datab => \s_channel_temp[4]~5_combout\,
	datac => \s_channel_temp[64]~11_combout\,
	datad => \s_channel_temp[64]~15_combout\,
	combout => \s_channel_temp[64]~16_combout\);

-- Location: LCFF_X59_Y25_N1
\s_channel_temp[64]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(0),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(64));

-- Location: LCCOMB_X59_Y25_N8
\s_channel~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~61_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(0))) # (!s_selector(8) & ((s_channel_temp(64)))))) # (!\in_valid~combout\ & (((s_channel_temp(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(0),
	datac => s_selector(8),
	datad => s_channel_temp(64),
	combout => \s_channel~61_combout\);

-- Location: LCFF_X59_Y25_N9
\s_channel[64]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~61_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(64));

-- Location: LCCOMB_X59_Y28_N28
\s_channel_temp[65]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[65]~feeder_combout\ = \in_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(1),
	combout => \s_channel_temp[65]~feeder_combout\);

-- Location: LCFF_X59_Y28_N29
\s_channel_temp[65]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[65]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(65));

-- Location: LCCOMB_X59_Y28_N16
\s_channel~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~62_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(1))) # (!s_selector(8) & ((s_channel_temp(65)))))) # (!\in_valid~combout\ & (((s_channel_temp(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(1),
	datab => s_channel_temp(65),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~62_combout\);

-- Location: LCFF_X59_Y28_N17
\s_channel[65]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~62_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(65));

-- Location: LCFF_X59_Y27_N1
\s_channel_temp[66]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(2),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(66));

-- Location: LCCOMB_X59_Y27_N16
\s_channel~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~63_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(2)))) # (!s_selector(8) & (s_channel_temp(66))))) # (!\in_valid~combout\ & (s_channel_temp(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(66),
	datac => \in_data~combout\(2),
	datad => s_selector(8),
	combout => \s_channel~63_combout\);

-- Location: LCFF_X59_Y27_N17
\s_channel[66]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~63_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(66));

-- Location: LCFF_X59_Y27_N27
\s_channel_temp[67]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(3),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(67));

-- Location: LCCOMB_X59_Y27_N6
\s_channel~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~64_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(3))) # (!s_selector(8) & ((s_channel_temp(67)))))) # (!\in_valid~combout\ & (((s_channel_temp(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(3),
	datab => s_channel_temp(67),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~64_combout\);

-- Location: LCFF_X59_Y27_N7
\s_channel[67]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~64_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(67));

-- Location: LCCOMB_X57_Y25_N22
\s_channel_temp[68]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[68]~feeder_combout\ = \in_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(4),
	combout => \s_channel_temp[68]~feeder_combout\);

-- Location: LCFF_X57_Y25_N23
\s_channel_temp[68]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[68]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(68));

-- Location: LCCOMB_X59_Y25_N14
\s_channel~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~65_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(4))) # (!s_selector(8) & ((s_channel_temp(68)))))) # (!\in_valid~combout\ & (((s_channel_temp(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(4),
	datac => s_selector(8),
	datad => s_channel_temp(68),
	combout => \s_channel~65_combout\);

-- Location: LCFF_X59_Y25_N15
\s_channel[68]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~65_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(68));

-- Location: LCCOMB_X58_Y27_N12
\s_channel_temp[69]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[69]~feeder_combout\ = \in_data~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(5),
	combout => \s_channel_temp[69]~feeder_combout\);

-- Location: LCFF_X58_Y27_N13
\s_channel_temp[69]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[69]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(69));

-- Location: LCCOMB_X61_Y25_N26
\s_channel~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~66_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(5))) # (!s_selector(8) & ((s_channel_temp(69)))))) # (!\in_valid~combout\ & (((s_channel_temp(69)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(5),
	datab => s_channel_temp(69),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~66_combout\);

-- Location: LCFF_X61_Y25_N27
\s_channel[69]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~66_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(69));

-- Location: LCFF_X59_Y24_N15
\s_channel_temp[70]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(6),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(70));

-- Location: LCCOMB_X59_Y24_N12
\s_channel~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~67_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(6))) # (!s_selector(8) & ((s_channel_temp(70)))))) # (!\in_valid~combout\ & (((s_channel_temp(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(6),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(70),
	combout => \s_channel~67_combout\);

-- Location: LCFF_X59_Y24_N13
\s_channel[70]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~67_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(70));

-- Location: LCFF_X58_Y25_N9
\s_channel_temp[71]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(7),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(71));

-- Location: LCCOMB_X61_Y25_N24
\s_channel~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~68_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(7))) # (!s_selector(8) & ((s_channel_temp(71)))))) # (!\in_valid~combout\ & (((s_channel_temp(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(7),
	datab => s_channel_temp(71),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~68_combout\);

-- Location: LCFF_X61_Y25_N25
\s_channel[71]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~68_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(71));

-- Location: LCCOMB_X60_Y26_N20
\s_channel_temp[72]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[72]~feeder_combout\ = \in_data~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(8),
	combout => \s_channel_temp[72]~feeder_combout\);

-- Location: LCFF_X60_Y26_N21
\s_channel_temp[72]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[72]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(72));

-- Location: LCCOMB_X60_Y26_N28
\s_channel~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~69_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(8))) # (!s_selector(8) & ((s_channel_temp(72)))))) # (!\in_valid~combout\ & (((s_channel_temp(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(8),
	datac => s_channel_temp(72),
	datad => s_selector(8),
	combout => \s_channel~69_combout\);

-- Location: LCFF_X60_Y26_N29
\s_channel[72]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~69_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(72));

-- Location: LCFF_X57_Y27_N11
\s_channel_temp[73]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(9),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(73));

-- Location: LCCOMB_X57_Y25_N8
\s_channel~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~70_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(9))) # (!s_selector(8) & ((s_channel_temp(73)))))) # (!\in_valid~combout\ & (((s_channel_temp(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(9),
	datab => s_channel_temp(73),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~70_combout\);

-- Location: LCFF_X57_Y25_N9
\s_channel[73]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~70_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(73));

-- Location: LCCOMB_X59_Y25_N18
\s_channel_temp[74]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[74]~feeder_combout\ = \in_data~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(10),
	combout => \s_channel_temp[74]~feeder_combout\);

-- Location: LCFF_X59_Y25_N19
\s_channel_temp[74]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[74]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(74));

-- Location: LCCOMB_X59_Y25_N12
\s_channel~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~71_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(10)))) # (!s_selector(8) & (s_channel_temp(74))))) # (!\in_valid~combout\ & (s_channel_temp(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(74),
	datac => s_selector(8),
	datad => \in_data~combout\(10),
	combout => \s_channel~71_combout\);

-- Location: LCFF_X59_Y25_N13
\s_channel[74]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~71_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(74));

-- Location: LCCOMB_X58_Y27_N18
\s_channel_temp[75]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[75]~feeder_combout\ = \in_data~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(11),
	combout => \s_channel_temp[75]~feeder_combout\);

-- Location: LCFF_X58_Y27_N19
\s_channel_temp[75]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[75]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(75));

-- Location: LCCOMB_X59_Y25_N22
\s_channel~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~72_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(11))) # (!s_selector(8) & ((s_channel_temp(75)))))) # (!\in_valid~combout\ & (((s_channel_temp(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(11),
	datac => s_selector(8),
	datad => s_channel_temp(75),
	combout => \s_channel~72_combout\);

-- Location: LCFF_X59_Y25_N23
\s_channel[75]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~72_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(75));

-- Location: LCCOMB_X59_Y25_N28
\s_channel_temp[76]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[76]~feeder_combout\ = \in_data~combout\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(12),
	combout => \s_channel_temp[76]~feeder_combout\);

-- Location: LCFF_X59_Y25_N29
\s_channel_temp[76]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[76]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(76));

-- Location: LCCOMB_X59_Y25_N24
\s_channel~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~73_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(12))) # (!s_selector(8) & ((s_channel_temp(76)))))) # (!\in_valid~combout\ & (((s_channel_temp(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(12),
	datab => s_channel_temp(76),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~73_combout\);

-- Location: LCFF_X59_Y25_N25
\s_channel[76]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~73_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(76));

-- Location: LCFF_X59_Y26_N9
\s_channel_temp[77]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(13),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(77));

-- Location: LCCOMB_X59_Y25_N26
\s_channel~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~74_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(13))) # (!s_selector(8) & ((s_channel_temp(77)))))) # (!\in_valid~combout\ & (((s_channel_temp(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(13),
	datab => s_channel_temp(77),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~74_combout\);

-- Location: LCFF_X59_Y25_N27
\s_channel[77]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~74_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(77));

-- Location: LCCOMB_X59_Y28_N18
\s_channel~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~75_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(14)))) # (!s_selector(8) & (s_channel_temp(78))))) # (!\in_valid~combout\ & (s_channel_temp(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(78),
	datab => \in_data~combout\(14),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~75_combout\);

-- Location: LCFF_X59_Y28_N19
\s_channel[78]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~75_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(78));

-- Location: LCCOMB_X59_Y27_N24
\s_channel_temp[79]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[79]~feeder_combout\ = \in_data~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(15),
	combout => \s_channel_temp[79]~feeder_combout\);

-- Location: LCFF_X59_Y27_N25
\s_channel_temp[79]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[79]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(79));

-- Location: LCCOMB_X61_Y25_N2
\s_channel~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~76_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(15))) # (!s_selector(8) & ((s_channel_temp(79)))))) # (!\in_valid~combout\ & (((s_channel_temp(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(15),
	datab => s_channel_temp(79),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~76_combout\);

-- Location: LCFF_X61_Y25_N3
\s_channel[79]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~76_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(79));

-- Location: LCCOMB_X59_Y27_N14
\s_channel_temp[80]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[80]~feeder_combout\ = \in_data~combout\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(16),
	combout => \s_channel_temp[80]~feeder_combout\);

-- Location: LCFF_X59_Y27_N15
\s_channel_temp[80]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[80]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(80));

-- Location: LCCOMB_X59_Y27_N8
\s_channel~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~77_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(16))) # (!s_selector(8) & ((s_channel_temp(80)))))) # (!\in_valid~combout\ & (((s_channel_temp(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(16),
	datac => s_channel_temp(80),
	datad => s_selector(8),
	combout => \s_channel~77_combout\);

-- Location: LCFF_X59_Y27_N9
\s_channel[80]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~77_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(80));

-- Location: LCCOMB_X59_Y25_N2
\s_channel_temp[81]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[81]~feeder_combout\ = \in_data~combout\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(17),
	combout => \s_channel_temp[81]~feeder_combout\);

-- Location: LCFF_X59_Y25_N3
\s_channel_temp[81]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[81]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(81));

-- Location: LCCOMB_X59_Y25_N16
\s_channel~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~78_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(17))) # (!s_selector(8) & ((s_channel_temp(81)))))) # (!\in_valid~combout\ & (((s_channel_temp(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(17),
	datac => s_channel_temp(81),
	datad => s_selector(8),
	combout => \s_channel~78_combout\);

-- Location: LCFF_X59_Y25_N17
\s_channel[81]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~78_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(81));

-- Location: LCCOMB_X59_Y24_N24
\s_channel_temp[82]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[82]~feeder_combout\ = \in_data~combout\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(18),
	combout => \s_channel_temp[82]~feeder_combout\);

-- Location: LCFF_X59_Y24_N25
\s_channel_temp[82]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[82]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(82));

-- Location: LCCOMB_X59_Y24_N22
\s_channel~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~79_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(18))) # (!s_selector(8) & ((s_channel_temp(82)))))) # (!\in_valid~combout\ & (((s_channel_temp(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(18),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(82),
	combout => \s_channel~79_combout\);

-- Location: LCFF_X59_Y24_N23
\s_channel[82]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~79_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(82));

-- Location: LCCOMB_X58_Y25_N18
\s_channel_temp[83]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[83]~feeder_combout\ = \in_data~combout\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(19),
	combout => \s_channel_temp[83]~feeder_combout\);

-- Location: LCFF_X58_Y25_N19
\s_channel_temp[83]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[83]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(83));

-- Location: LCCOMB_X61_Y25_N20
\s_channel~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~80_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(19)))) # (!s_selector(8) & (s_channel_temp(83))))) # (!\in_valid~combout\ & (s_channel_temp(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(83),
	datac => \in_data~combout\(19),
	datad => s_selector(8),
	combout => \s_channel~80_combout\);

-- Location: LCFF_X61_Y25_N21
\s_channel[83]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~80_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(83));

-- Location: LCCOMB_X60_Y25_N0
\s_channel~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~81_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(20)))) # (!s_selector(8) & (s_channel_temp(84))))) # (!\in_valid~combout\ & (s_channel_temp(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(84),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(20),
	combout => \s_channel~81_combout\);

-- Location: LCFF_X60_Y25_N1
\s_channel[84]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~81_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(84));

-- Location: LCFF_X60_Y26_N31
\s_channel_temp[85]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(21),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(85));

-- Location: LCCOMB_X60_Y26_N26
\s_channel~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~82_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(21))) # (!s_selector(8) & ((s_channel_temp(85)))))) # (!\in_valid~combout\ & (((s_channel_temp(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(21),
	datab => s_channel_temp(85),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~82_combout\);

-- Location: LCFF_X60_Y26_N27
\s_channel[85]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~82_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(85));

-- Location: LCCOMB_X60_Y26_N8
\s_channel_temp[86]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[86]~feeder_combout\ = \in_data~combout\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(22),
	combout => \s_channel_temp[86]~feeder_combout\);

-- Location: LCFF_X60_Y26_N9
\s_channel_temp[86]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[86]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(86));

-- Location: LCCOMB_X60_Y25_N30
\s_channel~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~83_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(22))) # (!s_selector(8) & ((s_channel_temp(86)))))) # (!\in_valid~combout\ & (((s_channel_temp(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(8),
	datac => \in_data~combout\(22),
	datad => s_channel_temp(86),
	combout => \s_channel~83_combout\);

-- Location: LCFF_X60_Y25_N31
\s_channel[86]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~83_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(86));

-- Location: LCFF_X57_Y25_N1
\s_channel_temp[87]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(23),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(87));

-- Location: LCCOMB_X57_Y25_N14
\s_channel~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~84_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(23))) # (!s_selector(8) & ((s_channel_temp(87)))))) # (!\in_valid~combout\ & (((s_channel_temp(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(23),
	datab => s_channel_temp(87),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~84_combout\);

-- Location: LCFF_X57_Y25_N15
\s_channel[87]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~84_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(87));

-- Location: LCFF_X57_Y25_N27
\s_channel_temp[88]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(24),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(88));

-- Location: LCCOMB_X57_Y25_N24
\s_channel~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~85_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(24)))) # (!s_selector(8) & (s_channel_temp(88))))) # (!\in_valid~combout\ & (s_channel_temp(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(88),
	datac => \in_data~combout\(24),
	datad => s_selector(8),
	combout => \s_channel~85_combout\);

-- Location: LCFF_X57_Y25_N25
\s_channel[88]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~85_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(88));

-- Location: LCFF_X57_Y25_N29
\s_channel_temp[89]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(25),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(89));

-- Location: LCCOMB_X57_Y25_N30
\s_channel~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~86_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(25))) # (!s_selector(8) & ((s_channel_temp(89)))))) # (!\in_valid~combout\ & (((s_channel_temp(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(25),
	datab => s_channel_temp(89),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~86_combout\);

-- Location: LCFF_X57_Y25_N31
\s_channel[89]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~86_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(89));

-- Location: LCFF_X60_Y26_N15
\s_channel_temp[90]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(26),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(90));

-- Location: LCCOMB_X60_Y25_N28
\s_channel~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~87_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(26))) # (!s_selector(8) & ((s_channel_temp(90)))))) # (!\in_valid~combout\ & (((s_channel_temp(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(26),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(90),
	combout => \s_channel~87_combout\);

-- Location: LCFF_X60_Y25_N29
\s_channel[90]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~87_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(90));

-- Location: LCCOMB_X59_Y28_N0
\s_channel_temp[91]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[91]~feeder_combout\ = \in_data~combout\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(27),
	combout => \s_channel_temp[91]~feeder_combout\);

-- Location: LCFF_X59_Y28_N1
\s_channel_temp[91]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[91]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(91));

-- Location: LCCOMB_X59_Y28_N24
\s_channel~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~88_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(27))) # (!s_selector(8) & ((s_channel_temp(91)))))) # (!\in_valid~combout\ & (((s_channel_temp(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(27),
	datab => s_channel_temp(91),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~88_combout\);

-- Location: LCFF_X59_Y28_N25
\s_channel[91]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~88_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(91));

-- Location: LCCOMB_X59_Y24_N30
\s_channel_temp[92]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[92]~feeder_combout\ = \in_data~combout\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(28),
	combout => \s_channel_temp[92]~feeder_combout\);

-- Location: LCFF_X59_Y24_N31
\s_channel_temp[92]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[92]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(92));

-- Location: LCCOMB_X59_Y24_N28
\s_channel~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~89_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(28))) # (!s_selector(8) & ((s_channel_temp(92)))))) # (!\in_valid~combout\ & (((s_channel_temp(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(28),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(92),
	combout => \s_channel~89_combout\);

-- Location: LCFF_X59_Y24_N29
\s_channel[92]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~89_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(92));

-- Location: LCCOMB_X59_Y27_N4
\s_channel_temp[93]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[93]~feeder_combout\ = \in_data~combout\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(29),
	combout => \s_channel_temp[93]~feeder_combout\);

-- Location: LCFF_X59_Y27_N5
\s_channel_temp[93]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[93]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(93));

-- Location: LCCOMB_X59_Y27_N18
\s_channel~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~90_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(29))) # (!s_selector(8) & ((s_channel_temp(93)))))) # (!\in_valid~combout\ & (((s_channel_temp(93)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(29),
	datac => s_channel_temp(93),
	datad => s_selector(8),
	combout => \s_channel~90_combout\);

-- Location: LCFF_X59_Y27_N19
\s_channel[93]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~90_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(93));

-- Location: LCCOMB_X59_Y27_N30
\s_channel_temp[94]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[94]~feeder_combout\ = \in_data~combout\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(30),
	combout => \s_channel_temp[94]~feeder_combout\);

-- Location: LCFF_X59_Y27_N31
\s_channel_temp[94]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[94]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(94));

-- Location: LCCOMB_X59_Y27_N20
\s_channel~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~91_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(30))) # (!s_selector(8) & ((s_channel_temp(94)))))) # (!\in_valid~combout\ & (((s_channel_temp(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(30),
	datab => s_channel_temp(94),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~91_combout\);

-- Location: LCFF_X59_Y27_N21
\s_channel[94]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~91_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(94));

-- Location: LCCOMB_X59_Y28_N2
\s_channel~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~92_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(31)))) # (!s_selector(8) & (s_channel_temp(95))))) # (!\in_valid~combout\ & (s_channel_temp(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(95),
	datab => \in_data~combout\(31),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~92_combout\);

-- Location: LCFF_X59_Y28_N3
\s_channel[95]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~92_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(95));

-- Location: LCFF_X59_Y26_N13
\s_channel_temp[96]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(32),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(96));

-- Location: LCCOMB_X62_Y25_N4
\s_channel~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~93_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(32)))) # (!s_selector(8) & (s_channel_temp(96))))) # (!\in_valid~combout\ & (s_channel_temp(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(96),
	datac => \in_data~combout\(32),
	datad => s_selector(8),
	combout => \s_channel~93_combout\);

-- Location: LCFF_X62_Y25_N5
\s_channel[96]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~93_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(96));

-- Location: LCCOMB_X59_Y24_N4
\s_channel_temp[97]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[97]~feeder_combout\ = \in_data~combout\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(33),
	combout => \s_channel_temp[97]~feeder_combout\);

-- Location: LCFF_X59_Y24_N5
\s_channel_temp[97]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[97]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(97));

-- Location: LCCOMB_X59_Y24_N2
\s_channel~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~94_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(33))) # (!s_selector(8) & ((s_channel_temp(97)))))) # (!\in_valid~combout\ & (((s_channel_temp(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(33),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(97),
	combout => \s_channel~94_combout\);

-- Location: LCFF_X59_Y24_N3
\s_channel[97]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~94_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(97));

-- Location: LCFF_X61_Y26_N1
\s_channel_temp[98]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(34),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(98));

-- Location: LCCOMB_X61_Y25_N22
\s_channel~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~95_combout\ = (s_selector(8) & ((\in_valid~combout\ & (\in_data~combout\(34))) # (!\in_valid~combout\ & ((s_channel_temp(98)))))) # (!s_selector(8) & (((s_channel_temp(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(34),
	datab => s_selector(8),
	datac => \in_valid~combout\,
	datad => s_channel_temp(98),
	combout => \s_channel~95_combout\);

-- Location: LCFF_X61_Y25_N23
\s_channel[98]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~95_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(98));

-- Location: LCCOMB_X60_Y25_N18
\s_channel~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~96_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(35)))) # (!s_selector(8) & (s_channel_temp(99))))) # (!\in_valid~combout\ & (s_channel_temp(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(99),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(35),
	combout => \s_channel~96_combout\);

-- Location: LCFF_X60_Y25_N19
\s_channel[99]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~96_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(99));

-- Location: LCCOMB_X59_Y26_N6
\s_channel_temp[100]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[100]~feeder_combout\ = \in_data~combout\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(36),
	combout => \s_channel_temp[100]~feeder_combout\);

-- Location: LCFF_X59_Y26_N7
\s_channel_temp[100]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[100]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(100));

-- Location: LCCOMB_X59_Y24_N0
\s_channel~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~97_combout\ = (s_selector(8) & ((\in_valid~combout\ & (\in_data~combout\(36))) # (!\in_valid~combout\ & ((s_channel_temp(100)))))) # (!s_selector(8) & (((s_channel_temp(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(36),
	datab => s_channel_temp(100),
	datac => s_selector(8),
	datad => \in_valid~combout\,
	combout => \s_channel~97_combout\);

-- Location: LCFF_X59_Y24_N1
\s_channel[100]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~97_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(100));

-- Location: LCFF_X59_Y26_N21
\s_channel_temp[101]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(37),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(101));

-- Location: LCCOMB_X59_Y25_N30
\s_channel~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~98_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(37))) # (!s_selector(8) & ((s_channel_temp(101)))))) # (!\in_valid~combout\ & (((s_channel_temp(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(37),
	datac => s_channel_temp(101),
	datad => s_selector(8),
	combout => \s_channel~98_combout\);

-- Location: LCFF_X59_Y25_N31
\s_channel[101]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~98_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(101));

-- Location: LCCOMB_X60_Y26_N4
\s_channel_temp[102]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[102]~feeder_combout\ = \in_data~combout\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(38),
	combout => \s_channel_temp[102]~feeder_combout\);

-- Location: LCFF_X60_Y26_N5
\s_channel_temp[102]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[102]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(102));

-- Location: LCCOMB_X60_Y25_N24
\s_channel~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~99_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(38)))) # (!s_selector(8) & (s_channel_temp(102))))) # (!\in_valid~combout\ & (s_channel_temp(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(102),
	datac => s_selector(8),
	datad => \in_data~combout\(38),
	combout => \s_channel~99_combout\);

-- Location: LCFF_X60_Y25_N25
\s_channel[102]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~99_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(102));

-- Location: LCFF_X60_Y26_N23
\s_channel_temp[103]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(39),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(103));

-- Location: LCCOMB_X60_Y26_N24
\s_channel~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~100_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(39)))) # (!s_selector(8) & (s_channel_temp(103))))) # (!\in_valid~combout\ & (s_channel_temp(103)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(103),
	datac => \in_data~combout\(39),
	datad => s_selector(8),
	combout => \s_channel~100_combout\);

-- Location: LCFF_X60_Y26_N25
\s_channel[103]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~100_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(103));

-- Location: LCFF_X59_Y26_N11
\s_channel_temp[104]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(40),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(104));

-- Location: LCCOMB_X60_Y25_N14
\s_channel~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~101_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(40))) # (!s_selector(8) & ((s_channel_temp(104)))))) # (!\in_valid~combout\ & (((s_channel_temp(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_selector(8),
	datac => \in_data~combout\(40),
	datad => s_channel_temp(104),
	combout => \s_channel~101_combout\);

-- Location: LCFF_X60_Y25_N15
\s_channel[104]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~101_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(104));

-- Location: LCCOMB_X60_Y25_N20
\s_channel~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~102_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(41)))) # (!s_selector(8) & (s_channel_temp(105))))) # (!\in_valid~combout\ & (s_channel_temp(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(105),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(41),
	combout => \s_channel~102_combout\);

-- Location: LCFF_X60_Y25_N21
\s_channel[105]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~102_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(105));

-- Location: LCCOMB_X63_Y25_N24
\s_channel~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~103_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(42)))) # (!s_selector(8) & (s_channel_temp(106))))) # (!\in_valid~combout\ & (s_channel_temp(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(106),
	datab => \in_data~combout\(42),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~103_combout\);

-- Location: LCFF_X63_Y25_N25
\s_channel[106]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~103_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(106));

-- Location: LCCOMB_X59_Y25_N20
\s_channel~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~104_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(43)))) # (!s_selector(8) & (s_channel_temp(107))))) # (!\in_valid~combout\ & (s_channel_temp(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(107),
	datab => \in_data~combout\(43),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~104_combout\);

-- Location: LCFF_X59_Y25_N21
\s_channel[107]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~104_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(107));

-- Location: LCCOMB_X60_Y25_N2
\s_channel~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~105_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(44)))) # (!s_selector(8) & (s_channel_temp(108))))) # (!\in_valid~combout\ & (s_channel_temp(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(108),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(44),
	combout => \s_channel~105_combout\);

-- Location: LCFF_X60_Y25_N3
\s_channel[108]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~105_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(108));

-- Location: LCCOMB_X57_Y25_N16
\s_channel~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~106_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(45)))) # (!s_selector(8) & (s_channel_temp(109))))) # (!\in_valid~combout\ & (s_channel_temp(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(109),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(45),
	datad => s_selector(8),
	combout => \s_channel~106_combout\);

-- Location: LCFF_X57_Y25_N17
\s_channel[109]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~106_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(109));

-- Location: LCCOMB_X59_Y27_N28
\s_channel_temp[110]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[110]~feeder_combout\ = \in_data~combout\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(46),
	combout => \s_channel_temp[110]~feeder_combout\);

-- Location: LCFF_X59_Y27_N29
\s_channel_temp[110]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[110]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(110));

-- Location: LCCOMB_X59_Y27_N22
\s_channel~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~107_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(46))) # (!s_selector(8) & ((s_channel_temp(110)))))) # (!\in_valid~combout\ & (((s_channel_temp(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(46),
	datab => s_channel_temp(110),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~107_combout\);

-- Location: LCFF_X59_Y27_N23
\s_channel[110]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~107_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(110));

-- Location: LCCOMB_X59_Y24_N18
\s_channel~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~108_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(47)))) # (!s_selector(8) & (s_channel_temp(111))))) # (!\in_valid~combout\ & (s_channel_temp(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(111),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(47),
	combout => \s_channel~108_combout\);

-- Location: LCFF_X59_Y24_N19
\s_channel[111]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~108_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(111));

-- Location: LCFF_X60_Y26_N19
\s_channel_temp[112]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(48),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(112));

-- Location: LCCOMB_X60_Y26_N2
\s_channel~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~109_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(48)))) # (!s_selector(8) & (s_channel_temp(112))))) # (!\in_valid~combout\ & (s_channel_temp(112)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(112),
	datac => \in_data~combout\(48),
	datad => s_selector(8),
	combout => \s_channel~109_combout\);

-- Location: LCFF_X60_Y26_N3
\s_channel[112]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~109_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(112));

-- Location: LCCOMB_X60_Y25_N12
\s_channel~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~110_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(49)))) # (!s_selector(8) & (s_channel_temp(113))))) # (!\in_valid~combout\ & (s_channel_temp(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(113),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(49),
	combout => \s_channel~110_combout\);

-- Location: LCFF_X60_Y25_N13
\s_channel[113]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~110_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(113));

-- Location: LCCOMB_X59_Y27_N12
\s_channel~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~111_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(50)))) # (!s_selector(8) & (s_channel_temp(114))))) # (!\in_valid~combout\ & (s_channel_temp(114)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(114),
	datab => \in_data~combout\(50),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~111_combout\);

-- Location: LCFF_X59_Y27_N13
\s_channel[114]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~111_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(114));

-- Location: LCCOMB_X62_Y25_N6
\s_channel~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~112_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(51)))) # (!s_selector(8) & (s_channel_temp(115))))) # (!\in_valid~combout\ & (s_channel_temp(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(115),
	datab => \in_data~combout\(51),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~112_combout\);

-- Location: LCFF_X62_Y25_N7
\s_channel[115]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~112_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(115));

-- Location: LCCOMB_X59_Y26_N22
\s_channel_temp[116]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[116]~feeder_combout\ = \in_data~combout\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(52),
	combout => \s_channel_temp[116]~feeder_combout\);

-- Location: LCFF_X59_Y26_N23
\s_channel_temp[116]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[116]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(116));

-- Location: LCCOMB_X59_Y25_N10
\s_channel~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~113_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(52))) # (!s_selector(8) & ((s_channel_temp(116)))))) # (!\in_valid~combout\ & (((s_channel_temp(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(52),
	datac => s_selector(8),
	datad => s_channel_temp(116),
	combout => \s_channel~113_combout\);

-- Location: LCFF_X59_Y25_N11
\s_channel[116]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~113_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(116));

-- Location: LCCOMB_X61_Y25_N0
\s_channel~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~114_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(53)))) # (!s_selector(8) & (s_channel_temp(117))))) # (!\in_valid~combout\ & (s_channel_temp(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(117),
	datab => \in_data~combout\(53),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~114_combout\);

-- Location: LCFF_X61_Y25_N1
\s_channel[117]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~114_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(117));

-- Location: LCCOMB_X62_Y25_N8
\s_channel~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~115_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(54)))) # (!s_selector(8) & (s_channel_temp(118))))) # (!\in_valid~combout\ & (s_channel_temp(118)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(118),
	datab => \in_data~combout\(54),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~115_combout\);

-- Location: LCFF_X62_Y25_N9
\s_channel[118]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~115_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(118));

-- Location: LCFF_X61_Y26_N3
\s_channel_temp[119]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(55),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(119));

-- Location: LCCOMB_X61_Y25_N30
\s_channel~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~116_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(55))) # (!s_selector(8) & ((s_channel_temp(119)))))) # (!\in_valid~combout\ & (((s_channel_temp(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(55),
	datab => s_channel_temp(119),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~116_combout\);

-- Location: LCFF_X61_Y25_N31
\s_channel[119]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~116_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(119));

-- Location: LCCOMB_X59_Y26_N0
\s_channel_temp[120]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[120]~feeder_combout\ = \in_data~combout\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(56),
	combout => \s_channel_temp[120]~feeder_combout\);

-- Location: LCFF_X59_Y26_N1
\s_channel_temp[120]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[120]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(120));

-- Location: LCCOMB_X59_Y25_N4
\s_channel~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~117_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(56)))) # (!s_selector(8) & (s_channel_temp(120))))) # (!\in_valid~combout\ & (s_channel_temp(120)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(120),
	datac => s_selector(8),
	datad => \in_data~combout\(56),
	combout => \s_channel~117_combout\);

-- Location: LCFF_X59_Y25_N5
\s_channel[120]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~117_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(120));

-- Location: LCFF_X60_Y26_N17
\s_channel_temp[121]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	sdata => \in_data~combout\(57),
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	sload => VCC,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(121));

-- Location: LCCOMB_X60_Y26_N12
\s_channel~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~118_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(57))) # (!s_selector(8) & ((s_channel_temp(121)))))) # (!\in_valid~combout\ & (((s_channel_temp(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(57),
	datac => s_channel_temp(121),
	datad => s_selector(8),
	combout => \s_channel~118_combout\);

-- Location: LCFF_X60_Y26_N13
\s_channel[121]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~118_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(121));

-- Location: LCCOMB_X59_Y26_N30
\s_channel_temp[122]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[122]~feeder_combout\ = \in_data~combout\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(58),
	combout => \s_channel_temp[122]~feeder_combout\);

-- Location: LCFF_X59_Y26_N31
\s_channel_temp[122]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[122]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(122));

-- Location: LCCOMB_X63_Y25_N26
\s_channel~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~119_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(58))) # (!s_selector(8) & ((s_channel_temp(122)))))) # (!\in_valid~combout\ & (((s_channel_temp(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(58),
	datab => s_channel_temp(122),
	datac => \in_valid~combout\,
	datad => s_selector(8),
	combout => \s_channel~119_combout\);

-- Location: LCFF_X63_Y25_N27
\s_channel[122]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~119_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(122));

-- Location: LCCOMB_X57_Y25_N2
\s_channel_temp[123]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[123]~feeder_combout\ = \in_data~combout\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(59),
	combout => \s_channel_temp[123]~feeder_combout\);

-- Location: LCFF_X57_Y25_N3
\s_channel_temp[123]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[123]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(123));

-- Location: LCCOMB_X60_Y25_N26
\s_channel~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~120_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(59))) # (!s_selector(8) & ((s_channel_temp(123)))))) # (!\in_valid~combout\ & (((s_channel_temp(123)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_data~combout\(59),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => s_channel_temp(123),
	combout => \s_channel~120_combout\);

-- Location: LCFF_X60_Y25_N27
\s_channel[123]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~120_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(123));

-- Location: LCCOMB_X59_Y24_N16
\s_channel~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~121_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(60)))) # (!s_selector(8) & (s_channel_temp(124))))) # (!\in_valid~combout\ & (s_channel_temp(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(124),
	datab => \in_valid~combout\,
	datac => s_selector(8),
	datad => \in_data~combout\(60),
	combout => \s_channel~121_combout\);

-- Location: LCFF_X59_Y24_N17
\s_channel[124]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~121_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(124));

-- Location: LCCOMB_X60_Y26_N10
\s_channel~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~122_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(61)))) # (!s_selector(8) & (s_channel_temp(125))))) # (!\in_valid~combout\ & (s_channel_temp(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_channel_temp(125),
	datab => \in_valid~combout\,
	datac => \in_data~combout\(61),
	datad => s_selector(8),
	combout => \s_channel~122_combout\);

-- Location: LCFF_X60_Y26_N11
\s_channel[125]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~122_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(125));

-- Location: LCCOMB_X59_Y26_N24
\s_channel_temp[126]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[126]~feeder_combout\ = \in_data~combout\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(62),
	combout => \s_channel_temp[126]~feeder_combout\);

-- Location: LCFF_X59_Y26_N25
\s_channel_temp[126]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[126]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(126));

-- Location: LCCOMB_X59_Y25_N6
\s_channel~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~123_combout\ = (\in_valid~combout\ & ((s_selector(8) & ((\in_data~combout\(62)))) # (!s_selector(8) & (s_channel_temp(126))))) # (!\in_valid~combout\ & (s_channel_temp(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => s_channel_temp(126),
	datac => s_selector(8),
	datad => \in_data~combout\(62),
	combout => \s_channel~123_combout\);

-- Location: LCFF_X59_Y25_N7
\s_channel[126]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~123_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(126));

-- Location: LCCOMB_X59_Y26_N2
\s_channel_temp[127]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel_temp[127]~feeder_combout\ = \in_data~combout\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data~combout\(63),
	combout => \s_channel_temp[127]~feeder_combout\);

-- Location: LCFF_X59_Y26_N3
\s_channel_temp[127]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel_temp[127]~feeder_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel_temp[64]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel_temp(127));

-- Location: LCCOMB_X59_Y27_N2
\s_channel~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \s_channel~124_combout\ = (\in_valid~combout\ & ((s_selector(8) & (\in_data~combout\(63))) # (!s_selector(8) & ((s_channel_temp(127)))))) # (!\in_valid~combout\ & (((s_channel_temp(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in_valid~combout\,
	datab => \in_data~combout\(63),
	datac => s_channel_temp(127),
	datad => s_selector(8),
	combout => \s_channel~124_combout\);

-- Location: LCFF_X59_Y27_N3
\s_channel[127]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_clk~clkctrl_outclk\,
	datain => \s_channel~124_combout\,
	aclr => \ALT_INV_reset_reset_n~clkctrl_outclk\,
	ena => \s_channel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => s_channel(127));

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

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AE28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(2));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(3));

-- Location: PIN_AJ24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(4));

-- Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(5));

-- Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => ALT_INV_s_selector(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(6));

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(7));

-- Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(8));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(9));

-- Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(10));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(11));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(12));

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(13));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_selector(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(14));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => ALT_INV_s_selector(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(15));

-- Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(16));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(17));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(18));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(19));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(20));

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(21));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(22));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(23));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(24));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(25));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(26));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(27));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(28));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(29));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(30));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_csr_readdata(31));

-- Location: PIN_AC28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(16));

-- Location: PIN_W10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(17));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(18));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(19));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(20));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(21));

-- Location: PIN_AH29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(22));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(23));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(24));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(25));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(26));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(27));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(28));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(29));

-- Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(30));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_csr_writedata(31));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\in_ready~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \out_ready~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in_ready);

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(4));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(5));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(6));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(7));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(8));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(9));

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(10));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(11));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(12));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(13));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(14));

-- Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(15));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(16));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(17));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(18));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(19));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(20));

-- Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(21));

-- Location: PIN_AH1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(22));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(23));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(24));

-- Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(25));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(26));

-- Location: PIN_U6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(27));

-- Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(28));

-- Location: PIN_AH24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(29));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(30));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(31));

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(32));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(33));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(34));

-- Location: PIN_AF27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(35));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[36]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(36));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[37]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(37));

-- Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[38]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(38));

-- Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[39]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(39));

-- Location: PIN_R28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[40]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(40));

-- Location: PIN_R29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[41]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(41));

-- Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[42]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(42));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[43]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(43));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[44]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(44));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[45]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(45));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[46]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(46));

-- Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[47]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(47));

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[48]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(48));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[49]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(49));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[50]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(50));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[51]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(51));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[52]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(52));

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[53]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(53));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[54]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(54));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[55]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(55));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[56]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(56));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[57]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(57));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[58]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(58));

-- Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[59]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(59));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[60]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(60));

-- Location: PIN_AH30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[61]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(61));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[62]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(62));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[63]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(63));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[64]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(64));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[65]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(65));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[66]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(66));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[67]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(67));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[68]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(68));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[69]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(69));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[70]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(70));

-- Location: PIN_AG24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[71]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(71));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[72]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(72));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[73]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(73));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[74]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(74));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[75]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(75));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[76]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(76));

-- Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[77]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(77));

-- Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[78]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(78));

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[79]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(79));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[80]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(80));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[81]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(81));

-- Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[82]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(82));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[83]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(83));

-- Location: PIN_AG29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[84]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(84));

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[85]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(85));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[86]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(86));

-- Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[87]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(87));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[88]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(88));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[89]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(89));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[90]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(90));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[91]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(91));

-- Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[92]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(92));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[93]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(93));

-- Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[94]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(94));

-- Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[95]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(95));

-- Location: PIN_V3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[96]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(96));

-- Location: PIN_AK28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[97]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(97));

-- Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[98]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(98));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[99]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(99));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[100]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(100));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[101]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(101));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[102]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(102));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[103]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(103));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[104]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(104));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[105]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(105));

-- Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[106]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(106));

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[107]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(107));

-- Location: PIN_AD28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[108]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(108));

-- Location: PIN_AG27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[109]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(109));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[110]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(110));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[111]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(111));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[112]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(112));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[113]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(113));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[114]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(114));

-- Location: PIN_AF1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[115]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(115));

-- Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[116]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(116));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[117]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(117));

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[118]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(118));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[119]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(119));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[120]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(120));

-- Location: PIN_AH2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[121]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(121));

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[122]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(122));

-- Location: PIN_AH7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[123]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(123));

-- Location: PIN_AG8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[124]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(124));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[125]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(125));

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[126]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(126));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_channel[127]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_channel(127));

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(1));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(2));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(3));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(5));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(6));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(7));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(8));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(9));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(10));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(11));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(12));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(13));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(14));

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(15));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(16));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(17));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(18));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(19));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(20));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(21));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(22));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(23));

-- Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(24));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(25));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(26));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(27));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(28));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(29));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(30));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(31));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(32));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(33));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(34));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(35));

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a36~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(36));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(37));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(38));

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(39));

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(40));

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(41));

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(42));

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(43));

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(44));

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(45));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(46));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(47));

-- Location: PIN_U5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(48));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(49));

-- Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(50));

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(51));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(52));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(53));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(54));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(55));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(56));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(57));

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(58));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(59));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(60));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(61));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(62));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_data(63));

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(0));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(1));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_empty(2));

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_endofpacket);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_startofpacket);

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \s_delay_data_rtl_0|auto_generated|altsyncram2|ram_block5a69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_valid);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(4));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(5));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(6));

-- Location: PIN_AK24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(7));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(8));

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(9));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(10));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(11));

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(12));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(13));

-- Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(14));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(15));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(16));

-- Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(17));

-- Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(18));

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(19));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(20));

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(21));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(22));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(23));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(24));

-- Location: PIN_AE30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(25));

-- Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(26));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(27));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(28));

-- Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(29));

-- Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(30));

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(31));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(32));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(33));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(34));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(35));

-- Location: PIN_AJ23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(36));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(37));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(38));

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(39));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(40));

-- Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(41));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(42));

-- Location: PIN_AK25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(43));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(44));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(45));

-- Location: PIN_Y28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(46));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(47));

-- Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(48));

-- Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(49));

-- Location: PIN_AC29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(50));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(51));

-- Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(52));

-- Location: PIN_AK23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(53));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(54));

-- Location: PIN_AA29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(55));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(56));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(57));

-- Location: PIN_AH20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(58));

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(59));

-- Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(60));

-- Location: PIN_AD30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(61));

-- Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(62));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(63));

-- Location: PIN_AE29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(64));

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(65));

-- Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(66));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(67));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(68));

-- Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(69),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(69));

-- Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(70));

-- Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(71),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(71));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(72),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(72));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(73),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(73));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(74),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(74));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(75),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(75));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(76),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(76));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(77),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(77));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(78),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(78));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(79),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(79));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(80),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(80));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(81),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(81));

-- Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(82),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(82));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(83),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(83));

-- Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(84),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(84));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(85),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(85));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(86),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(86));

-- Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(87),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(87));

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(88),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(88));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(89),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(89));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(90),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(90));

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(91),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(91));

-- Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(92),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(92));

-- Location: PIN_AC30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(93),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(93));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(94),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(94));

-- Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(95),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(95));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(96),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(96));

-- Location: PIN_AK26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(97),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(97));

-- Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(98),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(98));

-- Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(99),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(99));

-- Location: PIN_AJ25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(100),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(100));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(101),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(101));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(102),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(102));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(103),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(103));

-- Location: PIN_AJ22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(104),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(104));

-- Location: PIN_AD29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(105),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(105));

-- Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(106),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(106));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(107),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(107));

-- Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(108),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(108));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(109),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(109));

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(110),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(110));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(111),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(111));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(112),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(112));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(113),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(113));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(114),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(114));

-- Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(115),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(115));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(116),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(116));

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(117),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(117));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(118),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(118));

-- Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(119),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(119));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(120),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(120));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(121),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(121));

-- Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(122),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(122));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(123),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(123));

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(124),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(124));

-- Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(125),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(125));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(126),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(126));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => s_channel(127),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out_channel(127));
END structure;


