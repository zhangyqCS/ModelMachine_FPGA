library verilog;
use verilog.vl_types.all;
entity PC_vlg_check_tst is
    port(
        PCOUT           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end PC_vlg_check_tst;
