library IEEE; use IEEE.Std_Logic_1164.all;
entity mux2 is
port 	(
	conta_des: in std_logic_vector(9 downto 0);
	tentativa: in std_logic_vector(1 downto 0);
	s2: in std_logic;
	led_out: out std_logic_vector(9 downto 0)
	);
end mux2;
architecture circuito of mux2 is 

signal tentasau: std_logic_vector(9 downto 0);

begin

tentasau <= "00000000" & tentativa;

led_out <=
	conta_des when s = '1' else
	tentasau when s = '0';

end circuito;


