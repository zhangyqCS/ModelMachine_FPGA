library ieee;
use ieee.std_logic_1164.all;

entity converter is
port(
	data_in: in std_logic_vector(7 downto 0);
	a, b, c, d, e, f, g: out std_logic
);
end entity;

architecture a of converter is
begin
	process(data_in)
	begin
		if data_in(3 downto 0) = "0000" then --0
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '1';
		elsif data_in(3 downto 0) = "0001" then --1
			a <= '1';
			b <= '0';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';
		elsif data_in(3 downto 0) = "0010" then --2 
			a <= '0';
			b <= '0';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '0';
		elsif data_in(3 downto 0) = "0011" then --3
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '1';
			f <= '1';
			g <= '0';
		elsif data_in(3 downto 0) = "0100" then --4
			a <= '1';
			b <= '0';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '0';
			g <= '0';	
		elsif data_in(3 downto 0) = "0101" then --5
			a <= '0';
			b <= '1';
			c <= '0';
			d <= '0';
			e <= '1';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "0110" then --6
			a <= '0';
			b <= '1';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "0111" then --7
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '1';
			e <= '1';
			f <= '1';
			g <= '1';
		elsif data_in(3 downto 0) = "1000" then --8
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "1001" then --9
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '1';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "1010" then --A
			a <= '0';
			b <= '0';
			c <= '0';
			d <= '1';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "1011" then --B
			a <= '1';
			b <= '1';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "1100" then --C
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '1';
		elsif data_in(3 downto 0) = "1101" then --D
			a <= '1';
			b <= '0';
			c <= '0';
			d <= '0';
			e <= '0';
			f <= '1';
			g <= '0';
		elsif data_in(3 downto 0) = "1110" then --E
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '0';
			e <= '0';
			f <= '0';
			g <= '0';
		elsif data_in(3 downto 0) = "1111" then --F
			a <= '0';
			b <= '1';
			c <= '1';
			d <= '1';
			e <= '0';
			f <= '0';
			g <= '0';
		end if;
	end process;
end a;