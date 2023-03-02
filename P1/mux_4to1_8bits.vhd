library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1_8bits is
	port 
	( 
		a : in  STD_LOGIC_VECTOR (7 downto 0);
		b : in  STD_LOGIC_VECTOR (7 downto 0);
		c : in  STD_LOGIC_VECTOR (7 downto 0);
		d : in  STD_LOGIC_VECTOR (7 downto 0);
		sel : in  STD_LOGIC_VECTOR (1 downto 0);
		y : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end mux4to1_8bits;

architecture behavioral of mux4to1_8bits is
begin 
	process(a, b, c, d, sel) begin
		case (sel) is
			when "00" => y <= a;
			when "01" => y <= b;
			when "10" => y <= c;
			when "11" => y <= d;
		end case;
	end process;
end behavioral;

