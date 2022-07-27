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

-- DATE "07/26/2022 23:11:57"

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

ENTITY 	Divider IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	m : IN std_logic_vector(15 DOWNTO 0);
	n : IN std_logic_vector(7 DOWNTO 0);
	quotient : OUT std_logic_vector(7 DOWNTO 0);
	remainder : OUT std_logic_vector(7 DOWNTO 0);
	ready : OUT std_logic;
	ovfl : OUT std_logic
	);
END Divider;

-- Design Ports Information
-- quotient[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quotient[7]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[3]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- remainder[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ready	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ovfl	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m[15]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[14]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[6]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[13]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[5]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[12]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[4]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[9]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[8]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- n[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[1]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- m[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Divider IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_m : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_n : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_quotient : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ready : std_logic;
SIGNAL ww_ovfl : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sub[7]~15\ : std_logic;
SIGNAL \sub[8]~16_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \state_reg.shift~regout\ : std_logic;
SIGNAL \state_reg.op~feeder_combout\ : std_logic;
SIGNAL \state_reg.op~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \state_reg.idle~regout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \z_reg[15]~7_combout\ : std_logic;
SIGNAL \z_reg[13]~5_combout\ : std_logic;
SIGNAL \z_reg[11]~3_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \z_reg[8]~0_combout\ : std_logic;
SIGNAL \sub[0]~0_combout\ : std_logic;
SIGNAL \z_reg[8]~8_combout\ : std_logic;
SIGNAL \sub[0]~1\ : std_logic;
SIGNAL \sub[1]~3\ : std_logic;
SIGNAL \sub[2]~5\ : std_logic;
SIGNAL \sub[3]~6_combout\ : std_logic;
SIGNAL \sub[3]~7\ : std_logic;
SIGNAL \sub[4]~9\ : std_logic;
SIGNAL \sub[5]~10_combout\ : std_logic;
SIGNAL \z_reg[14]~6_combout\ : std_logic;
SIGNAL \sub[5]~11\ : std_logic;
SIGNAL \sub[6]~12_combout\ : std_logic;
SIGNAL \sub[6]~13\ : std_logic;
SIGNAL \sub[7]~14_combout\ : std_logic;
SIGNAL \z_reg[12]~4_combout\ : std_logic;
SIGNAL \sub[4]~8_combout\ : std_logic;
SIGNAL \z_reg[9]~1_combout\ : std_logic;
SIGNAL \sub[1]~2_combout\ : std_logic;
SIGNAL \z_reg[10]~2_combout\ : std_logic;
SIGNAL \sub[2]~4_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \ovfl~0_combout\ : std_logic;
SIGNAL z_reg : std_logic_vector(16 DOWNTO 0);
SIGNAL i_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL d_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \n~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \m~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_state_reg.op~regout\ : std_logic;
SIGNAL \ALT_INV_ovfl~0_combout\ : std_logic;
SIGNAL \ALT_INV_state_reg.idle~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
ww_m <= m;
ww_n <= n;
quotient <= ww_quotient;
remainder <= ww_remainder;
ready <= ww_ready;
ovfl <= ww_ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_state_reg.op~regout\ <= NOT \state_reg.op~regout\;
\ALT_INV_ovfl~0_combout\ <= NOT \ovfl~0_combout\;
\ALT_INV_state_reg.idle~regout\ <= NOT \state_reg.idle~regout\;

-- Location: LCCOMB_X44_Y32_N16
\sub[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[7]~14_combout\ = (z_reg(15) & ((\n~combout\(7) & (!\sub[6]~13\)) # (!\n~combout\(7) & (\sub[6]~13\ & VCC)))) # (!z_reg(15) & ((\n~combout\(7) & ((\sub[6]~13\) # (GND))) # (!\n~combout\(7) & (!\sub[6]~13\))))
-- \sub[7]~15\ = CARRY((z_reg(15) & (\n~combout\(7) & !\sub[6]~13\)) # (!z_reg(15) & ((\n~combout\(7)) # (!\sub[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(15),
	datab => \n~combout\(7),
	datad => VCC,
	cin => \sub[6]~13\,
	combout => \sub[7]~14_combout\,
	cout => \sub[7]~15\);

-- Location: LCCOMB_X44_Y32_N18
\sub[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[8]~16_combout\ = \sub[7]~15\ $ (z_reg(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => z_reg(16),
	cin => \sub[7]~15\,
	combout => \sub[8]~16_combout\);

-- Location: LCFF_X43_Y32_N29
\z_reg[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(16));

-- Location: LCFF_X42_Y32_N25
\d_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(4));

-- Location: LCFF_X42_Y32_N21
\d_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(2));

-- Location: LCFF_X42_Y32_N17
\d_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(0));

-- Location: LCCOMB_X43_Y32_N12
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state_reg.op~regout\ & (\sub[8]~16_combout\ & ((z_reg(16)) # (!\LessThan2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(16),
	datab => \state_reg.op~regout\,
	datac => \LessThan2~14_combout\,
	datad => \sub[8]~16_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X43_Y32_N28
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\state_reg.shift~regout\ & z_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => z_reg(15),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(0),
	combout => \m~combout\(0));

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

-- Location: LCCOMB_X45_Y32_N28
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (i_reg(0) & ((\state_reg.shift~regout\))) # (!i_reg(0) & (\state_reg.op~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.op~regout\,
	datac => i_reg(0),
	datad => \state_reg.shift~regout\,
	combout => \Selector5~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X45_Y32_N29
\i_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_reg(0));

-- Location: LCCOMB_X44_Y32_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (i_reg(1) & ((\state_reg.shift~regout\) # ((\state_reg.op~regout\ & !i_reg(0))))) # (!i_reg(1) & (\state_reg.op~regout\ & (i_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.op~regout\,
	datab => i_reg(0),
	datac => i_reg(1),
	datad => \state_reg.shift~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X44_Y32_N27
\i_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_reg(1));

-- Location: LCCOMB_X44_Y32_N28
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state_reg.op~regout\ & (i_reg(2) $ (((i_reg(1) & i_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.op~regout\,
	datab => i_reg(1),
	datac => i_reg(0),
	datad => i_reg(2),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X44_Y32_N0
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\state_reg.shift~regout\ & i_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => i_reg(2),
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCFF_X44_Y32_N1
\i_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_reg(2));

-- Location: LCCOMB_X45_Y32_N8
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (i_reg(3) & ((i_reg(1)) # ((i_reg(2)) # (i_reg(0))))) # (!i_reg(3) & (((!i_reg(0)) # (!i_reg(2))) # (!i_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_reg(3),
	datab => i_reg(1),
	datac => i_reg(2),
	datad => i_reg(0),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X45_Y32_N22
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\state_reg.op~regout\ & ((\Selector1~0_combout\) # (!i_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.op~regout\,
	datac => \Selector1~0_combout\,
	datad => i_reg(0),
	combout => \Selector1~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(15),
	combout => \m~combout\(15));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(6),
	combout => \n~combout\(6));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(5),
	combout => \n~combout\(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(4),
	combout => \n~combout\(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(11),
	combout => \m~combout\(11));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(10),
	combout => \m~combout\(10));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(9),
	combout => \m~combout\(9));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(0),
	combout => \n~combout\(0));

-- Location: LCCOMB_X42_Y32_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\m~combout\(8) & \n~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(8),
	datab => \n~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X42_Y32_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\n~combout\(1) & (\m~combout\(9) & !\LessThan1~1_cout\)) # (!\n~combout\(1) & ((\m~combout\(9)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(1),
	datab => \m~combout\(9),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X42_Y32_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\n~combout\(2) & ((!\LessThan1~3_cout\) # (!\m~combout\(10)))) # (!\n~combout\(2) & (!\m~combout\(10) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(2),
	datab => \m~combout\(10),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X42_Y32_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\n~combout\(3) & (\m~combout\(11) & !\LessThan1~5_cout\)) # (!\n~combout\(3) & ((\m~combout\(11)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(3),
	datab => \m~combout\(11),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X42_Y32_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\m~combout\(12) & (\n~combout\(4) & !\LessThan1~7_cout\)) # (!\m~combout\(12) & ((\n~combout\(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(12),
	datab => \n~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X42_Y32_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\m~combout\(13) & ((!\LessThan1~9_cout\) # (!\n~combout\(5)))) # (!\m~combout\(13) & (!\n~combout\(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(13),
	datab => \n~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X42_Y32_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\m~combout\(14) & (\n~combout\(6) & !\LessThan1~11_cout\)) # (!\m~combout\(14) & ((\n~combout\(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(14),
	datab => \n~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X42_Y32_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\n~combout\(7) & ((\LessThan1~13_cout\) # (!\m~combout\(15)))) # (!\n~combout\(7) & (!\m~combout\(15) & \LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(7),
	datab => \m~combout\(15),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LCCOMB_X45_Y32_N10
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((!\state_reg.idle~regout\ & (\LessThan1~14_combout\ & \start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~regout\,
	datab => \Selector1~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \start~combout\,
	combout => \Selector1~2_combout\);

-- Location: LCFF_X45_Y32_N11
\state_reg.shift\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_reg.shift~regout\);

-- Location: LCCOMB_X44_Y32_N24
\state_reg.op~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state_reg.op~feeder_combout\ = \state_reg.shift~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state_reg.shift~regout\,
	combout => \state_reg.op~feeder_combout\);

-- Location: LCFF_X44_Y32_N25
\state_reg.op\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state_reg.op~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_reg.op~regout\);

-- Location: LCCOMB_X45_Y32_N26
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (i_reg(1) & (i_reg(2) & i_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reg(1),
	datac => i_reg(2),
	datad => i_reg(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X45_Y32_N20
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (i_reg(3) & ((\state_reg.shift~regout\) # ((\state_reg.op~regout\ & !\Selector0~0_combout\)))) # (!i_reg(3) & (((\state_reg.op~regout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => \state_reg.op~regout\,
	datac => i_reg(3),
	datad => \Selector0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X45_Y32_N21
\i_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_reg(3));

-- Location: LCCOMB_X45_Y32_N2
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state_reg.op~regout\ & (!i_reg(3) & \Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state_reg.op~regout\,
	datac => i_reg(3),
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X45_Y32_N18
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~1_combout\ & ((\state_reg.idle~regout\) # ((\LessThan1~14_combout\ & \start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \start~combout\,
	datac => \state_reg.idle~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCFF_X45_Y32_N19
\state_reg.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_reg.idle~regout\);

-- Location: LCCOMB_X43_Y32_N22
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\m~combout\(0) & (((\state_reg.op~regout\ & z_reg(0))) # (!\state_reg.idle~regout\))) # (!\m~combout\(0) & (\state_reg.op~regout\ & (z_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(0),
	datab => \state_reg.op~regout\,
	datac => z_reg(0),
	datad => \state_reg.idle~regout\,
	combout => \Selector22~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(7),
	combout => \n~combout\(7));

-- Location: LCFF_X42_Y32_N31
\d_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(7));

-- Location: LCCOMB_X43_Y32_N30
\z_reg[15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[15]~7_combout\ = (\state_reg.shift~regout\ & (z_reg(14))) # (!\state_reg.shift~regout\ & ((\m~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(14),
	datab => \m~combout\(15),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[15]~7_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(14),
	combout => \m~combout\(14));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(13),
	combout => \m~combout\(13));

-- Location: LCCOMB_X43_Y32_N26
\z_reg[13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[13]~5_combout\ = (\state_reg.shift~regout\ & (z_reg(12))) # (!\state_reg.shift~regout\ & ((\m~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(12),
	datab => \m~combout\(13),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[13]~5_combout\);

-- Location: LCCOMB_X43_Y32_N6
\z_reg[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[11]~3_combout\ = (\state_reg.shift~regout\ & (z_reg(10))) # (!\state_reg.shift~regout\ & ((\m~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(10),
	datab => \m~combout\(11),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[11]~3_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(2),
	combout => \n~combout\(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(1),
	combout => \n~combout\(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(8),
	combout => \m~combout\(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(5),
	combout => \m~combout\(5));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(1),
	combout => \m~combout\(1));

-- Location: LCCOMB_X45_Y32_N16
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state_reg.shift~regout\ & (z_reg(0))) # (!\state_reg.shift~regout\ & ((\m~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => z_reg(0),
	datad => \m~combout\(1),
	combout => \Selector21~0_combout\);

-- Location: LCFF_X45_Y32_N17
\z_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(2),
	combout => \m~combout\(2));

-- Location: LCCOMB_X45_Y32_N30
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state_reg.shift~regout\ & (z_reg(1))) # (!\state_reg.shift~regout\ & ((\m~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => z_reg(1),
	datad => \m~combout\(2),
	combout => \Selector20~0_combout\);

-- Location: LCFF_X45_Y32_N31
\z_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(3),
	combout => \m~combout\(3));

-- Location: LCCOMB_X45_Y32_N0
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state_reg.shift~regout\ & (z_reg(2))) # (!\state_reg.shift~regout\ & ((\m~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => z_reg(2),
	datad => \m~combout\(3),
	combout => \Selector19~0_combout\);

-- Location: LCFF_X45_Y32_N1
\z_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(4),
	combout => \m~combout\(4));

-- Location: LCCOMB_X45_Y32_N6
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state_reg.shift~regout\ & (z_reg(3))) # (!\state_reg.shift~regout\ & ((\m~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => z_reg(3),
	datad => \m~combout\(4),
	combout => \Selector18~0_combout\);

-- Location: LCFF_X45_Y32_N7
\z_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(4));

