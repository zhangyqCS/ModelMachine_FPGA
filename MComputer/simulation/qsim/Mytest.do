onerror {exit -code 1}
vlib work
vcom -work work Mytest.vho
vcom -work work MComputer.vwf.vht
vsim -novopt -c -t 1ps -sdfmax MC_TEMP_vhd_vec_tst/i1=Mytest_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.MC_TEMP_vhd_vec_tst
vcd file -direction Mytest.msim.vcd
vcd add -internal MC_TEMP_vhd_vec_tst/*
vcd add -internal MC_TEMP_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
