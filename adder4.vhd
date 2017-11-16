Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity adder4a is
port(	
	a : in STD_LOGIC_VECTOR(3 downto 0);
	b : in STD_LOGIC_VECTOR(3 downto 0);
	carry: out STD_LOGIC;
	s: out STD_LOGIC_VECTOR(3 downto 0)
);

end adder4a;

Architecture Behavioral of adder4a is

signal c: std_logic_vector(3 downto 0);
 
begin					  
	c(0) <= '0';
	s <= a xor b xor c(3 downto 0);
	c(4 downto 1) <= (a and b) or (c(3 downto 0) and (a xor b));
	carry <=c(4);
	ovf <= c(3) xor c(4);  

end Behavioral;
