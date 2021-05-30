`timescale 1ns/1ps

module testbench();
  reg A1, B1;
  wire Cout1;
  XOR2 Xor2_1(A1, B1, Cout1);
  
  initial
    begin
      //Dump waves
      $dumpfile("dump.vcd");
      $dumpvars(1, testbench);
      
      $display("Test Case 0");
      A1 = 1'b0; B1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1);
      #1
      $display("Cout = %b", Cout1);
      
      $display("Test Case 1");
      A1 = 1'b0; B1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1);
      #1
      $display("Cout = %b", Cout1);
      
      $display("Test Case 2");
      A1 = 1'b1; B1 = 1'b0;
      $display("A = %b", A1, "     B = %b", B1);
      #1
      $display("Cout = %b", Cout1);
      
      $display("Test Case 3");
      A1 = 1'b1; B1 = 1'b1;
      $display("A = %b", A1, "     B = %b", B1);
      #1
      $display("Cout = %b", Cout1);
    end

endmodule