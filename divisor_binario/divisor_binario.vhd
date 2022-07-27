library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divisor_binario is
    Port (clk, rst, start : in std_logic;
	 		dividendo : in  std_logic_vector (15 downto 0);     -- Entrada pada o dividendo
      divisor : in  std_logic_vector (7 downto 0);    -- Entrada pada o divisor
      quociente, resto: out  std_logic_vector (7 downto 0);
			pronto, overflow : out std_logic);    -- Indica o fim do algoritmo e a condição de estouro
 end divisor_binario;
 architecture funcionamento of divisor_binario is
 
            -- tipo para os estados FSM
	  type estado_tipo is (parado, mudanca, operacao);     

-- Entradas/saídas do estado registradorister e os z, d, e i registradoristers
	signal estado_registrador, estado_proximo : estado_tipo;   
	  signal z_registrador, z_proximo : unsigned(16 downto 0);   
	  signal d_registrador, d_proximo : unsigned(7 downto 0);
	  signal i_registrador, i_proximo : unsigned(3 downto 0);
	-- A saída de subtração 
	signal subtracao : unsigned(8 downto 0);
	  
 begin
	  --caminho de controle: registradores do FSM
	  process(clk, rst)
	  begin
		if (rst='1') then
			estado_registrador <= parado;
		elsif (clk'event and clk='1') then
			estado_registrador <= estado_proximo;
		end if;
	end process;

--control path: a lógica que determina o estado próximo do FSM 
	process(estado_registrador, start, dividendo, divisor, i_proximo)
	begin
		case estado_registrador is
			when parado =>
				if ( start='1' ) then
					if ( dividendo(15 downto 8) < divisor ) then
					estado_proximo <= mudanca;
					else
					estado_proximo <= parado;
					end if;
				else
					estado_proximo <= parado;
				end if;
					
			when mudanca =>
				estado_proximo <= operacao;
			
			when operacao =>
				if ( i_proximo = "1000" ) then
					estado_proximo <= parado;
				else
					estado_proximo <= mudanca;
				end if;
					
			end case;
		end process;
			
	--control path: logica de saida
	pronto <= '1' when estado_registrador=parado else
		    '0';
	overflow <= '1' when ( estado_registrador=parado and ( dividendo(15 downto 8) >= divisor ) ) else
		'0';
						
-- caminho de controle: registradores do contador usado para contar as iterações
	process(clk, rst)
	begin
		if (rst='1') then
			i_registrador <= ( others=>'0' );
		elsif (clk'event and clk='1') then
			i_registrador <= i_proximo;
		end if;
	end process;
	
--control path: a lógica para o contador de iteração
	process(estado_registrador, i_registrador)
	begin
		case estado_registrador is
			when parado =>
				i_proximo <= (others => '0');
								
			when mudanca =>
				i_proximo <= i_registrador;
				
			when operacao =>
				i_proximo <= i_registrador + 1;
		end case;
	end process;
			
	
	
	--caminho de dados: os registradores usados no caminho de dados
	process(clk, rst)
	begin
		if ( rst='1' ) then
			z_registrador <= (others => '0');
			d_registrador <= (others => '0');
		elsif ( clk'event and clk='1' ) then
			z_registrador <= z_proximo;
			d_registrador <= d_proximo;
		end if;
	end process;
	
	--data path: os multiplexadores do data path (escrito com base no registrador
--atribuições que ocorrem em diferentes estados do ASMD)
	process( estado_registrador, dividendo, divisor, z_registrador, d_registrador, subtracao)
	begin
		d_proximo <= unsigned(divisor);
		case estado_registrador is
			when parado =>
				z_proximo <= unsigned( '0' & dividendo );
				
			when mudanca =>
				z_proximo <= z_registrador(15 downto 0) & '0';
	
			when operacao =>
				if ( z_registrador(16 downto 8) < ('0' & d_registrador ) ) then
					z_proximo <= z_registrador;
				else
					z_proximo <=  subtracao(8 downto 0) & z_registrador(7 downto 1) & '1';
				end if;
		end case;
	end process;

	--caminho de dados: unidades funcionais
	subtracao <= ( z_registrador(16 downto 8) - unsigned('0' & divisor) );

--caminho de dados: saída
	quociente <= std_logic_vector( z_registrador(7 downto 0) );
	resto <= std_logic_vector( z_registrador(15 downto 8) );
	
 end funcionamento;