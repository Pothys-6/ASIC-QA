`include "fa.v"
module fa_tb();
  
  reg  a, b, c;
  wire  sum, co;
  
  fa uut(a,b,c,co,sum );
  
  initial
    begin
  a = 0; b =0;c =0;
  #5; a = 0; b =0; c =1;
 #5; a = 0; b =1; c =0;
 #5; a = 0; b =1; c =1;
 #5; a = 1; b =0; c =0;
 #5; a = 1; b =0; c =1;
 #5; a = 1; b =1; c =0;
 #5; a = 1; b =1; c =1;
  #5;
    end
  
 //Dump waves (only required here)
initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end 

endmodule
  