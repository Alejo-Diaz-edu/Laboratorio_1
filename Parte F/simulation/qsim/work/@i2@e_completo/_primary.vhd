library verilog;
use verilog.vl_types.all;
entity I2E_completo is
    port(
        ACK             : out    vl_logic;
        SCL             : in     vl_logic;
        SDA             : inout  vl_logic;
        Direccion       : in     vl_logic_vector(6 downto 0);
        DATO            : out    vl_logic_vector(7 downto 0)
    );
end I2E_completo;
