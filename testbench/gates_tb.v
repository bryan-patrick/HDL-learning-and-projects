// This replaces gates/*.v in our makefile but makes the linter happy
`include "gates/gate_and.v"
`include "gates/gate_or.v"
`include "gates/gate_not.v"
`include "gates/gate_nand.v"
`include "gates/gate_nor.v"
`include "gates/gate_xnor.v"
`include "gates/gate_xor.v"

module gates_tb;

reg a;
reg b;
wire y_and;
wire y_nand;
wire y_nor;
wire y_not;
wire y_or;
wire y_xnor;
wire y_xor;

gate_and my_and_gate(
  .a(a),
  .b(b),
  .y(y_and)
);

gate_nand my_nand_gate(
  .a(a),
  .b(b),
  .y(y_nand)
);

gate_nor my_nor_gate(
  .a(a),
  .b(b),
  .y(y_nor)
);

gate_not my_not_gate(
  .a(a),
  .y(y_not)
);

gate_or my_or_gate(
  .a(a),
  .b(b),
  .y(y_or)
);

gate_xnor my_xnor_gate(
  .a(a),
  .b(b),
  .y(y_xnor)  
);

gate_xor my_xor_gate(
  .a(a),
  .b(b),
  .y(y_xor)
);

initial begin
  $display("Testing Gates Table\n");
  $monitor("a=%b b=%b AND=%b NAND=%b NOR=%b NOT=%b OR=%b XNOR=%b XOR=%b", a, b, y_and, y_nand, y_nor, y_not, y_or, y_xnor, y_xor);

  a = 0;
  b = 0;

  #10

  a = 1;
  b = 0;

  #10

  a = 0;
  b = 1;

  #10

  a = 1;
  b = 1;

  #10

  $display();
  $finish;
end

endmodule