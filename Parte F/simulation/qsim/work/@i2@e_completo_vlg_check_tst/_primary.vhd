library verilog;
use verilog.vl_types.all;
entity I2E_completo_vlg_check_tst is
    port(
        ACK             : in     vl_logic;
        DATO            : in     vl_logic_vector(7 downto 0);
        SDA             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end I2E_completo_vlg_check_tst;
