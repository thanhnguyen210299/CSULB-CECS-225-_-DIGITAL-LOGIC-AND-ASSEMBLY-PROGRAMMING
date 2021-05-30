// Project 05: 8-bit Ripple Carry Adder
// Name      : Thanh Nguyen - ID: 026843815

module HalfAdder(A, B, Cout, S);
  input A, B;
  output Cout, S;
  
  assign Cout = A & B;
  assign S = A ^ B;
  
endmodule

module FullAdder(Cin, FA_A, FA_B, FA_S, FA_Cout);
  input FA_A, FA_B, Cin;
  output FA_S, FA_Cout;
  
  wire ha0_S, ha0_C, ha1_C;
  
  HalfAdder ha0 (	.A   (FA_A) ,
                 	.B   (FA_B) ,
                 	.Cout(ha0_C),
                 	.S   (ha0_S)
                );
  
  HalfAdder ha1 (	.A   (Cin)  ,
                 	.B   (ha0_S),
                 	.Cout(ha1_C),
                 	.S   (FA_S)
                );
  
  // This is the carry out for the Full Adder
  assign FA_Cout = ha0_C | ha1_C;
  
endmodule

module RCA8(A_8, B_8, Cin_1, Cout_1, S_8);
  
  input        Cin_1;
  input  [7:0] A_8, B_8;
  
  output [7:0] S_8;
  output       Cout_1;
  
  wire c0, c1, c2, c3, c4, c5, c6;
  FullAdder fa0(.Cin    (Cin_1),
                .FA_A   (A_8[0]),
                .FA_B   (B_8[0]),
                .FA_S   (S_8[0]),
                .FA_Cout(c0)
               );
  
  FullAdder fa1(.Cin    (c0),
                .FA_A   (A_8[1]),
                .FA_B   (B_8[1]),
                .FA_S   (S_8[1]),
                .FA_Cout(c1)
               );
  
  FullAdder fa2(.Cin    (c1),
                .FA_A   (A_8[2]),
                .FA_B   (B_8[2]),
                .FA_S   (S_8[2]),
                .FA_Cout(c2)
               );
  
  FullAdder fa3(.Cin    (c2),
                .FA_A   (A_8[3]),
                .FA_B   (B_8[3]),
                .FA_S   (S_8[3]),
                .FA_Cout(c3)
               );
  
  FullAdder fa4(.Cin    (c3),
                .FA_A   (A_8[4]),
                .FA_B   (B_8[4]),
                .FA_S   (S_8[4]),
                .FA_Cout(c4)
               );
  
  FullAdder fa5(.Cin    (c4),
                .FA_A   (A_8[5]),
                .FA_B   (B_8[5]),
                .FA_S   (S_8[5]),
                .FA_Cout(c5)
               );
  
  FullAdder fa6(.Cin    (c5),
                .FA_A   (A_8[6]),
                .FA_B   (B_8[6]),
                .FA_S   (S_8[6]),
                .FA_Cout(c6)
               );
  
  FullAdder fa7(.Cin    (c6),
                .FA_A   (A_8[7]),
                .FA_B   (B_8[7]),
                .FA_S   (S_8[7]),
                .FA_Cout(Cout_1)
               );
  
endmodule