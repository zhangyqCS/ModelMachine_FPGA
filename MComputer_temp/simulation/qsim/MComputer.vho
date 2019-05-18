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

-- DATE "07/15/2018 14:03:11"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	WR : IN std_logic;
	CS : IN std_logic;
	DIN : IN std_logic_vector(7 DOWNTO 0);
	DOUT : BUFFER std_logic_vector(7 DOWNTO 0);
	ADDR : IN std_logic_vector(2 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[0]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR[1]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CS	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[4]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[5]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[6]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[7]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_WR : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_DIN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~9clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \ADDR[2]~input_o\ : std_logic;
SIGNAL \ADDR[1]~input_o\ : std_logic;
SIGNAL \ADDR[0]~input_o\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \WR~input_o\ : std_logic;
SIGNAL \CS~input_o\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~9clkctrl_outclk\ : std_logic;
SIGNAL \MEM~0_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~11clkctrl_outclk\ : std_logic;
SIGNAL \MEM~24_combout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~10clkctrl_outclk\ : std_logic;
SIGNAL \MEM~16_combout\ : std_logic;
SIGNAL \MEM~40_combout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~8clkctrl_outclk\ : std_logic;
SIGNAL \MEM~8_combout\ : std_logic;
SIGNAL \MEM~41_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \MEM~32_combout\ : std_logic;
SIGNAL \MEM~42_combout\ : std_logic;
SIGNAL \DOUT[7]~0_combout\ : std_logic;
SIGNAL \DOUT[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \DOUT[0]$latch~combout\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \MEM~9_combout\ : std_logic;
SIGNAL \MEM~17_combout\ : std_logic;
SIGNAL \MEM~1_combout\ : std_logic;
SIGNAL \MEM~43_combout\ : std_logic;
SIGNAL \MEM~25_combout\ : std_logic;
SIGNAL \MEM~44_combout\ : std_logic;
SIGNAL \MEM~33_combout\ : std_logic;
SIGNAL \MEM~45_combout\ : std_logic;
SIGNAL \DOUT[1]$latch~combout\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \MEM~10_combout\ : std_logic;
SIGNAL \MEM~2_combout\ : std_logic;
SIGNAL \MEM~46_combout\ : std_logic;
SIGNAL \MEM~26_combout\ : std_logic;
SIGNAL \MEM~18_combout\ : std_logic;
SIGNAL \MEM~47_combout\ : std_logic;
SIGNAL \MEM~34_combout\ : std_logic;
SIGNAL \MEM~48_combout\ : std_logic;
SIGNAL \DOUT[2]$latch~combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \MEM~19_combout\ : std_logic;
SIGNAL \MEM~3_combout\ : std_logic;
SIGNAL \MEM~49_combout\ : std_logic;
SIGNAL \MEM~11_combout\ : std_logic;
SIGNAL \MEM~27_combout\ : std_logic;
SIGNAL \MEM~50_combout\ : std_logic;
SIGNAL \MEM~35_combout\ : std_logic;
SIGNAL \MEM~51_combout\ : std_logic;
SIGNAL \DOUT[3]$latch~combout\ : std_logic;
SIGNAL \DIN[4]~input_o\ : std_logic;
SIGNAL \MEM~4_combout\ : std_logic;
SIGNAL \MEM~12_combout\ : std_logic;
SIGNAL \MEM~52_combout\ : std_logic;
SIGNAL \MEM~20_combout\ : std_logic;
SIGNAL \MEM~28_combout\ : std_logic;
SIGNAL \MEM~53_combout\ : std_logic;
SIGNAL \MEM~36_combout\ : std_logic;
SIGNAL \MEM~54_combout\ : std_logic;
SIGNAL \DOUT[4]$latch~combout\ : std_logic;
SIGNAL \DIN[5]~input_o\ : std_logic;
SIGNAL \MEM~5_combout\ : std_logic;
SIGNAL \MEM~21_combout\ : std_logic;
SIGNAL \MEM~55_combout\ : std_logic;
SIGNAL \MEM~29_combout\ : std_logic;
SIGNAL \MEM~13_combout\ : std_logic;
SIGNAL \MEM~56_combout\ : std_logic;
SIGNAL \MEM~37_combout\ : std_logic;
SIGNAL \MEM~57_combout\ : std_logic;
SIGNAL \DOUT[5]$latch~combout\ : std_logic;
SIGNAL \DIN[6]~input_o\ : std_logic;
SIGNAL \MEM~22_combout\ : std_logic;
SIGNAL \MEM~14_combout\ : std_logic;
SIGNAL \MEM~6_combout\ : std_logic;
SIGNAL \MEM~58_combout\ : std_logic;
SIGNAL \MEM~30_combout\ : std_logic;
SIGNAL \MEM~59_combout\ : std_logic;
SIGNAL \MEM~38_combout\ : std_logic;
SIGNAL \MEM~60_combout\ : std_logic;
SIGNAL \DOUT[6]$latch~combout\ : std_logic;
SIGNAL \DIN[7]~input_o\ : std_logic;
SIGNAL \MEM~23_combout\ : std_logic;
SIGNAL \MEM~7_combout\ : std_logic;
SIGNAL \MEM~61_combout\ : std_logic;
SIGNAL \MEM~15_combout\ : std_logic;
SIGNAL \MEM~31_combout\ : std_logic;
SIGNAL \MEM~62_combout\ : std_logic;
SIGNAL \MEM~39_combout\ : std_logic;
SIGNAL \MEM~63_combout\ : std_logic;
SIGNAL \DOUT[7]$latch~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_WR <= WR;
ww_CS <= CS;
ww_DIN <= DIN;
DOUT <= ww_DOUT;
ww_ADDR <= ADDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\DOUT[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DOUT[7]~0_combout\);

\rtl~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~11_combout\);

\rtl~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~10_combout\);

