onerror {quit -f}
vlib work
vlog -work work CODE6B.vo
vlog -work work CODE6B.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CODE6B_vlg_vec_tst
vcd file -direction CODE6B.msim.vcd
vcd add -internal CODE6B_vlg_vec_tst/*
vcd add -internal CODE6B_vlg_vec_tst/i1/*
add wave /*
run -all
