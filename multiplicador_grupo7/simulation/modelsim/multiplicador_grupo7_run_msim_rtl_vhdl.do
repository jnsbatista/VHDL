transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/multiplicador_grupo7.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/bo.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/mux214.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/mux211.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/mux218.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/registrador4.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/registrador1.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/somadorsubtrator.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/deslocador.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/comparador1.vhd}
vcom -93 -work work {C:/xampp/htdocs/projects/VHDL/multiplicador_grupo7/comparador2.vhd}

