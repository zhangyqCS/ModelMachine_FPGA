library verilog;
use verilog.vl_types.all;
entity MC_TEMP_vlg_check_tst is
    port(
        ADD             : in     vl_logic;
        CLK             : in     vl_logic;
        EA              : in     vl_logic;
        EDR             : in     vl_logic;
        ESUM            : in     vl_logic;
        HALT            : in     vl_logic;
        IA              : in     vl_logic;
        IDR             : in     vl_logic;
        IIR             : in     vl_logic;
        IMAR            : in     vl_logic;
        IPC             : in     vl_logic;
        ISUM            : in     vl_logic;
        LD              : in     vl_logic;
        RAM_OUT         : in     vl_logic_vector(7 downto 0);
        RESULT          : in     vl_logic_vector(7 downto 0);
        T0              : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        T5              : in     vl_logic;
        T6              : in     vl_logic;
        T7              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MC_TEMP_vlg_check_tst;
