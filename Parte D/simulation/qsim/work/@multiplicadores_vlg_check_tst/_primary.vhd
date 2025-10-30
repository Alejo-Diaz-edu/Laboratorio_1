library verilog;
use verilog.vl_types.all;
entity Multiplicadores_vlg_check_tst is
    port(
        RCS             : in     vl_logic_vector(3 downto 0);
        RSS             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Multiplicadores_vlg_check_tst;
