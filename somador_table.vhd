entity somador_table is 
port (A, B, CI: in bit;
	  S, CO: out bit);
end entity somador_table;

architecture truth_table of somador_table is 
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