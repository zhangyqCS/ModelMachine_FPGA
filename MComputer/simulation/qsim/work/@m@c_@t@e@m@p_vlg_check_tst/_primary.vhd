library verilog;
use verilog.vl_types.all;
entity MC_TEMP_vlg_check_tst is
    port(
        RESULT          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end MC_TEMP_vlg_check_tst;
