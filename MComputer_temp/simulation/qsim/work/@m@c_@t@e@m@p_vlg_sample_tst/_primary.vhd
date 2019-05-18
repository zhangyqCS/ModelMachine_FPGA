library verilog;
use verilog.vl_types.all;
entity MC_TEMP_vlg_sample_tst is
    port(
        CLK_50M         : in     vl_logic;
        CLR             : in     vl_logic;
        CS              : in     vl_logic;
        RAM_ADDR        : in     vl_logic_vector(2 downto 0);
        RAM_IN          : in     vl_logic_vector(7 downto 0);
        WR              : in     vl_logic;
        WR1             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MC_TEMP_vlg_sample_tst;
