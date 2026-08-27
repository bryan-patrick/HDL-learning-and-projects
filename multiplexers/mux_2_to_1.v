/* 
Simple mux where sel 0 is a and 1 is b using our gates
                ┌─────────────┐
a ─────────────▶│             │
                │   2:1 MUX   ├────────────▶ y
b ─────────────▶│             │
                └──────▲──────┘
                       │
                      sel
*/

`include "gates/gate_not.v"
`include "gates/gate_and.v"
`include "gates/gate_or.v"

module mux_2_to_1(
  input a,
  input b,
  input sel,
  output y
);

wire not_sel;
wire a_signal;
wire b_signal;

gate_not invert_sel(
  .a(sel),
  .y(not_sel)
);

gate_and a_path_gate(
  .a(a),
  .b(not_sel),
  .y(a_signal)
);

gate_and b_path_gate(
  .a(b),
  .b(sel),
  .y(b_signal)
);

gate_or output_gate(
  .a(a_signal),
  .b(b_signal),
  .y(y)
);

endmodule