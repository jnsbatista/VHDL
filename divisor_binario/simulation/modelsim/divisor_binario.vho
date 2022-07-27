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

-- DATE "07/27/2022 00:10:33"

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
	start : IN std_logic;
	dividendo : IN std_logic_vector(15 DOWNTO 0);
	divisor : IN std_logic_vector(7 DOWNTO 0);
	quociente : OUT std_logic_vector(7 DOWNTO 0);
	resto : OUT std_logic_vector(7 DOWNTO 0);
	pronto : OUT std_logic;
	overflow : OUT std_logic
	);
END divisor_binario;

-- Design Ports Information
-- quociente[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[4]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- quociente[7]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[0]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[3]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[5]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[6]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- resto[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pronto	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- overflow	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dividendo[15]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[14]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[6]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[13]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[5]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[12]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[4]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[11]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[10]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[9]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[1]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[8]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- divisor[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[0]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[1]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[2]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[4]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[6]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dividendo[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_start : std_logic;
SIGNAL ww_dividendo : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_divisor : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_quociente : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_resto : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \subtracao[7]~15\ : std_logic;
SIGNAL \subtracao[8]~16_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
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
SIGNAL \estado_registrador.mudanca~regout\ : std_logic;
SIGNAL \estado_registrador.operacao~feeder_combout\ : std_logic;
SIGNAL \estado_registrador.operacao~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \estado_registrador.parado~regout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \z_registrador[15]~7_combout\ : std_logic;
SIGNAL \z_registrador[13]~5_combout\ : std_logic;
SIGNAL \z_registrador[11]~3_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \z_registrador[8]~0_combout\ : std_logic;
SIGNAL \subtracao[0]~0_combout\ : std_logic;
SIGNAL \z_registrador[8]~8_combout\ : std_logic;
SIGNAL \subtracao[0]~1\ : std_logic;
SIGNAL \subtracao[1]~3\ : std_logic;
SIGNAL \subtracao[2]~5\ : std_logic;
SIGNAL \subtracao[3]~6_combout\ : std_logic;
SIGNAL \subtracao[3]~7\ : std_logic;
SIGNAL \subtracao[4]~9\ : std_logic;
SIGNAL \subtracao[5]~10_combout\ : std_logic;
SIGNAL \z_registrador[14]~6_combout\ : std_logic;
SIGNAL \subtracao[5]~11\ : std_logic;
SIGNAL \subtracao[6]~12_combout\ : std_logic;
SIGNAL \subtracao[6]~13\ : std_logic;
SIGNAL \subtracao[7]~14_combout\ : std_logic;
SIGNAL \z_registrador[12]~4_combout\ : std_logic;
SIGNAL \subtracao[4]~8_combout\ : std_logic;
SIGNAL \z_registrador[9]~1_combout\ : std_logic;
SIGNAL \subtracao[1]~2_combout\ : std_logic;
SIGNAL \z_registrador[10]~2_combout\ : std_logic;
SIGNAL \subtracao[2]~4_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;
SIGNAL z_registrador : std_logic_vector(16 DOWNTO 0);
SIGNAL i_registrador : std_logic_vector(3 DOWNTO 0);
SIGNAL d_registrador : std_logic_vector(7 DOWNTO 0);
SIGNAL \divisor~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dividendo~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_estado_registrador.operacao~regout\ : std_logic;
SIGNAL \ALT_INV_overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado_registrador.parado~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start <= start;
ww_dividendo <= dividendo;
ww_divisor <= divisor;
quociente <= ww_quociente;
resto <= ww_resto;
pronto <= ww_pronto;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_estado_registrador.operacao~regout\ <= NOT \estado_registrador.operacao~regout\;
\ALT_INV_overflow~0_combout\ <= NOT \overflow~0_combout\;
\ALT_INV_estado_registrador.parado~regout\ <= NOT \estado_registrador.parado~regout\;

-- Location: LCCOMB_X44_Y32_N16
\subtracao[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[7]~14_combout\ = (z_registrador(15) & ((\divisor~combout\(7) & (!\subtracao[6]~13\)) # (!\divisor~combout\(7) & (\subtracao[6]~13\ & VCC)))) # (!z_registrador(15) & ((\divisor~combout\(7) & ((\subtracao[6]~13\) # (GND))) # 
-- (!\divisor~combout\(7) & (!\subtracao[6]~13\))))
-- \subtracao[7]~15\ = CARRY((z_registrador(15) & (\divisor~combout\(7) & !\subtracao[6]~13\)) # (!z_registrador(15) & ((\divisor~combout\(7)) # (!\subtracao[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(15),
	datab => \divisor~combout\(7),
	datad => VCC,
	cin => \subtracao[6]~13\,
	combout => \subtracao[7]~14_combout\,
	cout => \subtracao[7]~15\);

-- Location: LCCOMB_X44_Y32_N18
\subtracao[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[8]~16_combout\ = \subtracao[7]~15\ $ (z_registrador(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => z_registrador(16),
	cin => \subtracao[7]~15\,
	combout => \subtracao[8]~16_combout\);

-- Location: LCFF_X43_Y32_N29
\z_registrador[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector6~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(16));

-- Location: LCFF_X42_Y32_N25
\d_registrador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(4));

-- Location: LCFF_X42_Y32_N21
\d_registrador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(2));

-- Location: LCFF_X42_Y32_N17
\d_registrador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(0));

-- Location: LCCOMB_X43_Y32_N12
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado_registrador.operacao~regout\ & (\subtracao[8]~16_combout\ & ((z_registrador(16)) # (!\LessThan2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(16),
	datab => \estado_registrador.operacao~regout\,
	datac => \LessThan2~14_combout\,
	datad => \subtracao[8]~16_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X43_Y32_N28
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\estado_registrador.mudanca~regout\ & z_registrador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => z_registrador(15),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[0]~I\ : cycloneii_io
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
	padio => ww_dividendo(0),
	combout => \dividendo~combout\(0));

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
-- \Selector5~0_combout\ = (i_registrador(0) & ((\estado_registrador.mudanca~regout\))) # (!i_registrador(0) & (\estado_registrador.operacao~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_registrador.operacao~regout\,
	datac => i_registrador(0),
	datad => \estado_registrador.mudanca~regout\,
	combout => \Selector5~0_combout\);

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

-- Location: LCFF_X45_Y32_N29
\i_registrador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_registrador(0));

-- Location: LCCOMB_X44_Y32_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (i_registrador(1) & ((\estado_registrador.mudanca~regout\) # ((\estado_registrador.operacao~regout\ & !i_registrador(0))))) # (!i_registrador(1) & (\estado_registrador.operacao~regout\ & (i_registrador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.operacao~regout\,
	datab => i_registrador(0),
	datac => i_registrador(1),
	datad => \estado_registrador.mudanca~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X44_Y32_N27
\i_registrador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_registrador(1));

-- Location: LCCOMB_X44_Y32_N28
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado_registrador.operacao~regout\ & (i_registrador(2) $ (((i_registrador(1) & i_registrador(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.operacao~regout\,
	datab => i_registrador(1),
	datac => i_registrador(0),
	datad => i_registrador(2),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X44_Y32_N0
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\estado_registrador.mudanca~regout\ & i_registrador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => i_registrador(2),
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCFF_X44_Y32_N1
\i_registrador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_registrador(2));

-- Location: LCCOMB_X45_Y32_N8
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (i_registrador(3) & ((i_registrador(1)) # ((i_registrador(2)) # (i_registrador(0))))) # (!i_registrador(3) & (((!i_registrador(0)) # (!i_registrador(2))) # (!i_registrador(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_registrador(3),
	datab => i_registrador(1),
	datac => i_registrador(2),
	datad => i_registrador(0),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X45_Y32_N22
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\estado_registrador.operacao~regout\ & ((\Selector1~0_combout\) # (!i_registrador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_registrador.operacao~regout\,
	datac => \Selector1~0_combout\,
	datad => i_registrador(0),
	combout => \Selector1~1_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[15]~I\ : cycloneii_io
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
	padio => ww_dividendo(15),
	combout => \dividendo~combout\(15));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[6]~I\ : cycloneii_io
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
	padio => ww_divisor(6),
	combout => \divisor~combout\(6));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[5]~I\ : cycloneii_io
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
	padio => ww_divisor(5),
	combout => \divisor~combout\(5));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[4]~I\ : cycloneii_io
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
	padio => ww_divisor(4),
	combout => \divisor~combout\(4));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[11]~I\ : cycloneii_io
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
	padio => ww_dividendo(11),
	combout => \dividendo~combout\(11));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[10]~I\ : cycloneii_io
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
	padio => ww_dividendo(10),
	combout => \dividendo~combout\(10));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[9]~I\ : cycloneii_io
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
	padio => ww_dividendo(9),
	combout => \dividendo~combout\(9));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[0]~I\ : cycloneii_io
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
	padio => ww_divisor(0),
	combout => \divisor~combout\(0));

-- Location: LCCOMB_X42_Y32_N0
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!\dividendo~combout\(8) & \divisor~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(8),
	datab => \divisor~combout\(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X42_Y32_N2
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\divisor~combout\(1) & (\dividendo~combout\(9) & !\LessThan1~1_cout\)) # (!\divisor~combout\(1) & ((\dividendo~combout\(9)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(1),
	datab => \dividendo~combout\(9),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X42_Y32_N4
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\divisor~combout\(2) & ((!\LessThan1~3_cout\) # (!\dividendo~combout\(10)))) # (!\divisor~combout\(2) & (!\dividendo~combout\(10) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(2),
	datab => \dividendo~combout\(10),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X42_Y32_N6
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\divisor~combout\(3) & (\dividendo~combout\(11) & !\LessThan1~5_cout\)) # (!\divisor~combout\(3) & ((\dividendo~combout\(11)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(3),
	datab => \dividendo~combout\(11),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X42_Y32_N8
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\dividendo~combout\(12) & (\divisor~combout\(4) & !\LessThan1~7_cout\)) # (!\dividendo~combout\(12) & ((\divisor~combout\(4)) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(12),
	datab => \divisor~combout\(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X42_Y32_N10
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\dividendo~combout\(13) & ((!\LessThan1~9_cout\) # (!\divisor~combout\(5)))) # (!\dividendo~combout\(13) & (!\divisor~combout\(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(13),
	datab => \divisor~combout\(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X42_Y32_N12
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\dividendo~combout\(14) & (\divisor~combout\(6) & !\LessThan1~11_cout\)) # (!\dividendo~combout\(14) & ((\divisor~combout\(6)) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(14),
	datab => \divisor~combout\(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X42_Y32_N14
\LessThan1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (\divisor~combout\(7) & ((\LessThan1~13_cout\) # (!\dividendo~combout\(15)))) # (!\divisor~combout\(7) & (!\dividendo~combout\(15) & \LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(7),
	datab => \dividendo~combout\(15),
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
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((!\estado_registrador.parado~regout\ & (\LessThan1~14_combout\ & \start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.parado~regout\,
	datab => \Selector1~1_combout\,
	datac => \LessThan1~14_combout\,
	datad => \start~combout\,
	combout => \Selector1~2_combout\);

-- Location: LCFF_X45_Y32_N11
\estado_registrador.mudanca\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_registrador.mudanca~regout\);

-- Location: LCCOMB_X44_Y32_N24
\estado_registrador.operacao~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_registrador.operacao~feeder_combout\ = \estado_registrador.mudanca~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_registrador.mudanca~regout\,
	combout => \estado_registrador.operacao~feeder_combout\);

-- Location: LCFF_X44_Y32_N25
\estado_registrador.operacao\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado_registrador.operacao~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_registrador.operacao~regout\);

-- Location: LCCOMB_X45_Y32_N26
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (i_registrador(1) & (i_registrador(2) & i_registrador(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_registrador(1),
	datac => i_registrador(2),
	datad => i_registrador(0),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X45_Y32_N20
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (i_registrador(3) & ((\estado_registrador.mudanca~regout\) # ((\estado_registrador.operacao~regout\ & !\Selector0~0_combout\)))) # (!i_registrador(3) & (((\estado_registrador.operacao~regout\ & \Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => \estado_registrador.operacao~regout\,
	datac => i_registrador(3),
	datad => \Selector0~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X45_Y32_N21
\i_registrador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_registrador(3));

-- Location: LCCOMB_X45_Y32_N2
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\estado_registrador.operacao~regout\ & (!i_registrador(3) & \Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_registrador.operacao~regout\,
	datac => i_registrador(3),
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X45_Y32_N18
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (!\Selector0~1_combout\ & ((\estado_registrador.parado~regout\) # ((\LessThan1~14_combout\ & \start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~14_combout\,
	datab => \start~combout\,
	datac => \estado_registrador.parado~regout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCFF_X45_Y32_N19
\estado_registrador.parado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_registrador.parado~regout\);

-- Location: LCCOMB_X43_Y32_N22
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\dividendo~combout\(0) & (((\estado_registrador.operacao~regout\ & z_registrador(0))) # (!\estado_registrador.parado~regout\))) # (!\dividendo~combout\(0) & (\estado_registrador.operacao~regout\ & (z_registrador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(0),
	datab => \estado_registrador.operacao~regout\,
	datac => z_registrador(0),
	datad => \estado_registrador.parado~regout\,
	combout => \Selector22~0_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[7]~I\ : cycloneii_io
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
	padio => ww_divisor(7),
	combout => \divisor~combout\(7));

-- Location: LCFF_X42_Y32_N31
\d_registrador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(7),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(7));

-- Location: LCCOMB_X43_Y32_N30
\z_registrador[15]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[15]~7_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(14))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(14),
	datab => \dividendo~combout\(15),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[15]~7_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[14]~I\ : cycloneii_io
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
	padio => ww_dividendo(14),
	combout => \dividendo~combout\(14));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[13]~I\ : cycloneii_io
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
	padio => ww_dividendo(13),
	combout => \dividendo~combout\(13));

-- Location: LCCOMB_X43_Y32_N26
\z_registrador[13]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[13]~5_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(12))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(12),
	datab => \dividendo~combout\(13),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[13]~5_combout\);

-- Location: LCCOMB_X43_Y32_N6
\z_registrador[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[11]~3_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(10))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(10),
	datab => \dividendo~combout\(11),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[11]~3_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[2]~I\ : cycloneii_io
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
	padio => ww_divisor(2),
	combout => \divisor~combout\(2));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[1]~I\ : cycloneii_io
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
	padio => ww_divisor(1),
	combout => \divisor~combout\(1));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[8]~I\ : cycloneii_io
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
	padio => ww_dividendo(8),
	combout => \dividendo~combout\(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[5]~I\ : cycloneii_io
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
	padio => ww_dividendo(5),
	combout => \dividendo~combout\(5));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[1]~I\ : cycloneii_io
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
	padio => ww_dividendo(1),
	combout => \dividendo~combout\(1));

-- Location: LCCOMB_X45_Y32_N16
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(0))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => z_registrador(0),
	datad => \dividendo~combout\(1),
	combout => \Selector21~0_combout\);

-- Location: LCFF_X45_Y32_N17
\z_registrador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(1));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[2]~I\ : cycloneii_io
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
	padio => ww_dividendo(2),
	combout => \dividendo~combout\(2));

