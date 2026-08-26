/*
A simple Verilog file that demonstrates an AND gate

Two inputs, a and b.

One output, y.

When a AND b are 1, y is 1, classic AND. 

a ──┐
    AND ── y
b ──┘
*/

module and_gate(
  input a,
  input b,
  output y
);

assign y = a & b;

endmodule