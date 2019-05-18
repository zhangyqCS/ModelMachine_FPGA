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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "07/12/2018 18:48:41"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MC_TEMP IS
    PORT (
	RESULT : OUT std_logic_vector(7 DOWNTO 0);
	CLK_50M : IN std_logic;
	CLR : IN std_logic
	);
END MC_TEMP;

-- Design Ports Information
-- RESULT[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MC_TEMP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESULT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL \inst7|Mux2~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLR~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ISUM~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|ESUM~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|CLK_TEMP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESULT[7]~output_o\ : std_logic;
SIGNAL \RESULT[6]~output_o\ : std_logic;
SIGNAL \RESULT[5]~output_o\ : std_logic;
SIGNAL \RESULT[4]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \CLK_50M~input_o\ : std_logic;
SIGNAL \CLK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|COUNT~0_combout\ : std_logic;
SIGNAL \inst1|COUNT~q\ : std_logic;
SIGNAL \inst1|CLK_TEMP~0_combout\ : std_logic;
SIGNAL \inst1|CLK_TEMP~feeder_combout\ : std_logic;
SIGNAL \inst1|CLK_TEMP~q\ : std_logic;
SIGNAL \inst1|CLK_TEMP~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|QOUT[1]~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \CLR~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8|ADDR_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst12|TEMP[4]~feeder_combout\ : std_logic;
SIGNAL \inst12|TEMP[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|TEMP[0]~1_combout\ : std_logic;
SIGNAL \inst12|TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst12|TEMP[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|IDR~0_combout\ : std_logic;
SIGNAL \inst6|IDR~combout\ : std_logic;
SIGNAL \inst6|IIR~combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|QOUT[2]~2_combout\ : std_logic;
SIGNAL \inst8|ADDR_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux4~1_combout\ : std_logic;
SIGNAL \inst6|IA~2_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|REGQ[0]~feeder_combout\ : std_logic;
SIGNAL \inst6|IA~3_combout\ : std_logic;
SIGNAL \inst6|IMAR~0_combout\ : std_logic;
SIGNAL \inst6|IMAR~combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|IPC~1_combout\ : std_logic;
SIGNAL \inst6|IPC~0_combout\ : std_logic;
SIGNAL \inst6|IPC~2_combout\ : std_logic;
SIGNAL \inst9|QOUT[0]~1_combout\ : std_logic;
SIGNAL \inst8|ADDR_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|REGQ[2]~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0clkctrl_outclk\ : std_logic;
SIGNAL \inst6|ISUM~combout\ : std_logic;
SIGNAL \inst6|ISUM~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|IA~4_combout\ : std_logic;
SIGNAL \inst6|IA~combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst6|ESUM~0_combout\ : std_logic;
SIGNAL \inst6|ESUM~0clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst7|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALU_TEMP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|TEMP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|QOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|ADDR_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|REGQ\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|ALU_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|ALT_INV_IMAR~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_IA~combout\ : std_logic;
SIGNAL \inst6|ALT_INV_IIR~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RESULT <= ww_RESULT;
ww_CLK_50M <= CLK_50M;
ww_CLR <= CLR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst7|Mux2~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|Mux2~0_combout\);

\CLR~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR~input_o\);

\inst6|ISUM~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|ISUM~combout\);

\inst6|ESUM~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|ESUM~0_combout\);

\CLK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50M~input_o\);

