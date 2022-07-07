LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

entity multiplicadorsimples is
port (rst, clk, iniciar : in std_logic;
		mo, mr: in std_logic_vector(3 downto 0);
      pronto: out std_logic;
      resultado: out std_logic_vector(7 downto 0));
end multiplicadorsimples;

architecture estrutura of multiplicadorsimples is

signal M, Q, A, cont: std_logic_vector(3 downto 0);
signal QM: std_logic;

begin
	M <= "0100";
	Q <= "0100";
	A <= "0000";
	QM <= '0';
	cont <= "0100";
	process(rst, clk, iniciar)
	begin
		if (rst = '1') then
		
		elsif(clk'event and clk = '1' and iniciar = '1') then
			if(cont > 0) then
			
				-- OPERAÇÃO
				if (Q(0) < QM) then
					A <= (A + M);
				elsif (Q(0) > QM) then
					A <= (A - M);
				else
					A <= A;
				end if;
				
				-- DESLOCAMENTO
				QM <= Q(0);
				Q <= A(0) & Q(3 downto 1);
				
				if (A(3) = '0') then 
					A <= '0' & A(2 downto 0);
				else
					A<= '1' & A(2 downto 0);
				end if;
				
				cont <= cont - '1';
				resultado <= A & Q;
			else
				resultado <= A & Q;
			end if;
		end if;
	end process;
end estrutura;