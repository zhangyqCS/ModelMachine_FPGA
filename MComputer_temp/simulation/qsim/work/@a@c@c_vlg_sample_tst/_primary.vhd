library verilog;
use verilog.vl_types.all;
entity ACC_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        EA              : in     vl_logic;
        IA              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ACC_vlg_sample_tst;
