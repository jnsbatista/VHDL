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

-- DATE "07/21/2022 22:49:55"

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
	CLK : IN std_logic;
	RESET : IN std_logic;
	INICIAR : IN std_logic;
	ENTRA_MULTIPLICANDO : IN std_logic;
	ENTRA_MULTIPLICADOR : IN std_logic;
	MULT_IN : IN std_logic_vector(3 DOWNTO 0);
	MULT_OUT : OUT std_logic_vector(7 DOWNTO 0);
	PRONTO : OUT std_logic
	);
END divisor_binario;

-- Design Ports Information
-- MULT_OUT[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[5]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MULT_OUT[7]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PRONTO	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INICIAR	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MULT_IN[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRA_MULTIPLICADOR	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MULT_IN[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MULT_IN[2]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MULT_IN[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENTRA_MULTIPLICANDO	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_INICIAR : std_logic;
SIGNAL ww_ENTRA_MULTIPLICANDO : std_logic;
SIGNAL ww_ENTRA_MULTIPLICADOR : std_logic;
SIGNAL ww_MULT_IN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MULT_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PRONTO : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \estado.PARADO~regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \INICIAR~combout\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \estado.MUL0~regout\ : std_logic;
SIGNAL \estado.MUL1~regout\ : std_logic;
SIGNAL \M[2]~feeder_combout\ : std_logic;
SIGNAL \ENTRA_MULTIPLICADOR~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ENTRA_MULTIPLICANDO~combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \estado.FIM~regout\ : std_logic;
SIGNAL \Q[0]~1_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \M[3]~feeder_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \M[1]~feeder_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \C~regout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \PRONTO~reg0_regout\ : std_logic;
SIGNAL Q : std_logic_vector(3 DOWNTO 0);
SIGNAL P : std_logic_vector(1 DOWNTO 0);
SIGNAL M : std_logic_vector(3 DOWNTO 0);
SIGNAL B : std_logic_vector(3 DOWNTO 0);
SIGNAL A : std_logic_vector(3 DOWNTO 0);
SIGNAL \MULT_IN~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_estado.MUL1~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_INICIAR <= INICIAR;
ww_ENTRA_MULTIPLICANDO <= ENTRA_MULTIPLICANDO;
ww_ENTRA_MULTIPLICADOR <= ENTRA_MULTIPLICADOR;
ww_MULT_IN <= MULT_IN;
MULT_OUT <= ww_MULT_OUT;
PRONTO <= ww_PRONTO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\ALT_INV_estado.MUL1~regout\ <= NOT \estado.MUL1~regout\;

-- Location: LCFF_X41_Y35_N7
\B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MULT_IN~combout\(0),
	sload => VCC,
	ena => \ENTRA_MULTIPLICANDO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(0));

-- Location: LCFF_X41_Y35_N11
\B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MULT_IN~combout\(2),
	sload => VCC,
	ena => \ENTRA_MULTIPLICANDO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(2));

-- Location: LCFF_X41_Y35_N13
\B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MULT_IN~combout\(3),
	sload => VCC,
	ena => \ENTRA_MULTIPLICANDO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X41_Y35_N30
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\INICIAR~combout\) # ((\estado.MUL0~regout\) # (\estado.MUL1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIAR~combout\,
	datac => \estado.MUL0~regout\,
	datad => \estado.MUL1~regout\,
	combout => \Selector0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X41_Y35_N31
\estado.PARADO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.PARADO~regout\);

-- Location: LCCOMB_X42_Y35_N12
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\estado.MUL1~regout\) # (!P(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => P(0),
	datad => \estado.MUL1~regout\,
	combout => \Selector14~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INICIAR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INICIAR,
	combout => \INICIAR~combout\);

