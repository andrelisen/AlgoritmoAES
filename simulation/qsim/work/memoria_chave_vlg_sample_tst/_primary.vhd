library verilog;
use verilog.vl_types.all;
entity memoria_chave_vlg_sample_tst is
    port(
        state_index     : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end memoria_chave_vlg_sample_tst;
