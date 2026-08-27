`include "adders/adder_full.v"

module adder_half_tb;

reg a;
reg b;
reg carry_in;
wire carry_out;
wire sum;

adder_full test_adder_full(
  .a(a),
  .b(b),
  .carry_in(carry_in),
  .carry_out(carry_out),
  .sum(sum)
);

initial begin
  $display("Testing Full Adder Table\n");
  $monitor("a=%b b=%b carry_in=%b carry_out=%b sum=%b result=%b%b", a, b, carry_in, carry_out, sum, carry_out, sum);

  a = 0;
  b = 0;
  carry_in = 0;

  #10;

  a = 0;
  b = 0;
  carry_in = 1;

  #10;

  a = 0;
  b = 1;
  carry_in = 0;

  #10;

  a = 0;
  b = 1;
  carry_in = 1;

  #10;

  a = 1;
  b = 0;
  carry_in = 0;

  #10;

  a = 1;
  b = 0;
  carry_in = 1;

  #10;
  a = 1;
  b = 1;
  carry_in = 0;

  #10;

  a = 1;
  b = 1;
  carry_in = 1;

  #10;

  $display();
  $finish;
end

endmodule