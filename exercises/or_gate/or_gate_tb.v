module or_gate_tb;

reg a;
reg b;
wire y;

or_gate my_or_gate (
  .a(a),
  .b(b),
  .y(y)
);

initial begin
  $monitor("a=%b b=%b y=%b", a, b, y);

  a = 0;
  b = 0;

  #10;

  a = 1;
  b = 1;

  #10;

  a = 0;
  b = 1;

  #10;

  a = 1;
  b = 0;

  #10;

  $finish;
end

endmodule