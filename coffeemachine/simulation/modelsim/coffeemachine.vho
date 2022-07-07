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

-- DATE "06/30/2022 23:48:26"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	coffeemachine IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	fazer : IN std_logic;
	m25 : IN std_logic;
	m50 : IN std_logic;
	m1 : IN std_logic;
	PB : IN std_logic;
	GB : IN std_logic;
	LP : OUT std_logic;
	LG : OUT std_logic
	);
END coffeemachine;

-- Design Ports Information
-- LP	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LG	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fazer	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PB	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GB	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m1	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m50	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m25	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF coffeemachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_fazer : std_logic;
SIGNAL ww_m25 : std_logic;
SIGNAL ww_m50 : std_logic;
SIGNAL ww_m1 : std_logic;
SIGNAL ww_PB : std_logic;
SIGNAL ww_GB : std_logic;
SIGNAL ww_LP : std_logic;
SIGNAL ww_LG : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gs~regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \fazer~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \GB~combout\ : std_logic;
SIGNAL \PB~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \prox_estado.I~regout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \estado.I~regout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \prox_estado.P~regout\ : std_logic;
SIGNAL \estado.P~feeder_combout\ : std_logic;
SIGNAL \estado.P~regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Ps~regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \prox_estado.G~regout\ : std_logic;
SIGNAL \estado.G~regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \prox_estado.S~regout\ : std_logic;
SIGNAL \estado.S~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \prox_estado.C~regout\ : std_logic;
SIGNAL \estado.C~regout\ : std_logic;
SIGNAL \m25~combout\ : std_logic;
SIGNAL \m1~combout\ : std_logic;
SIGNAL \m1s~1_combout\ : std_logic;
SIGNAL \m1s~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \m1s~regout\ : std_logic;
SIGNAL \m50s~1_combout\ : std_logic;
SIGNAL \m50~combout\ : std_logic;
SIGNAL \m50s~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \m50s~regout\ : std_logic;
SIGNAL \soma_final~1_combout\ : std_logic;
SIGNAL \soma_final~5_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \m25s~1_combout\ : std_logic;
SIGNAL \m25s~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \m25s~regout\ : std_logic;
SIGNAL \soma_final~3_combout\ : std_logic;
SIGNAL \soma_final~4_combout\ : std_logic;
SIGNAL \soma_final[1]~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \mudaestado~0_combout\ : std_logic;
SIGNAL \soma_final~2_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \prox_estado.F~regout\ : std_logic;
SIGNAL \estado.F~regout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \prox_estado.E~regout\ : std_logic;
SIGNAL \estado.E~feeder_combout\ : std_logic;
SIGNAL \estado.E~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LP~reg0_regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \LG~reg0_regout\ : std_logic;
SIGNAL soma_final : std_logic_vector(3 DOWNTO 0);
SIGNAL soma : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_estado.C~regout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_fazer <= fazer;
ww_m25 <= m25;
ww_m50 <= m50;
ww_m1 <= m1;
ww_PB <= PB;
ww_GB <= GB;
LP <= ww_LP;
LG <= ww_LG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_estado.C~regout\ <= NOT \estado.C~regout\;

-- Location: LCFF_X29_Y35_N25
Gs : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gs~regout\);

-- Location: LCCOMB_X29_Y35_N24
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\estado.G~regout\) # ((\estado.I~regout\ & \Gs~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.I~regout\,
	datac => \Gs~regout\,
	datad => \estado.G~regout\,
	combout => \Selector13~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fazer~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_fazer,
	combout => \fazer~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GB,
	combout => \GB~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PB,
	combout => \PB~combout\);

-- Location: LCCOMB_X27_Y35_N22
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\PB~combout\ & !\estado.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PB~combout\,
	datad => \estado.I~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X27_Y35_N24
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\estado.E~regout\ & (\prox_estado.I~regout\ & ((\GB~combout\) # (!\Selector16~0_combout\)))) # (!\estado.E~regout\ & ((\GB~combout\) # ((!\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.E~regout\,
	datab => \GB~combout\,
	datac => \prox_estado.I~regout\,
	datad => \Selector16~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCFF_X27_Y35_N25
\prox_estado.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.I~regout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X27_Y35_N29
\estado.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \prox_estado.I~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.I~regout\);

-- Location: LCCOMB_X27_Y35_N12
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\estado.E~regout\ & ((\prox_estado.P~regout\) # ((\PB~combout\ & !\estado.I~regout\)))) # (!\estado.E~regout\ & (\PB~combout\ & ((!\estado.I~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.E~regout\,
	datab => \PB~combout\,
	datac => \prox_estado.P~regout\,
	datad => \estado.I~regout\,
	combout => \Selector15~0_combout\);

-- Location: LCFF_X27_Y35_N13
\prox_estado.P\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.P~regout\);

