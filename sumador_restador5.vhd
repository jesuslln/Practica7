library ieee;
use ieee.std_logic_1164.all;

entity sumador_restador5 is

	port( a,b : in std_logic_vector (4 downto 0);
		     s : out std_logic_vector (4 downto 0);
			s_r : in std_logic;
	 desborde : out std_logic);
	 
end sumador_restador5;


architecture structural of sumador_restador5 is

component sumador1bit

	port( a_i, b_i : in std_logic;
				  c_i : in std_logic;
				  s_i : out std_logic;
			c_i_mas1 : out std_logic);
			
end component;

signal c : std_logic_vector (4 downto 0);
signal b_aux : std_logic_vector (4 downto 0);

	begin 
	
	c(0) <= s_r;
	desborde <= c(4) xor c(3);
	
	GenSum : for i in 0 to 3 generate
			b_aux<= b(i) xor s_r;
	
			i_suma : sumador1bit 
				port map( 
				a_i => a(i),
				b_i => b_aux(i),
				c_i => c(i),
				s_i => s(i),
				c_i_mas1 => c(i+1));
				
	end generate GenSum;
	
end structural;