-- Location: LCCOMB_X41_Y35_N16
\Q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = (!\estado.FIM~regout\ & (!\estado.MUL0~regout\ & ((\INICIAR~combout\) # (\estado.PARADO~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.FIM~regout\,
	datab => \INICIAR~combout\,
	datac => \estado.MUL0~regout\,
	datad => \estado.PARADO~regout\,
	combout => \Q[0]~0_combout\);

-- Location: LCFF_X42_Y35_N13
\P[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P(0));

-- Location: LCCOMB_X42_Y35_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = P(1) $ (!P(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => P(1),
	datad => P(0),
	combout => \Add1~0_combout\);

-- Location: LCFF_X42_Y35_N9
\P[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	sdata => VCC,
	sload => \ALT_INV_estado.MUL1~regout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P(1));

-- Location: LCCOMB_X42_Y35_N18
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!P(1) & !P(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => P(1),
	datad => P(0),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X41_Y35_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\INICIAR~combout\ & (((\estado.MUL1~regout\ & !\Selector2~0_combout\)) # (!\estado.PARADO~regout\))) # (!\INICIAR~combout\ & (\estado.MUL1~regout\ & ((!\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIAR~combout\,
	datab => \estado.MUL1~regout\,
	datac => \estado.PARADO~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X41_Y35_N21
\estado.MUL0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.MUL0~regout\);

-- Location: LCFF_X41_Y35_N23
\estado.MUL1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \estado.MUL0~regout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.MUL1~regout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MULT_IN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MULT_IN(2),
	combout => \MULT_IN~combout\(2));

-- Location: LCCOMB_X43_Y35_N12
\M[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M[2]~feeder_combout\ = \MULT_IN~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MULT_IN~combout\(2),
	combout => \M[2]~feeder_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRA_MULTIPLICADOR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ENTRA_MULTIPLICADOR,
	combout => \ENTRA_MULTIPLICADOR~combout\);

-- Location: LCFF_X43_Y35_N13
\M[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \M[2]~feeder_combout\,
	ena => \ENTRA_MULTIPLICADOR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => M(2));

-- Location: LCCOMB_X41_Y35_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (B(0) & (A(0) $ (VCC))) # (!B(0) & (A(0) & VCC))
-- \Add0~1\ = CARRY((B(0) & A(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(0),
	datab => A(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MULT_IN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MULT_IN(1),
	combout => \MULT_IN~combout\(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENTRA_MULTIPLICANDO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ENTRA_MULTIPLICANDO,
	combout => \ENTRA_MULTIPLICANDO~combout\);

-- Location: LCFF_X41_Y35_N9
\B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MULT_IN~combout\(1),
	sload => VCC,
	ena => \ENTRA_MULTIPLICANDO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => B(1));

-- Location: LCCOMB_X41_Y35_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (A(1) & ((B(1) & (\Add0~1\ & VCC)) # (!B(1) & (!\Add0~1\)))) # (!A(1) & ((B(1) & (!\Add0~1\)) # (!B(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((A(1) & (!B(1) & !\Add0~1\)) # (!A(1) & ((!\Add0~1\) # (!B(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => B(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X42_Y35_N16
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado.MUL1~regout\ & (A(2))) # (!\estado.MUL1~regout\ & (((\estado.MUL0~regout\ & \Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(2),
	datab => \estado.MUL1~regout\,
	datac => \estado.MUL0~regout\,
	datad => \Add0~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X41_Y35_N24
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\INICIAR~combout\ & ((\estado.FIM~regout\) # ((\estado.MUL1~regout\ & \Selector2~0_combout\)))) # (!\INICIAR~combout\ & (\estado.MUL1~regout\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIAR~combout\,
	datab => \estado.MUL1~regout\,
	datac => \estado.FIM~regout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCFF_X41_Y35_N25
\estado.FIM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.FIM~regout\);

-- Location: LCCOMB_X41_Y35_N18
\Q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[0]~1_combout\ = (!\estado.FIM~regout\ & ((\INICIAR~combout\) # (\estado.PARADO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INICIAR~combout\,
	datac => \estado.FIM~regout\,
	datad => \estado.PARADO~regout\,
	combout => \Q[0]~1_combout\);

-- Location: LCCOMB_X42_Y35_N10
\A[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\Q[0]~1_combout\ & ((Q(0)) # (!\estado.MUL0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(0),
	datac => \estado.MUL0~regout\,
	datad => \Q[0]~1_combout\,
	combout => \A[0]~0_combout\);

-- Location: LCFF_X42_Y35_N17
\A[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(1));

-- Location: LCCOMB_X42_Y35_N14
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.MUL1~regout\ & (((A(1))))) # (!\estado.MUL1~regout\ & (\estado.MUL0~regout\ & (\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.MUL0~regout\,
	datab => \Add0~0_combout\,
	datac => A(1),
	datad => \estado.MUL1~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X42_Y35_N15
\A[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(0));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MULT_IN[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MULT_IN(3),
	combout => \MULT_IN~combout\(3));

-- Location: LCCOMB_X43_Y35_N6
\M[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M[3]~feeder_combout\ = \MULT_IN~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MULT_IN~combout\(3),
	combout => \M[3]~feeder_combout\);

-- Location: LCFF_X43_Y35_N7
\M[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \M[3]~feeder_combout\,
	ena => \ENTRA_MULTIPLICADOR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => M(3));

-- Location: LCCOMB_X42_Y35_N28
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.MUL1~regout\ & (A(0))) # (!\estado.MUL1~regout\ & ((M(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.MUL1~regout\,
	datac => A(0),
	datad => M(3),
	combout => \Selector9~0_combout\);

-- Location: LCFF_X42_Y35_N29
\Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(3));

-- Location: LCCOMB_X42_Y35_N22
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\estado.MUL1~regout\ & ((Q(3)))) # (!\estado.MUL1~regout\ & (M(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.MUL1~regout\,
	datac => M(2),
	datad => Q(3),
	combout => \Selector10~0_combout\);

-- Location: LCFF_X42_Y35_N23
\Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(2));

-- Location: LCCOMB_X43_Y35_N14
\M[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \M[1]~feeder_combout\ = \MULT_IN~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MULT_IN~combout\(1),
	combout => \M[1]~feeder_combout\);

-- Location: LCFF_X43_Y35_N15
\M[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \M[1]~feeder_combout\,
	ena => \ENTRA_MULTIPLICADOR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => M(1));

-- Location: LCCOMB_X42_Y35_N20
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estado.MUL1~regout\ & (Q(2))) # (!\estado.MUL1~regout\ & ((M(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(2),
	datac => M(1),
	datad => \estado.MUL1~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X42_Y35_N21
\Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(1));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MULT_IN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MULT_IN(0),
	combout => \MULT_IN~combout\(0));

