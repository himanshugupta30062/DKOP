// Code for testing logic and Wire for multidriver

module testlogic;

reg en=1;

reg a=en?1:0;
wire b=en?1:0;
logic c=en?1:0;
//logic r;

//assign r=en;
//assign r=c;

initial 
begin
	#5 $display(a,b,c);
end
endmodule
