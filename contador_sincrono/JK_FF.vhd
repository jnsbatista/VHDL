library ieee;
use ieee.std_logic_1164.all;

entity JK_FF is
	PORT( J, K, CLOCK: in std_logic;
			Q, QN: out std_logic);
end JK_FF;
 
Architecture behavioral of JK_FF is
signal QX: std_logic;
begin
	process(CLOCK)
		begin
			if CLOCK = '1' then
				if (J='0' and K='0') then QX <= QX;
				elsif (J='0' and K='1') then QX <= '0';
				elsif (J='1' and K='0') then QX <= '1';
				elsif( J='1' and K='1') then QX <= not QX;
				end if;
			end if;
	end process;
	QN <= not QX;
	Q <= QX;
end behavioral;