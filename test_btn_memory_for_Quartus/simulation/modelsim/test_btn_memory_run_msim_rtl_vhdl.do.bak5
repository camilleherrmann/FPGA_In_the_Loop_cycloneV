transcript on
if ![file isdirectory test_btn_memory_iputf_libs] {
	file mkdir test_btn_memory_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vcom "C:/intelFPGA_lite/18.1/projets/test_btn_memory/pll_sim/pll.vho"

vcom -93 -work work {C:/intelFPGA_lite/18.1/projets/test_btn_memory/RAM.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projets/test_btn_memory/test_btn_memory.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/projets/test_btn_memory/btn.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/projets/test_btn_memory/tb_test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_test

add wave *
view structure
view signals
run -all