-- Location: LCFF_X43_Y35_N5
\M[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \MULT_IN~combout\(0),
	sload => VCC,
	ena => \ENTRA_MULTIPLICADOR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => M(0));

-- Location: LCCOMB_X42_Y35_N26
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado.MUL1~regout\ & (Q(1))) # (!\estado.MUL1~regout\ & ((M(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.MUL1~regout\,
	datac => Q(1),
	datad => M(0),
	combout => \Selector12~0_combout\);

-- Location: LCFF_X42_Y35_N27
\Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Q(0));

-- Location: LCCOMB_X41_Y35_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((B(2) $ (A(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((B(2) & ((A(2)) # (!\Add0~3\))) # (!B(2) & (A(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(2),
	datab => A(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X41_Y35_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (B(3) & ((A(3) & (\Add0~5\ & VCC)) # (!A(3) & (!\Add0~5\)))) # (!B(3) & ((A(3) & (!\Add0~5\)) # (!A(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((B(3) & (!A(3) & !\Add0~5\)) # (!B(3) & ((!\Add0~5\) # (!A(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => A(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X41_Y35_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = !\Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X41_Y35_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\C~regout\ & (((\estado.MUL0~regout\ & !Q(0))) # (!\Q[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.MUL0~regout\,
	datab => \C~regout\,
	datac => Q(0),
	datad => \Q[0]~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X41_Y35_N28
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((Q(0) & (\estado.MUL0~regout\ & \Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \estado.MUL0~regout\,
	datac => \Add0~8_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCFF_X41_Y35_N29
C : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C~regout\);

-- Location: LCCOMB_X42_Y35_N24
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.MUL1~regout\ & (((\C~regout\)))) # (!\estado.MUL1~regout\ & (\estado.MUL0~regout\ & ((\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.MUL0~regout\,
	datab => \estado.MUL1~regout\,
	datac => \C~regout\,
	datad => \Add0~6_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X42_Y35_N25
\A[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(3));

-- Location: LCCOMB_X42_Y35_N30
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado.MUL1~regout\ & (((A(3))))) # (!\estado.MUL1~regout\ & (\estado.MUL0~regout\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.MUL0~regout\,
	datab => \estado.MUL1~regout\,
	datac => A(3),
	datad => \Add0~4_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X42_Y35_N31
\A[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => A(2));

-- Location: LCCOMB_X41_Y35_N0
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado.FIM~regout\) # ((\PRONTO~reg0_regout\ & ((\estado.MUL0~regout\) # (\estado.MUL1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.MUL0~regout\,
	datab => \estado.FIM~regout\,
	datac => \PRONTO~reg0_regout\,
	datad => \estado.MUL1~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X41_Y35_N1
\PRONTO~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PRONTO~reg0_regout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Q(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Q(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Q(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(2));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => Q(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => A(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(4));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => A(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => A(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(6));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MULT_OUT[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => A(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MULT_OUT(7));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PRONTO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PRONTO~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PRONTO);
END structure;


