library verilog;
use verilog.vl_types.all;
entity memoria_sbox_vlg_check_tst is
    port(
        retorno         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end memoria_sbox_vlg_check_tst;
