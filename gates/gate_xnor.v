/*
XNOR
The output is 1 only when both inputs are the same

a ─────┐
       XOR ── NOT ───── y
b ─────┘
*/

module gate_xnor(
  input a,
  input b,
  output y
);

assign y = ~(a ^ b);

endmodule;