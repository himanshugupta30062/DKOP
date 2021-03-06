// Code for testing Literal value assignments

module test #(parameter size=10);
  logic [size-1:0]a,b,c,d,e;
  logic f;
  reg g;
  initial
  begin
    a='b0;
    b='bx;
    c='bz;
    d='b1;
    e='1;
    $display($size(f));
    $display($size(g));
  end
  
  initial 
  $monitor("a=%b | b=%b | c=%b | d=%b | e=%b ",a,b,c,d,e);  
endmodule