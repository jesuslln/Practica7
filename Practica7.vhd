library ieee;
use ieee.std_logic_1164.all;

entity  Practica7
	port(
		a,b : in std_logic_vector(4 downto 0);
		sel : in std_logic_vector(2 downto 0);
		ov : out std_logic;
		s1,s2 : out std_logic_vector(6 downto 0)
		);
end Practica7


