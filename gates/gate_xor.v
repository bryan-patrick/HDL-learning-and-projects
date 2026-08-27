/*
The output is 1 only when both inputs are different

a ─────┐
       XOR ───── y
b ─────┘
*/

module gate_xor(
  input a,
  input b,
  output y
);

assign y = a ^ b;

endmodule;