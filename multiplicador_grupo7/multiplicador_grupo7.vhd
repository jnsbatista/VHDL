LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity multiplicador_grupo7 is
PORT (rst, clk, inicio : IN STD_LOGIC;
		mr, mo : IN STD_LOGIC_VECTOR(3 DOWNTO 0));
      --zdesl : inout STD_LOGIC; -- sinais de controle BO-BC
      --opcont : OUT STD_LOGIC;
      --zqm, zq, za, zcont: OUT STD_LOGIC; -- sinais dos muxes
		--cm, ca, cq, cqm, ccont: OUT STD_LOGIC; -- sinais dos registradores
		--ccomp, cdesl: OUT STD_LOGIC );
end multiplicador_grupo7;

architecture estrutura of multiplicador_grupo7 is

	COMPONENT bo IS
	PORT (clk, opcont, zqm, zq, za, zcont, cm, ca, cq, cqm, ccont, ccomp, cdesl : IN STD_LOGIC;
			mr, mo : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			zero: out std_logic;
			saida: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;

	TYPE state_type IS (S0, S1, S2, S3, S31, S4, S5 );
	SIGNAL state: state_type;
	
	--signal mr, mo: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal saida: STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal zdesl, opcont, zqm, zq, za, zcont, cm, ca, cq, cqm, ccont, ccomp, cdesl, zero: STD_LOGIC ;
			
BEGIN

	blocop: bo port map(clk => clk, opcont => opcont, zqm => zqm, zq => zq, za => za, zcont => zcont,
	cm => cm, ca => ca, cq => cq, cqm => cqm,
	ccont => ccont, ccomp => ccomp, cdesl => cdesl,
	mr => mr, mo => mo, zero => zero, saida => saida);
	-- Logica de proximo estado (e registrador de estado)
	PROCESS (clk, rst)
	BEGIN
		if(rst = '1') THEN
			state <= S0 ;
		ELSIF (clk'EVENT AND clk = '1') THEN
			CASE state IS
				WHEN S0 =>
					if (inicio = '1') then
						state <= S1;
					end if;

				WHEN S1 =>
					state <= S2;
				WHEN S2 =>
					if (zero = '1') then
						state <= S0;
					else
						state <= S3;
					end if;

				WHEN S3 =>
					if (zdesl = '1') then
						state <= S4;
					else
						state <= S31;
					end if;

				WHEN S31 =>
					state <= S4;
				
				WHEN S4 =>
					state <= S5;

				WHEN S5 =>
					state <= S2;

			END CASE;
		END IF;
	END PROCESS;
	
	-- Logica de saida
	PROCESS (state)
	BEGIN
		CASE state IS
			WHEN S0 =>
				zq <= '1';
				zqm <= '1';
				za <= '1';
				zcont <= '1';
				ccont <='1';
				opcont <= '1';
								
			WHEN S1 =>
				cm <= '1';
				ca <= '1';
				cq <= '1';
				ccont <= '0';
				
			WHEN S2 =>
				zcont <= '0';
				ccont <= '0';
				
			WHEN S3 =>
				ccomp <= '1';
				
			WHEN S31 =>
			
			WHEN S4 =>
				cdesl <= '1';
				
			WHEN S5 =>
				ccont <= '1';
				
		END CASE;
	END PROCESS;
END estrutura;