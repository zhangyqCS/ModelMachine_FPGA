library verilog;
use verilog.vl_types.all;
entity DR is
    port(
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        IDR             : in     vl_logic;
        EDR             : in     vl_logic;
        CLK             : in     vl_logic;
        DATA_OUT        : out    vl_logic_vector(7 downto 0)
    );
end DR;