\inst1|CLK_TEMP~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|CLK_TEMP~q\);
\inst6|ALT_INV_IMAR~combout\ <= NOT \inst6|IMAR~combout\;
\inst6|ALT_INV_IA~combout\ <= NOT \inst6|IA~combout\;
\inst6|ALT_INV_IIR~combout\ <= NOT \inst6|IIR~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N9
\RESULT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(7),
	devoe => ww_devoe,
	o => \RESULT[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\RESULT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(6),
	devoe => ww_devoe,
	o => \RESULT[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\RESULT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(5),
	devoe => ww_devoe,
	o => \RESULT[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\RESULT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(4),
	devoe => ww_devoe,
	o => \RESULT[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\RESULT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(3),
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\RESULT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(2),
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\RESULT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(1),
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\RESULT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALU_OUT\(0),
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50M,
	o => \CLK_50M~input_o\);

-- Location: CLKCTRL_G2
\CLK_50M~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50M~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50M~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N28
\inst1|COUNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|COUNT~0_combout\ = !\inst1|COUNT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|COUNT~q\,
	combout => \inst1|COUNT~0_combout\);

-- Location: FF_X25_Y12_N29
\inst1|COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \inst1|COUNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|COUNT~q\);

-- Location: LCCOMB_X25_Y12_N6
\inst1|CLK_TEMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|CLK_TEMP~0_combout\ = \inst1|CLK_TEMP~q\ $ (\inst1|COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|CLK_TEMP~q\,
	datad => \inst1|COUNT~q\,
	combout => \inst1|CLK_TEMP~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\inst1|CLK_TEMP~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|CLK_TEMP~feeder_combout\ = \inst1|CLK_TEMP~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|CLK_TEMP~0_combout\,
	combout => \inst1|CLK_TEMP~feeder_combout\);

-- Location: FF_X25_Y12_N17
\inst1|CLK_TEMP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \inst1|CLK_TEMP~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|CLK_TEMP~q\);

-- Location: CLKCTRL_G7
\inst1|CLK_TEMP~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|CLK_TEMP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|CLK_TEMP~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N24
\inst9|QOUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|QOUT[1]~0_combout\ = \inst9|QOUT\(1) $ (((\inst6|IPC~2_combout\ & \inst9|QOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IPC~2_combout\,
	datac => \inst9|QOUT\(1),
	datad => \inst9|QOUT\(0),
	combout => \inst9|QOUT[1]~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: CLKCTRL_G3
\CLR~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR~inputclkctrl_outclk\);

-- Location: FF_X25_Y12_N25
\inst9|QOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst9|QOUT[1]~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|QOUT\(1));

-- Location: LCCOMB_X22_Y12_N26
\inst8|ADDR_OUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|ADDR_OUT[1]~feeder_combout\ = \inst9|QOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|QOUT\(1),
	combout => \inst8|ADDR_OUT[1]~feeder_combout\);

-- Location: LCCOMB_X23_Y12_N4
\inst12|TEMP[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|TEMP[4]~feeder_combout\ = \inst12|TEMP\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|TEMP\(3),
	combout => \inst12|TEMP[4]~feeder_combout\);

-- Location: FF_X23_Y12_N5
\inst12|TEMP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst12|TEMP[4]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(4));

-- Location: FF_X23_Y12_N3
\inst12|TEMP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst12|TEMP\(4),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(5));

-- Location: LCCOMB_X24_Y12_N28
\inst12|TEMP[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|TEMP[6]~feeder_combout\ = \inst12|TEMP\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|TEMP\(5),
	combout => \inst12|TEMP[6]~feeder_combout\);

-- Location: FF_X24_Y12_N29
\inst12|TEMP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	d => \inst12|TEMP[6]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(6));

-- Location: FF_X23_Y12_N31
\inst12|TEMP[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst12|TEMP\(6),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(7));

-- Location: LCCOMB_X23_Y12_N8
\inst12|TEMP[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|TEMP[0]~1_combout\ = !\inst12|TEMP\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|TEMP\(7),
	combout => \inst12|TEMP[0]~1_combout\);

-- Location: FF_X23_Y12_N9
\inst12|TEMP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst12|TEMP[0]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(0));

-- Location: LCCOMB_X23_Y12_N0
\inst12|TEMP[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|TEMP[1]~0_combout\ = !\inst12|TEMP\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|TEMP\(0),
	combout => \inst12|TEMP[1]~0_combout\);

-- Location: FF_X23_Y12_N1
\inst12|TEMP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst12|TEMP[1]~0_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(1));

-- Location: LCCOMB_X23_Y12_N26
\inst12|TEMP[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|TEMP[2]~feeder_combout\ = \inst12|TEMP\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|TEMP\(1),
	combout => \inst12|TEMP[2]~feeder_combout\);

-- Location: FF_X23_Y12_N27
\inst12|TEMP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst12|TEMP[2]~feeder_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(2));

-- Location: FF_X23_Y12_N13
\inst12|TEMP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst12|TEMP\(2),
	clrn => \CLR~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|TEMP\(3));

