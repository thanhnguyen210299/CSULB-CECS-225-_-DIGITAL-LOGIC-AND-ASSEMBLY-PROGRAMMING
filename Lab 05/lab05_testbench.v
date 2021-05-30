// Project 05: 8-bit Ripple Carry Adder
// Name      : Thanh Nguyen - ID: 026843815

`timescale 1ns/1ps

module testbench();
  reg       Cin_11;
  reg [7:0] A_81, B_81;
  
  wire [7:0] S_81;
  wire       Cout_11;
  
  RCA8 rca(A_81, B_81, Cin_11, Cout_11, S_81);
  
  initial
    begin
      //Dump waves
      $dumpfile("dump.vcd");
      $dumpvars(1, testbench);
      
      // Cin_1 = 0, A_8 = 12, B_8 = 34
      $display("Test Case 0");
      Cin_11 = 1'b0; A_81 = 8'h12; B_81 = 8'h34;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
       // Cin_1 = 0, A_8 = 55, B_8 = AA
      $display("Test Case 1");
      Cin_11 = 1'b0; A_81 = 8'h55; B_81 = 8'hAA;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
      // Cin_1 = 0, A_8 = 72, B_8 = 27
      $display("Test Case 2");
      Cin_11 = 1'b0; A_81 = 8'h72; B_81 = 8'h27;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
      // Cin_1 = 0, A_8 = 80, B_8 = 8
      $display("Test Case 3");
      Cin_11 = 1'b0; A_81 = 8'h80; B_81 = 8'h8;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
      // Cin_1 = 1, A_8 = 12, B_8 = 34
      $display("Test Case 4");
      Cin_11 = 1'b1; A_81 = 8'h12; B_81 = 8'h34;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
       // Cin_1 = 1, A_8 = 55, B_8 = AA
      $display("Test Case 5");
      Cin_11 = 1'b1; A_81 = 8'h55; B_81 = 8'hAA;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
      // Cin_1 = 1, A_8 = 72, B_8 = 27
      $display("Test Case 6");
      Cin_11 = 1'b1; A_81 = 8'h72; B_81 = 8'h27;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
      
      // Cin_1 = 1, A_8 = 80, B_8 = 8
      $display("Test Case 7");
      Cin_11 = 1'b1; A_81 = 8'h80; B_81 = 8'h8;
      $display("Cin_1  = %b", Cin_11, "     A_8 = %2h", A_81, "      B_8 = %2h", B_81);
      #2
      $display("Cout_1 = %b", Cout_11, "     S_8 = %2h", S_81);
    end

endmodule      