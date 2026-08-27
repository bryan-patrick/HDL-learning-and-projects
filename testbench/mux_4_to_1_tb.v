`include "multiplexers/mux_4_to_1.v"

module mux_4_to_1_tb;

reg a;
reg b;
reg c;
reg d;
reg sel_0;
reg sel_1;
wire y;

mux_4_to_1 test_mux_4_to_1(
  .a(a),
  .b(b),
  .c(c),
  .d(d),
  .sel_0(sel_0),
  .sel_1(sel_1),
  .y(y)
);

initial begin
  $display("Testing mux_4_to_1\n");
  $monitor("a=%b b=%b c=%b d=%b SEL_0=%b SEL_1=%b y=%b", a, b, c, d, sel_0, sel_1, y);

  a = 0;
  b = 1;
  c = 1;
  d = 0;
  sel_0 = 0;
  sel_1 = 0;

  #10;

  sel_0 = 1;
  sel_1 = 0;

  #10;

  sel_0 = 0;
  sel_1 = 1;

  #10;

  sel_0 = 1;
  sel_1 = 1;

  #10;

  a = 0;
  b = 0;
  c = 1;
  d = 1;
  sel_0 = 0;
  sel_1 = 0;

  #10;

  sel_0 = 1;
  sel_1 = 0;

  #10;

  sel_0 = 0;
  sel_1 = 1;

  #10;

  sel_0 = 1;
  sel_1 = 1;

  #10;

  $display();
  $finish;
end

endmodule