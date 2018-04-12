library verilog;
use verilog.vl_types.all;
entity GCD_vlg_check_tst is
    port(
        FIM             : in     vl_logic;
        SAIDA           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end GCD_vlg_check_tst;
