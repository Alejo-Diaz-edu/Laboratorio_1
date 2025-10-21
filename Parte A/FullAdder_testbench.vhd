library	ieee;
use IEEE.STD_LOGIC_1164.ALL;

-- TESTBENCH NO TIENE ENTRADAS NI SALIDAS
entity FullAdder_testbench is
End FullAdder_testbench;

architecture pepe of FullAdder_testbench is

-- DECLARO COMPONENTES DE TESTBENCH
	component FullAdder
		port( 
				A: in std_logic;
				B: in std_logic;
				Cin: in std_logic;
				S: out std_logic;
				Cout: out std_logic
				);
	end component;

-- DECLARO SEÑALES 
		signal BC1, BC2, AB, AC : std_logic;
--	Inputs
		signal A : std_logic := '0';
		signal B : std_logic := '0';
		signal Cin : std_logic := '0';
-- Outputs
		signal S : std_logic;
		signal Cout : std_logic;
	
BEGIN
	
	-- INICIALIZO UUT (Unit under Test)
	uut: FullAdder port map (
		A => A,
		B => B,
		Cin => Cin,
		S => S,
		Cout => Cout
	);

	stim_proc: process
	BEGIN
		A <= '0'; B <= '0'; Cin <= '0'; wait for 10ns;
		A <= '0'; B <= '0'; Cin <= '1'; wait for 10ns;
		A <= '0'; B <= '1'; Cin <= '0'; wait for 10ns;
		A <= '0'; B <= '1'; Cin <= '1'; wait for 10ns;
		A <= '1'; B <= '0'; Cin <= '0'; wait for 10ns;
		A <= '1'; B <= '0'; Cin <= '1'; wait for 10ns;
		A <= '1'; B <= '1'; Cin <= '0'; wait for 10ns;
		A <= '1'; B <= '1'; Cin <= '1'; wait for 10ns;
		wait;
	END process;
End pepe;