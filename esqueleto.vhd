-- região com inclusâo de bibliotecas e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- região de inclusão da entidade com as interfaces
entity circuito is 
port (entrada1, entrada2: in bit;
	  saida1, saida2: out bit);
end entity circuito;

-- região da descrição da arquitetura
architecture comportamento of circuito is 

	-- região para declaração de componente, funções, sinais...
signal auxiliar: bit;
	
begin 
	-- região para inclusão de código concorrente
saida1 <= entrada1 and entrada2;
auxiliar <= not entrada2;
saida2 <= auxiliar;

end architecture comportamento;