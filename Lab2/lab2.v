//Verilog model: Circuit with boolean expressions
module lab2(a, b, c, y1);

  //4-line bus inputs a and b
  input [3:0] a;
  input [3:0] b;
  input [3:0] c;

  //Code: 4-line bus outputs y1 through y5
  output [3:0] y1;

  assign y1 = ((a | ~c) & ~b) | b | a;

endmodule
