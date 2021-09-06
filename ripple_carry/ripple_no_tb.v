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

   always @(posedge reset or negedge clk)
      if (reset)
         q = 1'b0;
      else
         q = d;
endmodule
