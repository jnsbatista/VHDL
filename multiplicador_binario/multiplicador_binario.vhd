library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity multiplicador_binario is
	port(
		-- sinais de entrada de um bit
		clk,in_multiplicando, rst,
		init, in_multiplicador: in std_logic;		
		-- entrada do valor de multiplicador/ multiplicado
		mult_in: in std_logic_vector(3 downto 0); 		
		-- Saida do resultado
		mult_out: out std_logic_vector(7 downto 0);		
		-- flag de pronto
		finished: out std_logic );
end multiplicador_binario;

architecture comportamento of multiplicador_binario is
	-- Declaração dos estados
	type tipo_estado is (m0, m1, stop, end_op);
	signal estado, prox_estado : tipo_estado;
	-- Declaração dos registradores
	signal A, B, Q, M: std_logic_vector(3 downto 0);
	--sinal para o contador
	signal P: std_logic_vector(1 downto 0);
	-- sinais de flag
	signal C, zero: std_logic;
begin
	zero <= P(1) nor P(0);
	mult_out <= A & Q;
	registra_estado: process (clk, rst)
	-- Process de ckock/reset com alteração de estados
	begin
		if (rst = '1') then
			estado <= stop;
		elsif (clk'event and clk = '1') then
			estado <= prox_estado;
		end if;
	end process;
	-- Logica de estados
	prox_estado_f: process (init, zero, estado)
	begin
		case estado is
			when m0 =>
				prox_estado <= m1;
			when m1 =>
				if zero = '1' then
					prox_estado <= end_op;
				else
					prox_estado <= m0;
				end if;
			when stop =>
				if init = '1' then
					prox_estado <= m0;
				else
					prox_estado <= stop;
				end if;
			when end_op =>
				if init = '1' then
					prox_estado <= end_op;
				else
					prox_estado <= stop;
				end if;
		end case;
	end process;
	-- Logica de fluxo de dados
	fluxo_dados_f: process (clk)
	variable reg_ca: std_logic_vector(4 downto 0);
	begin
		if (clk'event and clk = '1') then
			if in_multiplicando = '1' then
				B <= mult_in;
			end if;
			if in_multiplicador = '1' then
				M <= mult_in;
			end if;			
			case estado is
				when m0 =>
					if Q(0) = '1' then
						reg_ca := ('0'& A) + ('0' & B);
					else
						reg_ca := C & A;
					end if;
					C <= reg_ca(4);
					A <= reg_ca(3 downto 0);
				when m1 =>
					c <= '0';
					A <= C & A(3 downto 1);
					Q <= A(0) & Q(3 downto 1);
					P <= P - "01";
				when stop =>
					finished <= '0';
					if init = '1' then
						C <='0';
						A <= "0000";
						Q <= M;
						P <= "11";
					else 
						C <= C;
						A <= A;
						Q <= Q;
						P <= P;
					end if;
				when end_op =>
					finished <= '1';
			end case;
		end if;
	end process;
end comportamento;
