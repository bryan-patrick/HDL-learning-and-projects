module nand_gate_tb;

reg a;
reg b;
wire y;

nand_gate my_nand_gate(
  .a(a),
  .b(b),
  .y(y)
);

initial begin
  a = 0;
  b = 0;

  $monitor("a=%b b=%b y=%b", a, b, y);

  #10;

  a = 1;
  b = 1;

  #10;

  a = 1;
  b = 0;

  #10;

  a = 0;
  b = 1;

  #10;

  $finish;
end

endmodule