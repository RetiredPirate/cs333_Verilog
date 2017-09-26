module scramble_tb;

  reg [3:0] A = 4'b1011;
  wire [3:0] B;

  initial
  begin
    $dumpfile("scramble.vcd");
    $dumpvars(0, s);

    $monitor("A is %b, B is $b", A, B);

    #2 A = 4'b1001;
    $monitor("A is %b, B is $b", A, B);

    #2 A = 4'b0110;
    $monitor("A is %b, B is $b", A, B);

    #10 $finish;

  end
  simple s(A, B);
endmodule
