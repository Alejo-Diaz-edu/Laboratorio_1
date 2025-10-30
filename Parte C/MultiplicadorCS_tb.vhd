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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed Oct 22 22:29:59 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MultiplicadorCS_tb IS 
	
END MultiplicadorCS_tb;

ARCHITECTURE bdf_type OF MultiplicadorCS_tb IS 

COMPONENT fulladder
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT MultiplicadorCS
	PORT
		(
			B0 :  IN  STD_LOGIC;
			A0 :  IN  STD_LOGIC;
			A1 :  IN  STD_LOGIC;
			B1 :  IN  STD_LOGIC;
			CLK :  IN  STD_LOGIC;
			R0 :  OUT  STD_LOGIC;
			R1 :  OUT  STD_LOGIC;
			R2 :  OUT  STD_LOGIC;
			R3 :  OUT  STD_LOGIC;
			SIGNO :  OUT  STD_LOGIC
		);
END COMPONENT;

SIGNAL A0 : STD_LOGIC := '0';
SIGNAL A1 : STD_LOGIC := '0';
SIGNAL B0 : STD_LOGIC := '0';
SIGNAL B1 : STD_LOGIC := '0';
SIGNAL R0 : STD_LOGIC := '0';
SIGNAL R1 : STD_LOGIC := '0';
SIGNAL R2 : STD_LOGIC := '0';
SIGNAL R3 : STD_LOGIC := '0';
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL SIGNO : STD_LOGIC := '0';

CONSTANT CLK_PERIOD : time := 10ns;

BEGIN 
	uut: MultiplicadorCS PORT MAP (
		A0 => A0,
		A1 => A1,
		B0 => B0,
		B1 => B1,
		R0 => R0,
		R1 => R1,
		R2 => R2,
		R3 => R3,
		CLK => CLK,
		SIGNO => SIGNO
		);
		
	CLK_PROCESS: PROCESS
	BEGIN
	CLK <= '0';
	WAIT FOR CLK_PERIOD/2;
	CLK <= '1';
	WAIT FOR CLK_PERIOD/2;
	END PROCESS;
	
	
	
	stim_proc: PROCESS
		BEGIN
			A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 50ns;
			A1 <= '0'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 50ns;
			A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 50ns;
			A1 <= '0'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 50ns;
			A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 50ns;
			A1 <= '0'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 50ns;
			A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 50ns;
			A1 <= '0'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 50ns;
			A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '0'; wait for 50ns;
			A1 <= '1'; A0 <= '0'; B1 <= '0'; B0 <= '1'; wait for 50ns;
			A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '0'; wait for 50ns;
			A1 <= '1'; A0 <= '0'; B1 <= '1'; B0 <= '1'; wait for 50ns;
			A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '0'; wait for 50ns;
			A1 <= '1'; A0 <= '1'; B1 <= '0'; B0 <= '1'; wait for 50ns;
			A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '0'; wait for 50ns;
			A1 <= '1'; A0 <= '1'; B1 <= '1'; B0 <= '1'; wait for 50ns;
		WAIT;
		END PROCESS;
END bdf_type;