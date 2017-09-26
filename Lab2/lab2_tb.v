module lab2_tb;

  reg [3:0] a = 4'b0000;
  reg [3:0] b = 4'b0000;
  reg [3:0] c = 4'b0000;

  wire [3:0] y1;

  initial begin

    $dumpfile("lab2.vcd");
    $dumpvars(0, e2);

    $monitor("y1 is %b", y1);

    #2 a = 4'b1010;
    #2 b = 4'b0101;
    $monitor("y1 is %b", y1);
    #4 c = 4'b1100;


    //Explain what you see in the waveform at this point

    #4 a = 4'b1011;
    #4 b = 4'b0111;
    $monitor("y1 is %b", y1);

    //Explain what you see in the waveform at this point

    #16 $finish;

  end
  lab2 e2(a, b, c, y1);
endmodule
