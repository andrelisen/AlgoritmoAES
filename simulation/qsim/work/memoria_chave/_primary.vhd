library verilog;
use verilog.vl_types.all;
entity memoria_chave is
    port(
        state_index     : in     vl_logic_vector(5 downto 0);
        e0_c            : out    vl_logic_vector(7 downto 0);
        e1_c            : out    vl_logic_vector(7 downto 0)
    );
end memoria_chave;