-- Location: LCCOMB_X22_Y12_N16
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (!\inst8|ADDR_OUT\(0) & \inst8|ADDR_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ADDR_OUT\(0),
	datad => \inst8|ADDR_OUT\(1),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst6|IDR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IDR~0_combout\ = (\inst12|TEMP\(1)) # ((\inst6|IA~3_combout\ & \inst12|TEMP\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IA~3_combout\,
	datab => \inst12|TEMP\(1),
	datac => \inst12|TEMP\(4),
	combout => \inst6|IDR~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst6|IDR\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IDR~combout\ = (GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & (\inst6|IDR~combout\)) # (!GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & ((\inst6|IDR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IDR~combout\,
	datab => \inst6|IDR~0_combout\,
	datad => \inst7|Mux2~0clkctrl_outclk\,
	combout => \inst6|IDR~combout\);

-- Location: FF_X22_Y12_N17
\inst3|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst5|Mux0~0_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(7));

-- Location: LCCOMB_X23_Y12_N12
\inst6|IIR\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IIR~combout\ = (GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & ((\inst6|IIR~combout\))) # (!GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & (!\inst12|TEMP\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|TEMP\(2),
	datab => \inst6|IIR~combout\,
	datad => \inst7|Mux2~0clkctrl_outclk\,
	combout => \inst6|IIR~combout\);

-- Location: FF_X23_Y12_N7
\inst7|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	asdata => \inst3|REGQ\(7),
	sload => VCC,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(7));

-- Location: LCCOMB_X23_Y15_N18
\inst5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (!\inst8|ADDR_OUT\(1) & !\inst8|ADDR_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ADDR_OUT\(1),
	datad => \inst8|ADDR_OUT\(0),
	combout => \inst5|Mux4~0_combout\);

-- Location: FF_X23_Y15_N19
\inst3|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst5|Mux4~0_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(4));

-- Location: FF_X23_Y12_N21
\inst7|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	asdata => \inst3|REGQ\(4),
	sload => VCC,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(4));

-- Location: LCCOMB_X25_Y12_N18
\inst9|QOUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|QOUT[2]~2_combout\ = \inst9|QOUT\(2) $ (((\inst6|IPC~2_combout\ & (\inst9|QOUT\(1) & \inst9|QOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IPC~2_combout\,
	datab => \inst9|QOUT\(1),
	datac => \inst9|QOUT\(2),
	datad => \inst9|QOUT\(0),
	combout => \inst9|QOUT[2]~2_combout\);

-- Location: FF_X25_Y12_N19
\inst9|QOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst9|QOUT[2]~2_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|QOUT\(2));

-- Location: LCCOMB_X22_Y12_N30
\inst8|ADDR_OUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|ADDR_OUT[2]~feeder_combout\ = \inst9|QOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|QOUT\(2),
	combout => \inst8|ADDR_OUT[2]~feeder_combout\);

-- Location: FF_X22_Y12_N31
\inst8|ADDR_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst8|ADDR_OUT[2]~feeder_combout\,
	ena => \inst6|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|ADDR_OUT\(2));

-- Location: LCCOMB_X23_Y15_N8
\inst5|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux4~1_combout\ = (!\inst8|ADDR_OUT\(1) & (!\inst8|ADDR_OUT\(2) & !\inst8|ADDR_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ADDR_OUT\(1),
	datac => \inst8|ADDR_OUT\(2),
	datad => \inst8|ADDR_OUT\(0),
	combout => \inst5|Mux4~1_combout\);

-- Location: FF_X23_Y15_N9
\inst3|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst5|Mux4~1_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(3));

-- Location: FF_X23_Y12_N15
\inst7|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	asdata => \inst3|REGQ\(3),
	sload => VCC,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(3));

-- Location: LCCOMB_X23_Y12_N18
\inst6|IA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IA~2_combout\ = (\inst7|REGQ\(7) & (!\inst7|REGQ\(4) & (!\inst7|REGQ\(3) & \inst7|REGQ\(6)))) # (!\inst7|REGQ\(7) & (\inst7|REGQ\(4) & (\inst7|REGQ\(3) & !\inst7|REGQ\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(7),
	datab => \inst7|REGQ\(4),
	datac => \inst7|REGQ\(3),
	datad => \inst7|REGQ\(6),
	combout => \inst6|IA~2_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst8|ADDR_OUT\(1) & \inst8|ADDR_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ADDR_OUT\(1),
	datad => \inst8|ADDR_OUT\(0),
	combout => \inst5|Mux5~0_combout\);

