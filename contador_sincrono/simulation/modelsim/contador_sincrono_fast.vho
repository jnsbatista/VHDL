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

-- DATE "06/03/2022 08:40:57"

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

ENTITY 	contador_sincrono IS
    PORT (
	clk : IN std_logic;
	cout : OUT std_logic_vector(3 DOWNTO 0);
	QRR : OUT std_logic
	);
END contador_sincrono;

-- Design Ports Information
-- cout[0]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout[2]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cout[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- QRR	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador_sincrono IS
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
SIGNAL ww_cout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_QRR : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \FF0|QX~0_combout\ : std_logic;
SIGNAL \FF0|QX~regout\ : std_logic;
SIGNAL \FF1|QX~0_combout\ : std_logic;
SIGNAL \FF1|QX~regout\ : std_logic;
SIGNAL \FF2|QX~0_combout\ : std_logic;
SIGNAL \FF2|QX~regout\ : std_logic;
SIGNAL \FF3|QX~0_combout\ : std_logic;
SIGNAL \FF3|QX~regout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;
SIGNAL \FF3|ALT_INV_QX~regout\ : std_logic;
SIGNAL \FF2|ALT_INV_QX~regout\ : std_logic;
SIGNAL \FF1|ALT_INV_QX~regout\ : std_logic;
SIGNAL \FF0|ALT_INV_QX~regout\ : std_logic;

BEGIN

ww_clk <= clk;
cout <= ww_cout;
QRR <= ww_QRR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;
\FF3|ALT_INV_QX~regout\ <= NOT \FF3|QX~regout\;
\FF2|ALT_INV_QX~regout\ <= NOT \FF2|QX~regout\;
\FF1|ALT_INV_QX~regout\ <= NOT \FF1|QX~regout\;
\FF0|ALT_INV_QX~regout\ <= NOT \FF0|QX~regout\;

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y35_N0
\FF0|QX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FF0|QX~0_combout\ = !\FF0|QX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF0|QX~regout\,
	combout => \FF0|QX~0_combout\);

-- Location: LCFF_X30_Y35_N1
\FF0|QX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \FF0|QX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF0|QX~regout\);

-- Location: LCCOMB_X30_Y35_N30
\FF1|QX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FF1|QX~0_combout\ = !\FF1|QX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF1|QX~regout\,
	combout => \FF1|QX~0_combout\);

-- Location: LCFF_X30_Y35_N31
\FF1|QX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FF0|QX~regout\,
	datain => \FF1|QX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF1|QX~regout\);

-- Location: LCCOMB_X29_Y35_N12
\FF2|QX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FF2|QX~0_combout\ = !\FF2|QX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF2|QX~regout\,
	combout => \FF2|QX~0_combout\);

-- Location: LCFF_X29_Y35_N13
\FF2|QX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FF1|QX~regout\,
	datain => \FF2|QX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF2|QX~regout\);

-- Location: LCCOMB_X29_Y35_N0
\FF3|QX~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \FF3|QX~0_combout\ = !\FF3|QX~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FF3|QX~regout\,
	combout => \FF3|QX~0_combout\);

-- Location: LCFF_X29_Y35_N1
\FF3|QX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \FF2|QX~regout\,
	datain => \FF3|QX~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF3|QX~regout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout[0]~I\ : cycloneii_io
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
	datain => \FF0|ALT_INV_QX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout(0));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout[1]~I\ : cycloneii_io
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
	datain => \FF1|ALT_INV_QX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout(1));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout[2]~I\ : cycloneii_io
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
	datain => \FF2|ALT_INV_QX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout[3]~I\ : cycloneii_io
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
	datain => \FF3|ALT_INV_QX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout(3));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\QRR~I\ : cycloneii_io
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
	datain => \FF3|QX~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_QRR);
END structure;


