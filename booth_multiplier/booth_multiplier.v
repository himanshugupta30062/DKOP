// Code for N bit Booth Multiplier
/* Standard Notations
	m: Multiplicand
	r: Multiplier
	x: Number of bits in m
	y: Number of bits in r
*/

module booth_multiplier #(parameter x=4, y=4)
( input signed [x:0]m,
  input signed [y-1:0]r,
  input en,
  output reg signed [x+y-1:0]P_final);

 reg signed[x+y+1:0]A;
 reg signed [x+y+1:0]S;
 reg signed [x+y+1:0]P;
 integer count=0;

 always@(m,r,en)
 begin
	A={m,{(y+1){1'b0}}};
	S={(~m)+1,{(y+1){1'b0}}};
	P={{(x+1){1'b0}},r,1'b0};

	for(count=0;count<y;count=count+1)
	begin
		case(P[1:0])
		2'b01:  P=P+A;
		2'b10:  P=P+S;
		default:P=P;
		endcase
		P={P[x+y+1],P[x+y+1:1]};
	end
	P=(~P);
	P_final=P[x+y:1];
 end
/*
 always@(P)
 begin
	case(P[1:0])
	2'b01: P=P+A;
	2'b10: P=P+S;
	default:P=P;
	endcase
end
*/
endmodule
