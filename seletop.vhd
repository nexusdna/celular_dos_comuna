library ieee; use ieee.std_logic_1164.all;
entity seletop is
port 	( 
	SW: in std_logic_vector (9 downto 0);
	AGENDA: in std_logic_vector (19 downto 0);
	CONTA_ASC: in std_logic_vector (19 downto 0);
	CONTA_DES: in std_logic_vector (9 downto 0);
	TENTATIVA: in std_logic_vector (1 downto 0);
	s1: in std_logic_vector (1 downto 0);
	s2: in std_logic
	LED_OUT: in std_logic_vector(9 downto 0);
	REG: in std_logic_vector(19 downto 0)
	);
end seletop;

architecture arqsel of seletop is

component decoder
port 	(	
	C: in std_logic_vector(9 downto 0);
	in_pass: out std_logic_vector(4 downto 0)
	);
end component;


component mux1
port 	(
	password: in std_logic_vector(19 downto 0);
	agenda: in std_logic_vector(19 downto 0);
	conta_asc: in std_logic_vector(19 downto 0);
	s1: in std_logic_vector(1 downto 0);
	REG: out std_logic_vector(19 downto 0)
	);
end component;


component mux2
port 	(
	conta_des: in std_logic_vector(9 downto 0);
	tentativa: in std_logic_vector(1 downto 0);
	s2: in std_logic;
	led_out: out std_logic_vector(9 downto 0)
	);
end component;


		
begin

S00: decoder port map (SW(9 downto 0), in_pass(4 downto 0));

S01: mux1 port map (password(19 downto 0), AGENDA(19 downto 0), CONTA_ASC(19 downto 0), s1(1 downto 0), REG(19 downto 0));

S10: mux2 port map (CONTA_DES(9 downto 0), TENTATIVA(1 downto 0), s2, LED_OUT(9 downto 0));

end arqsel;
