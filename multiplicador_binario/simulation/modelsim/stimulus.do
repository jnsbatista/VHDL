force /rst -freeze 1 0ns, 0 1ns
force /clk -freeze 0 0ns, 1 1ns -r 2ns
force /init -freeze 0 0ns, 1 7ns, 0 10ns
force /in_multiplicando -freeze 0 0ns, 1 1ns, 0 3ns
force /in_multiplicador -freeze 0 0ns, 1 3ns, 0 5ns
force /mult_in -freeze 0 0ns, 0100 1ns, 0010 3ns
run 40 ns
