LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY deslocador IS
PORT (a: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      clk, cdesl: IN STD_LOGIC;
      s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
END deslocador;

ARCHITECTURE estrutura OF deslocador IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (cdesl = '1') THEN
			if (a(7) = '1') then
				s <= '1' & a;
			else
				s <= '0' & a;
			end if;
		END IF;
	END PROCESS;
END estrutura;