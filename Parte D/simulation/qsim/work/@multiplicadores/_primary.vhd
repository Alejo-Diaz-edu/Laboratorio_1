library verilog;
use verilog.vl_types.all;
entity Multiplicadores is
    port(
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        B1              : in     vl_logic;
        B0              : in     vl_logic;
        RCS             : out    vl_logic_vector(3 downto 0);
        RSS             : out    vl_logic_vector(3 downto 0)
    );
end Multiplicadores;
