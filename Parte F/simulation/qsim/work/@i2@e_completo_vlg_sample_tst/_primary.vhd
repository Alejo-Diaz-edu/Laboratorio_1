library verilog;
use verilog.vl_types.all;
entity I2E_completo_vlg_sample_tst is
    port(
        Direccion       : in     vl_logic_vector(6 downto 0);
        SCL             : in     vl_logic;
        SDA             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end I2E_completo_vlg_sample_tst;
