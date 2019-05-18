library verilog;
use verilog.vl_types.all;
entity DR_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        EDR             : in     vl_logic;
        IDR             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DR_vlg_sample_tst;
