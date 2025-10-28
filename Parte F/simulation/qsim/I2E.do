onerror {quit -f}
vlib work
vlog -work work I2E.vo
vlog -work work I2E.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.I2E_completo_vlg_vec_tst
vcd file -direction I2E.msim.vcd
vcd add -internal I2E_completo_vlg_vec_tst/*
vcd add -internal I2E_completo_vlg_vec_tst/i1/*
add wave /*
run -all
