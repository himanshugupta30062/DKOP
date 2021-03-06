// Code for D latch using SR latch

module dlatch
(input d,
 output q,qbar);

srlatch DUT (.s(~d),.r(d),.q(q),.qbar(qbar));

endmodule

module dlatch_tb;
reg d;
wire q,qbar;

dlatch DUT (.*);

initial 
begin
	d=0;
	#5 d=1;
	#5 d=0;
	#5 d=1;
end

initial
$monitor($time," d=%b ::: q=%b ::: qbar=%b",d,q,qbar);

endmodule
