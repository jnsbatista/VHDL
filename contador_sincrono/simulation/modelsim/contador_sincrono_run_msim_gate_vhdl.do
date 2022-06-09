transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {contador_sincrono.vho}

vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/contador_sincrono/contador_sincrono_simple_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /U_contador_sincrono=contador_sincrono_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  contador_sincrono_simple_tb

add wave *
view structure
view signals
run 1000 ns