\rtl~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~8_combout\);

\rtl~9clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~9_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X3_Y24_N23
\DOUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[0]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\DOUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[1]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\DOUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[2]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DOUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[3]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\DOUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[4]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\DOUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[5]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\DOUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[6]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\DOUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[7]$latch~combout\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\ADDR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(2),
	o => \ADDR[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\ADDR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(1),
	o => \ADDR[1]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\ADDR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR(0),
	o => \ADDR[0]~input_o\);

-- Location: LCCOMB_X7_Y22_N4
\rtl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (!\ADDR[1]~input_o\ & (\ADDR[2]~input_o\ & !\ADDR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[1]~input_o\,
	datac => \ADDR[2]~input_o\,
	datad => \ADDR[0]~input_o\,
	combout => \rtl~5_combout\);

-- Location: IOIBUF_X0_Y21_N8
\DIN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\WR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR,
	o => \WR~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\CS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CS,
	o => \CS~input_o\);

-- Location: LCCOMB_X1_Y11_N18
\rtl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (!\ADDR[2]~input_o\ & (!\WR~input_o\ & !\CS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADDR[2]~input_o\,
	datac => \WR~input_o\,
	datad => \CS~input_o\,
	combout => \rtl~7_combout\);

-- Location: LCCOMB_X1_Y11_N8
\rtl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (!\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & \rtl~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \rtl~7_combout\,
	combout => \rtl~9_combout\);

-- Location: CLKCTRL_G1
\rtl~9clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~9clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~9clkctrl_outclk\);

-- Location: LCCOMB_X6_Y22_N28
\MEM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~0_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[0]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[0]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~0_combout\,
	combout => \MEM~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\rtl~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\ & \rtl~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \rtl~7_combout\,
	combout => \rtl~11_combout\);

-- Location: CLKCTRL_G0
\rtl~11clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~11clkctrl_outclk\);

-- Location: LCCOMB_X7_Y22_N2
\MEM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~24_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[0]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[0]~input_o\,
	datab => \MEM~24_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~24_combout\);

