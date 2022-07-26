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

-- DATE "07/26/2022 18:00:54"

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

ENTITY 	divisor_binario IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	in_dividendo : IN std_logic;
	in_divisor : IN std_logic;
	init : IN std_logic;
	divisor_in : IN std_logic_vector(3 DOWNTO 0);
	dividendo_in : IN std_logic_vector(7 DOWNTO 0);
	result : OUT std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic
	);
END divisor_binario;

-- Design Ports Information
-- result[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[1]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- result[7]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pronto	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- init	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_dividendo	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[2]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[5]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo_in[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor_in[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- in_divisor	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor_in[2]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor_in[0]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor_in[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF divisor_binario IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_in_dividendo : std_logic;
SIGNAL ww_in_divisor : std_logic;
SIGNAL ww_init : std_logic;
SIGNAL ww_divisor_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dividendo_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[6]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \estado.end_op~regout\ : std_logic;
SIGNAL \P[1]~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \estado.d0~regout\ : std_logic;
SIGNAL \estado.d1~regout\ : std_logic;
SIGNAL \init~combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.stop~regout\ : std_logic;
SIGNAL \B~0_combout\ : std_logic;
SIGNAL \A[2]~feeder_combout\ : std_logic;
SIGNAL \in_divisor~combout\ : std_logic;
SIGNAL \A[1]~feeder_combout\ : std_logic;
SIGNAL \Q[3]~feeder_combout\ : std_logic;
SIGNAL \in_dividendo~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \D_2[0]~0_combout\ : std_logic;
SIGNAL \D_3[0]~5\ : std_logic;
SIGNAL \D_3[1]~8\ : std_logic;
SIGNAL \D_3[2]~9_combout\ : std_logic;
SIGNAL \D_3[0]~6_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \A[3]~feeder_combout\ : std_logic;
SIGNAL \D_3[1]~7_combout\ : std_logic;
SIGNAL \Q[5]~feeder_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \A[0]~feeder_combout\ : std_logic;
SIGNAL \D_3[0]~4_combout\ : std_logic;
SIGNAL \Q[4]~feeder_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \B~1_combout\ : std_logic;
SIGNAL \B~regout\ : std_logic;
SIGNAL \Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Q[1]~feeder_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Q[2]~feeder_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Q[7]~feeder_combout\ : std_logic;
SIGNAL \D_3[2]~10\ : std_logic;
SIGNAL \D_3[3]~11_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \pronto~reg0_regout\ : std_logic;
SIGNAL Q : std_logic_vector(7 DOWNTO 0);
SIGNAL P : std_logic_vector(1 DOWNTO 0);
SIGNAL D_3 : std_logic_vector(4 DOWNTO 0);
SIGNAL D_2 : std_logic_vector(2 DOWNTO 0);
SIGNAL D_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL A : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dividendo_in~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_in_dividendo <= in_dividendo;
ww_in_divisor <= in_divisor;
ww_init <= init;
ww_divisor_in <= divisor_in;
ww_dividendo_in <= dividendo_in;
result <= ww_result;
pronto <= ww_pronto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: LCFF_X27_Y35_N17
\Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[6]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(6));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(6),
	combout => \dividendo_in~combout\(6));

-- Location: LCCOMB_X27_Y35_N16
\Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[6]~feeder_combout\ = \dividendo_in~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(6),
	combout => \Q[6]~feeder_combout\);

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

-- Location: LCCOMB_X30_Y35_N2
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\estado.d1~regout\) # (!P(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => P(0),
	datad => \estado.d1~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X29_Y35_N12
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\init~combout\ & ((\estado.end_op~regout\) # ((\estado.d1~regout\ & \Selector2~0_combout\)))) # (!\init~combout\ & (\estado.d1~regout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \estado.d1~regout\,
	datac => \estado.end_op~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

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

-- Location: LCFF_X29_Y35_N13
\estado.end_op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.end_op~regout\);

