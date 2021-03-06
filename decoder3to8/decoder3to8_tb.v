// 3:8 decoder testbench

module decoder3to8_tb;
reg en;
reg [2:0]i;
wire [7:0]y;

decoder3to8 dut (.*);

initial
begin
	en=0;
	#5 i=3'b000;
	#5 i=3'b001;
	#5 i=3'b010;
	#5 i=3'b011;

	#5 en=1;	
	#5 i=3'b100;
	#5 i=3'b101;
	#5 i=3'b110;
	#5 i=3'b111;

	#5 i=3'b000;
	#5 i=3'b001;
	#5 i=3'b010;
	#5 i=3'b011;
	
	#5 en=0;
	#5 i=3'b100;
	#5 i=3'b101;
	#5 i=3'b110;
	#5 i=3'b111;
end

initial
$monitor($time,"Input enable=%b, i=%b >>> Output y=%b ",en,i,y);

endmodule
