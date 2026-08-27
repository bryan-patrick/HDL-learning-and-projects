/*
A half adder (sum and carry). A note about the half adder, we will only ever add at most two single bit values, so 2 (1-0) is the highest result we can get. 

a ─────┬──── XOR ──── sum
       │
b ─────┘

a ─────┬──── AND ──── carry
       │
b ─────┘

0 + 0 = 00
1 + 0 = 01
0 + 1 = 01
1 + 1 = 10
*/

`include "gates/gate_and.v"
`include "gates/gate_xor.v"

module adder_half(
  input a,
  input b,
  output carry,
  output sum
);

gate_and sum_gate_and(
  .a(a),
  .b(b),
  .y(carry)
);

gate_xor sum_gate_xor(
  .a(a),
  .b(b),
  .y(sum)
);

endmodule