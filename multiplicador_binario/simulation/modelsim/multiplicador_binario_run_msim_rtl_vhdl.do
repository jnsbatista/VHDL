transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_binario/multiplicador_binario.vhd}

