library verilog;
use verilog.vl_types.all;
entity I2E_Maquina_De_Estado_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        fin_dato        : in     vl_logic;
        fin_dir         : in     vl_logic;
        reset           : in     vl_logic;
        SDA             : in     vl_logic;
        soy             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end I2E_Maquina_De_Estado_vlg_sample_tst;
