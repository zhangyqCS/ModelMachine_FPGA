library verilog;
use verilog.vl_types.all;
entity CTRL_vlg_sample_tst is
    port(
        ADD             : in     vl_logic;
        CLK             : in     vl_logic;
        HALT            : in     vl_logic;
        LD              : in     vl_logic;
        T0              : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        T5              : in     vl_logic;
        T6              : in     vl_logic;
        T7              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CTRL_vlg_sample_tst;
