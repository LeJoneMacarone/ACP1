library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux5to1 is
	Port 
	( 
		a : in  STD_LOGIC;
		b : in  STD_LOGIC;
		c : in  STD_LOGIC;
		d : in  STD_LOGIC;
		e : in  STD_LOGIC;
		sel : in  STD_LOGIC_VECTOR (2 downto 0);
		y : out  STD_LOGIC
	);
end mux5to1;

architecture behavioral of mux5to1 is
begin
	process( a, b, c, d, e, sel) begin
		case (sel) is
			when "000" => y <= a;
			when "001" => y <= b;
			when "010" => y <= c;
			when "011" => y <= d;
			when "100" => y <= e;
			when others => y <= e;
		end case;
	end process;
end Behavioral;