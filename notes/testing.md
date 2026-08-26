## Running iverilog

We need to compile an executable and then run that executable to get our test results.

For our and_gate the command should be:

```
iverilog -o and_gate_test and_gate.v and_gate_tb.v
vvp and_gate_test
```

First line compiles both Verilog files into the simulation executable.

Second line runs the simulation.

We should get:

```
a=0 b=0 y=0
a=0 b=1 y=0
a=1 b=0 y=0
a=1 b=1 y=1
```
