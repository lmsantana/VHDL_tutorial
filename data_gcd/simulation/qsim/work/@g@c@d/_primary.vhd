library verilog;
use verilog.vl_types.all;
entity GCD is
    port(
        FIM             : out    vl_logic;
        clk             : in     vl_logic;
        RST             : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        SAIDA           : out    vl_logic_vector(7 downto 0)
    );
end GCD;
