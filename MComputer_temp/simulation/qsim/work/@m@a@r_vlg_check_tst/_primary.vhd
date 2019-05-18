library verilog;
use verilog.vl_types.all;
entity MAR_vlg_check_tst is
    port(
        ADDR_OUT        : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end MAR_vlg_check_tst;
