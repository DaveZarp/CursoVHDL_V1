library IEEE; 
use ieee.std_logic_1164.all;

entity superSuma IS 
port ( A,B: in std_logic_vector(2 downto 0);
	S: out std_logic_vector(2 downto 0);
	cout: out std_logic 
);
end entity;

architecture algo of superSuma is 

component sumador is 
port( A,B,CIN: in std_logic;
	S, COUT: out std_logic
); 
end component;

signal carrys: std_logic_vector(1 downto 0);
begin 

BIT0: sumador
port map(
		A=> A(0),
		B=> B(0),
		Cin=> '0',
		S=> S(0),
		cout=> carrys(0));
BIT1: sumador
port map(
		A=> A(1),
		B=> B(1),
		Cin=> carrys(0),
		S=> S(1),
		cout=> carrys(1));
		
BIT2: sumador
port map(
		A=> A(2),
		B=> B(2),
		Cin=> carrys(1),
		S=> S(2),
		cout=> cout);
		
end algo;
		