-- Location: LCCOMB_X27_Y35_N26
\estado.P~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.P~feeder_combout\ = \prox_estado.P~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prox_estado.P~regout\,
	combout => \estado.P~feeder_combout\);

-- Location: LCFF_X27_Y35_N27
\estado.P\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado.P~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.P~regout\);

-- Location: LCCOMB_X29_Y35_N14
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.P~regout\) # ((\estado.I~regout\ & \Ps~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.I~regout\,
	datac => \Ps~regout\,
	datad => \estado.P~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X29_Y35_N15
Ps : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ps~regout\);

-- Location: LCCOMB_X29_Y35_N26
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\fazer~combout\ & (\estado.E~regout\ & (\prox_estado.F~regout\))) # (!\fazer~combout\ & ((\estado.F~regout\) # ((\estado.E~regout\ & \prox_estado.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazer~combout\,
	datab => \estado.E~regout\,
	datac => \prox_estado.F~regout\,
	datad => \estado.F~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X27_Y35_N4
\Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\estado.E~regout\ & ((\prox_estado.G~regout\) # ((\GB~combout\ & \Selector16~0_combout\)))) # (!\estado.E~regout\ & (\GB~combout\ & ((\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.E~regout\,
	datab => \GB~combout\,
	datac => \prox_estado.G~regout\,
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: LCFF_X27_Y35_N5
\prox_estado.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector16~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.G~regout\);

-- Location: LCFF_X27_Y35_N19
\estado.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \prox_estado.G~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.G~regout\);

-- Location: LCCOMB_X27_Y35_N18
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\estado.P~regout\) # ((\estado.G~regout\) # ((\prox_estado.S~regout\ & \estado.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prox_estado.S~regout\,
	datab => \estado.P~regout\,
	datac => \estado.G~regout\,
	datad => \estado.E~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X27_Y35_N10
\Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\estado.C~regout\) # (\Selector17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.C~regout\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCFF_X27_Y35_N11
\prox_estado.S\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector17~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.S~regout\);

-- Location: LCFF_X29_Y35_N11
\estado.S\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \prox_estado.S~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.S~regout\);

-- Location: LCCOMB_X29_Y35_N2
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado.G~regout\) # ((\estado.I~regout\ & (!\estado.P~regout\ & soma(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.I~regout\,
	datab => \estado.P~regout\,
	datac => soma(1),
	datad => \estado.G~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X29_Y35_N3
\soma[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma(1));

-- Location: LCCOMB_X29_Y35_N20
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estado.E~regout\ & ((\prox_estado.C~regout\) # ((\estado.S~regout\ & \LessThan0~1_combout\)))) # (!\estado.E~regout\ & (\estado.S~regout\ & ((\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.E~regout\,
	datab => \estado.S~regout\,
	datac => \prox_estado.C~regout\,
	datad => \LessThan0~1_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X29_Y35_N21
\prox_estado.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.C~regout\);

-- Location: LCFF_X29_Y35_N9
\estado.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \prox_estado.C~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.C~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m25~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m25,
	combout => \m25~combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m1,
	combout => \m1~combout\);

-- Location: LCCOMB_X27_Y35_N16
\m1s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1s~1_combout\ = \m1s~regout\ $ (\m1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m1s~regout\,
	datad => \m1~combout\,
	combout => \m1s~1_combout\);

-- Location: LCCOMB_X28_Y35_N16
\m1s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1s~0_combout\ = (\m1s~regout\ & ((!\m1s~1_combout\))) # (!\m1s~regout\ & (\m1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1~combout\,
	datac => \m1s~regout\,
	datad => \m1s~1_combout\,
	combout => \m1s~0_combout\);

-- Location: LCCOMB_X27_Y35_N6
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.I~regout\ & \m1s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.I~regout\,
	datac => \m1s~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X28_Y35_N17
m1s : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m1s~0_combout\,
	sdata => \Selector11~0_combout\,
	sload => \ALT_INV_estado.C~regout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1s~regout\);

-- Location: LCCOMB_X28_Y35_N12
\m50s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m50s~1_combout\ = \m50~combout\ $ (\m50s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m50~combout\,
	datac => \m50s~regout\,
	combout => \m50s~1_combout\);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m50,
	combout => \m50~combout\);

