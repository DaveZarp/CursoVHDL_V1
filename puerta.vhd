library IEEE; 
USE IEEE.STD_LOGIC_1164.ALL;
entity puerta is 
port(Contra: in std_logic_vector(2 downto 0);
	cerradura: out std_logic;
	clk: in std_logic
);
end entity;

architecture algo of puerta is
type estados is (INICIAL,E1,E2,E3,E4); 
Constant key: std_logic_vector(2 downto 0) := "011";
signal presente: estados;
begin 

process(clk)
begin 
	if rising_edge(clk) then 
		case presente is 
			when INICIAL => 
				cerradura<='0';
				if contra= key then 
					presente<=E1;
				END IF; 
			When E1 =>
				CERRADURA<='1'; 
				presente<=E2; 
			WHEN E2 =>
				presente <= E3; 
			When E3 =>
				Presente<= E4;
			When E4=>
				cerradura<= '0'; -- cinco en binario es 101 ; maximo 111 
				PRESENTE <= inicial;
			when others => 
				presente <= inicial; 
			end case; 
	end if;
end process;

end algo;