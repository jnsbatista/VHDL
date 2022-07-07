library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_bit.rising_edge;

entity coffeemachine is
	port(rst,clk, fazer, m25, m50, m1, PB, GB: in std_logic;
		LP, LG: out std_logic);
end coffeemachine;

architecture comportamento of coffeemachine is
	type tipo_estado is (I, P, G, S, C, F, E);
	signal estado, prox_estado: tipo_estado;
	signal soma_final, soma: std_logic_vector(3 downto 0) := "0000";
	signal m25s, m50s, m1s, Ps, Gs: std_logic := '0';

begin
	mudaestado: process(clk, rst)	
	begin
		if rst = '1' then
			estado <= I;
			
		elsif clk'event and clk = '1' then
			case estado is
				when I =>
					LP <= '0';
					LG <= '0';
					soma <= "0000";
					soma_final <= "0000";
					m25s <= '0';
					m50s <= '0';
					m1s <= '0';
					Ps <= '0';
					Gs <= '0';
					
					if (PB = '1') then
						prox_estado <= P;
					elsif (GB = '1') then
						prox_estado <= G;
					else
						prox_estado <= I;
					end if;
				
				when P =>
				--passou
					Ps <= '1';
					soma <= "0100";
					prox_estado <= S;
					
				when G =>
					Gs <= '1';
					soma <= "1010";
					prox_estado <= S;
				
				when S =>					
					if (soma_final < soma) then
						prox_estado <= C;
					else	
						prox_estado <= F;
					end if;
				
				when C =>
					if((m25 = '1') and (m25s = '0')) then
						soma_final <= soma_final + "0001";
						m25s <= '1';
					elsif((m25 = '0') and (m25s = '1')) then
						m25s <= '0';
					end if;
					
					
					if((m50 = '1') and (m50s = '0')) then
						soma_final <= soma_final + "0010";
						m50s <= '1';
					elsif((m50 = '0') and (m50s = '1')) then
						m50s <= '0';
					end if;
					
					
					if((m1 = '1') and (m1s = '0')) then
						soma_final <= soma_final + "0100";
						m1s <= '1';
					elsif((m1 = '0') and (m1s = '1')) then
						m1s <= '0';
					end if;
					
					prox_estado <= S;
					
				when F =>
					if(fazer = '1') then
						prox_estado <= E;
					else
						prox_estado <= F;
					end if;
					
				when E =>
					
					if(Ps = '1') then
						LP <= '1';
					elsif (Gs = '1') then
						LG <= '1';
					end if;
			end case;
			estado <= prox_estado;
		end if;
	end process mudaestado;
	 
	
end comportamento;
	