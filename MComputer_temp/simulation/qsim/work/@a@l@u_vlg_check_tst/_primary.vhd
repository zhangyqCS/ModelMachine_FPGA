library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        ALU_OUT         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
