library verilog;
use verilog.vl_types.all;
entity IR_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        DATA_IN         : in     vl_logic_vector(7 downto 0);
        IIR             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end IR_vlg_sample_tst;