-- Location: LCCOMB_X1_Y11_N12
\rtl~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & \rtl~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \rtl~7_combout\,
	combout => \rtl~10_combout\);

-- Location: CLKCTRL_G4
\rtl~10clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~10clkctrl_outclk\);

-- Location: LCCOMB_X7_Y22_N18
\MEM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~16_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\DIN[0]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\MEM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[0]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \MEM~16_combout\,
	combout => \MEM~16_combout\);

-- Location: LCCOMB_X7_Y22_N10
\MEM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~40_combout\ = (\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & (\MEM~24_combout\)) # (!\ADDR[0]~input_o\ & ((\MEM~16_combout\))))) # (!\ADDR[1]~input_o\ & (((\ADDR[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \MEM~24_combout\,
	datac => \ADDR[0]~input_o\,
	datad => \MEM~16_combout\,
	combout => \MEM~40_combout\);

-- Location: LCCOMB_X1_Y11_N14
\rtl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (!\ADDR[1]~input_o\ & (\ADDR[0]~input_o\ & \rtl~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datac => \ADDR[0]~input_o\,
	datad => \rtl~7_combout\,
	combout => \rtl~8_combout\);

-- Location: CLKCTRL_G3
\rtl~8clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~8clkctrl_outclk\);

-- Location: LCCOMB_X6_Y22_N18
\MEM~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~8_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[0]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[0]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \MEM~8_combout\,
	combout => \MEM~8_combout\);

-- Location: LCCOMB_X7_Y22_N8
\MEM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~41_combout\ = (\ADDR[1]~input_o\ & (((\MEM~40_combout\)))) # (!\ADDR[1]~input_o\ & ((\MEM~40_combout\ & ((\MEM~8_combout\))) # (!\MEM~40_combout\ & (\MEM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \MEM~0_combout\,
	datac => \MEM~40_combout\,
	datad => \MEM~8_combout\,
	combout => \MEM~41_combout\);

-- Location: LCCOMB_X1_Y11_N22
\rtl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!\WR~input_o\ & (\rtl~5_combout\ & !\CS~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WR~input_o\,
	datac => \rtl~5_combout\,
	datad => \CS~input_o\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G7
\rtl~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X6_Y22_N20
\MEM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~32_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\DIN[0]~input_o\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\MEM~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~32_combout\,
	datac => \DIN[0]~input_o\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \MEM~32_combout\);

-- Location: LCCOMB_X7_Y22_N16
\MEM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~42_combout\ = (\ADDR[2]~input_o\ & (\rtl~5_combout\ & ((\MEM~32_combout\)))) # (!\ADDR[2]~input_o\ & ((\MEM~41_combout\) # ((\rtl~5_combout\ & \MEM~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \rtl~5_combout\,
	datac => \MEM~41_combout\,
	datad => \MEM~32_combout\,
	combout => \MEM~42_combout\);

-- Location: LCCOMB_X1_Y11_N4
\DOUT[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]~0_combout\ = (\WR~input_o\ & !\CS~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WR~input_o\,
	datad => \CS~input_o\,
	combout => \DOUT[7]~0_combout\);

-- Location: CLKCTRL_G2
\DOUT[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DOUT[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DOUT[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X7_Y22_N28
\DOUT[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[0]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\MEM~42_combout\))) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\DOUT[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[0]$latch~combout\,
	datac => \MEM~42_combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[0]$latch~combout\);

-- Location: IOIBUF_X9_Y24_N8
\DIN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: LCCOMB_X7_Y23_N30
\MEM~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~9_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[1]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[1]~input_o\,
	datac => \MEM~9_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \MEM~9_combout\);

-- Location: LCCOMB_X7_Y22_N20
\MEM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~17_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\DIN[1]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\MEM~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[1]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \MEM~17_combout\,
	combout => \MEM~17_combout\);

-- Location: LCCOMB_X8_Y22_N18
\MEM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~1_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[1]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[1]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~1_combout\,
	combout => \MEM~1_combout\);

