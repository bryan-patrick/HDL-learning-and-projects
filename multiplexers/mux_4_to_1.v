/*
Mux 4 to 1 (using existing 2 to 1 mux)

                 sel[0]              sel[1]
                   │                   │
                   │                   │
a ───────┐         ▼                   │
         ├──────▶ [MUX] ──── left ────┐
b ───────┘                             │
                                       ├──────▶ [MUX] ─────▶ y
c ───────┐                             │
         ├──────▶ [MUX] ─── right ────┘
d ───────┘         ▲
                   │
                 sel[0]
*/

`include "multiplexers/mux_2_to_1.v"

module mux_4_to_1(
  input a,
  input b,
  input c,
  input d,
  input sel_0,
  input sel_1,
  output y
);

wire mux_1;
wire mux_2;

mux_2_to_1 first_set_mux(
  .a(a),
  .b(b),
  .sel(sel_0),
  .y(mux_1)
);

mux_2_to_1 second_set_mux(
  .a(c),
  .b(d),
  .sel(sel_0),
  .y(mux_2)
);

mux_2_to_1 third_set_mux(
  .a(mux_1),
  .b(mux_2),
  .sel(sel_1),
  .y(y)
);

endmodule