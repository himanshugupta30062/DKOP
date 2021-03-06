// Code for testing events in SV

module event_test;
event e1,e2;

initial
begin
	$display("@%0d: 1: before trigger", $time);
	-> e1;
	@e2;
	$display("@%0d: 1: after trigger", $time);
	//-> e1;
end

initial
begin
	$display("@%0d: 2: before trigger", $time);
	-> e2;
	//@e1;
	wait(e1.triggered())
	$display("@%0d: 2: after trigger", $time);
end

endmodule 