-- Location: LCCOMB_X45_Y32_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state_reg.shift~regout\ & ((z_reg(4)))) # (!\state_reg.shift~regout\ & (\m~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => \m~combout\(5),
	datad => z_reg(4),
	combout => \Selector17~0_combout\);

-- Location: LCFF_X45_Y32_N5
\z_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(5));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(6),
	combout => \m~combout\(6));

-- Location: LCCOMB_X45_Y32_N14
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state_reg.shift~regout\ & (z_reg(5))) # (!\state_reg.shift~regout\ & ((\m~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => z_reg(5),
	datad => \m~combout\(6),
	combout => \Selector16~0_combout\);

-- Location: LCFF_X45_Y32_N15
\z_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(7),
	combout => \m~combout\(7));

-- Location: LCCOMB_X45_Y32_N12
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state_reg.shift~regout\ & (z_reg(6))) # (!\state_reg.shift~regout\ & ((\m~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datac => z_reg(6),
	datad => \m~combout\(7),
	combout => \Selector15~0_combout\);

-- Location: LCFF_X45_Y32_N13
\z_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ALT_INV_state_reg.op~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(7));

-- Location: LCCOMB_X43_Y32_N24
\z_reg[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[8]~0_combout\ = (\state_reg.shift~regout\ & ((z_reg(7)))) # (!\state_reg.shift~regout\ & (\m~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => \m~combout\(8),
	datad => z_reg(7),
	combout => \z_reg[8]~0_combout\);

