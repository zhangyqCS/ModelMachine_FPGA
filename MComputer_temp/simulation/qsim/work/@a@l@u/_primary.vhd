library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        AC              : in     vl_logic_vector(7 downto 0);
        DR              : in     vl_logic_vector(7 downto 0);
        ISUM            : in     vl_logic;
        ESUM            : in     vl_logic;
        ALU_OUT         : out    vl_logic_vector(7 downto 0)
    );
end ALU;
