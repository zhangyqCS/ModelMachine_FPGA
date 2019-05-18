library verilog;
use verilog.vl_types.all;
entity Mytest_vlg_check_tst is
    port(
        RES             : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Mytest_vlg_check_tst;
