library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity semaforo is
	port(rst,clk: in std_logic;
		VD, AM, VM: out std_logic);
end semaforo;

architecture comportamento of semaforo is
	type tipo_estado is (verde, amarelo, vermelho);
	signal estado, prox_estado: tipo_estado;
	signal contagem: std_logic_vector(6 downto 0) := "0000000";
	
begin
	
	
	mudaestado: process(clk, rst)	
	begin
		if rst = '1' then
			estado <= verde;	
			
		elsif clk'event and clk = '1' then	
			
			case estado is			
				when verde =>
					VD <= '1';
					AM <= '0';
					VM <= '0';
					if (contagem < "1000000") then
						contagem <= contagem + '1';
					else
						contagem <= "0000000";
						prox_estado <= amarelo;
					end if;
				
				when amarelo =>
					VD <= '0';
					AM <= '1';
					VM <= '0';
					if (contagem < "0001000") then
						contagem <= contagem + '1';
					else
						contagem <= "0000000";
						prox_estado <= vermelho;
					end if;
					
				when vermelho =>
					VD <= '0';
					AM <= '0';
					VM <= '1';
					if (contagem < "1000000") then
						contagem <= contagem + '1';
					else
						contagem <= "0000000";
						prox_estado <= verde;
					end if;
			end case;
			
			estado <= prox_estado;
			
		end if;
	end process mudaestado;
	 
		
end comportamento;
	