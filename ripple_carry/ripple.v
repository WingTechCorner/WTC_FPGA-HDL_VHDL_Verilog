// Definitions
`timescale 10ns/1ps
module ripple_carry_counter(q,clk,reset);
   output [3:0] q;
   input clk,reset;
   T_FF tff0(q[0],clk,reset);
   T_FF tff1(q[1],clk,reset);
   T_FF tff2(q[2],clk,reset);
   T_FF tff3(q[3],clk,reset);
endmodule

module T_FF(q,clk,reset);
   output q;
   input clk,reset;
   wire d;
   D_FF dff0(q,d,clk,reset);
   not nl(d,q);
endmodule

module D_FF(q,d,clk,reset);
   output q;
   input d,clk,reset;
   reg q;
   integer window = 0;

   always @(posedge clk)
     window <= window +1;
   
  always @(negedge clk)
    if ( window > 20000 )
      $finish;

   always @(posedge reset or negedge clk)
      if (reset)
         q = 1'b0;
      else
         q = d;
endmodule

// Test Stimulus
//
module stimulus;
reg clk;
reg reset;
wire[3:0] q;
ripple_carry_counter r1(q,clk,reset);
initial
   clk = 1'b0;
always
   #5 clk = ~clk;
initial
begin
   reset = 1'b1;
   #15 reset = 1'b0;
   #180 reset = 1'b1;
   #10 reset = 1'b0;
end

initial
begin
  $dumpfile("ripple.vcd");
  $dumpvars(0,q);
  $dumpvars(1,reset);
  $dumpvars(2,clk);
  $dumpvars(3,r1);
end


endmodule
