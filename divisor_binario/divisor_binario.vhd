library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity divisor_binario is
	port(
	clk, rst, in_dividendo, in_divisor, init: in std_logic;
	divisor_in: in std_logic_vector(3 downto 0);
	dividendo_in: in std_logic_vector(7 downto 0);
	result: out std_logic_vector(7 downto 0);
	pronto: out std_logic);		
end divisor_binario;

architecture comportamento of divisor_binario is
	-- Declaração dos estados
	type tipo_estado is (d0, d1, stop, end_op);
	signal estado, prox_estado : tipo_estado;
	-- Declaração dos registradores
	signal A: std_logic_vector(3 downto 0);
	signal Q: std_logic_vector(7 downto 0);
	signal D_1, D_3: std_logic_vector(4 downto 0);
	signal D_2: std_logic_vector(2 downto 0);
	--sinal para o contador
	signal P: std_logic_vector(1 downto 0);
	-- sinais de flag
	signal B, zero: std_logic;
begin
	zero <= P(1) NOR P(0);
	-- Process de ckock/reset com alteração de estados
	registra_estado: process (clk, rst)
	begin
		if (rst = '1') then
			estado <= stop;
		elsif (clk'event and clk = '1') then
			estado <= prox_estado;
		end if;
	end process registra_estado;
	-- Logica de estados
	prox_estado_f: process (init, zero, estado)
	begin
		case estado is
			when stop =>
				if init = '1' then
					prox_estado <= d0;
				else
					prox_estado <= stop;
				end if;
			when d0 =>
				prox_estado <= d1;
			when d1 =>
				if zero = '1' then
					prox_estado <= end_op;
				else
					prox_estado <= d0;
				end if;
			when end_op =>
				if init = '1' then
					prox_estado <= end_op;
				else
					prox_estado <= stop;
				end if;
		end case;
	end process prox_estado_f;

	-- Logica de fluxo de dados
	fluxo_dados_f: process (clk)
	variable reg_ca: std_logic_vector(7 downto 0);
	begin
		if (clk'event and clk = '1') then
			if in_dividendo = '1' then
				Q <= (dividendo_in);
			end if;
			if in_divisor = '1' then
				A <= (divisor_in);
			end if;
			case estado is
				when stop =>
					pronto <= '0';
					if init = '1' then
						B <= '0';
						D_1 <= Q(7 downto 3);
						D_2 <= Q(2 downto 0);
						P <= "11";
					end if;
				when d0 =>
					if (A(3 downto 0) >= D_1(4 downto 0)) then
						B <= '0';
					else
						D_3 <= ( D_1(4 downto 0) - ('0' & A(3 downto 0)) );
						B <= '1';
					end if;
					reg_ca := D_3(3 downto 0) & D_2(2 downto 0) & B;	
					D_1 <= reg_ca(7 downto 3);
					D_2 <= reg_ca(2 downto 0);				
				when d1 =>
					
					P <= P - "01";
				when end_op =>
					pronto <= '1';
			end case;
		end if;
	end process fluxo_dados_f;
	result <= std_logic_vector(D_1 & D_2);
end comportamento;