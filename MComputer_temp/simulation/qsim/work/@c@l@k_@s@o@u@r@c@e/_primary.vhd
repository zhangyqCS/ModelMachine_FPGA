library verilog;
use verilog.vl_types.all;
entity CLK_SOURCE is
    port(
        CLK_50M         : in     vl_logic;
        CLK             : out    vl_logic
    );
end CLK_SOURCE;
