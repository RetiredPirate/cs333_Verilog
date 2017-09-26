module simple(A, B);

  input [3:0] A;
  output [3:0] B;

  //SCRAMBLE!!!
  assign B = {A[3], A[1], A[2], A[0]};

endmodule
