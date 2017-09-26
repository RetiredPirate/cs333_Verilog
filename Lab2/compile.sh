iverilog -o $1.vvp $1.v $1_tb.v

vvp $1.vvp

open -a Scansion $1.vcd


