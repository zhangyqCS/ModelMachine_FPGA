library verilog;
use verilog.vl_types.all;
entity Mytest_vlg_sample_tst is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Mytest_vlg_sample_tst;
