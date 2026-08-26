/*
Testbench for and_gate

Note: the compiler will be told that and_gate.v and and_gate_tb.v should be compiled together, allowing a, b, and y to be available here from and_gate.v. I don't understand how this works yet, but I know that we can use the named port connections (the dots e.g. .a(a)) to my_and_gate.
*/

module and_gate_tb;

reg a;
reg b;
wire y;

and_gate my_and_gate (
  .a(a),
  .b(b),
  .y(y)
);

initial begin
  a = 0;
  b = 0;

  // Testbench should show us the values
  // %b means print in binary
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