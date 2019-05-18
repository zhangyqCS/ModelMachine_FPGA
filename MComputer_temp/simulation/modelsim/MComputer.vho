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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "07/07/2018 14:43:00"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CLK_SOURCE IS
    PORT (
	CLK_50M : IN std_logic;
	CLK : OUT std_logic
	);
END CLK_SOURCE;

-- Design Ports Information
-- CLK	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_50M	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CLK_SOURCE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50M : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK_50M~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \COUNTER[2]~26_combout\ : std_logic;
SIGNAL \COUNTER[8]~38_combout\ : std_logic;
SIGNAL \COUNTER[12]~46_combout\ : std_logic;
SIGNAL \COUNTER[19]~60_combout\ : std_logic;
SIGNAL \COUNTER[23]~69\ : std_logic;
SIGNAL \COUNTER[24]~70_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \COUNTER[0]~72_combout\ : std_logic;
SIGNAL \CLK_50M~input_o\ : std_logic;
SIGNAL \CLK_50M~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \COUNTER[1]~24_combout\ : std_logic;
SIGNAL \COUNTER[1]~25\ : std_logic;
SIGNAL \COUNTER[2]~27\ : std_logic;
SIGNAL \COUNTER[3]~28_combout\ : std_logic;
SIGNAL \COUNTER[3]~29\ : std_logic;
SIGNAL \COUNTER[4]~30_combout\ : std_logic;
SIGNAL \COUNTER[4]~31\ : std_logic;
SIGNAL \COUNTER[5]~32_combout\ : std_logic;
SIGNAL \COUNTER[5]~33\ : std_logic;
SIGNAL \COUNTER[6]~34_combout\ : std_logic;
SIGNAL \COUNTER[6]~35\ : std_logic;
SIGNAL \COUNTER[7]~36_combout\ : std_logic;
SIGNAL \COUNTER[7]~37\ : std_logic;
SIGNAL \COUNTER[8]~39\ : std_logic;
SIGNAL \COUNTER[9]~40_combout\ : std_logic;
SIGNAL \COUNTER[9]~41\ : std_logic;
SIGNAL \COUNTER[10]~43\ : std_logic;
SIGNAL \COUNTER[11]~44_combout\ : std_logic;
SIGNAL \COUNTER[11]~45\ : std_logic;
SIGNAL \COUNTER[12]~47\ : std_logic;
SIGNAL \COUNTER[13]~48_combout\ : std_logic;
SIGNAL \COUNTER[13]~49\ : std_logic;
SIGNAL \COUNTER[14]~50_combout\ : std_logic;
SIGNAL \COUNTER[14]~51\ : std_logic;
SIGNAL \COUNTER[15]~52_combout\ : std_logic;
SIGNAL \COUNTER[15]~53\ : std_logic;
SIGNAL \COUNTER[16]~54_combout\ : std_logic;
SIGNAL \COUNTER[16]~55\ : std_logic;
SIGNAL \COUNTER[17]~56_combout\ : std_logic;
SIGNAL \COUNTER[17]~57\ : std_logic;
SIGNAL \COUNTER[18]~58_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \COUNTER[10]~42_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \COUNTER[18]~59\ : std_logic;
SIGNAL \COUNTER[19]~61\ : std_logic;
SIGNAL \COUNTER[20]~62_combout\ : std_logic;
SIGNAL \COUNTER[20]~63\ : std_logic;
SIGNAL \COUNTER[21]~64_combout\ : std_logic;
SIGNAL \COUNTER[21]~65\ : std_logic;
SIGNAL \COUNTER[22]~67\ : std_logic;
SIGNAL \COUNTER[23]~68_combout\ : std_logic;
SIGNAL \COUNTER[22]~66_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \CLK_TEMP~0_combout\ : std_logic;
SIGNAL COUNTER : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;

BEGIN

ww_CLK_50M <= CLK_50M;
CLK <= ww_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_50M~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50M~input_o\);
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;

-- Location: FF_X2_Y23_N11
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[2]~26_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: FF_X2_Y23_N23
\COUNTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[8]~38_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(8));

-- Location: FF_X2_Y23_N31
\COUNTER[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[12]~46_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(12));