-- Location: LCCOMB_X29_Y35_N18
\P[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P[1]~0_combout\ = (!\estado.d0~regout\ & (!\estado.end_op~regout\ & ((\init~combout\) # (\estado.stop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \estado.d0~regout\,
	datac => \estado.stop~regout\,
	datad => \estado.end_op~regout\,
	combout => \P[1]~0_combout\);

-- Location: LCFF_X30_Y35_N3
\P[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	ena => \P[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P(0));

-- Location: LCCOMB_X30_Y35_N0
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (P(1) $ (!P(0))) # (!\estado.d1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.d1~regout\,
	datac => P(1),
	datad => P(0),
	combout => \Selector13~0_combout\);

-- Location: LCFF_X30_Y35_N1
\P[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	ena => \P[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P(1));

-- Location: LCCOMB_X30_Y35_N28
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!P(1) & !P(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => P(1),
	datad => P(0),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\init~combout\ & (((\estado.d1~regout\ & !\Selector2~0_combout\)) # (!\estado.stop~regout\))) # (!\init~combout\ & (((\estado.d1~regout\ & !\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \estado.stop~regout\,
	datac => \estado.d1~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X29_Y35_N25
\estado.d0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.d0~regout\);

-- Location: LCFF_X29_Y35_N15
\estado.d1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \estado.d0~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.d1~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\init~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_init,
	combout => \init~combout\);

-- Location: LCCOMB_X29_Y35_N22
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\estado.d1~regout\) # ((\estado.d0~regout\) # (\init~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.d1~regout\,
	datac => \estado.d0~regout\,
	datad => \init~combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X29_Y35_N23
\estado.stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.stop~regout\);

-- Location: LCCOMB_X29_Y35_N16
\B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~0_combout\ = (\B~regout\ & ((\estado.stop~regout\ & ((!\estado.d0~regout\))) # (!\estado.stop~regout\ & (!\init~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init~combout\,
	datab => \estado.stop~regout\,
	datac => \estado.d0~regout\,
	datad => \B~regout\,
	combout => \B~0_combout\);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_divisor_in(2),
	combout => \divisor_in~combout\(2));

-- Location: LCCOMB_X28_Y35_N14
\A[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A[2]~feeder_combout\ = \divisor_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_in~combout\(2),
	combout => \A[2]~feeder_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_divisor~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_divisor,
	combout => \in_divisor~combout\);

-- Location: LCFF_X28_Y35_N15
\A[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A[2]~feeder_combout\,
	ena => \in_divisor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_divisor_in(1),
	combout => \divisor_in~combout\(1));

-- Location: LCCOMB_X28_Y35_N10
\A[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A[1]~feeder_combout\ = \divisor_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_in~combout\(1),
	combout => \A[1]~feeder_combout\);

-- Location: LCFF_X28_Y35_N11
\A[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A[1]~feeder_combout\,
	ena => \in_divisor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(3),
	combout => \dividendo_in~combout\(3));

-- Location: LCCOMB_X30_Y35_N22
\Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[3]~feeder_combout\ = \dividendo_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(3),
	combout => \Q[3]~feeder_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\in_dividendo~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_in_dividendo,
	combout => \in_dividendo~combout\);

-- Location: LCFF_X30_Y35_N23
\Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[3]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(3));

-- Location: LCCOMB_X29_Y35_N30
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.d0~regout\ & (D_2(2))) # (!\estado.d0~regout\ & ((Q(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_2(2),
	datac => \estado.d0~regout\,
	datad => Q(3),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X29_Y35_N14
