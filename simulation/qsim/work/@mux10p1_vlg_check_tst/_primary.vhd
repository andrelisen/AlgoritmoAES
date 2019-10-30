library verilog;
use verilog.vl_types.all;
entity Mux10p1_vlg_check_tst is
    port(
        rsaida          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Mux10p1_vlg_check_tst;
