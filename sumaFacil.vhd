library IEEE; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sumafacil IS 
port ( A,B: in std_logic_vector(4 downto 0);
	S: out std_logic_vector(4 downto 0)
);
end entity;

architecture algo of sumafacil is 
begin 
S<= A+B;
end algo;