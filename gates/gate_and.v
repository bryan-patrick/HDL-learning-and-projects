/*
When a AND b are 1, y is 1 

a ──┐
    AND ── y
b ──┘
*/

module gate_and(
  input a,
  input b,
  output y
);

assign y = a & b;

endmodule