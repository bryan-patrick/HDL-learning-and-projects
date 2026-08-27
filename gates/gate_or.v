/*
OR gate.
If either a or b is 1, then y is 1 : 0

a ─────┐
       OR ───── y
b ─────┘
*/

module gate_or(
  input a,
  input b,
  output y
);

assign y = a | b;

endmodule