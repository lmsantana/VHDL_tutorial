library ieee;
use ieee.std_logic_1164.all;

library altera;
use altera.altera_primitives_components.all;

entity control_ffd is
port (A, B, clk, rst: in std_logic;
	  Q: buffer std_logic);
end entity control_ffd;

architecture equacoes of control_ffd is 
signal q_prox : std_logic;

-- Declaração do componente FFD descrito na biblioteca de componentes
component dff
port(d, clk, clrn, prn :  in  std_logic;
     q                 :  out std_logic);
end component;

begin 

q_prox <= ((not A) and B) or ((not A) and Q) or (B and Q);

-- Invocando o FFD como um componente chamado "d1"
d1: dff port map (d => q_prox,
				  clk => clk,
				  clrn => rst,
				  prn => '1',
				  q => Q);
				  
end architecture equacoes;