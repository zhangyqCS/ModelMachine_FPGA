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
-- Generated on "07/14/2018 21:25:40"
                                                             
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
SIGNAL ADD : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLK_50M : STD_LOGIC;
SIGNAL CLR : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL EA : STD_LOGIC;
SIGNAL EDR : STD_LOGIC;
SIGNAL ESUM : STD_LOGIC;
SIGNAL HALT : STD_LOGIC;
SIGNAL IA : STD_LOGIC;
SIGNAL IDR : STD_LOGIC;
SIGNAL IIR : STD_LOGIC;
SIGNAL IMAR : STD_LOGIC;
SIGNAL IPC : STD_LOGIC;
SIGNAL ISUM : STD_LOGIC;
SIGNAL LD : STD_LOGIC;
SIGNAL RAM_ADDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RAM_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RESULT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL T0 : STD_LOGIC;
SIGNAL T1 : STD_LOGIC;
SIGNAL T2 : STD_LOGIC;
SIGNAL T3 : STD_LOGIC;
SIGNAL T4 : STD_LOGIC;
SIGNAL T5 : STD_LOGIC;
SIGNAL T6 : STD_LOGIC;
SIGNAL T7 : STD_LOGIC;
SIGNAL WR : STD_LOGIC;
SIGNAL WR1 : STD_LOGIC;
COMPONENT MC_TEMP
	PORT (
	ADD : OUT STD_LOGIC;
	CLK : OUT STD_LOGIC;
	CLK_50M : IN STD_LOGIC;
	CLR : IN STD_LOGIC;
	CS : IN STD_LOGIC;
	EA : OUT STD_LOGIC;
	EDR : OUT STD_LOGIC;
	ESUM : OUT STD_LOGIC;
	HALT : OUT STD_LOGIC;
	IA : OUT STD_LOGIC;
	IDR : OUT STD_LOGIC;
	IIR : OUT STD_LOGIC;
	IMAR : OUT STD_LOGIC;
	IPC : OUT STD_LOGIC;
	ISUM : OUT STD_LOGIC;
	LD : OUT STD_LOGIC;
	RAM_ADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RAM_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAM_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RESULT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	T0 : OUT STD_LOGIC;
	T1 : OUT STD_LOGIC;
	T2 : OUT STD_LOGIC;
	T3 : OUT STD_LOGIC;
	T4 : OUT STD_LOGIC;
	T5 : OUT STD_LOGIC;
	T6 : OUT STD_LOGIC;
	T7 : OUT STD_LOGIC;
	WR : IN STD_LOGIC;
	WR1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MC_TEMP
	PORT MAP (
-- list connections between master ports and signals
	ADD => ADD,
	CLK => CLK,
	CLK_50M => CLK_50M,
	CLR => CLR,
	CS => CS,
	EA => EA,
	EDR => EDR,
	ESUM => ESUM,
	HALT => HALT,
	IA => IA,
	IDR => IDR,
	IIR => IIR,
	IMAR => IMAR,
	IPC => IPC,
	ISUM => ISUM,
	LD => LD,
	RAM_ADDR => RAM_ADDR,
	RAM_IN => RAM_IN,
	RAM_OUT => RAM_OUT,
	RESULT => RESULT,
	T0 => T0,
	T1 => T1,
	T2 => T2,
	T3 => T3,
	T4 => T4,
	T5 => T5,
	T6 => T6,
	T7 => T7,
	WR => WR,
	WR1 => WR1
	);

-- CLK_50M
t_prcs_CLK_50M: PROCESS
BEGIN
	CLK_50M <= '0';
	WAIT FOR 212000 ps;
	CLK_50M <= '1';
	WAIT FOR 2000 ps;
	FOR i IN 1 TO 196
	LOOP
		CLK_50M <= '0';
		WAIT FOR 2000 ps;
		CLK_50M <= '1';
		WAIT FOR 2000 ps;
	END LOOP;
	CLK_50M <= '0';
WAIT;
END PROCESS t_prcs_CLK_50M;

-- CLR
t_prcs_CLR: PROCESS
BEGIN
	CLR <= '0';
	WAIT FOR 10000 ps;
	CLR <= '1';
WAIT;
END PROCESS t_prcs_CLR;

-- CS
t_prcs_CS: PROCESS
BEGIN
	CS <= '0';
WAIT;
END PROCESS t_prcs_CS;

-- WR
t_prcs_WR: PROCESS
BEGIN
	WR <= '0';
	WAIT FOR 20000 ps;
	WR <= '1';
	WAIT FOR 20000 ps;
	WR <= '0';
	WAIT FOR 20000 ps;
	WR <= '1';
	WAIT FOR 20000 ps;
	WR <= '0';
	WAIT FOR 20000 ps;
	WR <= '1';
	WAIT FOR 20000 ps;
	WR <= '0';
	WAIT FOR 20000 ps;
	WR <= '1';
	WAIT FOR 20000 ps;
	WR <= '0';
	WAIT FOR 20000 ps;
	WR <= '1';
WAIT;
END PROCESS t_prcs_WR;

-- WR1
t_prcs_WR1: PROCESS
BEGIN
	WR1 <= '0';
	WAIT FOR 200000 ps;
	WR1 <= '1';
WAIT;
END PROCESS t_prcs_WR1;
-- RAM_ADDR[2]
t_prcs_RAM_ADDR_2: PROCESS
BEGIN
	RAM_ADDR(2) <= '0';
	WAIT FOR 160000 ps;
	RAM_ADDR(2) <= '1';
	WAIT FOR 40000 ps;
	RAM_ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_RAM_ADDR_2;
-- RAM_ADDR[1]
t_prcs_RAM_ADDR_1: PROCESS
BEGIN
	RAM_ADDR(1) <= '0';
	WAIT FOR 80000 ps;
	RAM_ADDR(1) <= '1';
	WAIT FOR 80000 ps;
	RAM_ADDR(1) <= '0';
WAIT;
END PROCESS t_prcs_RAM_ADDR_1;
-- RAM_ADDR[0]
t_prcs_RAM_ADDR_0: PROCESS
BEGIN
	RAM_ADDR(0) <= '0';
	WAIT FOR 40000 ps;
	RAM_ADDR(0) <= '1';
	WAIT FOR 40000 ps;
	RAM_ADDR(0) <= '0';
	WAIT FOR 40000 ps;
	RAM_ADDR(0) <= '1';
	WAIT FOR 40000 ps;
	RAM_ADDR(0) <= '0';
WAIT;
END PROCESS t_prcs_RAM_ADDR_0;
-- RAM_IN[7]
t_prcs_RAM_IN_7: PROCESS
BEGIN
	RAM_IN(7) <= '0';
	WAIT FOR 100000 ps;
	RAM_IN(7) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_7;
-- RAM_IN[6]
t_prcs_RAM_IN_6: PROCESS
BEGIN
	RAM_IN(6) <= '0';
	WAIT FOR 100000 ps;
	RAM_IN(6) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(6) <= '0';
	WAIT FOR 60000 ps;
	RAM_IN(6) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_6;
-- RAM_IN[5]
t_prcs_RAM_IN_5: PROCESS
BEGIN
	RAM_IN(5) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(5) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(5) <= '0';
	WAIT FOR 140000 ps;
	RAM_IN(5) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_5;
-- RAM_IN[4]
t_prcs_RAM_IN_4: PROCESS
BEGIN
	RAM_IN(4) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(4) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(4) <= '0';
	WAIT FOR 140000 ps;
	RAM_IN(4) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_4;
-- RAM_IN[3]
t_prcs_RAM_IN_3: PROCESS
BEGIN
	RAM_IN(3) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(3) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_3;
-- RAM_IN[2]
t_prcs_RAM_IN_2: PROCESS
BEGIN
	RAM_IN(2) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '0';
	WAIT FOR 60000 ps;
	RAM_IN(2) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_2;
-- RAM_IN[1]
t_prcs_RAM_IN_1: PROCESS
BEGIN
	RAM_IN(1) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '0';
	WAIT FOR 60000 ps;
	RAM_IN(1) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '0';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_1;
-- RAM_IN[0]
t_prcs_RAM_IN_0: PROCESS
BEGIN
	RAM_IN(0) <= '0';
	WAIT FOR 60000 ps;
	RAM_IN(0) <= '1';
	WAIT FOR 20000 ps;
	RAM_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_RAM_IN_0;
END MC_TEMP_arch;
