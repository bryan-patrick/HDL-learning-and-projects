`include "multiplexers/mux_2_to_1.v"

module mux_2_to_1_tb;

reg a;
reg b;
reg sel;
wire y;

mux_2_to_1 test_mux_2_to_1(
  .a(a),
  .b(b),
  .sel(sel),
  .y(y)
);

initial begin
  $display("Testing mux_2_to_1\n");
  $monitor("a=%b b=%b SEL=%b y=%b", a, b, sel, y);

  a = 0;
  b = 0;
  sel = 0;

  #10

  a = 1;
  b = 0;
  sel = 0;

  #10

  a = 0;
  b = 1;
  sel = 0;

  #10

  a = 0;
  b = 0;
  sel = 1;

  #10

  a = 1;
  b = 1;
  sel = 0;

  #10

  a = 1;
  b = 0;
  sel = 1;

  #10

  a = 0;
  b = 1;
  sel = 1;

  #10

  a = 1;
  b = 1;
  sel = 1;

  #10

  $display();
  $finish;
end

endmodule