-- Location: LCCOMB_X7_Y22_N12
\MEM~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~43_combout\ = (\ADDR[0]~input_o\ & (((\ADDR[1]~input_o\)))) # (!\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\ & (\MEM~17_combout\)) # (!\ADDR[1]~input_o\ & ((\MEM~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \MEM~17_combout\,
	datac => \ADDR[1]~input_o\,
	datad => \MEM~1_combout\,
	combout => \MEM~43_combout\);

-- Location: LCCOMB_X9_Y22_N8
\MEM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~25_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[1]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[1]~input_o\,
	datac => \MEM~25_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~25_combout\);

-- Location: LCCOMB_X7_Y22_N6
\MEM~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~44_combout\ = (\MEM~43_combout\ & (((\MEM~25_combout\) # (!\ADDR[0]~input_o\)))) # (!\MEM~43_combout\ & (\MEM~9_combout\ & (\ADDR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~9_combout\,
	datab => \MEM~43_combout\,
	datac => \ADDR[0]~input_o\,
	datad => \MEM~25_combout\,
	combout => \MEM~44_combout\);

-- Location: LCCOMB_X8_Y22_N4
\MEM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~33_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[1]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[1]~input_o\,
	datac => \MEM~33_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \MEM~33_combout\);

-- Location: LCCOMB_X7_Y22_N0
\MEM~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~45_combout\ = (\MEM~44_combout\ & (((\rtl~5_combout\ & \MEM~33_combout\)) # (!\ADDR[2]~input_o\))) # (!\MEM~44_combout\ & (\rtl~5_combout\ & ((\MEM~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~44_combout\,
	datab => \rtl~5_combout\,
	datac => \ADDR[2]~input_o\,
	datad => \MEM~33_combout\,
	combout => \MEM~45_combout\);

-- Location: LCCOMB_X7_Y22_N22
\DOUT[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[1]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\MEM~45_combout\)) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\DOUT[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~45_combout\,
	datac => \DOUT[1]$latch~combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[1]$latch~combout\);

-- Location: IOIBUF_X11_Y24_N15
\DIN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: LCCOMB_X7_Y23_N4
\MEM~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~10_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[2]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[2]~input_o\,
	datac => \MEM~10_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \MEM~10_combout\);

-- Location: LCCOMB_X7_Y23_N6
\MEM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~2_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[2]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[2]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~2_combout\,
	combout => \MEM~2_combout\);

-- Location: LCCOMB_X7_Y23_N20
\MEM~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~46_combout\ = (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\)) # (!\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & (\MEM~10_combout\)) # (!\ADDR[0]~input_o\ & ((\MEM~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \MEM~10_combout\,
	datad => \MEM~2_combout\,
	combout => \MEM~46_combout\);

-- Location: LCCOMB_X7_Y22_N14
\MEM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~26_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[2]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[2]~input_o\,
	datac => \MEM~26_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~26_combout\);

-- Location: LCCOMB_X8_Y22_N24
\MEM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~18_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\DIN[2]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\MEM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[2]~input_o\,
	datac => \rtl~10clkctrl_outclk\,
	datad => \MEM~18_combout\,
	combout => \MEM~18_combout\);

-- Location: LCCOMB_X7_Y22_N24
\MEM~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~47_combout\ = (\ADDR[1]~input_o\ & ((\MEM~46_combout\ & (\MEM~26_combout\)) # (!\MEM~46_combout\ & ((\MEM~18_combout\))))) # (!\ADDR[1]~input_o\ & (\MEM~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \MEM~46_combout\,
	datac => \MEM~26_combout\,
	datad => \MEM~18_combout\,
	combout => \MEM~47_combout\);

-- Location: LCCOMB_X6_Y22_N14
\MEM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~34_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[2]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[2]~input_o\,
	datac => \MEM~34_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \MEM~34_combout\);

