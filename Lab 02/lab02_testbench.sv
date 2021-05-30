// Project 02: Simple Logic Function F = A(B+C+D')
// Name      : Thanh Nguyen - ID: 026843815

`timescale 1ns/1ps

module testbench();
  reg A1, B1, C1, D1;
  wire F1;
  
  SimpleLogicFunction SLF1(A1, B1, C1, D1, F1);
  
  initial
    begin
      //Dump waves
      $dumpfile("dump.vcd");
      $dumpvars(1, testbench);
      
      // A = 0, B = 0, C = 0, D = 0
      $display("Test Case 0");
      A1 = 1'b0; B1 = 1'b0; C1 = 1'b0; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 0, C = 0, D = 1
      $display("Test Case 1");
      A1 = 1'b0; B1 = 1'b0; C1 = 1'b0; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 0, C = 1, D = 0
      $display("Test Case 2");
      A1 = 1'b0; B1 = 1'b0; C1 = 1'b1; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 0, C = 1, D = 1
      $display("Test Case 3");
      A1 = 1'b0; B1 = 1'b0; C1 = 1'b1; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 1, C = 0, D = 0
      $display("Test Case 4");
      A1 = 1'b0; B1 = 1'b1; C1 = 1'b0; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 1, C = 0, D = 1
      $display("Test Case 5");
      A1 = 1'b0; B1 = 1'b1; C1 = 1'b0; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 1, C = 1, D = 0
      $display("Test Case 6");
      A1 = 1'b0; B1 = 1'b1; C1 = 1'b1; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 0, B = 1, C = 1, D = 1
      $display("Test Case 7");
      A1 = 1'b0; B1 = 1'b1; C1 = 1'b1; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 0, C = 0, D = 0
      $display("Test Case 8");
      A1 = 1'b1; B1 = 1'b0; C1 = 1'b0; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 0, C = 0, D = 1
      $display("Test Case 9");
      A1 = 1'b1; B1 = 1'b0; C1 = 1'b0; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 0, C = 1, D = 0
      $display("Test Case 10");
      A1 = 1'b1; B1 = 1'b0; C1 = 1'b1; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 0, C = 1, D = 1
      $display("Test Case 11");
      A1 = 1'b1; B1 = 1'b1; C1 = 1'b1; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 1, C = 0, D = 0
      $display("Test Case 12");
      A1 = 1'b1; B1 = 1'b1; C1 = 1'b0; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 1, C = 0, D = 1
      $display("Test Case 13");
      A1 = 1'b1; B1 = 1'b1; C1 = 1'b0; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 1, C = 1, D = 0
      $display("Test Case 14");
      A1 = 1'b1; B1 = 1'b1; C1 = 1'b1; D1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
      
      // A = 1, B = 1, C = 1, D = 1
      $display("Test Case 15");
      A1 = 1'b1; B1 = 1'b1; C1 = 1'b1; D1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1, "      C = %b", C1, "     D = %b", D1);
      #1
      $display("F = %b", F1);
    end

endmodule