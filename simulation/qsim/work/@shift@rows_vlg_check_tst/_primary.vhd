library verilog;
use verilog.vl_types.all;
entity ShiftRows_vlg_check_tst is
    port(
        s0              : in     vl_logic_vector(7 downto 0);
        s1              : in     vl_logic_vector(7 downto 0);
        s2              : in     vl_logic_vector(7 downto 0);
        s3              : in     vl_logic_vector(7 downto 0);
        s4              : in     vl_logic_vector(7 downto 0);
        s5              : in     vl_logic_vector(7 downto 0);
        s6              : in     vl_logic_vector(7 downto 0);
        s7              : in     vl_logic_vector(7 downto 0);
        s8              : in     vl_logic_vector(7 downto 0);
        s9              : in     vl_logic_vector(7 downto 0);
        s10             : in     vl_logic_vector(7 downto 0);
        s11             : in     vl_logic_vector(7 downto 0);
        s12             : in     vl_logic_vector(7 downto 0);
        s13             : in     vl_logic_vector(7 downto 0);
        s14             : in     vl_logic_vector(7 downto 0);
        s15             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ShiftRows_vlg_check_tst;
