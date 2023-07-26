LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity sumadorchido is 
port( A,B,CIN: in std_logic;
	clk: in std_logic;
	S, COUT: out std_logic
); 
end entity; 

architecture behavior of sumadorchido is 
signal uno: std_logic; 
signal dos: std_logic; 
begin 

uno <= A XOR B;
dos <= A AND B;

process(clk)
begin 
	if rising_edge(clk) then 
		S<= uno xor cin; 
		Cout<= dos or (Cin and uno);
	end if; 
end process; 

end behavior;
