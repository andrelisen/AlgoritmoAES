library verilog;
use verilog.vl_types.all;
entity contador is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        result          : out    vl_logic_vector(4 downto 0)
    );
end contador;
