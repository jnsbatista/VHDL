force /RESET -freeze 1 0ns, 0 1ns
force /CLK -freeze 0 0ns, 1 1ns -r 2ns
force /INICIAR -freeze 0 0ns, 1 25ns, 0 30ns
force /ENTRA_MULTIPLICANDO -freeze 0 0ns, 1 1ns, 0 9ns
force /ENTRA_MULTIPLICADOR -freeze 0 0ns, 1 9ns, 0 20ns
force /MULT_IN -freeze 0 0ns, 1000 1ns, 0010 10ns
run 100 ns
