onerror {quit -f}
vlib work
vlog -work work AES_topo.vo
vlog -work work AES_topo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SubChave_vlg_vec_tst
vcd file -direction AES_topo.msim.vcd
vcd add -internal SubChave_vlg_vec_tst/*
vcd add -internal SubChave_vlg_vec_tst/i1/*
add wave /*
run -all
