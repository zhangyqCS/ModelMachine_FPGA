library verilog;
use verilog.vl_types.all;
entity RAM_MUX is
    port(
        SEL             : in     vl_logic;
        DATA0X          : in     vl_logic_vector(2 downto 0);
        DATA1X          : in     vl_logic_vector(2 downto 0);
        RESULT          : out    vl_logic_vector(2 downto 0)
    );
end RAM_MUX;
