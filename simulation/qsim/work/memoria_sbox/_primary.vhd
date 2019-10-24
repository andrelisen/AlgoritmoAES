library verilog;
use verilog.vl_types.all;
entity memoria_sbox is
    port(
        entrada         : in     vl_logic_vector(7 downto 0);
        retorno         : out    vl_logic_vector(7 downto 0)
    );
end memoria_sbox;
