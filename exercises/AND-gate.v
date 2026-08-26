/*
A simple Verilog file that demonstrates an AND gate

Two inputs, a and b.

One output, y.

When a AND b are 1, y is 1, classic AND. 
*/

module AND_gate(
  input a,
  input b,
  output y
)

// We are essentially saying the y equals the AND result of a and b.
assign y = a & b;

endmodule