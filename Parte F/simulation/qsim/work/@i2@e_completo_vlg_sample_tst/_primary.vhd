library verilog;
use verilog.vl_types.all;
entity I2E_completo_vlg_sample_tst is
    port(
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        UNO             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end I2E_completo_vlg_sample_tst;
