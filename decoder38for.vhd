Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity decode38for Is
port(
	x: in STD_LOGIC_VECTOR(2 downto 0);
	y: out STTD_LOGIC_VECTOR(7 downto 0);
	);
	
Architecture Behavioral of decode38for is 
begin
	process(x)
	variable j : integer;
	begin
	j:= conv_integer(a);
	for i in 0 to 7 loop
		if(i = j) then
			y(i) <= '1';
		else
			y(i) <= '0';
		end if;
	end loop;
	end process;
end Behavioral