-- Location: FF_X2_Y22_N13
\COUNTER[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[19]~60_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(19));

-- Location: FF_X2_Y22_N23
\COUNTER[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[24]~70_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(24));

-- Location: LCCOMB_X2_Y23_N10
\COUNTER[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[2]~26_combout\ = (COUNTER(2) & (!\COUNTER[1]~25\)) # (!COUNTER(2) & ((\COUNTER[1]~25\) # (GND)))
-- \COUNTER[2]~27\ = CARRY((!\COUNTER[1]~25\) # (!COUNTER(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datad => VCC,
	cin => \COUNTER[1]~25\,
	combout => \COUNTER[2]~26_combout\,
	cout => \COUNTER[2]~27\);

-- Location: LCCOMB_X2_Y23_N22
\COUNTER[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[8]~38_combout\ = (COUNTER(8) & (!\COUNTER[7]~37\)) # (!COUNTER(8) & ((\COUNTER[7]~37\) # (GND)))
-- \COUNTER[8]~39\ = CARRY((!\COUNTER[7]~37\) # (!COUNTER(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datad => VCC,
	cin => \COUNTER[7]~37\,
	combout => \COUNTER[8]~38_combout\,
	cout => \COUNTER[8]~39\);

-- Location: LCCOMB_X2_Y23_N30
\COUNTER[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[12]~46_combout\ = (COUNTER(12) & (!\COUNTER[11]~45\)) # (!COUNTER(12) & ((\COUNTER[11]~45\) # (GND)))
-- \COUNTER[12]~47\ = CARRY((!\COUNTER[11]~45\) # (!COUNTER(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(12),
	datad => VCC,
	cin => \COUNTER[11]~45\,
	combout => \COUNTER[12]~46_combout\,
	cout => \COUNTER[12]~47\);

-- Location: LCCOMB_X2_Y22_N12
\COUNTER[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[19]~60_combout\ = (COUNTER(19) & (\COUNTER[18]~59\ $ (GND))) # (!COUNTER(19) & (!\COUNTER[18]~59\ & VCC))
-- \COUNTER[19]~61\ = CARRY((COUNTER(19) & !\COUNTER[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(19),
	datad => VCC,
	cin => \COUNTER[18]~59\,
	combout => \COUNTER[19]~60_combout\,
	cout => \COUNTER[19]~61\);

-- Location: LCCOMB_X2_Y22_N20
\COUNTER[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[23]~68_combout\ = (COUNTER(23) & (\COUNTER[22]~67\ $ (GND))) # (!COUNTER(23) & (!\COUNTER[22]~67\ & VCC))
-- \COUNTER[23]~69\ = CARRY((COUNTER(23) & !\COUNTER[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(23),
	datad => VCC,
	cin => \COUNTER[22]~67\,
	combout => \COUNTER[23]~68_combout\,
	cout => \COUNTER[23]~69\);

-- Location: LCCOMB_X2_Y22_N22
\COUNTER[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[24]~70_combout\ = COUNTER(24) $ (\COUNTER[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(24),
	cin => \COUNTER[23]~69\,
	combout => \COUNTER[24]~70_combout\);

-- Location: FF_X2_Y23_N5
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[0]~72_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X2_Y23_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!COUNTER(2) & (!COUNTER(1) & (!COUNTER(0) & !COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(1),
	datac => COUNTER(0),
	datad => COUNTER(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\COUNTER[0]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[0]~72_combout\ = !COUNTER(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNTER(0),
	combout => \COUNTER[0]~72_combout\);

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

-- Location: IOOBUF_X0_Y23_N16
\CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_TEMP~0_combout\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

-- Location: LCCOMB_X2_Y23_N8
\COUNTER[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[1]~24_combout\ = (COUNTER(0) & (COUNTER(1) $ (VCC))) # (!COUNTER(0) & (COUNTER(1) & VCC))
-- \COUNTER[1]~25\ = CARRY((COUNTER(0) & COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(1),
	datad => VCC,
	combout => \COUNTER[1]~24_combout\,
	cout => \COUNTER[1]~25\);

-- Location: FF_X2_Y23_N9
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[1]~24_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: LCCOMB_X2_Y23_N12
\COUNTER[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[3]~28_combout\ = (COUNTER(3) & (\COUNTER[2]~27\ $ (GND))) # (!COUNTER(3) & (!\COUNTER[2]~27\ & VCC))
-- \COUNTER[3]~29\ = CARRY((COUNTER(3) & !\COUNTER[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => VCC,
	cin => \COUNTER[2]~27\,
	combout => \COUNTER[3]~28_combout\,
	cout => \COUNTER[3]~29\);

-- Location: FF_X2_Y23_N13
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[3]~28_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X2_Y23_N14
\COUNTER[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[4]~30_combout\ = (COUNTER(4) & (!\COUNTER[3]~29\)) # (!COUNTER(4) & ((\COUNTER[3]~29\) # (GND)))
-- \COUNTER[4]~31\ = CARRY((!\COUNTER[3]~29\) # (!COUNTER(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datad => VCC,
	cin => \COUNTER[3]~29\,
	combout => \COUNTER[4]~30_combout\,
	cout => \COUNTER[4]~31\);

-- Location: FF_X2_Y23_N15
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[4]~30_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X2_Y23_N16
\COUNTER[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[5]~32_combout\ = (COUNTER(5) & (\COUNTER[4]~31\ $ (GND))) # (!COUNTER(5) & (!\COUNTER[4]~31\ & VCC))
-- \COUNTER[5]~33\ = CARRY((COUNTER(5) & !\COUNTER[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(5),
	datad => VCC,
	cin => \COUNTER[4]~31\,
	combout => \COUNTER[5]~32_combout\,
	cout => \COUNTER[5]~33\);

-- Location: FF_X2_Y23_N17
\COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[5]~32_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(5));

-- Location: LCCOMB_X2_Y23_N18
\COUNTER[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[6]~34_combout\ = (COUNTER(6) & (!\COUNTER[5]~33\)) # (!COUNTER(6) & ((\COUNTER[5]~33\) # (GND)))
-- \COUNTER[6]~35\ = CARRY((!\COUNTER[5]~33\) # (!COUNTER(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(6),
	datad => VCC,
	cin => \COUNTER[5]~33\,
	combout => \COUNTER[6]~34_combout\,
	cout => \COUNTER[6]~35\);

-- Location: FF_X2_Y23_N19
\COUNTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[6]~34_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(6));

-- Location: LCCOMB_X2_Y23_N20
\COUNTER[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[7]~36_combout\ = (COUNTER(7) & (\COUNTER[6]~35\ $ (GND))) # (!COUNTER(7) & (!\COUNTER[6]~35\ & VCC))
-- \COUNTER[7]~37\ = CARRY((COUNTER(7) & !\COUNTER[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(7),
	datad => VCC,
	cin => \COUNTER[6]~35\,
	combout => \COUNTER[7]~36_combout\,
	cout => \COUNTER[7]~37\);

-- Location: FF_X2_Y23_N21
\COUNTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[7]~36_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(7));

-- Location: LCCOMB_X2_Y23_N24
\COUNTER[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[9]~40_combout\ = (COUNTER(9) & (\COUNTER[8]~39\ $ (GND))) # (!COUNTER(9) & (!\COUNTER[8]~39\ & VCC))
-- \COUNTER[9]~41\ = CARRY((COUNTER(9) & !\COUNTER[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(9),
	datad => VCC,
	cin => \COUNTER[8]~39\,
	combout => \COUNTER[9]~40_combout\,
	cout => \COUNTER[9]~41\);

-- Location: FF_X2_Y23_N25
\COUNTER[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[9]~40_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(9));

-- Location: LCCOMB_X2_Y23_N26
\COUNTER[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[10]~42_combout\ = (COUNTER(10) & (!\COUNTER[9]~41\)) # (!COUNTER(10) & ((\COUNTER[9]~41\) # (GND)))
-- \COUNTER[10]~43\ = CARRY((!\COUNTER[9]~41\) # (!COUNTER(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(10),
	datad => VCC,
	cin => \COUNTER[9]~41\,
	combout => \COUNTER[10]~42_combout\,
	cout => \COUNTER[10]~43\);

-- Location: LCCOMB_X2_Y23_N28
\COUNTER[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[11]~44_combout\ = (COUNTER(11) & (\COUNTER[10]~43\ $ (GND))) # (!COUNTER(11) & (!\COUNTER[10]~43\ & VCC))
-- \COUNTER[11]~45\ = CARRY((COUNTER(11) & !\COUNTER[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(11),
	datad => VCC,
	cin => \COUNTER[10]~43\,
	combout => \COUNTER[11]~44_combout\,
	cout => \COUNTER[11]~45\);

-- Location: FF_X2_Y23_N29
\COUNTER[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[11]~44_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(11));

-- Location: LCCOMB_X2_Y22_N0
\COUNTER[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[13]~48_combout\ = (COUNTER(13) & (\COUNTER[12]~47\ $ (GND))) # (!COUNTER(13) & (!\COUNTER[12]~47\ & VCC))
-- \COUNTER[13]~49\ = CARRY((COUNTER(13) & !\COUNTER[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(13),
	datad => VCC,
	cin => \COUNTER[12]~47\,
	combout => \COUNTER[13]~48_combout\,
	cout => \COUNTER[13]~49\);

-- Location: FF_X2_Y22_N1
\COUNTER[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[13]~48_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(13));

-- Location: LCCOMB_X2_Y22_N2
\COUNTER[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[14]~50_combout\ = (COUNTER(14) & (!\COUNTER[13]~49\)) # (!COUNTER(14) & ((\COUNTER[13]~49\) # (GND)))
-- \COUNTER[14]~51\ = CARRY((!\COUNTER[13]~49\) # (!COUNTER(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(14),
	datad => VCC,
	cin => \COUNTER[13]~49\,
	combout => \COUNTER[14]~50_combout\,
	cout => \COUNTER[14]~51\);

-- Location: FF_X2_Y22_N3
\COUNTER[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[14]~50_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(14));

-- Location: LCCOMB_X2_Y22_N4
\COUNTER[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[15]~52_combout\ = (COUNTER(15) & (\COUNTER[14]~51\ $ (GND))) # (!COUNTER(15) & (!\COUNTER[14]~51\ & VCC))
-- \COUNTER[15]~53\ = CARRY((COUNTER(15) & !\COUNTER[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(15),
	datad => VCC,
	cin => \COUNTER[14]~51\,
	combout => \COUNTER[15]~52_combout\,
	cout => \COUNTER[15]~53\);

-- Location: FF_X2_Y22_N5
\COUNTER[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[15]~52_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(15));

-- Location: LCCOMB_X2_Y22_N6
\COUNTER[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[16]~54_combout\ = (COUNTER(16) & (!\COUNTER[15]~53\)) # (!COUNTER(16) & ((\COUNTER[15]~53\) # (GND)))
-- \COUNTER[16]~55\ = CARRY((!\COUNTER[15]~53\) # (!COUNTER(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(16),
	datad => VCC,
	cin => \COUNTER[15]~53\,
	combout => \COUNTER[16]~54_combout\,
	cout => \COUNTER[16]~55\);

-- Location: FF_X2_Y22_N7
\COUNTER[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[16]~54_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(16));

-- Location: LCCOMB_X2_Y22_N8
\COUNTER[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[17]~56_combout\ = (COUNTER(17) & (\COUNTER[16]~55\ $ (GND))) # (!COUNTER(17) & (!\COUNTER[16]~55\ & VCC))
-- \COUNTER[17]~57\ = CARRY((COUNTER(17) & !\COUNTER[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(17),
	datad => VCC,
	cin => \COUNTER[16]~55\,
	combout => \COUNTER[17]~56_combout\,
	cout => \COUNTER[17]~57\);

-- Location: FF_X2_Y22_N9
\COUNTER[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[17]~56_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(17));

-- Location: LCCOMB_X2_Y22_N10
\COUNTER[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[18]~58_combout\ = (COUNTER(18) & (!\COUNTER[17]~57\)) # (!COUNTER(18) & ((\COUNTER[17]~57\) # (GND)))
-- \COUNTER[18]~59\ = CARRY((!\COUNTER[17]~57\) # (!COUNTER(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(18),
	datad => VCC,
	cin => \COUNTER[17]~57\,
	combout => \COUNTER[18]~58_combout\,
	cout => \COUNTER[18]~59\);

-- Location: FF_X2_Y22_N11
\COUNTER[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[18]~58_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(18));

-- Location: LCCOMB_X2_Y22_N24
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (COUNTER(19) & (COUNTER(16) & (!COUNTER(17) & COUNTER(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(19),
	datab => COUNTER(16),
	datac => COUNTER(17),
	datad => COUNTER(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X2_Y22_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (COUNTER(12) & (COUNTER(14) & (!COUNTER(15) & COUNTER(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(12),
	datab => COUNTER(14),
	datac => COUNTER(15),
	datad => COUNTER(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X2_Y23_N0
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!COUNTER(7) & (!COUNTER(5) & (!COUNTER(4) & COUNTER(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(7),
	datab => COUNTER(5),
	datac => COUNTER(4),
	datad => COUNTER(6),
	combout => \Equal0~1_combout\);

-- Location: FF_X2_Y23_N27
\COUNTER[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[10]~42_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(10));

-- Location: LCCOMB_X2_Y23_N2
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!COUNTER(8) & (!COUNTER(9) & (!COUNTER(10) & COUNTER(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(8),
	datab => COUNTER(9),
	datac => COUNTER(10),
	datad => COUNTER(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y22_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X2_Y22_N14
\COUNTER[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[20]~62_combout\ = (COUNTER(20) & (!\COUNTER[19]~61\)) # (!COUNTER(20) & ((\COUNTER[19]~61\) # (GND)))
-- \COUNTER[20]~63\ = CARRY((!\COUNTER[19]~61\) # (!COUNTER(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(20),
	datad => VCC,
	cin => \COUNTER[19]~61\,
	combout => \COUNTER[20]~62_combout\,
	cout => \COUNTER[20]~63\);

-- Location: FF_X2_Y22_N15
\COUNTER[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[20]~62_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(20));

-- Location: LCCOMB_X2_Y22_N16
\COUNTER[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[21]~64_combout\ = (COUNTER(21) & (\COUNTER[20]~63\ $ (GND))) # (!COUNTER(21) & (!\COUNTER[20]~63\ & VCC))
-- \COUNTER[21]~65\ = CARRY((COUNTER(21) & !\COUNTER[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(21),
	datad => VCC,
	cin => \COUNTER[20]~63\,
	combout => \COUNTER[21]~64_combout\,
	cout => \COUNTER[21]~65\);

-- Location: FF_X2_Y22_N17
\COUNTER[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[21]~64_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(21));

-- Location: LCCOMB_X2_Y22_N18
\COUNTER[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNTER[22]~66_combout\ = (COUNTER(22) & (!\COUNTER[21]~65\)) # (!COUNTER(22) & ((\COUNTER[21]~65\) # (GND)))
-- \COUNTER[22]~67\ = CARRY((!\COUNTER[21]~65\) # (!COUNTER(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(22),
	datad => VCC,
	cin => \COUNTER[21]~65\,
	combout => \COUNTER[22]~66_combout\,
	cout => \COUNTER[22]~67\);

-- Location: FF_X2_Y22_N21
\COUNTER[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[23]~68_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(23));

-- Location: FF_X2_Y22_N19
\COUNTER[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50M~inputclkctrl_outclk\,
	d => \COUNTER[22]~66_combout\,
	clrn => \ALT_INV_Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(22));

-- Location: LCCOMB_X3_Y22_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (COUNTER(20) & (!COUNTER(23) & (COUNTER(21) & COUNTER(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(20),
	datab => COUNTER(23),
	datac => COUNTER(21),
	datad => COUNTER(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X2_Y22_N30
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (COUNTER(24) & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(24),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X1_Y23_N16
\CLK_TEMP~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_TEMP~0_combout\ = \Equal0~7_combout\ $ (\CLK_TEMP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \CLK_TEMP~0_combout\,
	combout => \CLK_TEMP~0_combout\);

ww_CLK <= \CLK~output_o\;
END structure;


