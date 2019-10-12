library verilog;
use verilog.vl_types.all;
entity AES_topo_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        e0              : in     vl_logic_vector(7 downto 0);
        e1              : in     vl_logic_vector(7 downto 0);
        e2              : in     vl_logic_vector(7 downto 0);
        e3              : in     vl_logic_vector(7 downto 0);
        e4              : in     vl_logic_vector(7 downto 0);
        e5              : in     vl_logic_vector(7 downto 0);
        e6              : in     vl_logic_vector(7 downto 0);
        e7              : in     vl_logic_vector(7 downto 0);
        e8              : in     vl_logic_vector(7 downto 0);
        e9              : in     vl_logic_vector(7 downto 0);
        e10             : in     vl_logic_vector(7 downto 0);
        e11             : in     vl_logic_vector(7 downto 0);
        e12             : in     vl_logic_vector(7 downto 0);
        e13             : in     vl_logic_vector(7 downto 0);
        e14             : in     vl_logic_vector(7 downto 0);
        e15             : in     vl_logic_vector(7 downto 0);
        En_inputs       : in     vl_logic;
        En_regAddRound  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end AES_topo_vlg_sample_tst;
