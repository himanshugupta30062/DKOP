// Code  for testing functions in SV

module  testfun;
  int res;
  function int summ(input int a=6,b=8);
    //a=4;
    //b=6;
    //sum=a+b;
    a=3;
    b=2;
    return a+b;
    a=8;
    b=5;
    summ=a+b;
  endfunction
  
  initial
  begin
    res=summ(6,8);
    $display(res);
    //summ(6,8)
  end
endmodule