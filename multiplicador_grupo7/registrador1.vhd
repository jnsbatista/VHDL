LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY registrador1 IS
PORT (clk, carga : IN STD_LOGIC;
	  d : IN STD_LOGIC;
	  q : OUT STD_LOGIC);
END registrador1;

ARCHITECTURE estrutura OF registrador1 IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (clk'EVENT AND clk = '1' AND carga = '1') THEN
			q <= d;
		END IF;
	END PROCESS;
END estrutura;