LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY comparador2 IS
PORT (a : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END comparador2;

ARCHITECTURE estrutura OF comparador2 IS
BEGIN
	WITH a SELECT
          s <= "00" WHEN "00",
					"01" WHEN "11",
					"10" WHEN "01",
					"11" WHEN OTHERS;
END estrutura;