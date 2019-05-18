library verilog;
use verilog.vl_types.all;
entity ACC is
    port(
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        IA              : in     vl_logic;
        EA              : in     vl_logic;
        CLK             : in     vl_logic;
        DATA_OUT        : out    vl_logic_vector(7 downto 0)
    );
end ACC;
