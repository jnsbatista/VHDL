library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_sincrono_simple_tb is
end contador_sincrono_simple_tb;


architecture arch of contador_sincrono_simple_tb is
    constant N : integer := 4;
    constant T : time := 40 ns; 

    signal clk : std_logic;  -- input
    signal cout : std_logic_vector(N-1 downto 0);  -- output
	 signal QRR : std_logic;  -- output
begin

    contador_sincrono_unit : entity work.contador_sincrono
        port map (clk=>clk, cout=>cout, QRR=>QRR);

    -- continuous clock
    process 
    begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;


end arch;