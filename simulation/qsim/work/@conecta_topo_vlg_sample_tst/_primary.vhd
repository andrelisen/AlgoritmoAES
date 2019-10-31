library verilog;
use verilog.vl_types.all;
entity Conecta_topo_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        entrada0_top    : in     vl_logic_vector(7 downto 0);
        entrada1_top    : in     vl_logic_vector(7 downto 0);
        entrada2_top    : in     vl_logic_vector(7 downto 0);
        entrada3_top    : in     vl_logic_vector(7 downto 0);
        entrada4_top    : in     vl_logic_vector(7 downto 0);
        entrada5_top    : in     vl_logic_vector(7 downto 0);
        entrada6_top    : in     vl_logic_vector(7 downto 0);
        entrada7_top    : in     vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Conecta_topo_vlg_sample_tst;