-- Location: LCCOMB_X28_Y35_N2
\m50s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m50s~0_combout\ = (\m50s~regout\ & (!\m50s~1_combout\)) # (!\m50s~regout\ & ((\m50~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m50s~1_combout\,
	datac => \m50s~regout\,
	datad => \m50~combout\,
	combout => \m50s~0_combout\);

-- Location: LCCOMB_X27_Y35_N30
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.I~regout\ & \m50s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.I~regout\,
	datad => \m50s~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X28_Y35_N3
m50s : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m50s~0_combout\,
	sdata => \Selector10~0_combout\,
	sload => \ALT_INV_estado.C~regout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m50s~regout\);

-- Location: LCCOMB_X28_Y35_N28
\soma_final~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final~1_combout\ = (\m50~combout\ & (\m50s~regout\ & ((\m1s~regout\) # (!\m1~combout\)))) # (!\m50~combout\ & (((\m1s~regout\)) # (!\m1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m50~combout\,
	datab => \m1~combout\,
	datac => \m1s~regout\,
	datad => \m50s~regout\,
	combout => \soma_final~1_combout\);

-- Location: LCCOMB_X29_Y35_N10
\soma_final~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final~5_combout\ = (!\m25s~regout\ & (\m25~combout\ & \soma_final~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m25s~regout\,
	datab => \m25~combout\,
	datad => \soma_final~1_combout\,
	combout => \soma_final~5_combout\);

-- Location: LCCOMB_X29_Y35_N6
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.C~regout\ & ((soma_final(0) $ (\soma_final~5_combout\)))) # (!\estado.C~regout\ & (\estado.I~regout\ & (soma_final(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.I~regout\,
	datab => \estado.C~regout\,
	datac => soma_final(0),
	datad => \soma_final~5_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X29_Y35_N7
\soma_final[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma_final(0));

-- Location: LCCOMB_X29_Y35_N4
\m25s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \m25s~1_combout\ = \m25~combout\ $ (\m25s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m25~combout\,
	datac => \m25s~regout\,
	combout => \m25s~1_combout\);

-- Location: LCCOMB_X28_Y35_N30
\m25s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m25s~0_combout\ = (\m25s~regout\ & ((!\m25s~1_combout\))) # (!\m25s~regout\ & (\m25~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m25~combout\,
	datac => \m25s~regout\,
	datad => \m25s~1_combout\,
	combout => \m25s~0_combout\);

-- Location: LCCOMB_X28_Y35_N22
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\m25s~regout\ & \estado.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m25s~regout\,
	datad => \estado.I~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X28_Y35_N31
m25s : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \m25s~0_combout\,
	sdata => \Selector9~0_combout\,
	sload => \ALT_INV_estado.C~regout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m25s~regout\);

-- Location: LCCOMB_X28_Y35_N4
\soma_final~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final~3_combout\ = (\m25s~regout\) # ((!soma_final(0)) # (!\m25~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m25s~regout\,
	datac => \m25~combout\,
	datad => soma_final(0),
	combout => \soma_final~3_combout\);

-- Location: LCCOMB_X28_Y35_N10
\soma_final~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final~4_combout\ = soma_final(1) $ ((((\m50~combout\ & !\m50s~regout\)) # (!\soma_final~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m50~combout\,
	datab => soma_final(1),
	datac => \soma_final~3_combout\,
	datad => \m50s~regout\,
	combout => \soma_final~4_combout\);

-- Location: LCCOMB_X28_Y35_N20
\soma_final[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final[1]~0_combout\ = (\mudaestado~0_combout\ & (soma_final(1))) # (!\mudaestado~0_combout\ & ((\soma_final~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mudaestado~0_combout\,
	datac => soma_final(1),
	datad => \soma_final~4_combout\,
	combout => \soma_final[1]~0_combout\);

-- Location: LCCOMB_X27_Y35_N20
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado.I~regout\ & soma_final(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.I~regout\,
	datad => soma_final(1),
	combout => \Selector7~0_combout\);

-- Location: LCFF_X28_Y35_N21
\soma_final[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \soma_final[1]~0_combout\,
	sdata => \Selector7~0_combout\,
	sload => \ALT_INV_estado.C~regout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma_final(1));

-- Location: LCCOMB_X28_Y35_N14
\mudaestado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mudaestado~0_combout\ = (\m1~combout\ & !\m1s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1~combout\,
	datac => \m1s~regout\,
	combout => \mudaestado~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\soma_final~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \soma_final~2_combout\ = (\mudaestado~0_combout\) # ((\m25~combout\ & (!\m25s~regout\ & \soma_final~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m25~combout\,
	datab => \m25s~regout\,
	datac => \mudaestado~0_combout\,
	datad => \soma_final~1_combout\,
	combout => \soma_final~2_combout\);

-- Location: LCCOMB_X28_Y35_N26
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\soma_final~1_combout\ & (soma_final(0) & (soma_final(1) & \soma_final~2_combout\))) # (!\soma_final~1_combout\ & (((soma_final(1)) # (\soma_final~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \soma_final~1_combout\,
	datab => soma_final(0),
	datac => soma_final(1),
	datad => \soma_final~2_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X28_Y35_N24
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado.C~regout\ & ((soma_final(2) $ (\Selector5~1_combout\)))) # (!\estado.C~regout\ & (\estado.I~regout\ & (soma_final(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.I~regout\,
	datab => \estado.C~regout\,
	datac => soma_final(2),
	datad => \Selector5~1_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X28_Y35_N25