-- Location: LCCOMB_X44_Y32_N2
\sub[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[0]~0_combout\ = (\n~combout\(0) & (z_reg(8) $ (VCC))) # (!\n~combout\(0) & ((z_reg(8)) # (GND)))
-- \sub[0]~1\ = CARRY((z_reg(8)) # (!\n~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(0),
	datab => z_reg(8),
	datad => VCC,
	combout => \sub[0]~0_combout\,
	cout => \sub[0]~1\);

-- Location: LCCOMB_X43_Y32_N18
\z_reg[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[8]~8_combout\ = (z_reg(16)) # ((!\state_reg.op~regout\) # (!\LessThan2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(16),
	datac => \LessThan2~14_combout\,
	datad => \state_reg.op~regout\,
	combout => \z_reg[8]~8_combout\);

-- Location: LCFF_X43_Y32_N25
\z_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[8]~0_combout\,
	sdata => \sub[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(8));

-- Location: LCCOMB_X44_Y32_N4
\sub[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[1]~2_combout\ = (z_reg(9) & ((\n~combout\(1) & (!\sub[0]~1\)) # (!\n~combout\(1) & (\sub[0]~1\ & VCC)))) # (!z_reg(9) & ((\n~combout\(1) & ((\sub[0]~1\) # (GND))) # (!\n~combout\(1) & (!\sub[0]~1\))))
-- \sub[1]~3\ = CARRY((z_reg(9) & (\n~combout\(1) & !\sub[0]~1\)) # (!z_reg(9) & ((\n~combout\(1)) # (!\sub[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(9),
	datab => \n~combout\(1),
	datad => VCC,
	cin => \sub[0]~1\,
	combout => \sub[1]~2_combout\,
	cout => \sub[1]~3\);

-- Location: LCCOMB_X44_Y32_N6
\sub[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[2]~4_combout\ = ((z_reg(10) $ (\n~combout\(2) $ (\sub[1]~3\)))) # (GND)
-- \sub[2]~5\ = CARRY((z_reg(10) & ((!\sub[1]~3\) # (!\n~combout\(2)))) # (!z_reg(10) & (!\n~combout\(2) & !\sub[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(10),
	datab => \n~combout\(2),
	datad => VCC,
	cin => \sub[1]~3\,
	combout => \sub[2]~4_combout\,
	cout => \sub[2]~5\);

-- Location: LCCOMB_X44_Y32_N8
\sub[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[3]~6_combout\ = (\n~combout\(3) & ((z_reg(11) & (!\sub[2]~5\)) # (!z_reg(11) & ((\sub[2]~5\) # (GND))))) # (!\n~combout\(3) & ((z_reg(11) & (\sub[2]~5\ & VCC)) # (!z_reg(11) & (!\sub[2]~5\))))
-- \sub[3]~7\ = CARRY((\n~combout\(3) & ((!\sub[2]~5\) # (!z_reg(11)))) # (!\n~combout\(3) & (!z_reg(11) & !\sub[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(3),
	datab => z_reg(11),
	datad => VCC,
	cin => \sub[2]~5\,
	combout => \sub[3]~6_combout\,
	cout => \sub[3]~7\);

-- Location: LCFF_X43_Y32_N7
\z_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[11]~3_combout\,
	sdata => \sub[3]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(11));

-- Location: LCCOMB_X44_Y32_N10
\sub[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[4]~8_combout\ = ((z_reg(12) $ (\n~combout\(4) $ (\sub[3]~7\)))) # (GND)
-- \sub[4]~9\ = CARRY((z_reg(12) & ((!\sub[3]~7\) # (!\n~combout\(4)))) # (!z_reg(12) & (!\n~combout\(4) & !\sub[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(12),
	datab => \n~combout\(4),
	datad => VCC,
	cin => \sub[3]~7\,
	combout => \sub[4]~8_combout\,
	cout => \sub[4]~9\);

-- Location: LCCOMB_X44_Y32_N12
\sub[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[5]~10_combout\ = (\n~combout\(5) & ((z_reg(13) & (!\sub[4]~9\)) # (!z_reg(13) & ((\sub[4]~9\) # (GND))))) # (!\n~combout\(5) & ((z_reg(13) & (\sub[4]~9\ & VCC)) # (!z_reg(13) & (!\sub[4]~9\))))
-- \sub[5]~11\ = CARRY((\n~combout\(5) & ((!\sub[4]~9\) # (!z_reg(13)))) # (!\n~combout\(5) & (!z_reg(13) & !\sub[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(5),
	datab => z_reg(13),
	datad => VCC,
	cin => \sub[4]~9\,
	combout => \sub[5]~10_combout\,
	cout => \sub[5]~11\);

-- Location: LCFF_X43_Y32_N27
\z_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[13]~5_combout\,
	sdata => \sub[5]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(13));

-- Location: LCCOMB_X43_Y32_N16
\z_reg[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[14]~6_combout\ = (\state_reg.shift~regout\ & ((z_reg(13)))) # (!\state_reg.shift~regout\ & (\m~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.shift~regout\,
	datab => \m~combout\(14),
	datad => z_reg(13),
	combout => \z_reg[14]~6_combout\);

-- Location: LCCOMB_X44_Y32_N14
\sub[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub[6]~12_combout\ = ((\n~combout\(6) $ (z_reg(14) $ (\sub[5]~11\)))) # (GND)
-- \sub[6]~13\ = CARRY((\n~combout\(6) & (z_reg(14) & !\sub[5]~11\)) # (!\n~combout\(6) & ((z_reg(14)) # (!\sub[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \n~combout\(6),
	datab => z_reg(14),
	datad => VCC,
	cin => \sub[5]~11\,
	combout => \sub[6]~12_combout\,
	cout => \sub[6]~13\);

-- Location: LCFF_X43_Y32_N17
\z_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[14]~6_combout\,
	sdata => \sub[6]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(14));

-- Location: LCFF_X43_Y32_N31
\z_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[15]~7_combout\,
	sdata => \sub[7]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(15));

-- Location: LCFF_X42_Y32_N29
\d_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(6));

-- Location: LCFF_X42_Y32_N27
\d_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\m[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_m(12),
	combout => \m~combout\(12));

-- Location: LCCOMB_X43_Y32_N8
\z_reg[12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[12]~4_combout\ = (\state_reg.shift~regout\ & (z_reg(11))) # (!\state_reg.shift~regout\ & ((\m~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(11),
	datab => \m~combout\(12),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[12]~4_combout\);

-- Location: LCFF_X43_Y32_N9
\z_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[12]~4_combout\,
	sdata => \sub[4]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(12));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\n[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_n(3),
	combout => \n~combout\(3));

-- Location: LCFF_X42_Y32_N23
\d_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(3));

-- Location: LCCOMB_X43_Y32_N2
\z_reg[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[9]~1_combout\ = (\state_reg.shift~regout\ & (z_reg(8))) # (!\state_reg.shift~regout\ & ((\m~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(8),
	datab => \m~combout\(9),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[9]~1_combout\);

-- Location: LCFF_X43_Y32_N3
\z_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[9]~1_combout\,
	sdata => \sub[1]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(9));

-- Location: LCCOMB_X43_Y32_N20
\z_reg[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_reg[10]~2_combout\ = (\state_reg.shift~regout\ & ((z_reg(9)))) # (!\state_reg.shift~regout\ & (\m~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m~combout\(10),
	datab => z_reg(9),
	datad => \state_reg.shift~regout\,
	combout => \z_reg[10]~2_combout\);

-- Location: LCFF_X43_Y32_N21
\z_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_reg[10]~2_combout\,
	sdata => \sub[2]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \state_reg.op~regout\,
	ena => \z_reg[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(10));

-- Location: LCFF_X42_Y32_N19
\d_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \n~combout\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_reg(1));

-- Location: LCCOMB_X42_Y32_N16
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((d_reg(0) & !z_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_reg(0),
	datab => z_reg(8),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X42_Y32_N18
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((z_reg(9) & ((!\LessThan2~1_cout\) # (!d_reg(1)))) # (!z_reg(9) & (!d_reg(1) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(9),
	datab => d_reg(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X42_Y32_N20
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((d_reg(2) & ((!\LessThan2~3_cout\) # (!z_reg(10)))) # (!d_reg(2) & (!z_reg(10) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_reg(2),
	datab => z_reg(10),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X42_Y32_N22
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((z_reg(11) & ((!\LessThan2~5_cout\) # (!d_reg(3)))) # (!z_reg(11) & (!d_reg(3) & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(11),
	datab => d_reg(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X42_Y32_N24
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((d_reg(4) & ((!\LessThan2~7_cout\) # (!z_reg(12)))) # (!d_reg(4) & (!z_reg(12) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_reg(4),
	datab => z_reg(12),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X42_Y32_N26
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((z_reg(13) & ((!\LessThan2~9_cout\) # (!d_reg(5)))) # (!z_reg(13) & (!d_reg(5) & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(13),
	datab => d_reg(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X42_Y32_N28
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((z_reg(14) & (d_reg(6) & !\LessThan2~11_cout\)) # (!z_reg(14) & ((d_reg(6)) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(14),
	datab => d_reg(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X42_Y32_N30
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (d_reg(7) & ((\LessThan2~13_cout\) # (!z_reg(15)))) # (!d_reg(7) & (\LessThan2~13_cout\ & !z_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d_reg(7),
	datad => z_reg(15),
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X43_Y32_N4
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\) # ((\state_reg.op~regout\ & ((z_reg(16)) # (!\LessThan2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_reg(16),
	datab => \Selector22~0_combout\,
	datac => \LessThan2~14_combout\,
	datad => \state_reg.op~regout\,
	combout => \Selector22~1_combout\);

-- Location: LCFF_X43_Y32_N5
\z_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector22~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_reg(0));

-- Location: LCCOMB_X45_Y32_N24
\ovfl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ovfl~0_combout\ = (\state_reg.idle~regout\) # (\LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state_reg.idle~regout\,
	datac => \LessThan1~14_combout\,
	combout => \ovfl~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(6));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quotient[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quotient(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\remainder[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => z_reg(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_remainder(7));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ready~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALT_INV_state_reg.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ready);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ovfl~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \ALT_INV_ovfl~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ovfl);
END structure;


