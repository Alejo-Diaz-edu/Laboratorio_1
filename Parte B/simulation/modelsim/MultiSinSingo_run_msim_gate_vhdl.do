transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MultiSinSingo.vho}

vcom -93 -work work {C:/altera/13.0sp1/Laboratorio_1/Parte B/MultiplicadorSS_tb.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  MultiplicadorSS_tb

add wave *
view structure
view signals
run -all