-- Location: LCCOMB_X45_Y32_N30
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(1))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => z_registrador(1),
	datad => \dividendo~combout\(2),
	combout => \Selector20~0_combout\);

-- Location: LCFF_X45_Y32_N31
\z_registrador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[3]~I\ : cycloneii_io
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
	padio => ww_dividendo(3),
	combout => \dividendo~combout\(3));

-- Location: LCCOMB_X45_Y32_N0
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(2))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => z_registrador(2),
	datad => \dividendo~combout\(3),
	combout => \Selector19~0_combout\);

-- Location: LCFF_X45_Y32_N1
\z_registrador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(3));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[4]~I\ : cycloneii_io
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
	padio => ww_dividendo(4),
	combout => \dividendo~combout\(4));

-- Location: LCCOMB_X45_Y32_N6
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(3))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => z_registrador(3),
	datad => \dividendo~combout\(4),
	combout => \Selector18~0_combout\);

-- Location: LCFF_X45_Y32_N7
\z_registrador[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(4));

-- Location: LCCOMB_X45_Y32_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\estado_registrador.mudanca~regout\ & ((z_registrador(4)))) # (!\estado_registrador.mudanca~regout\ & (\dividendo~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => \dividendo~combout\(5),
	datad => z_registrador(4),
	combout => \Selector17~0_combout\);

