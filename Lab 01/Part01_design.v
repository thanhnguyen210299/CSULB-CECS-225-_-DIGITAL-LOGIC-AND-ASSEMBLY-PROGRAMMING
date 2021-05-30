module inverter(a, y);
  input a;
  output y;
  
  assign y = ~a; // y = Not a
  
endmodule