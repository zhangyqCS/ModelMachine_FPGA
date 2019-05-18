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
-- Generated on "07/15/2018 13:47:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CLK_SOURCE
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CLK_SOURCE_vhd_vec_tst IS
END CLK_SOURCE_vhd_vec_tst;
ARCHITECTURE CLK_SOURCE_arch OF CLK_SOURCE_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLK_50M : STD_LOGIC;
COMPONENT CLK_SOURCE
	PORT (
	CLK : OUT STD_LOGIC;
	CLK_50M : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CLK_SOURCE
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLK_50M => CLK_50M
	);

-- CLK_50M
t_prcs_CLK_50M: PROCESS
BEGIN
LOOP
	CLK_50M <= '0';
	WAIT FOR 5000 ps;
	CLK_50M <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50M;
END CLK_SOURCE_arch;
