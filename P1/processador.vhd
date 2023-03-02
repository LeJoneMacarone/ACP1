library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processador is
	port 
	( 
		clock : in  STD_LOGIC;
		reset : in  STD_LOGIC;
		op_code : in  STD_LOGIC_VECTOR (4 downto 0);
		constante : in  STD_LOGIC_VECTOR (7 downto 0);
		wr : out  STD_LOGIC;
		dados_m : in  STD_LOGIC_VECTOR (7 downto 0);
		dados_regA : out  STD_LOGIC_VECTOR (7 downto 0);
		pin : in  STD_LOGIC_VECTOR (7 downto 0);
		pout : out  STD_LOGIC_VECTOR (7 downto 0)
	);
end processador;

architecture structural of processador is

	component mux4to1_8bits 
	port 
	(
		a, b, c, d : in  STD_LOGIC_VECTOR (7 downto 0);
		sel : in  STD_LOGIC_VECTOR (1 downto 0);
		y : out  STD_LOGIC_VECTOR (7 downto 0)
	);
	end component;
	
	component mux5to1 
	port 
	(
		a, b, c, d, e : in  STD_LOGIC;
		sel : in  STD_LOGIC_VECTOR (1 downto 0);
		y : out  STD_LOGIC_VECTOR (7 downto 0)
	);
	end component;

begin -- falta port map(...)
	mux_R : mux4to1_8bits; 
	mux_PC : mux5to1;
end structural;

