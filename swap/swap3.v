// Code for swap without using temp variable

module swap3;
integer a=10;
integer b=20;
integer temp;

initial 
begin
	$display("a=%0d ||| b=%0d",a,b);
	a=a^b;
	b=a^b;
	a=a^b;
	$display("a=%0d ||| b=%0d",a,b);
end

endmodule
