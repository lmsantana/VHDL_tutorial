library ieee;
use ieee.numeric_bit.all;

entity datapath is
port (A, B: in unsigned(7 downto 0) := "00000000";
	  SAIDA: out unsigned(7 downto 0) := "00000000";
	  SA, SB, LA, LB, OP, RST: in bit := '0';
	  EQ, A_maior_B, A_menor_B: out bit := '0');
end datapath;

architecture comportamento of datapath is 

signal auxA: unsigned (7 downto 0) := "00000000";
signal auxB: unsigned (7 downto 0) := "00000000";

signal out_regA: unsigned (7 downto 0) := "00000000";
signal out_regB: unsigned (7 downto 0) := "00000000";

signal out_ula: unsigned (7 downto 0) := "00000000";

begin 

-- Multiplexer A
auxA <= A when SA = '0' else out_ula;
		
-- Multiplexer B
auxB <= B when SA = '0' else out_ula;
		
-- Registrador A
regA: process (LA)
begin
	if (RST = '1') then 
		out_regA <= "00000000";
	elsif (rising_edge(LA)) then 
		 out_regA <= auxA;
	else out_regA <= out_regA;
	end if;
end process regA;

-- Registrador B
regB: process (LB)
begin
	if (RST = '1') then 
		out_regB <= "00000000";
	elsif (rising_edge(LB)) then 
		 out_regB <= auxB;
	else out_regB <= out_regB;
	end if;
end process regB;

-- ULA
out_ula <= (out_regA - out_regB) when OP = '1' else (out_regB - out_regA);
		   
-- Comparador
EQ 		  <= '1' when (out_regA = out_regB) else '0';
A_maior_B <= '1' when (out_regA > out_regB) else '0';
A_menor_B <= '1' when (out_regA < out_regB) else '0';

-- Saida do sistema
SAIDA <= out_regA;

end architecture comportamento;