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

-- DATE "07/07/2022 09:41:27"

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

ENTITY 	semaforo IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	VD : OUT std_logic;
	AM : OUT std_logic;
	VM : OUT std_logic
	);
END semaforo;

-- Design Ports Information
-- VD	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AM	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VM	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
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
SIGNAL ww_VD : std_logic;
SIGNAL ww_AM : std_logic;
SIGNAL ww_VM : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contagem[1]~9_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \contagem[0]~7_combout\ : std_logic;
SIGNAL \prox_estado.verde~0_combout\ : std_logic;
SIGNAL \prox_estado.verde~2_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \contagem[0]~8\ : std_logic;
SIGNAL \contagem[1]~10\ : std_logic;
SIGNAL \contagem[2]~11_combout\ : std_logic;
SIGNAL \contagem[2]~12\ : std_logic;
SIGNAL \contagem[3]~13_combout\ : std_logic;
SIGNAL \contagem[3]~14\ : std_logic;
SIGNAL \contagem[4]~15_combout\ : std_logic;
SIGNAL \contagem[4]~16\ : std_logic;
SIGNAL \contagem[5]~17_combout\ : std_logic;
SIGNAL \contagem[5]~18\ : std_logic;
SIGNAL \contagem[6]~19_combout\ : std_logic;
SIGNAL \prox_estado.verde~1_combout\ : std_logic;
SIGNAL \prox_estado.vermelho~0_combout\ : std_logic;
SIGNAL \prox_estado.vermelho~regout\ : std_logic;
SIGNAL \estado.vermelho~feeder_combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \estado.vermelho~regout\ : std_logic;
SIGNAL \prox_estado.verde~3_combout\ : std_logic;
SIGNAL \prox_estado.verde~regout\ : std_logic;
SIGNAL \estado.verde~feeder_combout\ : std_logic;
SIGNAL \estado.verde~regout\ : std_logic;
SIGNAL \VD~0_combout\ : std_logic;
SIGNAL \VD~reg0_regout\ : std_logic;
SIGNAL \prox_estado.amarelo~0_combout\ : std_logic;
SIGNAL \prox_estado.amarelo~regout\ : std_logic;
SIGNAL \estado.amarelo~feeder_combout\ : std_logic;
SIGNAL \estado.amarelo~regout\ : std_logic;
SIGNAL \AM~reg0feeder_combout\ : std_logic;
SIGNAL \AM~reg0_regout\ : std_logic;
SIGNAL \VM~reg0feeder_combout\ : std_logic;
SIGNAL \VM~reg0_regout\ : std_logic;
SIGNAL contagem : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
VD <= ww_VD;
AM <= ww_AM;
VM <= ww_VM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: LCFF_X1_Y18_N17
\contagem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[1]~9_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(1));

