/*
a ─────┐
       OR ── NOT ───── y
b ─────┘
*/

module gate_nor(
  input a,
  input b,
  output y
);

assign y = ~(a | b);

endmodule