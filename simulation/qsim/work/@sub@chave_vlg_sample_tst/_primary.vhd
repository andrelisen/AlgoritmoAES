library verilog;
use verilog.vl_types.all;
entity SubChave_vlg_sample_tst is
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
        sampler_tx      : out    vl_logic
    );
end SubChave_vlg_sample_tst;