-- Location: FF_X23_Y15_N13
\inst3|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst5|Mux5~0_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(0));

-- Location: LCCOMB_X24_Y12_N26
\inst7|REGQ[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|REGQ[0]~feeder_combout\ = \inst3|REGQ\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|REGQ\(0),
	combout => \inst7|REGQ[0]~feeder_combout\);

-- Location: FF_X24_Y12_N27
\inst7|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst7|REGQ[0]~feeder_combout\,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(0));

-- Location: LCCOMB_X23_Y12_N28
\inst6|IA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IA~3_combout\ = (\inst7|REGQ\(2) & (\inst6|IA~2_combout\ & !\inst7|REGQ\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(2),
	datab => \inst6|IA~2_combout\,
	datad => \inst7|REGQ\(0),
	combout => \inst6|IA~3_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst6|IMAR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IMAR~0_combout\ = ((\inst12|TEMP\(3) & \inst6|IA~3_combout\)) # (!\inst12|TEMP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|TEMP\(3),
	datab => \inst12|TEMP\(0),
	datad => \inst6|IA~3_combout\,
	combout => \inst6|IMAR~0_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst6|IMAR\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IMAR~combout\ = (GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & (\inst6|IMAR~combout\)) # (!GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & ((!\inst6|IMAR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IMAR~combout\,
	datab => \inst6|IMAR~0_combout\,
	datad => \inst7|Mux2~0clkctrl_outclk\,
	combout => \inst6|IMAR~combout\);

-- Location: FF_X22_Y12_N27
\inst8|ADDR_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst8|ADDR_OUT[1]~feeder_combout\,
	ena => \inst6|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|ADDR_OUT\(1));

-- Location: LCCOMB_X23_Y15_N0
\inst5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (!\inst8|ADDR_OUT\(0) & (\inst8|ADDR_OUT\(1) $ (\inst8|ADDR_OUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|ADDR_OUT\(1),
	datac => \inst8|ADDR_OUT\(2),
	datad => \inst8|ADDR_OUT\(0),
	combout => \inst5|Mux1~0_combout\);

-- Location: FF_X23_Y15_N1
\inst3|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst5|Mux1~0_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(6));

-- Location: FF_X23_Y12_N29
\inst7|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	asdata => \inst3|REGQ\(6),
	sload => VCC,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(6));

