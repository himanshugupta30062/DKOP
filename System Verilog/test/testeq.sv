// Code for testing equalities

module testeq;
  logic [3:0]a=4'b010x, b=4'b0110, c=4'b0x10, d=4'b010z;
  logic res,res1,res2;
  
  initial
  begin
    res =  (a==b);
    res1 = (a===d);
    res2 = (c==?b);
    
    $display(res);
    $display(res1);
    $display(res2);
  end
endmodule
  