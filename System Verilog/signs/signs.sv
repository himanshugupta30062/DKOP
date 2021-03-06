// Code for learning signs

// First see representation, size then +/-.... Basically enter from semicolon

`define size 4

module signs;
  reg [`size-1:0]a;
  reg signed [`size-1:0]b;
  reg unsigned [`size-1:0]c;
  
  initial
  begin
    a = 4'shf;
    b = 4'hf;
    c = -4'shf;
  end
  
  initial
  $monitor("a=%d || b=%d || c=%d",a,b,c);
  
endmodule