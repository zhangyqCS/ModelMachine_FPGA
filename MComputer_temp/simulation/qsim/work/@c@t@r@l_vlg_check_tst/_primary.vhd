library verilog;
use verilog.vl_types.all;
entity CTRL_vlg_check_tst is
    port(
        EA              : in     vl_logic;
        EDR             : in     vl_logic;
        ESUM            : in     vl_logic;
        IA              : in     vl_logic;
        IDR             : in     vl_logic;
        IIR             : in     vl_logic;
        IMAR            : in     vl_logic;
        IPC             : in     vl_logic;
        ISUM            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CTRL_vlg_check_tst;
