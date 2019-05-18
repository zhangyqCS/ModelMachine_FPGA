library verilog;
use verilog.vl_types.all;
entity MC_TEMP is
    port(
        CLK             : out    vl_logic;
        CLK_50M         : in     vl_logic;
        T0              : out    vl_logic;
        CLR             : in     vl_logic;
        T1              : out    vl_logic;
        T2              : out    vl_logic;
        T3              : out    vl_logic;
        T4              : out    vl_logic;
        T5              : out    vl_logic;
        T6              : out    vl_logic;
        T7              : out    vl_logic;
        IPC             : out    vl_logic;
        LD              : out    vl_logic;
        IIR             : out    vl_logic;
        IDR             : out    vl_logic;
        EDR             : out    vl_logic;
        WR              : in     vl_logic;
        CS              : in     vl_logic;
        WR1             : in     vl_logic;
        RAM_ADDR        : in     vl_logic_vector(2 downto 0);
        IMAR            : out    vl_logic;
        RAM_IN          : in     vl_logic_vector(7 downto 0);
        ADD             : out    vl_logic;
        HALT            : out    vl_logic;
        IA              : out    vl_logic;
        EA              : out    vl_logic;
        ISUM            : out    vl_logic;
        ESUM            : out    vl_logic;
        RAM_OUT         : out    vl_logic_vector(7 downto 0);
        RESULT          : out    vl_logic_vector(7 downto 0)
    );
end MC_TEMP;
