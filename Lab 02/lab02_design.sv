// Project 02: Simple Logic Function F = A(B+C+D')
// Name      : Thanh Nguyen - ID: 026843815

module SimpleLogicFunction(A, B, C, D, F);
  input A, B, C, D;
  output F;
  
  assign F = A & (B | C | ~D); // F = A AND (B OR C OR NOT D)
  
endmodule
