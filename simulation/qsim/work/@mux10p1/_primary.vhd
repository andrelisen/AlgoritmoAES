library verilog;
use verilog.vl_types.all;
entity Mux10p1 is
    port(
        r1              : in     vl_logic_vector(7 downto 0);
        r2              : in     vl_logic_vector(7 downto 0);
        r3              : in     vl_logic_vector(7 downto 0);
        r4              : in     vl_logic_vector(7 downto 0);
        r5              : in     vl_logic_vector(7 downto 0);
        r6              : in     vl_logic_vector(7 downto 0);
        r7              : in     vl_logic_vector(7 downto 0);
        r8              : in     vl_logic_vector(7 downto 0);
        r9              : in     vl_logic_vector(7 downto 0);
        r10             : in     vl_logic_vector(7 downto 0);
        seletor         : in     vl_logic_vector(3 downto 0);
        rsaida          : out    vl_logic_vector(7 downto 0)
    );
end Mux10p1;