-- Location: LCCOMB_X7_Y22_N30
\MEM~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~48_combout\ = (\MEM~47_combout\ & (((\rtl~5_combout\ & \MEM~34_combout\)) # (!\ADDR[2]~input_o\))) # (!\MEM~47_combout\ & (\rtl~5_combout\ & ((\MEM~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~47_combout\,
	datab => \rtl~5_combout\,
	datac => \ADDR[2]~input_o\,
	datad => \MEM~34_combout\,
	combout => \MEM~48_combout\);

-- Location: LCCOMB_X7_Y22_N26
\DOUT[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[2]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\MEM~48_combout\))) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\DOUT[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]$latch~combout\,
	datac => \MEM~48_combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[2]$latch~combout\);

-- Location: IOIBUF_X16_Y24_N8
\DIN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: LCCOMB_X9_Y23_N12
\MEM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~19_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\DIN[3]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\MEM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~19_combout\,
	datac => \DIN[3]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \MEM~19_combout\);

-- Location: LCCOMB_X9_Y23_N18
\MEM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~3_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[3]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[3]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~3_combout\,
	combout => \MEM~3_combout\);

-- Location: LCCOMB_X9_Y23_N4
\MEM~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~49_combout\ = (\ADDR[0]~input_o\ & (((\ADDR[1]~input_o\)))) # (!\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\ & (\MEM~19_combout\)) # (!\ADDR[1]~input_o\ & ((\MEM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~19_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \ADDR[1]~input_o\,
	datad => \MEM~3_combout\,
	combout => \MEM~49_combout\);

-- Location: LCCOMB_X10_Y23_N30
\MEM~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~11_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[3]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[3]~input_o\,
	datac => \MEM~11_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \MEM~11_combout\);

-- Location: LCCOMB_X10_Y23_N4
\MEM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~27_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[3]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[3]~input_o\,
	datac => \MEM~27_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~27_combout\);

-- Location: LCCOMB_X9_Y23_N30
\MEM~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~50_combout\ = (\MEM~49_combout\ & (((\MEM~27_combout\)) # (!\ADDR[0]~input_o\))) # (!\MEM~49_combout\ & (\ADDR[0]~input_o\ & (\MEM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~49_combout\,
	datab => \ADDR[0]~input_o\,
	datac => \MEM~11_combout\,
	datad => \MEM~27_combout\,
	combout => \MEM~50_combout\);

-- Location: LCCOMB_X10_Y23_N28
\MEM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~35_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[3]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[3]~input_o\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \MEM~35_combout\,
	combout => \MEM~35_combout\);

-- Location: LCCOMB_X9_Y23_N20
\MEM~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~51_combout\ = (\ADDR[2]~input_o\ & (\rtl~5_combout\ & ((\MEM~35_combout\)))) # (!\ADDR[2]~input_o\ & ((\MEM~50_combout\) # ((\rtl~5_combout\ & \MEM~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \rtl~5_combout\,
	datac => \MEM~50_combout\,
	datad => \MEM~35_combout\,
	combout => \MEM~51_combout\);

-- Location: LCCOMB_X9_Y23_N14
\DOUT[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[3]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\MEM~51_combout\))) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\DOUT[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DOUT[3]$latch~combout\,
	datac => \MEM~51_combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[3]$latch~combout\);

-- Location: IOIBUF_X16_Y24_N1
\DIN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(4),
	o => \DIN[4]~input_o\);

-- Location: LCCOMB_X12_Y22_N14
\MEM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~4_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[4]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[4]~input_o\,
	datab => \MEM~4_combout\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \MEM~4_combout\);

-- Location: LCCOMB_X12_Y22_N16
\MEM~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~12_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[4]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[4]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \MEM~12_combout\,
	combout => \MEM~12_combout\);

