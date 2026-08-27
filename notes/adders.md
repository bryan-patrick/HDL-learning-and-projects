# A note on adders

## Full adder

A full adder has three inputs: a, b, and carry_in.

Each input is a single binary bit, so each one can only be 0 or 1.

The important part is that these are three separate values being added together. The inputs are not themselves binary numbers.

The smallest possible result is: 0 + 0 + 0 = 0

The largest possible result is: 1 + 1 + 1 = 3

So when all three inputs are (111), we are not saying that the binary number 111 equals 3. We are saying that three separate 1 bits are being added together. 3 in binary is 11

So, the full adder outputs are: carry_out = 1 sum = 1 (to get 11).

## Half adder

A half adder is the same concept, but with two inputs, so the max result is 2.

1 + 1 = 10 (2 in binary)

## Why the terms "half" and "full"?

The terms “half adder” and “full adder” are old terminology.

“Half” does not mean literally half the size or half the math; it means the circuit only handles part of what is needed for binary addition.

A half adder adds a and b and produces sum and carry_out, but it cannot accept an incoming carry from a previous column.

A "full" adder handles the complete job for one binary column: it adds a, b, and carry_in (cin), then produces both sum and carry_out.
