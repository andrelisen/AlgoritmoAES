library verilog;
use verilog.vl_types.all;
entity memoria_chave_vlg_check_tst is
    port(
        e0_c            : in     vl_logic_vector(7 downto 0);
        e1_c            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end memoria_chave_vlg_check_tst;
