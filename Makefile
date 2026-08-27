test-gates:
	iverilog -o executables/gates_test testbench/gates_tb.v
	vvp executables/gates_test > outputs/output___gates_tb.txt

test-mux-2-to-1:
	iverilog -o executables/mux_2_to_1 testbench/mux_2_to_1_tb.v
	vvp executables/mux_2_to_1 > outputs/output__mux_2_to_1_tb.txt

test-mux-4-to-1:
	iverilog -o executables/mux_4_to_1 testbench/mux_4_to_1_tb.v
	vvp executables/mux_4_to_1 > outputs/output__mux_4_to_1_tb.txt

test-adder-half:
	iverilog -o executables/adder_half testbench/adder_half_tb.v
	vvp executables/adder_half > outputs/output__adder_half.txt

test-adder-full:
	iverilog -o executables/adder_full testbench/adder_full_tb.v
	vvp executables/adder_full > outputs/output__adder_full.txt