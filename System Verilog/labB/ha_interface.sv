// Code for understanding Interfaces with HA

interface ha_if;
logic a,b,sum,carry;
endinterface

module ha_interface(ha_if x);
  assign x.sum=x.a^x.b,
          x.carry=x.a & x.b;
endmodule

module ha_interface_tb;
  ha_if xtb();
  ha_interface  ha (xtb);  
  initial
  begin
    {xtb.a,xtb.b}={1'b0,1'b0};
    #5 {xtb.a,xtb.b}={1'b0,1'b1};
    #5 {xtb.a,xtb.b}={1'b1,1'b0};
    #5 {xtb.a,xtb.b}={1'b1,1'b1};
  end
  
  initial
  $monitor($time,"a=%b ::: b=%b ::: sum=%b ::: carry=%b",xtb.a,xtb.b,xtb.sum,xtb.carry);
endmodule