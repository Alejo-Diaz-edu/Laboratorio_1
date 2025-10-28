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

-- DATE "10/28/2025 00:55:57"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pruebacontador IS
    PORT (
	q : OUT std_logic_vector(2 DOWNTO 0);
	clock : IN std_logic
	);
END pruebacontador;

-- Design Ports Information
-- q[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pruebacontador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

q <= ww_q;
ww_clock <= clock;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X0_Y30_N9
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y30_N10
\inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\);

-- Location: FF_X1_Y30_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y30_N28
\inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\ = (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\);

-- Location: FF_X1_Y30_N29
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y30_N20
\inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\);

-- Location: FF_X1_Y30_N21
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

ww_q(2) <= \q[2]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(0) <= \q[0]~output_o\;
END structure;


