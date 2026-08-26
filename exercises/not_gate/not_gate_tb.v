module not_gate_tb;

reg a;
wire y;

not_gate my_not_gate(
  .a(a),
  .y(y)
);

initial begin
  a = 0;

  $monitor("a=%b y=%b", a, y);

  #10

  a = 1;

  #10

  $finish;
end

endmodule