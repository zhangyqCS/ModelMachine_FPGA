library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        WR              : in     vl_logic;
        CS              : in     vl_logic;
        DIN             : in     vl_logic_vector(7 downto 0);
        DOUT            : out    vl_logic_vector(7 downto 0);
        ADDR            : in     vl_logic_vector(2 downto 0)
    );
end RAM;
