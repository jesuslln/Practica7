use ieee.std_logic_1164.all;

entity Mux_3 is

	port( a,b,c : in std_logic_vector (4 downto 0); -- a (sumador), b (multi), c (logicas)
			sel_s : in std_logic_vector (1 downto 0);
	      s : out std_logic_vector (4 downto 0)); 
	 
end Mux_3;

architecture behavioural of Mux_3 is

--signal entrada : std_logic_vector (4 downto 0);

begin
		s <= a when sel_s = "00" else
			  b when sel_s = "01" else
			  c when sel_s = "10" else
			  "----";
					
end behavioural;