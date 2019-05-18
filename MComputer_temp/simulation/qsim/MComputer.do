onerror {quit -f}
vlib work
vlog -work work MComputer.vo
vlog -work work MComputer.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ACC_vlg_vec_tst
vcd file -direction MComputer.msim.vcd
vcd add -internal ACC_vlg_vec_tst/*
vcd add -internal ACC_vlg_vec_tst/i1/*
add wave /*
run -all
