library verilog;
use verilog.vl_types.all;
entity PC is
    port(
        IPC             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        PCOUT           : out    vl_logic_vector(2 downto 0)
    );
end PC;