\D_2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_2[0]~0_combout\ = (!\estado.d1~regout\ & (!\estado.end_op~regout\ & ((\estado.stop~regout\) # (\init~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.stop~regout\,
	datab => \init~combout\,
	datac => \estado.d1~regout\,
	datad => \estado.end_op~regout\,
	combout => \D_2[0]~0_combout\);

-- Location: LCFF_X29_Y35_N31
\D_1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_1(0));

-- Location: LCCOMB_X28_Y35_N18
\D_3[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_3[0]~4_combout\ = (A(0) & (D_1(0) $ (VCC))) # (!A(0) & ((D_1(0)) # (GND)))
-- \D_3[0]~5\ = CARRY((D_1(0)) # (!A(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(0),
	datab => D_1(0),
	datad => VCC,
	combout => \D_3[0]~4_combout\,
	cout => \D_3[0]~5\);

-- Location: LCCOMB_X28_Y35_N20
\D_3[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_3[1]~7_combout\ = (D_1(1) & ((A(1) & (!\D_3[0]~5\)) # (!A(1) & (\D_3[0]~5\ & VCC)))) # (!D_1(1) & ((A(1) & ((\D_3[0]~5\) # (GND))) # (!A(1) & (!\D_3[0]~5\))))
-- \D_3[1]~8\ = CARRY((D_1(1) & (A(1) & !\D_3[0]~5\)) # (!D_1(1) & ((A(1)) # (!\D_3[0]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_1(1),
	datab => A(1),
	datad => VCC,
	cin => \D_3[0]~5\,
	combout => \D_3[1]~7_combout\,
	cout => \D_3[1]~8\);

-- Location: LCCOMB_X28_Y35_N22
\D_3[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_3[2]~9_combout\ = ((D_1(2) $ (A(2) $ (\D_3[1]~8\)))) # (GND)
-- \D_3[2]~10\ = CARRY((D_1(2) & ((!\D_3[1]~8\) # (!A(2)))) # (!D_1(2) & (!A(2) & !\D_3[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_1(2),
	datab => A(2),
	datad => VCC,
	cin => \D_3[1]~8\,
	combout => \D_3[2]~9_combout\,
	cout => \D_3[2]~10\);

-- Location: LCCOMB_X28_Y35_N26
\D_3[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_3[0]~6_combout\ = (\estado.d0~regout\ & \LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.d0~regout\,
	datad => \LessThan0~2_combout\,
	combout => \D_3[0]~6_combout\);

-- Location: LCFF_X28_Y35_N23
\D_3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \D_3[2]~9_combout\,
	ena => \D_3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_3(2));

-- Location: LCCOMB_X27_Y35_N24
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado.d0~regout\ & ((D_3(2)))) # (!\estado.d0~regout\ & (Q(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(6),
	datac => \estado.d0~regout\,
	datad => D_3(2),
	combout => \Selector6~0_combout\);

-- Location: LCFF_X27_Y35_N25
\D_1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_1(3));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_divisor_in(3),
	combout => \divisor_in~combout\(3));

-- Location: LCCOMB_X28_Y35_N28
\A[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A[3]~feeder_combout\ = \divisor_in~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_in~combout\(3),
	combout => \A[3]~feeder_combout\);

-- Location: LCFF_X28_Y35_N29
\A[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A[3]~feeder_combout\,
	ena => \in_divisor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(3));

-- Location: LCFF_X28_Y35_N21
\D_3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \D_3[1]~7_combout\,
	ena => \D_3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_3(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(5),
	combout => \dividendo_in~combout\(5));

-- Location: LCCOMB_X27_Y35_N26
\Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[5]~feeder_combout\ = \dividendo_in~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(5),
	combout => \Q[5]~feeder_combout\);

-- Location: LCFF_X27_Y35_N27
\Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[5]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(5));

-- Location: LCCOMB_X27_Y35_N30
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado.d0~regout\ & (D_3(1))) # (!\estado.d0~regout\ & ((Q(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_3(1),
	datac => \estado.d0~regout\,
	datad => Q(5),
	combout => \Selector7~0_combout\);

-- Location: LCFF_X27_Y35_N31
\D_1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_1(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_divisor_in(0),
	combout => \divisor_in~combout\(0));

-- Location: LCCOMB_X28_Y35_N16
\A[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \A[0]~feeder_combout\ = \divisor_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divisor_in~combout\(0),
	combout => \A[0]~feeder_combout\);

-- Location: LCFF_X28_Y35_N17
\A[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \A[0]~feeder_combout\,
	ena => \in_divisor~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(0));

-- Location: LCFF_X28_Y35_N19
\D_3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \D_3[0]~4_combout\,
	ena => \D_3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_3(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(4),
	combout => \dividendo_in~combout\(4));

-- Location: LCCOMB_X27_Y35_N28
\Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[4]~feeder_combout\ = \dividendo_in~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(4),
	combout => \Q[4]~feeder_combout\);

-- Location: LCFF_X27_Y35_N29
\Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[4]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(4));

-- Location: LCCOMB_X27_Y35_N8
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.d0~regout\ & (D_3(0))) # (!\estado.d0~regout\ & ((Q(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.d0~regout\,
	datab => D_3(0),
	datad => Q(4),
	combout => \Selector8~0_combout\);

-- Location: LCFF_X27_Y35_N9
\D_1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_1(1));

