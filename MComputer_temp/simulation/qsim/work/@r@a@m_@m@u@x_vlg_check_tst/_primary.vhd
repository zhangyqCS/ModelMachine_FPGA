library verilog;
use verilog.vl_types.all;
entity RAM_MUX_vlg_check_tst is
    port(
        RESULT          : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end RAM_MUX_vlg_check_tst;
