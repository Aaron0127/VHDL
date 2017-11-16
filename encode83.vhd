Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity encode38 is
	port(
		x : in STD_lOGIC_VECTOR(7 downto 0);
		y : out STD_LOGIC_VECTOR(2 down to 0);
	);
end

Architecture Behavioral of encode38a is 
begin
	process(x)
		y(2) <= x(7) or x(6) or x(5) or x(4);
		y(1) <= x(7) or x(6) or x(3) or x(2);
		y(0) <= x(7) or x(5) or x(3) or x(1);
	end process;
end Behavioral;