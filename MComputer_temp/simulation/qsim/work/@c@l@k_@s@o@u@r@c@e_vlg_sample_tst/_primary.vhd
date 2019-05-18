library verilog;
use verilog.vl_types.all;
entity CLK_SOURCE_vlg_sample_tst is
    port(
        CLK_50M         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CLK_SOURCE_vlg_sample_tst;
