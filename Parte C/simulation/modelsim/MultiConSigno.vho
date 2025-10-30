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

-- DATE "10/29/2025 12:27:52"

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

ENTITY 	MultiplicadorCS IS
    PORT (
	B0 : IN std_logic;
	A0 : IN std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	CLK : IN std_logic;
	R0 : OUT std_logic;
	R1 : OUT std_logic;
	R2 : OUT std_logic;
	R3 : OUT std_logic;
	SIGNO : OUT std_logic
	);
END MultiplicadorCS;

-- Design Ports Information
-- R0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SIGNO	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B0	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MultiplicadorCS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_R0 : std_logic;
SIGNAL ww_R1 : std_logic;
SIGNAL ww_R2 : std_logic;
SIGNAL ww_R3 : std_logic;
SIGNAL ww_SIGNO : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \R0~output_o\ : std_logic;
SIGNAL \R1~output_o\ : std_logic;
SIGNAL \R2~output_o\ : std_logic;
SIGNAL \R3~output_o\ : std_logic;
SIGNAL \SIGNO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B0~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_44~feeder_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_44~q\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_43~q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_1~combout\ : std_logic;
SIGNAL \R0~reg0_q\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_50~q\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_46~feeder_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_46~q\ : std_logic;
SIGNAL \b2v_inst18|S~combout\ : std_logic;
SIGNAL \R1~reg0_q\ : std_logic;
SIGNAL \b2v_inst19|S~0_combout\ : std_logic;
SIGNAL \R2~reg0_q\ : std_logic;
SIGNAL \b2v_inst20|S~0_combout\ : std_logic;
SIGNAL \R3~reg0_q\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_33~combout\ : std_logic;
SIGNAL \SIGNO~reg0_q\ : std_logic;

BEGIN

ww_B0 <= B0;
ww_A0 <= A0;
ww_A1 <= A1;
ww_B1 <= B1;
ww_CLK <= CLK;
R0 <= ww_R0;
R1 <= ww_R1;
R2 <= ww_R2;
R3 <= ww_R3;
SIGNO <= ww_SIGNO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X83_Y0_N16
\R0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R0~reg0_q\,
	devoe => ww_devoe,
	o => \R0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\R1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R1~reg0_q\,
	devoe => ww_devoe,
	o => \R1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\R2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R2~reg0_q\,
	devoe => ww_devoe,
	o => \R2~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\R3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \R3~reg0_q\,
	devoe => ww_devoe,
	o => \R3~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\SIGNO~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SIGNO~reg0_q\,
	devoe => ww_devoe,
	o => \SIGNO~output_o\);

-- Location: IOIBUF_X56_Y73_N15
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G14
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X81_Y0_N22
\B0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B0,
	o => \B0~input_o\);

-- Location: LCCOMB_X82_Y1_N8
\SYNTHESIZED_WIRE_44~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_44~feeder_combout\ = \B0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B0~input_o\,
	combout => \SYNTHESIZED_WIRE_44~feeder_combout\);

-- Location: FF_X82_Y1_N9
SYNTHESIZED_WIRE_44 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SYNTHESIZED_WIRE_44~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_44~q\);

-- Location: IOIBUF_X56_Y0_N22
\A0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: FF_X82_Y1_N7
SYNTHESIZED_WIRE_43 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \A0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_43~q\);

-- Location: LCCOMB_X82_Y1_N28
SYNTHESIZED_WIRE_1 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_1~combout\ = (\SYNTHESIZED_WIRE_44~q\ & \SYNTHESIZED_WIRE_43~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNTHESIZED_WIRE_44~q\,
	datad => \SYNTHESIZED_WIRE_43~q\,
	combout => \SYNTHESIZED_WIRE_1~combout\);

-- Location: FF_X82_Y1_N29
\R0~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SYNTHESIZED_WIRE_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R0~reg0_q\);

-- Location: IOIBUF_X94_Y0_N8
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: FF_X82_Y1_N5
SYNTHESIZED_WIRE_50 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \B1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_50~q\);

