library verilog;
use verilog.vl_types.all;
entity MAR is
    port(
        ADDR_IN         : in     vl_logic_vector(2 downto 0);
        IMAR            : in     vl_logic;
        CLK             : in     vl_logic;
        ADDR_OUT        : out    vl_logic_vector(2 downto 0)
    );
end MAR;
