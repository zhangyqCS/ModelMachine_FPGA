library verilog;
use verilog.vl_types.all;
entity MC_TEMP is
    port(
        RESULT          : out    vl_logic_vector(7 downto 0);
        CLK_50M         : in     vl_logic;
        WR              : in     vl_logic;
        CS              : in     vl_logic;
        CLR             : in     vl_logic
    );
end MC_TEMP;
