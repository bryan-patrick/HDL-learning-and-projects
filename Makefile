test-gates:
	iverilog -o gates_test testbench/gates_tb.v
	vvp gates_test > testbench/test_output.txt