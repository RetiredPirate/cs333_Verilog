module example_2_tb;

  reg [3:0] a = 4'b0000;
  reg [3:0] b = 4'b0000;

  wire [3:0] y1;
  wire [3:0] y2;
  wire [3:0] y3;
  wire [3:0] y4;
  wire [3:0] y5;

  //Code: y3, y4, y5 as 4-line buses

  initial begin

    $dumpfile("example_2.vcd");
    $dumpvars(0, e2);

    $monitor("y1 is %b, y2 is %b, y3 is %b, y4 is %b, y5 is %b", y1, y2, y3, y4, y5);

    #2 a = 4'b1010;
    #2 b = 4'b0101;
    $monitor("y1 is %b, y2 is %b, y3 is %b, y4 is %b, y5 is %b", y1, y2, y3, y4, y5);

    //Explain what you see in the waveform at this point

    #4 a = 4'b1011;
    #4 b = 4'b0111;
    $monitor("y1 is %b, y2 is %b, y3 is %b, y4 is %b, y5 is %b", y1, y2, y3, y4, y5);

    //Explain what you see in the waveform at this point

    #16 $finish;

  end
  example_2 e2(a, b, y1, y2, y3, y4, y5);
endmodule
