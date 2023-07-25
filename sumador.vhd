LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity sumador is 
port( A,B,CIN: in std_logic;
	S, COUT: out std_logic
); 
end entity; 

architecture behavior of sumador is 
signal aux: std_logic; 
begin 

S<= aux xor cin; 
Cout<= (A AND B) or (Cin and aux);
aux <= A XOR B;

end behavior;