-- Location: LCCOMB_X23_Y12_N20
\inst7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (!\inst7|REGQ\(7) & (!\inst7|REGQ\(0) & (\inst7|REGQ\(4) & \inst7|REGQ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(7),
	datab => \inst7|REGQ\(0),
	datac => \inst7|REGQ\(4),
	datad => \inst7|REGQ\(2),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y12_N22
\inst6|IPC~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IPC~1_combout\ = (!\inst7|REGQ\(6) & (\inst7|REGQ\(3) & (\inst7|Mux0~0_combout\ & \inst12|TEMP\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(6),
	datab => \inst7|REGQ\(3),
	datac => \inst7|Mux0~0_combout\,
	datad => \inst12|TEMP\(5),
	combout => \inst6|IPC~1_combout\);

-- Location: LCCOMB_X23_Y12_N6
\inst6|IPC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IPC~0_combout\ = (!\inst7|REGQ\(4) & (\inst12|TEMP\(5) & (\inst7|REGQ\(7) & \inst7|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(4),
	datab => \inst12|TEMP\(5),
	datac => \inst7|REGQ\(7),
	datad => \inst7|Mux1~0_combout\,
	combout => \inst6|IPC~0_combout\);

-- Location: LCCOMB_X24_Y12_N16
\inst6|IPC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IPC~2_combout\ = (!\inst7|Mux2~0_combout\ & ((\inst6|IPC~1_combout\) # ((\inst12|TEMP\(2)) # (\inst6|IPC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IPC~1_combout\,
	datab => \inst12|TEMP\(2),
	datac => \inst7|Mux2~0_combout\,
	datad => \inst6|IPC~0_combout\,
	combout => \inst6|IPC~2_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst9|QOUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|QOUT[0]~1_combout\ = \inst6|IPC~2_combout\ $ (\inst9|QOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|IPC~2_combout\,
	datac => \inst9|QOUT\(0),
	combout => \inst9|QOUT[0]~1_combout\);

-- Location: FF_X25_Y12_N31
\inst9|QOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst9|QOUT[0]~1_combout\,
	clrn => \CLR~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|QOUT\(0));

-- Location: LCCOMB_X22_Y12_N24
\inst8|ADDR_OUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|ADDR_OUT[0]~feeder_combout\ = \inst9|QOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|QOUT\(0),
	combout => \inst8|ADDR_OUT[0]~feeder_combout\);

-- Location: FF_X22_Y12_N25
\inst8|ADDR_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst8|ADDR_OUT[0]~feeder_combout\,
	ena => \inst6|ALT_INV_IMAR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|ADDR_OUT\(0));

-- Location: LCCOMB_X23_Y15_N14
\inst3|REGQ[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|REGQ[2]~0_combout\ = !\inst8|ADDR_OUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|ADDR_OUT\(0),
	combout => \inst3|REGQ[2]~0_combout\);

-- Location: FF_X23_Y15_N15
\inst3|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	d => \inst3|REGQ[2]~0_combout\,
	ena => \inst6|IDR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|REGQ\(2));

-- Location: FF_X23_Y12_N17
\inst7|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~q\,
	asdata => \inst3|REGQ\(2),
	sload => VCC,
	ena => \inst6|ALT_INV_IIR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|REGQ\(2));

-- Location: LCCOMB_X24_Y12_N30
\inst7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst7|REGQ\(2) & (\inst7|REGQ\(6) & (!\inst7|REGQ\(0) & !\inst7|REGQ\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|REGQ\(2),
	datab => \inst7|REGQ\(6),
	datac => \inst7|REGQ\(0),
	datad => \inst7|REGQ\(3),
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y12_N14
\inst7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst7|Mux1~0_combout\ & (\inst7|REGQ\(4) & !\inst7|REGQ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux1~0_combout\,
	datab => \inst7|REGQ\(4),
	datad => \inst7|REGQ\(7),
	combout => \inst7|Mux2~0_combout\);

-- Location: CLKCTRL_G8
\inst7|Mux2~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|Mux2~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|Mux2~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y12_N2
\inst6|ISUM\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|ISUM~combout\ = (GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & (\inst6|ISUM~combout\)) # (!GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & ((!\inst6|IPC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux2~0clkctrl_outclk\,
	datab => \inst6|ISUM~combout\,
	datad => \inst6|IPC~0_combout\,
	combout => \inst6|ISUM~combout\);

-- Location: CLKCTRL_G5
\inst6|ISUM~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|ISUM~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|ISUM~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y12_N24
\inst6|IA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IA~4_combout\ = (\inst12|TEMP\(6) & (\inst7|REGQ\(2) & (!\inst7|REGQ\(0) & \inst6|IA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|TEMP\(6),
	datab => \inst7|REGQ\(2),
	datac => \inst7|REGQ\(0),
	datad => \inst6|IA~2_combout\,
	combout => \inst6|IA~4_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst6|IA\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|IA~combout\ = (GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & ((\inst6|IA~combout\))) # (!GLOBAL(\inst7|Mux2~0clkctrl_outclk\) & (!\inst6|IA~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|IA~4_combout\,
	datac => \inst7|Mux2~0clkctrl_outclk\,
	datad => \inst6|IA~combout\,
	combout => \inst6|IA~combout\);

-- Location: FF_X23_Y18_N15
\inst4|REGQ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(7),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(7));

-- Location: FF_X23_Y18_N13
\inst4|REGQ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(6),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(6));

-- Location: FF_X23_Y18_N25
\inst4|REGQ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(4),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(4));

-- Location: FF_X23_Y18_N7
\inst4|REGQ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(3),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(3));

-- Location: FF_X23_Y18_N5
\inst4|REGQ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(2),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(2));

-- Location: LCCOMB_X23_Y18_N4
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = (\inst4|REGQ\(2) & ((\inst3|REGQ\(2)) # (GND))) # (!\inst4|REGQ\(2) & (\inst3|REGQ\(2) $ (VCC)))
-- \inst2|Add0~1\ = CARRY((\inst4|REGQ\(2)) # (\inst3|REGQ\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|REGQ\(2),
	datab => \inst3|REGQ\(2),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X23_Y18_N6
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst4|REGQ\(3) & ((\inst3|REGQ\(3) & (\inst2|Add0~1\ & VCC)) # (!\inst3|REGQ\(3) & (!\inst2|Add0~1\)))) # (!\inst4|REGQ\(3) & ((\inst3|REGQ\(3) & (!\inst2|Add0~1\)) # (!\inst3|REGQ\(3) & ((\inst2|Add0~1\) # (GND)))))
-- \inst2|Add0~3\ = CARRY((\inst4|REGQ\(3) & (!\inst3|REGQ\(3) & !\inst2|Add0~1\)) # (!\inst4|REGQ\(3) & ((!\inst2|Add0~1\) # (!\inst3|REGQ\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|REGQ\(3),
	datab => \inst3|REGQ\(3),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X23_Y18_N8
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = ((\inst3|REGQ\(4) $ (\inst4|REGQ\(4) $ (!\inst2|Add0~3\)))) # (GND)
-- \inst2|Add0~5\ = CARRY((\inst3|REGQ\(4) & ((\inst4|REGQ\(4)) # (!\inst2|Add0~3\))) # (!\inst3|REGQ\(4) & (\inst4|REGQ\(4) & !\inst2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGQ\(4),
	datab => \inst4|REGQ\(4),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X23_Y18_N10
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst3|REGQ\(4) & ((\inst4|REGQ\(4) & (\inst2|Add0~5\ & VCC)) # (!\inst4|REGQ\(4) & (!\inst2|Add0~5\)))) # (!\inst3|REGQ\(4) & ((\inst4|REGQ\(4) & (!\inst2|Add0~5\)) # (!\inst4|REGQ\(4) & ((\inst2|Add0~5\) # (GND)))))
-- \inst2|Add0~7\ = CARRY((\inst3|REGQ\(4) & (!\inst4|REGQ\(4) & !\inst2|Add0~5\)) # (!\inst3|REGQ\(4) & ((!\inst2|Add0~5\) # (!\inst4|REGQ\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGQ\(4),
	datab => \inst4|REGQ\(4),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X23_Y18_N12
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = ((\inst3|REGQ\(6) $ (\inst4|REGQ\(6) $ (!\inst2|Add0~7\)))) # (GND)
-- \inst2|Add0~9\ = CARRY((\inst3|REGQ\(6) & ((\inst4|REGQ\(6)) # (!\inst2|Add0~7\))) # (!\inst3|REGQ\(6) & (\inst4|REGQ\(6) & !\inst2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGQ\(6),
	datab => \inst4|REGQ\(6),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X23_Y18_N14
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = \inst3|REGQ\(7) $ (\inst2|Add0~9\ $ (\inst4|REGQ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|REGQ\(7),
	datad => \inst4|REGQ\(7),
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst2|ALU_TEMP[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(7) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|ALU_TEMP\(7)))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|ISUM~clkctrl_outclk\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|ALU_TEMP\(7),
	combout => \inst2|ALU_TEMP\(7));

-- Location: LCCOMB_X24_Y12_N24
\inst6|ESUM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|ESUM~0_combout\ = (\inst7|Mux1~0_combout\ & ((\inst7|REGQ\(4) & (!\inst7|REGQ\(7))) # (!\inst7|REGQ\(4) & (\inst7|REGQ\(7) & \inst12|TEMP\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux1~0_combout\,
	datab => \inst7|REGQ\(4),
	datac => \inst7|REGQ\(7),
	datad => \inst12|TEMP\(6),
	combout => \inst6|ESUM~0_combout\);

-- Location: CLKCTRL_G9
\inst6|ESUM~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|ESUM~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|ESUM~0clkctrl_outclk\);

-- Location: LCCOMB_X23_Y18_N24
\inst2|ALU_OUT[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(7) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(7)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_OUT\(7),
	datab => \inst2|ALU_TEMP\(7),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(7));

-- Location: LCCOMB_X23_Y18_N16
\inst2|ALU_TEMP[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(6) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(6))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_TEMP\(6),
	datac => \inst6|ISUM~clkctrl_outclk\,
	datad => \inst2|Add0~8_combout\,
	combout => \inst2|ALU_TEMP\(6));

-- Location: LCCOMB_X23_Y18_N22
\inst2|ALU_OUT[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(6) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_TEMP\(6))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_OUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_TEMP\(6),
	datac => \inst2|ALU_OUT\(6),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(6));

-- Location: LCCOMB_X23_Y18_N26
\inst2|ALU_TEMP[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(5) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(5))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_TEMP\(5),
	datac => \inst6|ISUM~clkctrl_outclk\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|ALU_TEMP\(5));

-- Location: LCCOMB_X23_Y18_N28
\inst2|ALU_OUT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(5) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_TEMP\(5))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_OUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_TEMP\(5),
	datac => \inst2|ALU_OUT\(5),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(5));

-- Location: LCCOMB_X22_Y18_N28
\inst2|ALU_TEMP[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(4) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(4))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_TEMP\(4),
	datac => \inst2|Add0~4_combout\,
	datad => \inst6|ISUM~clkctrl_outclk\,
	combout => \inst2|ALU_TEMP\(4));

-- Location: LCCOMB_X22_Y18_N24
\inst2|ALU_OUT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(4) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(4)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_OUT\(4),
	datac => \inst2|ALU_TEMP\(4),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(4));

-- Location: LCCOMB_X22_Y18_N30
\inst2|ALU_TEMP[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(3) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(3))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_TEMP\(3),
	datac => \inst6|ISUM~clkctrl_outclk\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|ALU_TEMP\(3));

-- Location: LCCOMB_X22_Y18_N10
\inst2|ALU_OUT[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(3) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(3)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_OUT\(3),
	datac => \inst2|ALU_TEMP\(3),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(3));

-- Location: LCCOMB_X22_Y18_N8
\inst2|ALU_TEMP[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(2) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|ALU_TEMP\(2)))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datac => \inst2|ALU_TEMP\(2),
	datad => \inst6|ISUM~clkctrl_outclk\,
	combout => \inst2|ALU_TEMP\(2));

-- Location: LCCOMB_X22_Y18_N12
\inst2|ALU_OUT[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(2) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(2)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_OUT\(2),
	datac => \inst2|ALU_TEMP\(2),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(2));

-- Location: FF_X23_Y18_N19
\inst4|REGQ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|CLK_TEMP~clkctrl_outclk\,
	asdata => \inst3|REGQ\(0),
	sload => VCC,
	ena => \inst6|ALT_INV_IA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|REGQ\(0));

-- Location: LCCOMB_X23_Y18_N18
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst4|REGQ\(0) & (\inst3|REGQ\(0) $ (VCC))) # (!\inst4|REGQ\(0) & (\inst3|REGQ\(0) & VCC))
-- \inst2|Add0~13\ = CARRY((\inst4|REGQ\(0) & \inst3|REGQ\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|REGQ\(0),
	datab => \inst3|REGQ\(0),
	datad => VCC,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X23_Y18_N20
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst2|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X23_Y18_N0
\inst2|ALU_TEMP[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(1) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(1))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_TEMP\(1),
	datac => \inst6|ISUM~clkctrl_outclk\,
	datad => \inst2|Add0~14_combout\,
	combout => \inst2|ALU_TEMP\(1));

-- Location: LCCOMB_X24_Y18_N0
\inst2|ALU_OUT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(1) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(1)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALU_OUT\(1),
	datac => \inst2|ALU_TEMP\(1),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(1));

-- Location: LCCOMB_X22_Y18_N22
\inst2|ALU_TEMP[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_TEMP\(0) = (GLOBAL(\inst6|ISUM~clkctrl_outclk\) & (\inst2|ALU_TEMP\(0))) # (!GLOBAL(\inst6|ISUM~clkctrl_outclk\) & ((\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_TEMP\(0),
	datac => \inst6|ISUM~clkctrl_outclk\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|ALU_TEMP\(0));

-- Location: LCCOMB_X22_Y18_N6
\inst2|ALU_OUT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|ALU_OUT\(0) = (GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & ((\inst2|ALU_TEMP\(0)))) # (!GLOBAL(\inst6|ESUM~0clkctrl_outclk\) & (\inst2|ALU_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALU_OUT\(0),
	datac => \inst2|ALU_TEMP\(0),
	datad => \inst6|ESUM~0clkctrl_outclk\,
	combout => \inst2|ALU_OUT\(0));

ww_RESULT(7) <= \RESULT[7]~output_o\;

ww_RESULT(6) <= \RESULT[6]~output_o\;

ww_RESULT(5) <= \RESULT[5]~output_o\;

ww_RESULT(4) <= \RESULT[4]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(0) <= \RESULT[0]~output_o\;
END structure;