-- Location: LCCOMB_X12_Y22_N20
\MEM~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~52_combout\ = (\ADDR[0]~input_o\ & ((\ADDR[1]~input_o\) # ((\MEM~12_combout\)))) # (!\ADDR[0]~input_o\ & (!\ADDR[1]~input_o\ & (\MEM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \ADDR[1]~input_o\,
	datac => \MEM~4_combout\,
	datad => \MEM~12_combout\,
	combout => \MEM~52_combout\);

-- Location: LCCOMB_X11_Y22_N22
\MEM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~20_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\DIN[4]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\MEM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[4]~input_o\,
	datac => \MEM~20_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \MEM~20_combout\);

-- Location: LCCOMB_X11_Y22_N12
\MEM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~28_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[4]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[4]~input_o\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \MEM~28_combout\,
	combout => \MEM~28_combout\);

-- Location: LCCOMB_X12_Y22_N26
\MEM~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~53_combout\ = (\ADDR[1]~input_o\ & ((\MEM~52_combout\ & ((\MEM~28_combout\))) # (!\MEM~52_combout\ & (\MEM~20_combout\)))) # (!\ADDR[1]~input_o\ & (\MEM~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \MEM~52_combout\,
	datac => \MEM~20_combout\,
	datad => \MEM~28_combout\,
	combout => \MEM~53_combout\);

-- Location: LCCOMB_X11_Y22_N8
\MEM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~36_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[4]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[4]~input_o\,
	datac => \MEM~36_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \MEM~36_combout\);

-- Location: LCCOMB_X12_Y22_N28
\MEM~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~54_combout\ = (\rtl~5_combout\ & ((\MEM~36_combout\) # ((\MEM~53_combout\ & !\ADDR[2]~input_o\)))) # (!\rtl~5_combout\ & (\MEM~53_combout\ & (!\ADDR[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \MEM~53_combout\,
	datac => \ADDR[2]~input_o\,
	datad => \MEM~36_combout\,
	combout => \MEM~54_combout\);

-- Location: LCCOMB_X12_Y22_N8
\DOUT[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[4]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\MEM~54_combout\)) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\DOUT[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~54_combout\,
	datac => \DOUT[4]$latch~combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[4]$latch~combout\);

-- Location: IOIBUF_X18_Y24_N15
\DIN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(5),
	o => \DIN[5]~input_o\);

-- Location: LCCOMB_X12_Y22_N30
\MEM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~5_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & ((\DIN[5]~input_o\))) # (!GLOBAL(\rtl~9clkctrl_outclk\) & (\MEM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~5_combout\,
	datab => \DIN[5]~input_o\,
	datad => \rtl~9clkctrl_outclk\,
	combout => \MEM~5_combout\);

-- Location: LCCOMB_X11_Y22_N28
\MEM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~21_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\DIN[5]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\MEM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~21_combout\,
	datac => \DIN[5]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \MEM~21_combout\);

-- Location: LCCOMB_X12_Y22_N10
\MEM~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~55_combout\ = (\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\) # ((\MEM~21_combout\)))) # (!\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & (\MEM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \MEM~5_combout\,
	datad => \MEM~21_combout\,
	combout => \MEM~55_combout\);

-- Location: LCCOMB_X11_Y22_N6
\MEM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~29_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[5]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[5]~input_o\,
	datac => \rtl~11clkctrl_outclk\,
	datad => \MEM~29_combout\,
	combout => \MEM~29_combout\);

-- Location: LCCOMB_X12_Y22_N24
\MEM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~13_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[5]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[5]~input_o\,
	datac => \rtl~8clkctrl_outclk\,
	datad => \MEM~13_combout\,
	combout => \MEM~13_combout\);

-- Location: LCCOMB_X12_Y22_N12
\MEM~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~56_combout\ = (\ADDR[0]~input_o\ & ((\MEM~55_combout\ & (\MEM~29_combout\)) # (!\MEM~55_combout\ & ((\MEM~13_combout\))))) # (!\ADDR[0]~input_o\ & (\MEM~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \MEM~55_combout\,
	datac => \MEM~29_combout\,
	datad => \MEM~13_combout\,
	combout => \MEM~56_combout\);

-- Location: LCCOMB_X11_Y22_N14
\MEM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~37_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[5]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[5]~input_o\,
	datac => \MEM~37_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \MEM~37_combout\);

