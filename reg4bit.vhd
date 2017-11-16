Library IEEE;
use IEEE.STD_LOGIC_1164.all;

Entity reg4bit is
port(	
	load: in STD_LOGIC;
	inp: in STD_LOGIC;
	clr : in STD_LOGIC;
	clk : in STD_LOGIC;
	q: out STD_LOGIC_VECTOR(3 downto 0)
);
end reg4bit;

Architecture Behavioral of reg4bit is
begin
    process(clr, clk)
	begin
		if (clk='1') then
			q <= "0000";
		elseif(clk'event and clk = '1') then
			if load = '1' then
				q <= inp;
			end if;
		end if;
    end process;	

end Behavioral;