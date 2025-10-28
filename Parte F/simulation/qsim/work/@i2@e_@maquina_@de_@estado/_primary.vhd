library verilog;
use verilog.vl_types.all;
entity I2E_Maquina_De_Estado is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        fin_dir         : in     vl_logic;
        soy             : in     vl_logic;
        fin_dato        : in     vl_logic;
        SDA             : in     vl_logic;
        Hab_Dir         : out    vl_logic;
        Hab_Dat         : out    vl_logic;
        ACK             : out    vl_logic
    );
end I2E_Maquina_De_Estado;
