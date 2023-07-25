library IEEE; 
use ieee.std_logic_1164.all;

entity sumaDOS is 
port( entrAda: in std_logic_vector(2 downTO 0); -- A B CIN 
	S, COUT: out std_logic
); 
end entity;

architecture behavior of sumaDOS is 
signal aux: std_logic;

begin 
SALIDA: 
	S <= '0' WHEN ENTRADA = "000" else
		'1' when entrada = "001" else 
		'1' when entrada = "010" else 
		'0' when entrada = "011" else 
		'1' when entrada = "100" else 
		'0' when entrada = "101" else 
		'0' when entrada = "110" else 
		'1' when entrada = "111" ; 
CARRY: 		
	COUT <= '0' WHEN ENTRADA = "000" else
		'0' when entrada = "001" else 
		'0' when entrada = "010" else 
		'1' when entrada = "011" else 
		'0' when entrada = "100" else 
		'1' when entrada = "101" else 
		'1' when entrada = "110" else 
		'1' when entrada = "111" ; 
		
END BEHAVIOR;
