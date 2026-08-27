/*
Full adder I/O
a ───────────────▶┌────────────────────┐──────────────▶ carry_out
b ───────────────▶│     FULL ADDER     │
carry_in ────────▶│                    │──────────────▶ sum
                  └────────────────────┘

Full adder logic
a ───────┐
         ▼
      ┌─────┐
b ───▶│ HA1 │
      └─┬─┬─┘
        │ │
        │ └──── first_carry ─────────────┐
        │                                │
        ▼                                ▼
  partial_sum                         ┌────┐
        │                             │ OR │────▶ carry_out
        ▼                             └─▲──┘
      ┌─────┐                           │
cin ─▶│ HA2 │                           │
      └─┬─┬─┘                           │
        │ └──── second_carry ───────────┘
        │
        ▼
       sum
*/

`include "adders/adder_half.v"
`include "gates/gate_or.v"

module adder_full(
  input a,
  input b,
  input carry_in,
  output carry_out,
  output sum
);

wire partial_sum;
wire first_carry;
wire second_carry;

adder_half HA1(
  .a(a),
  .b(b),
  .carry(first_carry),
  .sum(partial_sum)
);

adder_half HA2(
  .a(partial_sum),
  .b(carry_in),
  .carry(second_carry),
  .sum(sum)
);

gate_or OR(
  .a(first_carry),
  .b(second_carry),
  .y(carry_out)
);

endmodule