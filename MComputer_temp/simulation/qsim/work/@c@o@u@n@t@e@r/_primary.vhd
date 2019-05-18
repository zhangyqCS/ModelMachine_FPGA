library verilog;
use verilog.vl_types.all;
entity COUNTER is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        T0              : out    vl_logic;
        T1              : out    vl_logic;
        T2              : out    vl_logic;
        T3              : out    vl_logic;
        T4              : out    vl_logic;
        T5              : out    vl_logic;
        T6              : out    vl_logic;
        T7              : out    vl_logic
    );
end COUNTER;
