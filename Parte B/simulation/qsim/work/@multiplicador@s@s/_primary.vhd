library verilog;
use verilog.vl_types.all;
entity MultiplicadorSS is
    port(
        R0              : out    vl_logic;
        B0              : in     vl_logic;
        A0              : in     vl_logic;
        R1              : out    vl_logic;
        B1              : in     vl_logic;
        A1              : in     vl_logic;
        R2              : out    vl_logic;
        R3              : out    vl_logic
    );
end MultiplicadorSS;