-- Location: LCCOMB_X1_Y18_N16
\contagem[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[1]~9_combout\ = (contagem(1) & (!\contagem[0]~8\)) # (!contagem(1) & ((\contagem[0]~8\) # (GND)))
-- \contagem[1]~10\ = CARRY((!\contagem[0]~8\) # (!contagem(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contagem(1),
	datad => VCC,
	cin => \contagem[0]~8\,
	combout => \contagem[1]~9_combout\,
	cout => \contagem[1]~10\);

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

-- Location: LCCOMB_X1_Y18_N14
\contagem[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[0]~7_combout\ = contagem(0) $ (VCC)
-- \contagem[0]~8\ = CARRY(contagem(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(0),
	datad => VCC,
	combout => \contagem[0]~7_combout\,
	cout => \contagem[0]~8\);

-- Location: LCCOMB_X1_Y18_N12
\prox_estado.verde~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.verde~0_combout\ = (\estado.amarelo~regout\ & ((contagem(4)) # ((contagem(5)) # (contagem(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.amarelo~regout\,
	datab => contagem(4),
	datac => contagem(5),
	datad => contagem(3),
	combout => \prox_estado.verde~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\prox_estado.verde~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.verde~2_combout\ = (contagem(6)) # (\prox_estado.verde~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(6),
	datad => \prox_estado.verde~0_combout\,
	combout => \prox_estado.verde~2_combout\);

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

-- Location: LCFF_X1_Y18_N15
\contagem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[0]~7_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(0));

-- Location: LCCOMB_X1_Y18_N18
\contagem[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[2]~11_combout\ = (contagem(2) & (\contagem[1]~10\ $ (GND))) # (!contagem(2) & (!\contagem[1]~10\ & VCC))
-- \contagem[2]~12\ = CARRY((contagem(2) & !\contagem[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contagem(2),
	datad => VCC,
	cin => \contagem[1]~10\,
	combout => \contagem[2]~11_combout\,
	cout => \contagem[2]~12\);

-- Location: LCFF_X1_Y18_N19
\contagem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[2]~11_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(2));

-- Location: LCCOMB_X1_Y18_N20
\contagem[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[3]~13_combout\ = (contagem(3) & (!\contagem[2]~12\)) # (!contagem(3) & ((\contagem[2]~12\) # (GND)))
-- \contagem[3]~14\ = CARRY((!\contagem[2]~12\) # (!contagem(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contagem(3),
	datad => VCC,
	cin => \contagem[2]~12\,
	combout => \contagem[3]~13_combout\,
	cout => \contagem[3]~14\);

-- Location: LCFF_X1_Y18_N21
\contagem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[3]~13_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(3));

-- Location: LCCOMB_X1_Y18_N22
\contagem[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[4]~15_combout\ = (contagem(4) & (\contagem[3]~14\ $ (GND))) # (!contagem(4) & (!\contagem[3]~14\ & VCC))
-- \contagem[4]~16\ = CARRY((contagem(4) & !\contagem[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contagem(4),
	datad => VCC,
	cin => \contagem[3]~14\,
	combout => \contagem[4]~15_combout\,
	cout => \contagem[4]~16\);

-- Location: LCFF_X1_Y18_N23
\contagem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[4]~15_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(4));

-- Location: LCCOMB_X1_Y18_N24
\contagem[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[5]~17_combout\ = (contagem(5) & (!\contagem[4]~16\)) # (!contagem(5) & ((\contagem[4]~16\) # (GND)))
-- \contagem[5]~18\ = CARRY((!\contagem[4]~16\) # (!contagem(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contagem(5),
	datad => VCC,
	cin => \contagem[4]~16\,
	combout => \contagem[5]~17_combout\,
	cout => \contagem[5]~18\);

-- Location: LCFF_X1_Y18_N25
\contagem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[5]~17_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(5));

-- Location: LCCOMB_X1_Y18_N26
\contagem[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \contagem[6]~19_combout\ = \contagem[5]~18\ $ (!contagem(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contagem(6),
	cin => \contagem[5]~18\,
	combout => \contagem[6]~19_combout\);

-- Location: LCFF_X1_Y18_N27
\contagem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \contagem[6]~19_combout\,
	sclr => \prox_estado.verde~2_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => contagem(6));

-- Location: LCCOMB_X2_Y18_N22
\prox_estado.verde~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.verde~1_combout\ = (!\rst~combout\ & ((contagem(6)) # (\prox_estado.verde~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contagem(6),
	datac => \rst~combout\,
	datad => \prox_estado.verde~0_combout\,
	combout => \prox_estado.verde~1_combout\);

-- Location: LCCOMB_X2_Y18_N12
\prox_estado.vermelho~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.vermelho~0_combout\ = (\prox_estado.verde~1_combout\ & (\estado.amarelo~regout\)) # (!\prox_estado.verde~1_combout\ & ((\prox_estado.vermelho~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.amarelo~regout\,
	datac => \prox_estado.vermelho~regout\,
	datad => \prox_estado.verde~1_combout\,
	combout => \prox_estado.vermelho~0_combout\);

-- Location: LCFF_X2_Y18_N13
\prox_estado.vermelho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \prox_estado.vermelho~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.vermelho~regout\);

-- Location: LCCOMB_X2_Y18_N30
\estado.vermelho~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.vermelho~feeder_combout\ = \prox_estado.vermelho~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prox_estado.vermelho~regout\,
	combout => \estado.vermelho~feeder_combout\);

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

-- Location: LCFF_X2_Y18_N31
\estado.vermelho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado.vermelho~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.vermelho~regout\);

-- Location: LCCOMB_X2_Y18_N28
\prox_estado.verde~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.verde~3_combout\ = !\estado.vermelho~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.vermelho~regout\,
	combout => \prox_estado.verde~3_combout\);

-- Location: LCFF_X2_Y18_N29
\prox_estado.verde\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \prox_estado.verde~3_combout\,
	ena => \prox_estado.verde~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.verde~regout\);

-- Location: LCCOMB_X2_Y18_N4
\estado.verde~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.verde~feeder_combout\ = \prox_estado.verde~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \prox_estado.verde~regout\,
	combout => \estado.verde~feeder_combout\);

-- Location: LCFF_X2_Y18_N5
\estado.verde\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado.verde~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.verde~regout\);

-- Location: LCCOMB_X1_Y18_N0
\VD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VD~0_combout\ = !\estado.verde~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.verde~regout\,
	combout => \VD~0_combout\);

-- Location: LCFF_X1_Y18_N1
\VD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VD~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VD~reg0_regout\);

-- Location: LCCOMB_X2_Y18_N26
\prox_estado.amarelo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \prox_estado.amarelo~0_combout\ = \estado.vermelho~regout\ $ (!\estado.amarelo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.vermelho~regout\,
	datad => \estado.amarelo~regout\,
	combout => \prox_estado.amarelo~0_combout\);

-- Location: LCFF_X2_Y18_N27
\prox_estado.amarelo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \prox_estado.amarelo~0_combout\,
	ena => \prox_estado.verde~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prox_estado.amarelo~regout\);

-- Location: LCCOMB_X1_Y18_N10
\estado.amarelo~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.amarelo~feeder_combout\ = \prox_estado.amarelo~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prox_estado.amarelo~regout\,
	combout => \estado.amarelo~feeder_combout\);

-- Location: LCFF_X1_Y18_N11
\estado.amarelo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \estado.amarelo~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.amarelo~regout\);

-- Location: LCCOMB_X1_Y18_N2
\AM~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \AM~reg0feeder_combout\ = \estado.amarelo~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.amarelo~regout\,
	combout => \AM~reg0feeder_combout\);

-- Location: LCFF_X1_Y18_N3
\AM~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \AM~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \AM~reg0_regout\);

-- Location: LCCOMB_X1_Y18_N8
\VM~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VM~reg0feeder_combout\ = \estado.vermelho~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.vermelho~regout\,
	combout => \VM~reg0feeder_combout\);

-- Location: LCFF_X1_Y18_N9
\VM~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VM~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VM~reg0_regout\);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VD~I\ : cycloneii_io
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
	datain => \VD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VD);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AM~I\ : cycloneii_io
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
	datain => \AM~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_AM);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VM~I\ : cycloneii_io
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
	datain => \VM~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VM);
END structure;


