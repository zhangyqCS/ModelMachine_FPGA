library verilog;
use verilog.vl_types.all;
entity RAM_vlg_sample_tst is
    port(
        ADDR            : in     vl_logic_vector(2 downto 0);
        CS              : in     vl_logic;
        DIN             : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RAM_vlg_sample_tst;
