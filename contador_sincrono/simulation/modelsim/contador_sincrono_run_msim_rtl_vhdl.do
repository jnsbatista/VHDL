transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/contador_sincrono/JK_FF.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/contador_sincrono/contador_sincrono.vhd}

vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/contador_sincrono/contador_sincrono_simple_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  contador_sincrono_simple_tb

add wave *
view structure
view signals
run 1000 ns
