library verilog;
use verilog.vl_types.all;
entity I2E_Maquina_De_Estado_vlg_check_tst is
    port(
        ACK             : in     vl_logic;
        Hab_Dat         : in     vl_logic;
        Hab_Dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end I2E_Maquina_De_Estado_vlg_check_tst;
