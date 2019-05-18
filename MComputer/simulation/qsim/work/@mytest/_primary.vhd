library verilog;
use verilog.vl_types.all;
entity Mytest is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        RES             : out    vl_logic_vector(31 downto 0)
    );
end Mytest;
