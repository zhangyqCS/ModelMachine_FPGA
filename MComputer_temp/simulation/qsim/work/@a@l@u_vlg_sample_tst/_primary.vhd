library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        AC              : in     vl_logic_vector(7 downto 0);
        DR              : in     vl_logic_vector(7 downto 0);
        ESUM            : in     vl_logic;
        ISUM            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
