library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity controlador_mdc is 
port (clk, RST, EQ, A_maior_B, A_menor_B: in bit;
	  SA, SB, LA, LB, OP, FIM: out bit := '0');
end controlador_mdc;

architecture mef of controlador_mdc is

type estado is (INI, L_AB, DEC, L_A, pL_B, L_B, DONE);
signal est: estado := INI;
signal prox_est: estado := INI;

begin 

mudanca_estado: process (clk, RST)
begin
	if (rising_edge(clk)) then 
		if (RST = '1') then est <= INI;
		else est <= prox_est;
		end if;
	end if;
end process mudanca_estado;

atualizacao_estado: process (est, RST, EQ, A_maior_B, A_menor_B)
begin 
	case est is 
		when INI 	=> 	if (RST = '0') then 	prox_est <= L_AB;
						else 					prox_est <= INI;
						end if;
		when L_AB 	=> 	prox_est <= DEC;
		when DEC 	=>  if (EQ = '1') then 				prox_est <= DONE;
						elsif (A_maior_B = '1') then  	prox_est <= L_A;
						elsif (A_menor_B = '1') then 	prox_est <= pL_B;
						else 							prox_est <= DEC;
						end if;
		when L_A	=>  prox_est <= DEC;
		when pL_B	=> 	prox_est <= L_B;
		when L_B	=>  prox_est <= DEC;
		when DONE 	=> 	if (RST = '1') then 	prox_est <= INI;
						else 					prox_est <= DONE;
						end if;
	end case;
end process atualizacao_estado;

processamento_saida: process (est)
begin 
	case est is 
		when INI	=> 	SA 	 <= '0';
						SB 	 <= '0';
						LA 	 <= '0';
						LB 	 <= '0';
						OP 	 <= '1';
						FIM  <= '0';
						
		when L_AB	=> 	SA 	 <= '0';
						SB 	 <= '0';
						LA 	 <= '1';
						LB 	 <= '1';
						OP 	 <= '1';
						FIM  <= '0';
						
		when DEC	=> 	SA 	 <= '1';
						SB 	 <= '1';
						LA 	 <= '0';
						LB 	 <= '0';
						OP 	 <= '1';
						FIM  <= '0';
						
		when L_A	=> 	SA 	 <= '1';
						SB 	 <= '1';
						LA 	 <= '1';
						LB 	 <= '0';
						OP 	 <= '1';
						FIM  <= '0';
						
		when pL_B	=> 	SA 	 <= '1';
						SB 	 <= '1';
						LA 	 <= '0';
						LB 	 <= '0';
						OP 	 <= '0';
						FIM  <= '0';
						
		when L_B	=> 	SA 	 <= '1';
						SB 	 <= '1';
						LA 	 <= '0';
						LB 	 <= '1';
						OP 	 <= '0';
						FIM  <= '0';
						
		when DONE	=> 	SA 	 <= '1';
						SB 	 <= '1';
						LA 	 <= '0';
						LB 	 <= '0';
						OP 	 <= '0';
						FIM  <= '1';
		
	end case;
end process processamento_saida;

end architecture mef;