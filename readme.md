# HDL Learning and Projects

Hello, I'm using this repo as my learning place for HDL and FPGA.

It's a lot of fun!

## Icarus Verilog

I'm using Icarus Verilog to compile and run Verilog testbenches locally. It gives me a simple way to test HDL without needing physical FPGA hardware.

For example:

```
iverilog -o and_gate_test and_gate.v and_gate_tb.v
vvp and_gate_test
```

## Linting

VSCode is using iverilog.

The line needs to be in settings.json: `	"verilog.linting.linter": "iverilog",`

## TODO

- Lots of exercises
- I'd like a python application that maps out defined circuits from our exercises. Maybe an HDL parser? Maybe we won't need it?
