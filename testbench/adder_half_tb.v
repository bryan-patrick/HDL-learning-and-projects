`include "adders/adder_half.v"

module adder_half_tb;

reg a;
reg b;
wire carry;
wire sum;

adder_half test_adder_half(
  .a(a),
  .b(b),
  .carry(carry),
  .sum(sum)
);

initial begin
  $display("Testing Half Adder Table\n");
  $monitor("a=%b b=%b carry=%b sum=%b result=%b%b", a, b, carry, sum, carry, sum);

  a = 0;
  b = 0;

  #10;

  a = 1;
  b = 0;

  #10;

  a = 0;
  b = 1;

  #10;

  a = 1;
  b = 1;

  #10;

  $display();
  $finish;
end

endmodule