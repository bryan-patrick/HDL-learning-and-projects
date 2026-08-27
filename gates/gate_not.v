/*
NOT gate.
Y is 1 if not a

a ───── NOT ───── y

Conceptually the same as a bang (!) but this is actual bitwise ~ (meaning it flips all bits) which is exactly what we want here.
*/

module gate_not(
  input a,
  output y
);

assign y = ~a;

endmodule