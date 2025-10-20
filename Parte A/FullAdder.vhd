library	ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity FullAdder is
port( A: in bit;
		B: in bit;
		Cin: in bit;
		S: out bit;
		Cout: out bit);
End FullAdder;

architecture behavioral of FullAdder is
	signal BC1, BC2, AB, AC : bit;
	
	BEGIN
	S <= A xor BC1;
	BC1 <= B xor Cin;
	BC2 <= B and Cin;
	AB <= A and B;
	AC <= A and Cin;
	Cout <= BC2 or AB or AC;
End behavioral;