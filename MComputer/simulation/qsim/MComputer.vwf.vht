-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/12/2018 18:48:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MC_TEMP
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MC_TEMP_vhd_vec_tst IS
END MC_TEMP_vhd_vec_tst;
ARCHITECTURE MC_TEMP_arch OF MC_TEMP_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50M : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL RESULT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MC_TEMP
	PORT (
	CLK_50M : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	RESULT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MC_TEMP
	PORT MAP (
-- list connections between master ports and signals
	CLK_50M => CLK_50M,
	CLR => CLR,
	RESULT => RESULT
	);

-- CLK_50M
t_prcs_CLK_50M: PROCESS
BEGIN
LOOP
	CLK_50M <= '0';
	WAIT FOR 2000 ps;
	CLK_50M <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50M;
END MC_TEMP_arch;
