// Code for testing Bytes and bit

module testbytes;
  bit [7:0]a;
  byte b;
  
  initial
  begin
    a[4]=-1;
    b[4]=-8;
    $display(a);
    $display(b);
  end
endmodule
