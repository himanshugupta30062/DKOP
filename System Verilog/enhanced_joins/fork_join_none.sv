// Code for practicing fork and join_none

module fork_join_none;
  initial
    begin
      $display("@%0d: starts fork...join example", $time);
      #10 $display("@%0d: sequential after #10", $time);
      fork
        $display("@%0d: parallel start", $time);
        #50 $display("@%0d: parallel after #50", $time);
        #10 $display("@%0d: parallel after #10", $time);
          begin
            #30 $display("@%0d: sequential after #30", $time);
            #10 $display("@%0d: sequential after #10", $time);
          end
      join_none
      //$display("@%0d: after join", $time);
      //#80 $display("@%0d: final after #80", $time);
    end
endmodule