-- Location: LCCOMB_X28_Y35_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (A(1) & (D_1(0) & (!A(0) & D_1(1)))) # (!A(1) & ((D_1(1)) # ((D_1(0) & !A(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => D_1(0),
	datac => A(0),
	datad => D_1(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y35_N30
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (A(2) & (D_1(2) & \LessThan0~0_combout\)) # (!A(2) & ((D_1(2)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => A(2),
	datac => D_1(2),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y35_N12
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (D_1(4)) # ((D_1(3) & ((\LessThan0~1_combout\) # (!A(3)))) # (!D_1(3) & (!A(3) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_1(4),
	datab => D_1(3),
	datac => A(3),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y35_N26
\B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \B~1_combout\ = (\B~0_combout\) # ((\estado.d0~regout\ & (\estado.stop~regout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.d0~regout\,
	datab => \estado.stop~regout\,
	datac => \B~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \B~1_combout\);

-- Location: LCFF_X29_Y35_N27
B : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \B~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(0),
	combout => \dividendo_in~combout\(0));

-- Location: LCCOMB_X30_Y35_N24
\Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[0]~feeder_combout\ = \dividendo_in~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(0),
	combout => \Q[0]~feeder_combout\);

-- Location: LCFF_X30_Y35_N25
\Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[0]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(0));

-- Location: LCCOMB_X29_Y35_N28
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.d0~regout\ & (\B~regout\)) # (!\estado.d0~regout\ & ((Q(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~regout\,
	datac => \estado.d0~regout\,
	datad => Q(0),
	combout => \Selector12~0_combout\);

-- Location: LCFF_X29_Y35_N29
\D_2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_2(0));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(1),
	combout => \dividendo_in~combout\(1));

-- Location: LCCOMB_X30_Y35_N30
\Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[1]~feeder_combout\ = \dividendo_in~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(1),
	combout => \Q[1]~feeder_combout\);

-- Location: LCFF_X30_Y35_N31
\Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[1]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(1));

-- Location: LCCOMB_X29_Y35_N10
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.d0~regout\ & (D_2(0))) # (!\estado.d0~regout\ & ((Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_2(0),
	datac => \estado.d0~regout\,
	datad => Q(1),
	combout => \Selector11~0_combout\);

-- Location: LCFF_X29_Y35_N11
\D_2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_2(1));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(2),
	combout => \dividendo_in~combout\(2));

-- Location: LCCOMB_X30_Y35_N4
\Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[2]~feeder_combout\ = \dividendo_in~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(2),
	combout => \Q[2]~feeder_combout\);

-- Location: LCFF_X30_Y35_N5
\Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[2]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(2));

-- Location: LCCOMB_X29_Y35_N20
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.d0~regout\ & (D_2(1))) # (!\estado.d0~regout\ & ((Q(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_2(1),
	datac => \estado.d0~regout\,
	datad => Q(2),
	combout => \Selector10~0_combout\);

-- Location: LCFF_X29_Y35_N21
\D_2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_2(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo_in[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_dividendo_in(7),
	combout => \dividendo_in~combout\(7));

-- Location: LCCOMB_X27_Y35_N22
\Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[7]~feeder_combout\ = \dividendo_in~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dividendo_in~combout\(7),
	combout => \Q[7]~feeder_combout\);

-- Location: LCFF_X27_Y35_N23
\Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[7]~feeder_combout\,
	ena => \in_dividendo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(7));

-- Location: LCCOMB_X28_Y35_N24
\D_3[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_3[3]~11_combout\ = A(3) $ (\D_3[2]~10\ $ (!D_1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datad => D_1(3),
	cin => \D_3[2]~10\,
	combout => \D_3[3]~11_combout\);

-- Location: LCFF_X28_Y35_N25
\D_3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \D_3[3]~11_combout\,
	ena => \D_3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_3(3));

-- Location: LCCOMB_X27_Y35_N14
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.d0~regout\ & ((D_3(3)))) # (!\estado.d0~regout\ & (Q(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.d0~regout\,
	datab => Q(7),
	datac => D_3(3),
	combout => \Selector5~0_combout\);

-- Location: LCFF_X27_Y35_N15
\D_1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	ena => \D_2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_1(4));

-- Location: LCCOMB_X29_Y35_N8
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado.end_op~regout\) # ((\pronto~reg0_regout\ & ((\estado.d0~regout\) # (\estado.d1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.d0~regout\,
	datab => \estado.d1~regout\,
	datac => \pronto~reg0_regout\,
	datad => \estado.end_op~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X29_Y35_N9
\pronto~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pronto~reg0_regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_1(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\result[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => D_1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pronto~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pronto~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);
END structure;


