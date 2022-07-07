LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY bo IS
PORT (clk, opcont, zqm, zq, za, zcont, cm, ca, cq, cqm, ccont, ccomp, cdesl : IN STD_LOGIC;
			mr, mo : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			zero: out std_logic;
			saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END bo;

-- Sinais de comando
-- ini = RstP = mA = CB  => ini=1 somente em S1
-- CA=1 em S1 e em S4
-- dec = op = m1 = m2  => dec=1 somente em S4 (estado no qual ocorre A <= A - 1 )
-- CP=1 somente em S3 (estado no qual ocorre P <= P + B )

ARCHITECTURE estrutura OF bo IS

	-- USAREMOS DOIS MUXES DOIS PARA UM DE 4 BITS
	COMPONENT mux214 IS
	  PORT ( a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT ;
	
	-- USAREMOS UM MUXE DOIS PARA UM DE 1 BITS
	COMPONENT mux211 IS
	  PORT ( a, b : IN STD_LOGIC;
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC);
	END COMPONENT ;
	
	-- USAREMOS UM MUXE DOIS PARA UM DE 8 BITS
	COMPONENT mux218 IS
	  PORT ( a, b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				sel: IN STD_LOGIC;
				y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT ;
	
	-- USAREMOS 4 REGISTRADORES DE 4 BITS
	COMPONENT registrador4 IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	-- USAREMOS 1 REGISTRADORE DE 1 BIT
	COMPONENT registrador1 IS
	PORT (clk, carga : IN STD_LOGIC;
		  d : IN STD_LOGIC;
		  q : OUT STD_LOGIC);
	END COMPONENT;
	
	-- USAREMOS UM SOMADOR SUBTRATOR
	COMPONENT somadorsubtrator IS
	PORT (a, b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  op: IN STD_LOGIC;
		  s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;
	
	--USAREMOS UM DESLOCADOR
	COMPONENT deslocador IS
	PORT (a: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			clk, cdesl: IN STD_LOGIC;
			s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
	END COMPONENT;
	
	--USAREMOS UM COMPARADOR DE DOIS BITS
	COMPONENT comparador2 IS
	PORT (a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			s : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	END COMPONENT;
	
	-- USAREMOS UM COMPARADOR DE UM BIT
	COMPONENT comparador1 IS
	PORT (a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			s : OUT STD_LOGIC);
	END COMPONENT;

		
	SIGNAL saimuxQ, saimuxA, sairegM, sairegQ, sairegA, saisomasubM, saimuxCONT, sairegCONT, saisomasubC: STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saimuxQM, sairegQM: std_logic;
	SIGNAL saimuxDESL: std_LOGIC_VECTOR (7 downto 0);
	signal saideslocador: std_LOGIC_VECTOR (8 downto 0);
	signal saicompara2: std_logic_vector(1 downto 0);

BEGIN
	muxQ: mux214 port map(a => saideslocador(7 downto 4), b => mr, sel => zq, y => saimuxQ);
	muxA: mux214 port map(a => saideslocador(3 downto 0), b => "0000", sel => za, y => saimuxA);
	registradorM: registrador4 port map(clk => clk, carga => cm, d => mo, q => sairegM);
	registradorQ: registrador4 port map(clk => clk, carga => cq, d => saimuxQ, q => sairegQ);
	registradorA: registrador4 port map(clk => clk, carga => ca, d => saimuxA, q => sairegA);
	somasubM: somadorsubtrator port map(a => sairegM, b => sairegA, op => saicompara2(0), s => saisomasubM);
	muxCONT: mux214 port map(a => "0100", b => saisomasubC, sel => zcont, y => saimuxCONT);
	registradorCONT: registrador4 port map(clk => clk, carga => ccont, d => saimuxCONT, q => sairegCONT);
	somasubC: somadorsubtrator port map(a => sairegCONT, b => "0001", op => opcont, s => saisomasubC);
	muxQM: mux211 port map(a => saideslocador(8), b => '0', sel => zqm, y => saimuxQM);
	regQM: registrador1 port map(clk => clk, carga => cqm, d => saimuxQM, q => sairegQM);
	comparadorZERO: comparador1 port map(a => sairegCONT, s => zero);
	muxDESL: mux218 port map(a => sairegA & sairegQ, b => saisomasubM & sairegQ, sel => saicompara2(0), y => saimuxDESL);
	desloca: deslocador port map(a => saimuxDESL, clk => clk, cdesl => cdesl, s => saideslocador);
	comparaQ: comparador2 port map(a => sairegQM & sairegQ(0), s => saicompara2);
	
	saida <= saideslocador(8 downto 1);

END estrutura;