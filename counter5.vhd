Library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

Entity mod5cnt is
port(	
	clr : in STD_LOGIC;
	clk : in STD_LOGIC;
	q: out STD_LOGIC_VECTOR(2 downto 0)
);
end mod5cnt;

Architecture Behavioral of mod5cnt is
signal count: std_logic_vector(2 downto 0);
begin
    process(clr, clk)
	begin
		if (clk='1') then
			count <= "000";
		elseif(clk'event and clk = '1') then
			if count = "100" then
				count <= "000";
			else 
				count <= count + 1;
			end if;
		end if;
		
    end process;	
	
	q <= count;
end Behavioral;