-- Location: LCFF_X45_Y32_N5
\z_registrador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(5));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[6]~I\ : cycloneii_io
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
	padio => ww_dividendo(6),
	combout => \dividendo~combout\(6));

-- Location: LCCOMB_X45_Y32_N14
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(5))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => z_registrador(5),
	datad => \dividendo~combout\(6),
	combout => \Selector16~0_combout\);

-- Location: LCFF_X45_Y32_N15
\z_registrador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(6));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[7]~I\ : cycloneii_io
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
	padio => ww_dividendo(7),
	combout => \dividendo~combout\(7));

-- Location: LCCOMB_X45_Y32_N12
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(6))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datac => z_registrador(6),
	datad => \dividendo~combout\(7),
	combout => \Selector15~0_combout\);

-- Location: LCFF_X45_Y32_N13
\z_registrador[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ALT_INV_estado_registrador.operacao~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(7));

-- Location: LCCOMB_X43_Y32_N24
\z_registrador[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[8]~0_combout\ = (\estado_registrador.mudanca~regout\ & ((z_registrador(7)))) # (!\estado_registrador.mudanca~regout\ & (\dividendo~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => \dividendo~combout\(8),
	datad => z_registrador(7),
	combout => \z_registrador[8]~0_combout\);

-- Location: LCCOMB_X44_Y32_N2
\subtracao[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[0]~0_combout\ = (\divisor~combout\(0) & (z_registrador(8) $ (VCC))) # (!\divisor~combout\(0) & ((z_registrador(8)) # (GND)))
-- \subtracao[0]~1\ = CARRY((z_registrador(8)) # (!\divisor~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(0),
	datab => z_registrador(8),
	datad => VCC,
	combout => \subtracao[0]~0_combout\,
	cout => \subtracao[0]~1\);

-- Location: LCCOMB_X43_Y32_N18
\z_registrador[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[8]~8_combout\ = (z_registrador(16)) # ((!\estado_registrador.operacao~regout\) # (!\LessThan2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(16),
	datac => \LessThan2~14_combout\,
	datad => \estado_registrador.operacao~regout\,
	combout => \z_registrador[8]~8_combout\);

-- Location: LCFF_X43_Y32_N25
\z_registrador[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[8]~0_combout\,
	sdata => \subtracao[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(8));

-- Location: LCCOMB_X44_Y32_N4
\subtracao[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[1]~2_combout\ = (z_registrador(9) & ((\divisor~combout\(1) & (!\subtracao[0]~1\)) # (!\divisor~combout\(1) & (\subtracao[0]~1\ & VCC)))) # (!z_registrador(9) & ((\divisor~combout\(1) & ((\subtracao[0]~1\) # (GND))) # (!\divisor~combout\(1) & 
-- (!\subtracao[0]~1\))))
-- \subtracao[1]~3\ = CARRY((z_registrador(9) & (\divisor~combout\(1) & !\subtracao[0]~1\)) # (!z_registrador(9) & ((\divisor~combout\(1)) # (!\subtracao[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(9),
	datab => \divisor~combout\(1),
	datad => VCC,
	cin => \subtracao[0]~1\,
	combout => \subtracao[1]~2_combout\,
	cout => \subtracao[1]~3\);

-- Location: LCCOMB_X44_Y32_N6
\subtracao[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[2]~4_combout\ = ((z_registrador(10) $ (\divisor~combout\(2) $ (\subtracao[1]~3\)))) # (GND)
-- \subtracao[2]~5\ = CARRY((z_registrador(10) & ((!\subtracao[1]~3\) # (!\divisor~combout\(2)))) # (!z_registrador(10) & (!\divisor~combout\(2) & !\subtracao[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(10),
	datab => \divisor~combout\(2),
	datad => VCC,
	cin => \subtracao[1]~3\,
	combout => \subtracao[2]~4_combout\,
	cout => \subtracao[2]~5\);

-- Location: LCCOMB_X44_Y32_N8
\subtracao[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[3]~6_combout\ = (\divisor~combout\(3) & ((z_registrador(11) & (!\subtracao[2]~5\)) # (!z_registrador(11) & ((\subtracao[2]~5\) # (GND))))) # (!\divisor~combout\(3) & ((z_registrador(11) & (\subtracao[2]~5\ & VCC)) # (!z_registrador(11) & 
-- (!\subtracao[2]~5\))))
-- \subtracao[3]~7\ = CARRY((\divisor~combout\(3) & ((!\subtracao[2]~5\) # (!z_registrador(11)))) # (!\divisor~combout\(3) & (!z_registrador(11) & !\subtracao[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(3),
	datab => z_registrador(11),
	datad => VCC,
	cin => \subtracao[2]~5\,
	combout => \subtracao[3]~6_combout\,
	cout => \subtracao[3]~7\);

-- Location: LCFF_X43_Y32_N7
\z_registrador[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[11]~3_combout\,
	sdata => \subtracao[3]~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(11));

-- Location: LCCOMB_X44_Y32_N10
\subtracao[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[4]~8_combout\ = ((z_registrador(12) $ (\divisor~combout\(4) $ (\subtracao[3]~7\)))) # (GND)
-- \subtracao[4]~9\ = CARRY((z_registrador(12) & ((!\subtracao[3]~7\) # (!\divisor~combout\(4)))) # (!z_registrador(12) & (!\divisor~combout\(4) & !\subtracao[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(12),
	datab => \divisor~combout\(4),
	datad => VCC,
	cin => \subtracao[3]~7\,
	combout => \subtracao[4]~8_combout\,
	cout => \subtracao[4]~9\);

-- Location: LCCOMB_X44_Y32_N12
\subtracao[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[5]~10_combout\ = (\divisor~combout\(5) & ((z_registrador(13) & (!\subtracao[4]~9\)) # (!z_registrador(13) & ((\subtracao[4]~9\) # (GND))))) # (!\divisor~combout\(5) & ((z_registrador(13) & (\subtracao[4]~9\ & VCC)) # (!z_registrador(13) & 
-- (!\subtracao[4]~9\))))
-- \subtracao[5]~11\ = CARRY((\divisor~combout\(5) & ((!\subtracao[4]~9\) # (!z_registrador(13)))) # (!\divisor~combout\(5) & (!z_registrador(13) & !\subtracao[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(5),
	datab => z_registrador(13),
	datad => VCC,
	cin => \subtracao[4]~9\,
	combout => \subtracao[5]~10_combout\,
	cout => \subtracao[5]~11\);

-- Location: LCFF_X43_Y32_N27
\z_registrador[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[13]~5_combout\,
	sdata => \subtracao[5]~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(13));

-- Location: LCCOMB_X43_Y32_N16
\z_registrador[14]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[14]~6_combout\ = (\estado_registrador.mudanca~regout\ & ((z_registrador(13)))) # (!\estado_registrador.mudanca~regout\ & (\dividendo~combout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.mudanca~regout\,
	datab => \dividendo~combout\(14),
	datad => z_registrador(13),
	combout => \z_registrador[14]~6_combout\);

-- Location: LCCOMB_X44_Y32_N14
\subtracao[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtracao[6]~12_combout\ = ((\divisor~combout\(6) $ (z_registrador(14) $ (\subtracao[5]~11\)))) # (GND)
-- \subtracao[6]~13\ = CARRY((\divisor~combout\(6) & (z_registrador(14) & !\subtracao[5]~11\)) # (!\divisor~combout\(6) & ((z_registrador(14)) # (!\subtracao[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor~combout\(6),
	datab => z_registrador(14),
	datad => VCC,
	cin => \subtracao[5]~11\,
	combout => \subtracao[6]~12_combout\,
	cout => \subtracao[6]~13\);

-- Location: LCFF_X43_Y32_N17
\z_registrador[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[14]~6_combout\,
	sdata => \subtracao[6]~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(14));

-- Location: LCFF_X43_Y32_N31
\z_registrador[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[15]~7_combout\,
	sdata => \subtracao[7]~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(15));

-- Location: LCFF_X42_Y32_N29
\d_registrador[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(6),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(6));

-- Location: LCFF_X42_Y32_N27
\d_registrador[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(5),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dividendo[12]~I\ : cycloneii_io
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
	padio => ww_dividendo(12),
	combout => \dividendo~combout\(12));

-- Location: LCCOMB_X43_Y32_N8
\z_registrador[12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[12]~4_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(11))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(11),
	datab => \dividendo~combout\(12),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[12]~4_combout\);

-- Location: LCFF_X43_Y32_N9
\z_registrador[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[12]~4_combout\,
	sdata => \subtracao[4]~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(12));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\divisor[3]~I\ : cycloneii_io
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
	padio => ww_divisor(3),
	combout => \divisor~combout\(3));

-- Location: LCFF_X42_Y32_N23
\d_registrador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(3));

-- Location: LCCOMB_X43_Y32_N2
\z_registrador[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[9]~1_combout\ = (\estado_registrador.mudanca~regout\ & (z_registrador(8))) # (!\estado_registrador.mudanca~regout\ & ((\dividendo~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(8),
	datab => \dividendo~combout\(9),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[9]~1_combout\);

-- Location: LCFF_X43_Y32_N3
\z_registrador[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[9]~1_combout\,
	sdata => \subtracao[1]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(9));

-- Location: LCCOMB_X43_Y32_N20
\z_registrador[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \z_registrador[10]~2_combout\ = (\estado_registrador.mudanca~regout\ & ((z_registrador(9)))) # (!\estado_registrador.mudanca~regout\ & (\dividendo~combout\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dividendo~combout\(10),
	datab => z_registrador(9),
	datad => \estado_registrador.mudanca~regout\,
	combout => \z_registrador[10]~2_combout\);

-- Location: LCFF_X43_Y32_N21
\z_registrador[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \z_registrador[10]~2_combout\,
	sdata => \subtracao[2]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => \estado_registrador.operacao~regout\,
	ena => \z_registrador[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(10));

-- Location: LCFF_X42_Y32_N19
\d_registrador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \divisor~combout\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_registrador(1));

-- Location: LCCOMB_X42_Y32_N16
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((d_registrador(0) & !z_registrador(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_registrador(0),
	datab => z_registrador(8),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X42_Y32_N18
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((z_registrador(9) & ((!\LessThan2~1_cout\) # (!d_registrador(1)))) # (!z_registrador(9) & (!d_registrador(1) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(9),
	datab => d_registrador(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X42_Y32_N20
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((d_registrador(2) & ((!\LessThan2~3_cout\) # (!z_registrador(10)))) # (!d_registrador(2) & (!z_registrador(10) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_registrador(2),
	datab => z_registrador(10),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X42_Y32_N22
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((z_registrador(11) & ((!\LessThan2~5_cout\) # (!d_registrador(3)))) # (!z_registrador(11) & (!d_registrador(3) & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(11),
	datab => d_registrador(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X42_Y32_N24
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((d_registrador(4) & ((!\LessThan2~7_cout\) # (!z_registrador(12)))) # (!d_registrador(4) & (!z_registrador(12) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => d_registrador(4),
	datab => z_registrador(12),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X42_Y32_N26
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((z_registrador(13) & ((!\LessThan2~9_cout\) # (!d_registrador(5)))) # (!z_registrador(13) & (!d_registrador(5) & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(13),
	datab => d_registrador(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X42_Y32_N28
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((z_registrador(14) & (d_registrador(6) & !\LessThan2~11_cout\)) # (!z_registrador(14) & ((d_registrador(6)) # (!\LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(14),
	datab => d_registrador(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X42_Y32_N30
\LessThan2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (d_registrador(7) & ((\LessThan2~13_cout\) # (!z_registrador(15)))) # (!d_registrador(7) & (\LessThan2~13_cout\ & !z_registrador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => d_registrador(7),
	datad => z_registrador(15),
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X43_Y32_N4
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (\Selector22~0_combout\) # ((\estado_registrador.operacao~regout\ & ((z_registrador(16)) # (!\LessThan2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => z_registrador(16),
	datab => \Selector22~0_combout\,
	datac => \LessThan2~14_combout\,
	datad => \estado_registrador.operacao~regout\,
	combout => \Selector22~1_combout\);

-- Location: LCFF_X43_Y32_N5
\z_registrador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector22~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => z_registrador(0));

-- Location: LCCOMB_X45_Y32_N24
\overflow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \overflow~0_combout\ = (\estado_registrador.parado~regout\) # (\LessThan1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_registrador.parado~regout\,
	datac => \LessThan1~14_combout\,
	combout => \overflow~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[0]~I\ : cycloneii_io
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
	datain => z_registrador(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[1]~I\ : cycloneii_io
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
	datain => z_registrador(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[2]~I\ : cycloneii_io
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
	datain => z_registrador(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[3]~I\ : cycloneii_io
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
	datain => z_registrador(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(3));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[4]~I\ : cycloneii_io
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
	datain => z_registrador(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(4));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[5]~I\ : cycloneii_io
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
	datain => z_registrador(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(5));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[6]~I\ : cycloneii_io
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
	datain => z_registrador(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(6));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\quociente[7]~I\ : cycloneii_io
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
	datain => z_registrador(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_quociente(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[0]~I\ : cycloneii_io
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
	datain => z_registrador(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[1]~I\ : cycloneii_io
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
	datain => z_registrador(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[2]~I\ : cycloneii_io
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
	datain => z_registrador(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(2));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[3]~I\ : cycloneii_io
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
	datain => z_registrador(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[4]~I\ : cycloneii_io
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
	datain => z_registrador(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(4));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[5]~I\ : cycloneii_io
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
	datain => z_registrador(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(5));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[6]~I\ : cycloneii_io
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
	datain => z_registrador(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\resto[7]~I\ : cycloneii_io
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
	datain => z_registrador(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_resto(7));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_estado_registrador.parado~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pronto);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\overflow~I\ : cycloneii_io
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
	datain => \ALT_INV_overflow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_overflow);
END structure;


