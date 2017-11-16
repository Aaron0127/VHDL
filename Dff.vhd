Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity Dff is
port(	
	D: in STD_LOGIC;
	clk: in STD_LOGIC;
	clr : in STD_LOGIC;
	q: out STD_LOGIC
);
end Dff;

Architecture Behavioral of Dff is
begin
    process(clr, clk)
	begin
		if (clk='1') then
			q <= '0';
		elseif(rising_edge(clk)) then
			q <= D;
		end if;
    end process;	

end Behavioral;
