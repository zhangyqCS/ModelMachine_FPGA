library verilog;
use verilog.vl_types.all;
entity RAM_vlg_check_tst is
    port(
        DOUT            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end RAM_vlg_check_tst;
