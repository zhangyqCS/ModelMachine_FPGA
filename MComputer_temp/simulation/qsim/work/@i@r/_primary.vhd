library verilog;
use verilog.vl_types.all;
entity IR is
    port(
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        IIR             : in     vl_logic;
        CLK             : in     vl_logic;
        LD              : out    vl_logic;
        ADD             : out    vl_logic;
        HALT            : out    vl_logic
    );
end IR;
