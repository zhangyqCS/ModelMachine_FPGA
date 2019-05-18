library verilog;
use verilog.vl_types.all;
entity MC_TEMP_vlg_sample_tst is
    port(
        CLK_50M         : in     vl_logic;
        CLR             : in     vl_logic;
        CS              : in     vl_logic;
        WR              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MC_TEMP_vlg_sample_tst;
