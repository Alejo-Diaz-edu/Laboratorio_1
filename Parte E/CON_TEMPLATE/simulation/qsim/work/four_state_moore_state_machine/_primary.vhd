library verilog;
use verilog.vl_types.all;
entity four_state_moore_state_machine is
    port(
        clk             : in     vl_logic;
        input           : in     vl_logic;
        reset           : in     vl_logic;
        output          : out    vl_logic_vector(3 downto 0)
    );
end four_state_moore_state_machine;
