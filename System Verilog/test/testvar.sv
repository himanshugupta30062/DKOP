// Code for testing Automatic and static variables

module testvar;
  
  int i=5;
  
  initial
  begin
    $display("%0d",i);
    while(i--)
    begin
      //int i=101;
      //static int i=101;
      automatic int i=101;
      i--;
      $display("%0d",i);
    end
  end
endmodule

