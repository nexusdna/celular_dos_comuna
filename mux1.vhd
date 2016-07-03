library IEEE; use IEEE.Std_Logic_1164.all;

entity mux1 is
port 	(
	in_pass: in std_logic_vector(4 downto 0);
	agenda: in std_logic_vector(19 downto 0);
	conta_asc: in std_logic_vector(19 downto 0);
	s1: in std_logic_vector(1 downto 0);
	REG: out std_logic_vector(19 downto 0)
	);
end mux1;


architecture circuito of mux1 is

signal password: std_logic_vector(19 downto 0);

begin

password <= in_pass & in_pass & in_pass & in_pass;

REG <=
	"00000000000000000000" when s = "00" else
	password when s = "01" else
	agenda when s = "10" else
	conta_asc when s = "11";
end circuito;



