library verilog;
use verilog.vl_types.all;
entity IR_vlg_check_tst is
    port(
        ADD             : in     vl_logic;
        HALT            : in     vl_logic;
        LD              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end IR_vlg_check_tst;
