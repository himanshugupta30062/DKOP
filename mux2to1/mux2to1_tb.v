// 2:1 MUX testbench

module mux2to1_tb;
reg a,b,s;
wire y;

mux2to1 dut (.a(a),.b(b),.s(s),.y(y));

initial
begin
	{a,b,s}=3'b000;
	#5 {a,b,s}=3'b001;
	#5 {a,b,s}=3'b010;
	#5 {a,b,s}=3'b011;
	#5 {a,b,s}=3'b100;
	#5 {a,b,s}=3'b101;
	#5 {a,b,s}=3'b110;
	#5 {a,b,s}=3'b111;
end

initial
$monitor($time," Input a=%b, b=%b, s=%b >>> Output y=%b",a,b,s,y);

endmodule