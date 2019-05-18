library verilog;
use verilog.vl_types.all;
entity CTRL is
    port(
        LD              : in     vl_logic;
        ADD             : in     vl_logic;
        HALT            : in     vl_logic;
        CLK             : in     vl_logic;
        T0              : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        T5              : in     vl_logic;
        T6              : in     vl_logic;
        T7              : in     vl_logic;
        IPC             : out    vl_logic;
        IMAR            : out    vl_logic;
        IDR             : out    vl_logic;
        EDR             : out    vl_logic;
        IA              : out    vl_logic;
        EA              : out    vl_logic;
        ISUM            : out    vl_logic;
        ESUM            : out    vl_logic;
        IIR             : out    vl_logic
    );
end CTRL;
