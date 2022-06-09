library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_sincrono_simple_tb is
end contador_sincrono_simple_tb;


architecture arch of contador_sincrono_simple_tb is

	signal w_clk : std_logic := '0';  -- deve ser inicializado
	signal w_cout : std_logic_vector(3 downto 0);  -- output
	signal w_QRR : std_logic;  -- output
	
	constant T : time := 20 ns; 
	 
begin

	--geração de relogio com periodo T
	
	--w_clk <= not w_clk after T; 
	
	--Criação de filtro

	U_contador_sincrono : entity work.contador_sincrono port map (clk => w_clk, cout => w_cout, QRR => w_QRR);

    -- continuous clock
    U_test: process 
	 begin
		  w_clk <= '1';
		  wait for T/2;
		  w_clk <= '0';
		  wait for T/2;
    end process U_test;


end arch;