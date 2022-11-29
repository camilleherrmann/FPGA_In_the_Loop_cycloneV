transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/BAT 14/Documents/MEA5/PFE/FIL_init/FIL_application/src/in_adapt.vhd}
vcom -93 -work work {C:/Users/BAT 14/Documents/MEA5/PFE/FIL_init/FIL_application/src/in_conv.vhd}
vcom -93 -work work {C:/Users/BAT 14/Documents/MEA5/PFE/FIL_init/FIL_application/src/in_storing.vhd}
vcom -93 -work work {C:/Users/BAT 14/Documents/MEA5/PFE/FIL_init/FIL_application/src/in_sram.vhd}

vcom -93 -work work {C:/Users/BAT 14/Documents/MEA5/PFE/FIL_init/FIL_application/src/tb_in.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_in

add wave *
view structure
view signals
run -all
