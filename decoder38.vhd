Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity decode38 is
	port(
		x : in STD_lOGIC_VECTOR(2 downto 0);
		y : out STD_LOGIC_VECTOR(7 down to 0);
	);
end

Architecture Behavioral of decode38a is 
begin
	y(0) <= not(x(2) or x(1) or x(0));	 
	y(1) <= (not(x(2)) and not(x(1)) and x(0));
	y(2) <= (not(x(2)) and x(1) and not(x(0)));
	y(3) <= (not(x(2)) and x(1) and x(0));
	y(4) <= (x(2) and not(x(1)) and not(x(0)));
	y(5) <= (x(2) and not(x(1)) and x(0));
	y(6) <= (x(2) and x(1) and not(x(0)));
	y(7) <= (x(2) and x(1) and x(0));
	
	
end Behavioral;