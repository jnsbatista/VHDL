library ieee;
use ieee.std_logic_1164.all;

entity contador_sincrono is
	port(clk: in std_logic;
			cout: out std_logic_vector(3 downto 0);
			QRR: out std_logic);
end contador_sincrono;

architecture comportamento of contador_sincrono is
signal c1, c2, c3: std_logic;

component JK_FF is
	PORT( J, K, CLOCK: in std_logic;
		Q, QN: out std_logic);
end component;
	
begin
	FF0: JK_FF
		port map(J => '1', K => '1', CLOCK => clk,
					Q => cout(0), QN => c1);
					
	FF1: JK_FF
		port map(J => '1', K => '1', CLOCK => c1,
					Q => cout(1), QN => c2);
					
	FF2: JK_FF
		port map(J => '1', K => '1', CLOCK => c2,
					Q => cout(2), QN => c3);
					
	FF3: JK_FF
		port map(J => '1', K => '1', CLOCK => c3,
					Q => cout(3), QN => QRR);
					
end comportamento;