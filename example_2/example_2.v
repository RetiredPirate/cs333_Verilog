//Verilog model: Circuit with boolean expressions
module example_2(a, b, y1, y2, y3, y4, y5);

  //4-line bus inputs a and b
  input [3:0] a;
  input [3:0] b;

  //Code: 4-line bus outputs y1 through y5
  output [3:0] y1;
  output [3:0] y2;
  output [3:0] y3;
  output [3:0] y4;
  output [3:0] y5;

  assign y1 = a & b;
  assign y2 = a | b;
  assign y3 = a ^ b;
  assign y4 = ~(a & b);
  assign y5 = ~(a | b);

endmodule
