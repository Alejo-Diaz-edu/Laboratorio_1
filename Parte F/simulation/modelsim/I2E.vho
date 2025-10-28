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

-- DATE "10/28/2025 11:52:10"

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

ENTITY 	I2E_completo IS
    PORT (
	ACK : OUT std_logic;
	SCL : IN std_logic;
	SDA : IN std_logic;
	Direccion : IN std_logic_vector(6 DOWNTO 0);
	DATO : OUT std_logic_vector(7 DOWNTO 0)
	);
END I2E_completo;

-- Design Ports Information
-- ACK	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[5]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[4]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATO[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SCL	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Direccion[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2E_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ACK : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_SDA : std_logic;
SIGNAL ww_Direccion : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DATO : std_logic_vector(7 DOWNTO 0);
SIGNAL \SCL~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|fstate.Guarda_dir~q\ : std_logic;
SIGNAL \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst|fstate.Idle~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \Direccion[6]~input_o\ : std_logic;
SIGNAL \Direccion[2]~input_o\ : std_logic;
SIGNAL \Direccion[3]~input_o\ : std_logic;
SIGNAL \Direccion[0]~input_o\ : std_logic;
SIGNAL \inst2~clkctrl_outclk\ : std_logic;
SIGNAL \ACK~output_o\ : std_logic;
SIGNAL \DATO[7]~output_o\ : std_logic;
SIGNAL \DATO[6]~output_o\ : std_logic;
SIGNAL \DATO[5]~output_o\ : std_logic;
SIGNAL \DATO[4]~output_o\ : std_logic;
SIGNAL \DATO[3]~output_o\ : std_logic;
SIGNAL \DATO[2]~output_o\ : std_logic;
SIGNAL \DATO[1]~output_o\ : std_logic;
SIGNAL \DATO[0]~output_o\ : std_logic;
SIGNAL \SCL~input_o\ : std_logic;
SIGNAL \SCL~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \Direccion[5]~input_o\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \registro7|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \registro7|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \registro7|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \registro7|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \registro7|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \Direccion[1]~input_o\ : std_logic;
SIGNAL \inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ : std_logic;
SIGNAL \Direccion[4]~input_o\ : std_logic;
SIGNAL \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst|reg_fstate~1_combout\ : std_logic;
SIGNAL \inst|fstate.RoW~q\ : std_logic;
SIGNAL \inst|fstate.ACK_State~feeder_combout\ : std_logic;
SIGNAL \inst|fstate.ACK_State~q\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|fstate.Guarda_Dat~q\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst3~clkctrl_outclk\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ : std_logic;
SIGNAL \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \registro7|LPM_SHIFTREG_component|dffs\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \registro8bits|LPM_SHIFTREG_component|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ACK <= ww_ACK;
ww_SCL <= SCL;
ww_SDA <= SDA;
ww_Direccion <= Direccion;
DATO <= ww_DATO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\SCL~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SCL~input_o\);

\inst3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3~combout\);

\inst2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2~combout\);

-- Location: LCCOMB_X2_Y36_N22
\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X1_Y36_N5
\inst|fstate.Guarda_dir\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guarda_dir~q\);

-- Location: FF_X1_Y36_N13
\registro7|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	asdata => \registro7|LPM_SHIFTREG_component|dffs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(0));

-- Location: LCCOMB_X1_Y36_N12
\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ = (\Direccion[3]~input_o\ & (\registro7|LPM_SHIFTREG_component|dffs\(3) & (\Direccion[0]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(0))))) # (!\Direccion[3]~input_o\ & 
-- (!\registro7|LPM_SHIFTREG_component|dffs\(3) & (\Direccion[0]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direccion[3]~input_o\,
	datab => \Direccion[0]~input_o\,
	datac => \registro7|LPM_SHIFTREG_component|dffs\(0),
	datad => \registro7|LPM_SHIFTREG_component|dffs\(3),
	combout => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\);

-- Location: FF_X3_Y36_N5
\inst|fstate.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Idle~q\);

