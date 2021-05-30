// Project 03: K-Map Simplification
// Name      : Thanh Nguyen - ID: 026843815

module KMap(A, B, C, D, F);
  input A, B, C, D;
  output F;
  
  assign F = (~B & ~C) | (B & C & D) | (A & B & D);
  
endmodule
