library ieee;
use ieee.std_logic_1164.all;

entity contador_moore is 
port (D, clk, rst: in std_logic;
	  S: out std_logic);
end entity contador_moore;

architecture maquina of contador_moore is

type estado is (S0, S1, S2, S3);
signal est: estado;
signal prox_est: estado;

begin 

atualizacao_estado: process (est, D)
begin 
	case est is
		when S0 => if (D = '1') then prox_est <= S1;
				   else prox_est <= S0;
				   end if;
		when S1 => if (D = '1') then prox_est <= S2;
				   else prox_est <= S0;
				   end if;
		when S2 => if (D = '1') then prox_est <= S3;
				   else prox_est <= S0;
				   end if;
		when S3 => if (D = '1') then prox_est <= S3;
				   else prox_est <= S0;
				   end if;
	end case;
end process atualizacao_estado;

registro_estado: process (clk, rst)
begin 
	if (rst = '0') then 
		est <= S0;
	elsif (rising_edge(clk)) then 
		est <= prox_est;
	end if;
end process registro_estado;

processamento_saida: process (est)
begin 
	case est is
		when S0 => S <= '0';
		when S1 => S <= '0';
		when S2 => S <= '0';
		when S3 => S <= '1';
	end case;
end process processamento_saida;


end architecture maquina;