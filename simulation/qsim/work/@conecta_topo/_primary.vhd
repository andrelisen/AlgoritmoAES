library verilog;
use verilog.vl_types.all;
entity Conecta_topo is
    port(
        entrada0_top    : in     vl_logic_vector(7 downto 0);
        entrada1_top    : in     vl_logic_vector(7 downto 0);
        entrada2_top    : in     vl_logic_vector(7 downto 0);
        entrada3_top    : in     vl_logic_vector(7 downto 0);
        entrada4_top    : in     vl_logic_vector(7 downto 0);
        entrada5_top    : in     vl_logic_vector(7 downto 0);
        entrada6_top    : in     vl_logic_vector(7 downto 0);
        entrada7_top    : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        out0Add_top     : out    vl_logic_vector(7 downto 0);
        out1Add_top     : out    vl_logic_vector(7 downto 0);
        out2Add_top     : out    vl_logic_vector(7 downto 0);
        out3Add_top     : out    vl_logic_vector(7 downto 0);
        out4Add_top     : out    vl_logic_vector(7 downto 0);
        out5Add_top     : out    vl_logic_vector(7 downto 0);
        out6Add_top     : out    vl_logic_vector(7 downto 0);
        out7Add_top     : out    vl_logic_vector(7 downto 0);
        out8Add_top     : out    vl_logic_vector(7 downto 0);
        out9Add_top     : out    vl_logic_vector(7 downto 0);
        out10Add_top    : out    vl_logic_vector(7 downto 0);
        out11Add_top    : out    vl_logic_vector(7 downto 0);
        out12Add_top    : out    vl_logic_vector(7 downto 0);
        out13Add_top    : out    vl_logic_vector(7 downto 0);
        out14Add_top    : out    vl_logic_vector(7 downto 0);
        out15Add_top    : out    vl_logic_vector(7 downto 0)
    );
end Conecta_topo;