\soma_final[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma_final(2));

-- Location: LCCOMB_X29_Y35_N8
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.C~regout\ & (soma_final(2))) # (!\estado.C~regout\ & ((\estado.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => soma_final(2),
	datac => \estado.C~regout\,
	datad => \estado.I~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X28_Y35_N8
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\estado.C~regout\ & (soma_final(3) $ (((\Selector5~0_combout\ & \Selector5~1_combout\))))) # (!\estado.C~regout\ & (\Selector5~0_combout\ & (soma_final(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.C~regout\,
	datab => \Selector5~0_combout\,
	datac => soma_final(3),
	datad => \Selector5~1_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCFF_X28_Y35_N9
\soma_final[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma_final(3));

-- Location: LCCOMB_X28_Y35_N6
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado.P~regout\) # ((!\estado.G~regout\ & (soma(2) & \estado.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.G~regout\,
	datab => \estado.P~regout\,
	datac => soma(2),
	datad => \estado.I~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X28_Y35_N7
\soma[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => soma(2));

-- Location: LCCOMB_X28_Y35_N18
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (soma_final(3) & ((soma_final(1) & ((soma_final(2)) # (!soma(2)))) # (!soma_final(1) & (soma_final(2) & !soma(2))))) # (!soma_final(3) & (((!soma_final(2) & soma(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => soma_final(1),
	datab => soma_final(3),
	datac => soma_final(2),
	datad => soma(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y35_N22
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & (!soma_final(3))) # (!\LessThan0~0_combout\ & ((soma(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => soma_final(3),
	datab => soma(1),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y35_N16
\Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Selector19~0_combout\) # ((\estado.S~regout\ & !\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~0_combout\,
	datac => \estado.S~regout\,
	datad => \LessThan0~1_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCFF_X29_Y35_N17
\prox_estado.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector19~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.F~regout\);

-- Location: LCFF_X29_Y35_N23
\estado.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \prox_estado.F~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.F~regout\);

-- Location: LCCOMB_X29_Y35_N28
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\fazer~combout\ & ((\estado.F~regout\) # ((\estado.E~regout\ & \prox_estado.E~regout\)))) # (!\fazer~combout\ & (\estado.E~regout\ & (\prox_estado.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fazer~combout\,
	datab => \estado.E~regout\,
	datac => \prox_estado.E~regout\,
	datad => \estado.F~regout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X29_Y35_N29
\prox_estado.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.E~regout\);

-- Location: LCCOMB_X29_Y35_N12
\estado.E~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.E~feeder_combout\ = \prox_estado.E~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prox_estado.E~regout\,
	combout => \estado.E~feeder_combout\);

-- Location: LCFF_X29_Y35_N13
\estado.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado.E~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.E~regout\);

-- Location: LCCOMB_X29_Y35_N0
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\LP~reg0_regout\ & ((\estado.I~regout\) # ((\estado.E~regout\)))) # (!\LP~reg0_regout\ & (((\Ps~regout\ & \estado.E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.I~regout\,
	datab => \Ps~regout\,
	datac => \LP~reg0_regout\,
	datad => \estado.E~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X29_Y35_N1
\LP~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LP~reg0_regout\);

-- Location: LCCOMB_X29_Y35_N30
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LG~reg0_regout\ & ((\estado.E~regout\) # (\estado.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LG~reg0_regout\,
	datac => \estado.E~regout\,
	datad => \estado.I~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X29_Y35_N18
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\Gs~regout\ & (\estado.E~regout\ & !\Ps~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gs~regout\,
	datab => \estado.E~regout\,
	datac => \Ps~regout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X29_Y35_N19
\LG~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LG~reg0_regout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LP~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LP);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LG~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LG~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LG);
END structure;


