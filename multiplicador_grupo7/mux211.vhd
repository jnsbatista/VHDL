LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux211 IS
  PORT ( a, b : IN STD_LOGIC;
         sel: IN STD_LOGIC;
         y : OUT STD_LOGIC);
END mux211 ;

ARCHITECTURE comportamento OF mux211 IS
BEGIN
     WITH sel SELECT
         y <= a WHEN '0',
              b WHEN OTHERS;
END comportamento;