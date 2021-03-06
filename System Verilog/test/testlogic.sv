// Code for testing logic and Wire for multidriver

module testlogic;

reg en=1;

reg a=en?1:0;
wire b=en?0:1;
logic c=en?1:0;
logic y;

//assign r=en;
//assign r=c;
always@(a,b)
  y<=a&b;

always@(a,b)
  y<=a|b;

initial 
begin
	#5 $display(a,b,c,y);
end
endmodule
