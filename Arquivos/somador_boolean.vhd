entity somador_boolean is 
port (A, B, CI: in bit;
	  S, CO: out bit);
end entity;

architecture boolean_equations of somador_boolean is 

begin
S  <= A xor B xor CI;
CO <= (A and B) or (A and CI) or (B and CI);

end architecture boolean_equations;

architecture truth_table of somador_boolean is 
signal cubo : bit_vector (2 downto 0);

begin 
cubo <= A & B & CI;	-- concatenando sinais

-- comando concorrente when else
S <= '1' when (cubo = "001") or (cubo = "010") or (cubo = "100") or (cubo = "111") else 
	 '0';
	 
-- comando concorrente with select
with cubo select
	CO <= '1' when "011" | "101" | "110" | "111", 
		  '0' when others;

end architecture truth_table;