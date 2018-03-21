library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula8bits is 
port(A, B: in signed(7 downto 0);
	 sel: in std_logic;
	 S: out signed (7 downto 0));
end entity ula8bits;

architecture comportamento of ula8bits is 

begin 

sequencial: process(A, B, sel)
begin 
	if sel = '1' then 
		S <= A + B;
	elsif sel = '0' then 
		S <= A - B;
	else 
		S <= "00000000";
	end if;
end process sequencial;

end architecture comportamento;