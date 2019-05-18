library verilog;
use verilog.vl_types.all;
entity MAR_vlg_sample_tst is
    port(
        ADDR_IN         : in     vl_logic_vector(2 downto 0);
        CLK             : in     vl_logic;
        IMAR            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MAR_vlg_sample_tst;