-- Location: LCCOMB_X1_Y36_N4
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\SDA~input_o\ & !\inst|fstate.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SDA~input_o\,
	datad => \inst|fstate.Idle~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X2_Y36_N23
\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X2_Y36_N30
\inst|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|fstate.Guarda_Dat~q\ & ((\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\) # ((\SDA~input_o\ & !\inst|fstate.Idle~q\)))) # (!\inst|fstate.Guarda_Dat~q\ & (\SDA~input_o\ & 
-- ((!\inst|fstate.Idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Guarda_Dat~q\,
	datab => \SDA~input_o\,
	datac => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	datad => \inst|fstate.Idle~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X3_Y36_N4
\inst|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (!\inst|Selector2~0_combout\ & (((\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\) # (\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\)) # 
-- (!\inst|fstate.Guarda_dir~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Guarda_dir~q\,
	datab => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	datac => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X1_Y36_N20
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = LCELL((\inst|fstate.Guarda_dir~q\ & \SCL~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Guarda_dir~q\,
	datad => \SCL~input_o\,
	combout => \inst2~combout\);

-- Location: IOIBUF_X0_Y35_N15
\Direccion[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(6),
	o => \Direccion[6]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\Direccion[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(2),
	o => \Direccion[2]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\Direccion[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(3),
	o => \Direccion[3]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\Direccion[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(0),
	o => \Direccion[0]~input_o\);

-- Location: CLKCTRL_G2
\inst2~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2~clkctrl_outclk\);

-- Location: IOOBUF_X0_Y35_N2
\ACK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|fstate.ACK_State~q\,
	devoe => ww_devoe,
	o => \ACK~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\DATO[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(7),
	devoe => ww_devoe,
	o => \DATO[7]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\DATO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(6),
	devoe => ww_devoe,
	o => \DATO[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DATO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(5),
	devoe => ww_devoe,
	o => \DATO[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\DATO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(4),
	devoe => ww_devoe,
	o => \DATO[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\DATO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(3),
	devoe => ww_devoe,
	o => \DATO[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\DATO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(2),
	devoe => ww_devoe,
	o => \DATO[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\DATO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(1),
	devoe => ww_devoe,
	o => \DATO[1]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\DATO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registro8bits|LPM_SHIFTREG_component|dffs\(0),
	devoe => ww_devoe,
	o => \DATO[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N1
\SCL~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SCL,
	o => \SCL~input_o\);

-- Location: CLKCTRL_G4
\SCL~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SCL~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SCL~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y36_N16
\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X3_Y36_N17
\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X3_Y36_N18
\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X3_Y36_N19
\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X3_Y36_N20
\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X3_Y36_N21
\contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X3_Y36_N22
\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ = \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\);

-- Location: IOIBUF_X0_Y42_N8
\Direccion[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(5),
	o => \Direccion[5]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\SDA~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SDA,
	o => \SDA~input_o\);

-- Location: FF_X1_Y36_N15
\registro7|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	asdata => \SDA~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X1_Y36_N22
\registro7|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro7|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registro7|LPM_SHIFTREG_component|dffs\(6),
	combout => \registro7|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X1_Y36_N23
\registro7|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \registro7|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X1_Y36_N2
\registro7|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro7|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registro7|LPM_SHIFTREG_component|dffs\(5),
	combout => \registro7|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X1_Y36_N3
\registro7|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \registro7|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X1_Y36_N24
\registro7|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro7|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro7|LPM_SHIFTREG_component|dffs\(4),
	combout => \registro7|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X1_Y36_N25
\registro7|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \registro7|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X1_Y36_N18
\registro7|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro7|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro7|LPM_SHIFTREG_component|dffs\(3),
	combout => \registro7|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X1_Y36_N19
\registro7|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \registro7|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X1_Y36_N8
\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ = (\Direccion[2]~input_o\ & (\registro7|LPM_SHIFTREG_component|dffs\(2) & (\Direccion[5]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(5))))) # (!\Direccion[2]~input_o\ & 
-- (!\registro7|LPM_SHIFTREG_component|dffs\(2) & (\Direccion[5]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direccion[2]~input_o\,
	datab => \Direccion[5]~input_o\,
	datac => \registro7|LPM_SHIFTREG_component|dffs\(5),
	datad => \registro7|LPM_SHIFTREG_component|dffs\(2),
	combout => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X1_Y36_N30
\registro7|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro7|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro7|LPM_SHIFTREG_component|dffs\(2),
	combout => \registro7|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X1_Y36_N31
\registro7|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2~clkctrl_outclk\,
	d => \registro7|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro7|LPM_SHIFTREG_component|dffs\(1));

-- Location: IOIBUF_X0_Y35_N8
\Direccion[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(1),
	o => \Direccion[1]~input_o\);

-- Location: LCCOMB_X1_Y36_N26
\inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ = \registro7|LPM_SHIFTREG_component|dffs\(1) $ (\Direccion[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \registro7|LPM_SHIFTREG_component|dffs\(1),
	datad => \Direccion[1]~input_o\,
	combout => \inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\);

-- Location: IOIBUF_X0_Y33_N22
\Direccion[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Direccion(4),
	o => \Direccion[4]~input_o\);

-- Location: LCCOMB_X1_Y36_N10
\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\ = (\Direccion[6]~input_o\ & (\registro7|LPM_SHIFTREG_component|dffs\(6) & (\Direccion[4]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(4))))) # (!\Direccion[6]~input_o\ & 
-- (!\registro7|LPM_SHIFTREG_component|dffs\(6) & (\Direccion[4]~input_o\ $ (!\registro7|LPM_SHIFTREG_component|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Direccion[6]~input_o\,
	datab => \Direccion[4]~input_o\,
	datac => \registro7|LPM_SHIFTREG_component|dffs\(6),
	datad => \registro7|LPM_SHIFTREG_component|dffs\(4),
	combout => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X1_Y36_N0
\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\ = (\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\ & (\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\ & 
-- (!\inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\ & \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~2_combout\,
	datab => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~1_combout\,
	datac => \inst28|LPM_COMPARE_component|auto_generated|data_wire[0]~0_combout\,
	datad => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~0_combout\,
	combout => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X3_Y36_N2
\inst|reg_fstate~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|reg_fstate~1_combout\ = (\inst|fstate.Guarda_dir~q\ & ((\contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\) # (\inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|fstate.Guarda_dir~q\,
	datac => \contador7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	datad => \inst28|LPM_COMPARE_component|auto_generated|aneb_result_wire[0]~3_combout\,
	combout => \inst|reg_fstate~1_combout\);

-- Location: FF_X3_Y36_N3
\inst|fstate.RoW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|reg_fstate~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.RoW~q\);

-- Location: LCCOMB_X3_Y36_N24
\inst|fstate.ACK_State~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|fstate.ACK_State~feeder_combout\ = \inst|fstate.RoW~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|fstate.RoW~q\,
	combout => \inst|fstate.ACK_State~feeder_combout\);

-- Location: FF_X3_Y36_N25
\inst|fstate.ACK_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~inputclkctrl_outclk\,
	d => \inst|fstate.ACK_State~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.ACK_State~q\);

-- Location: LCCOMB_X2_Y36_N20
\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X2_Y36_N21
\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X2_Y36_N24
\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X2_Y36_N25
\contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contador8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X2_Y36_N26
\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\ = \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\);

-- Location: LCCOMB_X2_Y36_N0
\inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|fstate.ACK_State~q\) # ((\inst|fstate.Guarda_Dat~q\ & !\contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|fstate.ACK_State~q\,
	datac => \inst|fstate.Guarda_Dat~q\,
	datad => \contador8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~0_combout\,
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X2_Y36_N1
\inst|fstate.Guarda_Dat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SCL~input_o\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|fstate.Guarda_Dat~q\);

-- Location: LCCOMB_X1_Y36_N28
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = LCELL((\inst|fstate.Guarda_Dat~q\ & \SCL~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|fstate.Guarda_Dat~q\,
	datad => \SCL~input_o\,
	combout => \inst3~combout\);

-- Location: CLKCTRL_G0
\inst3~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y34_N12
\registro8bits|LPM_SHIFTREG_component|dffs[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[7]~feeder_combout\ = \SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA~input_o\,
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[7]~feeder_combout\);

-- Location: FF_X1_Y34_N13
\registro8bits|LPM_SHIFTREG_component|dffs[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(7));

-- Location: LCCOMB_X1_Y34_N18
\registro8bits|LPM_SHIFTREG_component|dffs[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[6]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(7),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[6]~feeder_combout\);

-- Location: FF_X1_Y34_N19
\registro8bits|LPM_SHIFTREG_component|dffs[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(6));

-- Location: LCCOMB_X1_Y34_N0
\registro8bits|LPM_SHIFTREG_component|dffs[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[5]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(6),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[5]~feeder_combout\);

-- Location: FF_X1_Y34_N1
\registro8bits|LPM_SHIFTREG_component|dffs[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(5));

-- Location: LCCOMB_X1_Y34_N2
\registro8bits|LPM_SHIFTREG_component|dffs[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[4]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(5),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[4]~feeder_combout\);

-- Location: FF_X1_Y34_N3
\registro8bits|LPM_SHIFTREG_component|dffs[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(4));

-- Location: LCCOMB_X1_Y34_N16
\registro8bits|LPM_SHIFTREG_component|dffs[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[3]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(4),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[3]~feeder_combout\);

-- Location: FF_X1_Y34_N17
\registro8bits|LPM_SHIFTREG_component|dffs[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(3));

-- Location: LCCOMB_X1_Y34_N10
\registro8bits|LPM_SHIFTREG_component|dffs[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[2]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(3),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[2]~feeder_combout\);

-- Location: FF_X1_Y34_N11
\registro8bits|LPM_SHIFTREG_component|dffs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(2));

-- Location: LCCOMB_X1_Y34_N28
\registro8bits|LPM_SHIFTREG_component|dffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[1]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(2),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[1]~feeder_combout\);

-- Location: FF_X1_Y34_N29
\registro8bits|LPM_SHIFTREG_component|dffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(1));

-- Location: LCCOMB_X1_Y34_N30
\registro8bits|LPM_SHIFTREG_component|dffs[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \registro8bits|LPM_SHIFTREG_component|dffs[0]~feeder_combout\ = \registro8bits|LPM_SHIFTREG_component|dffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \registro8bits|LPM_SHIFTREG_component|dffs\(1),
	combout => \registro8bits|LPM_SHIFTREG_component|dffs[0]~feeder_combout\);

-- Location: FF_X1_Y34_N31
\registro8bits|LPM_SHIFTREG_component|dffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3~clkctrl_outclk\,
	d => \registro8bits|LPM_SHIFTREG_component|dffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registro8bits|LPM_SHIFTREG_component|dffs\(0));

ww_ACK <= \ACK~output_o\;

ww_DATO(7) <= \DATO[7]~output_o\;

ww_DATO(6) <= \DATO[6]~output_o\;

ww_DATO(5) <= \DATO[5]~output_o\;

ww_DATO(4) <= \DATO[4]~output_o\;

ww_DATO(3) <= \DATO[3]~output_o\;

ww_DATO(2) <= \DATO[2]~output_o\;

ww_DATO(1) <= \DATO[1]~output_o\;

ww_DATO(0) <= \DATO[0]~output_o\;
END structure;


