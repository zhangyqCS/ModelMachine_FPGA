library verilog;
use verilog.vl_types.all;
entity RAM_MUX_vlg_sample_tst is
    port(
        DATA0X          : in     vl_logic_vector(2 downto 0);
        DATA1X          : in     vl_logic_vector(2 downto 0);
        SEL             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RAM_MUX_vlg_sample_tst;