-- Location: IOIBUF_X85_Y0_N8
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X82_Y1_N10
\SYNTHESIZED_WIRE_46~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_46~feeder_combout\ = \A1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1~input_o\,
	combout => \SYNTHESIZED_WIRE_46~feeder_combout\);

-- Location: FF_X82_Y1_N11
SYNTHESIZED_WIRE_46 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SYNTHESIZED_WIRE_46~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNTHESIZED_WIRE_46~q\);

-- Location: LCCOMB_X82_Y1_N26
\b2v_inst18|S\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst18|S~combout\ = (\SYNTHESIZED_WIRE_43~q\ & (\SYNTHESIZED_WIRE_50~q\ $ (((\SYNTHESIZED_WIRE_44~q\ & \SYNTHESIZED_WIRE_46~q\))))) # (!\SYNTHESIZED_WIRE_43~q\ & (\SYNTHESIZED_WIRE_44~q\ & ((\SYNTHESIZED_WIRE_46~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_43~q\,
	datab => \SYNTHESIZED_WIRE_44~q\,
	datac => \SYNTHESIZED_WIRE_50~q\,
	datad => \SYNTHESIZED_WIRE_46~q\,
	combout => \b2v_inst18|S~combout\);

-- Location: FF_X82_Y1_N27
\R1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \b2v_inst18|S~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R1~reg0_q\);

-- Location: LCCOMB_X82_Y1_N16
\b2v_inst19|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst19|S~0_combout\ = (\SYNTHESIZED_WIRE_50~q\ & ((\SYNTHESIZED_WIRE_43~q\ & ((!\SYNTHESIZED_WIRE_46~q\))) # (!\SYNTHESIZED_WIRE_43~q\ & (!\SYNTHESIZED_WIRE_44~q\ & \SYNTHESIZED_WIRE_46~q\)))) # (!\SYNTHESIZED_WIRE_50~q\ & (((\SYNTHESIZED_WIRE_44~q\ 
-- & \SYNTHESIZED_WIRE_46~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_43~q\,
	datab => \SYNTHESIZED_WIRE_44~q\,
	datac => \SYNTHESIZED_WIRE_50~q\,
	datad => \SYNTHESIZED_WIRE_46~q\,
	combout => \b2v_inst19|S~0_combout\);

-- Location: FF_X82_Y1_N17
\R2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \b2v_inst19|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R2~reg0_q\);

-- Location: LCCOMB_X82_Y1_N30
\b2v_inst20|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst20|S~0_combout\ = (\SYNTHESIZED_WIRE_46~q\ & (!\SYNTHESIZED_WIRE_50~q\ & (\SYNTHESIZED_WIRE_44~q\))) # (!\SYNTHESIZED_WIRE_46~q\ & (\SYNTHESIZED_WIRE_50~q\ & ((\SYNTHESIZED_WIRE_43~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_46~q\,
	datab => \SYNTHESIZED_WIRE_50~q\,
	datac => \SYNTHESIZED_WIRE_44~q\,
	datad => \SYNTHESIZED_WIRE_43~q\,
	combout => \b2v_inst20|S~0_combout\);

-- Location: FF_X82_Y1_N31
\R3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \b2v_inst20|S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \R3~reg0_q\);

-- Location: LCCOMB_X82_Y1_N20
SYNTHESIZED_WIRE_33 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_33~combout\ = \SYNTHESIZED_WIRE_50~q\ $ (\SYNTHESIZED_WIRE_46~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNTHESIZED_WIRE_50~q\,
	datad => \SYNTHESIZED_WIRE_46~q\,
	combout => \SYNTHESIZED_WIRE_33~combout\);

-- Location: FF_X82_Y1_N21
\SIGNO~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \SYNTHESIZED_WIRE_33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SIGNO~reg0_q\);

ww_R0 <= \R0~output_o\;

ww_R1 <= \R1~output_o\;

ww_R2 <= \R2~output_o\;

ww_R3 <= \R3~output_o\;

ww_SIGNO <= \SIGNO~output_o\;
END structure;


