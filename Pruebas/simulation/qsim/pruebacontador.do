onerror {quit -f}
vlib work
vlog -work work pruebacontador.vo
vlog -work work pruebacontador.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.pruebacontador_vlg_vec_tst
vcd file -direction pruebacontador.msim.vcd
vcd add -internal pruebacontador_vlg_vec_tst/*
vcd add -internal pruebacontador_vlg_vec_tst/i1/*
add wave /*
run -all
