LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Multiplicadores IS 
	PORT
	(
	--INPUTS
		A1 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		
	--OUTPUTS
		RCS: OUT SIGNED(3 downto 0);
		RSS: OUT UNSIGNED(3 downto 0)
	);
END Multiplicadores;

ARCHITECTURE Multiplicador OF Multiplicadores IS 

SIGNAL A1A0: std_logic_vector(1 downto 0);
SIGNAL B1B0: std_logic_vector(1 downto 0);

BEGIN

	A1A0 <= A1 & A0;
	B1B0 <= B1 & B0;

	RCS <= SIGNED(A1A0) * SIGNED(B1B0);
	RSS <= UNSIGNED(A1A0) * UNSIGNED(B1B0);
	
END ARCHITECTURE;
	