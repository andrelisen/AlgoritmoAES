library verilog;
use verilog.vl_types.all;
entity SubChave is
    port(
        c0              : in     vl_logic_vector(7 downto 0);
        c1              : in     vl_logic_vector(7 downto 0);
        c2              : in     vl_logic_vector(7 downto 0);
        c3              : in     vl_logic_vector(7 downto 0);
        c4              : in     vl_logic_vector(7 downto 0);
        c5              : in     vl_logic_vector(7 downto 0);
        c6              : in     vl_logic_vector(7 downto 0);
        c7              : in     vl_logic_vector(7 downto 0);
        c8              : in     vl_logic_vector(7 downto 0);
        c9              : in     vl_logic_vector(7 downto 0);
        c10             : in     vl_logic_vector(7 downto 0);
        c11             : in     vl_logic_vector(7 downto 0);
        c12             : in     vl_logic_vector(7 downto 0);
        c13             : in     vl_logic_vector(7 downto 0);
        c14             : in     vl_logic_vector(7 downto 0);
        c15             : in     vl_logic_vector(7 downto 0);
        seletor         : in     vl_logic_vector(3 downto 0);
        n0              : out    vl_logic_vector(7 downto 0);
        n1              : out    vl_logic_vector(7 downto 0);
        n2              : out    vl_logic_vector(7 downto 0);
        n3              : out    vl_logic_vector(7 downto 0);
        n4              : out    vl_logic_vector(7 downto 0);
        n5              : out    vl_logic_vector(7 downto 0);
        n6              : out    vl_logic_vector(7 downto 0);
        n7              : out    vl_logic_vector(7 downto 0);
        n8              : out    vl_logic_vector(7 downto 0);
        n9              : out    vl_logic_vector(7 downto 0);
        n10             : out    vl_logic_vector(7 downto 0);
        n11             : out    vl_logic_vector(7 downto 0);
        n12             : out    vl_logic_vector(7 downto 0);
        n13             : out    vl_logic_vector(7 downto 0);
        n14             : out    vl_logic_vector(7 downto 0);
        n15             : out    vl_logic_vector(7 downto 0)
    );
end SubChave;