-- Location: LCCOMB_X12_Y22_N18
\MEM~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~57_combout\ = (\MEM~56_combout\ & (((\rtl~5_combout\ & \MEM~37_combout\)) # (!\ADDR[2]~input_o\))) # (!\MEM~56_combout\ & (\rtl~5_combout\ & ((\MEM~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~56_combout\,
	datab => \rtl~5_combout\,
	datac => \ADDR[2]~input_o\,
	datad => \MEM~37_combout\,
	combout => \MEM~57_combout\);

-- Location: LCCOMB_X12_Y22_N22
\DOUT[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[5]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\MEM~57_combout\))) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\DOUT[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[5]$latch~combout\,
	datac => \MEM~57_combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[5]$latch~combout\);

-- Location: IOIBUF_X13_Y24_N15
\DIN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(6),
	o => \DIN[6]~input_o\);

-- Location: LCCOMB_X7_Y23_N24
\MEM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~22_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & ((\DIN[6]~input_o\))) # (!GLOBAL(\rtl~10clkctrl_outclk\) & (\MEM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM~22_combout\,
	datac => \DIN[6]~input_o\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \MEM~22_combout\);

-- Location: LCCOMB_X7_Y23_N22
\MEM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~14_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[6]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[6]~input_o\,
	datac => \MEM~14_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \MEM~14_combout\);

-- Location: LCCOMB_X7_Y23_N16
\MEM~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~6_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[6]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[6]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~6_combout\,
	combout => \MEM~6_combout\);

-- Location: LCCOMB_X7_Y23_N14
\MEM~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~58_combout\ = (\ADDR[1]~input_o\ & (\ADDR[0]~input_o\)) # (!\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\ & (\MEM~14_combout\)) # (!\ADDR[0]~input_o\ & ((\MEM~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \MEM~14_combout\,
	datad => \MEM~6_combout\,
	combout => \MEM~58_combout\);

-- Location: LCCOMB_X6_Y23_N22
\MEM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~30_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[6]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[6]~input_o\,
	datac => \MEM~30_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~30_combout\);

-- Location: LCCOMB_X7_Y23_N12
\MEM~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~59_combout\ = (\ADDR[1]~input_o\ & ((\MEM~58_combout\ & ((\MEM~30_combout\))) # (!\MEM~58_combout\ & (\MEM~22_combout\)))) # (!\ADDR[1]~input_o\ & (((\MEM~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \MEM~22_combout\,
	datac => \MEM~58_combout\,
	datad => \MEM~30_combout\,
	combout => \MEM~59_combout\);

-- Location: LCCOMB_X6_Y23_N24
\MEM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~38_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[6]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[6]~input_o\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \MEM~38_combout\,
	combout => \MEM~38_combout\);

-- Location: LCCOMB_X6_Y23_N20
\MEM~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~60_combout\ = (\ADDR[2]~input_o\ & (((\rtl~5_combout\ & \MEM~38_combout\)))) # (!\ADDR[2]~input_o\ & ((\MEM~59_combout\) # ((\rtl~5_combout\ & \MEM~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[2]~input_o\,
	datab => \MEM~59_combout\,
	datac => \rtl~5_combout\,
	datad => \MEM~38_combout\,
	combout => \MEM~60_combout\);

-- Location: LCCOMB_X6_Y23_N26
\DOUT[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[6]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\MEM~60_combout\))) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\DOUT[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]$latch~combout\,
	datac => \MEM~60_combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[6]$latch~combout\);

-- Location: IOIBUF_X0_Y23_N8
\DIN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(7),
	o => \DIN[7]~input_o\);

-- Location: LCCOMB_X7_Y23_N8
\MEM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~23_combout\ = (GLOBAL(\rtl~10clkctrl_outclk\) & (\DIN[7]~input_o\)) # (!GLOBAL(\rtl~10clkctrl_outclk\) & ((\MEM~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[7]~input_o\,
	datac => \MEM~23_combout\,
	datad => \rtl~10clkctrl_outclk\,
	combout => \MEM~23_combout\);

-- Location: LCCOMB_X7_Y23_N10
\MEM~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~7_combout\ = (GLOBAL(\rtl~9clkctrl_outclk\) & (\DIN[7]~input_o\)) # (!GLOBAL(\rtl~9clkctrl_outclk\) & ((\MEM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[7]~input_o\,
	datac => \rtl~9clkctrl_outclk\,
	datad => \MEM~7_combout\,
	combout => \MEM~7_combout\);

-- Location: LCCOMB_X7_Y23_N2
\MEM~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~61_combout\ = (\ADDR[1]~input_o\ & ((\ADDR[0]~input_o\) # ((\MEM~23_combout\)))) # (!\ADDR[1]~input_o\ & (!\ADDR[0]~input_o\ & ((\MEM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[1]~input_o\,
	datab => \ADDR[0]~input_o\,
	datac => \MEM~23_combout\,
	datad => \MEM~7_combout\,
	combout => \MEM~61_combout\);

-- Location: LCCOMB_X7_Y23_N26
\MEM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~15_combout\ = (GLOBAL(\rtl~8clkctrl_outclk\) & (\DIN[7]~input_o\)) # (!GLOBAL(\rtl~8clkctrl_outclk\) & ((\MEM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DIN[7]~input_o\,
	datac => \MEM~15_combout\,
	datad => \rtl~8clkctrl_outclk\,
	combout => \MEM~15_combout\);

-- Location: LCCOMB_X8_Y23_N22
\MEM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~31_combout\ = (GLOBAL(\rtl~11clkctrl_outclk\) & (\DIN[7]~input_o\)) # (!GLOBAL(\rtl~11clkctrl_outclk\) & ((\MEM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[7]~input_o\,
	datac => \MEM~31_combout\,
	datad => \rtl~11clkctrl_outclk\,
	combout => \MEM~31_combout\);

-- Location: LCCOMB_X7_Y23_N0
\MEM~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~62_combout\ = (\ADDR[0]~input_o\ & ((\MEM~61_combout\ & ((\MEM~31_combout\))) # (!\MEM~61_combout\ & (\MEM~15_combout\)))) # (!\ADDR[0]~input_o\ & (\MEM~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDR[0]~input_o\,
	datab => \MEM~61_combout\,
	datac => \MEM~15_combout\,
	datad => \MEM~31_combout\,
	combout => \MEM~62_combout\);

-- Location: LCCOMB_X8_Y23_N24
\MEM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~39_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\DIN[7]~input_o\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\MEM~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIN[7]~input_o\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \MEM~39_combout\,
	combout => \MEM~39_combout\);

-- Location: LCCOMB_X8_Y23_N16
\MEM~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM~63_combout\ = (\MEM~62_combout\ & (((\rtl~5_combout\ & \MEM~39_combout\)) # (!\ADDR[2]~input_o\))) # (!\MEM~62_combout\ & (((\rtl~5_combout\ & \MEM~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~62_combout\,
	datab => \ADDR[2]~input_o\,
	datac => \rtl~5_combout\,
	datad => \MEM~39_combout\,
	combout => \MEM~63_combout\);

-- Location: LCCOMB_X8_Y23_N26
\DOUT[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \DOUT[7]$latch~combout\ = (GLOBAL(\DOUT[7]~0clkctrl_outclk\) & (\MEM~63_combout\)) # (!GLOBAL(\DOUT[7]~0clkctrl_outclk\) & ((\DOUT[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM~63_combout\,
	datac => \DOUT[7]$latch~combout\,
	datad => \DOUT[7]~0clkctrl_outclk\,
	combout => \DOUT[7]$latch~combout\);

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;
END structure;


