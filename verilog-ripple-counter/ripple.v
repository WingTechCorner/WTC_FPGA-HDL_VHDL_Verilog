// Definitions
module ripple_carry_counter(q,clk,reset);
   output [64:0] q;
	
   input clk,reset;
   T_FF tff0(q[0],clk,reset);
   T_FF tff1(q[1],q[0],reset);
   T_FF tff2(q[2],q[1],reset);
   T_FF tff3(q[3],q[2],reset);
	T_FF tff4(q[4],q[3],reset);
	T_FF tff5(q[5],q[4],reset);
	T_FF tff6(q[6],q[5],reset);
	T_FF tff7(q[7],q[6],reset);
	T_FF tff8(q[8],q[7],reset);
	T_FF tff9(q[9],q[8],reset);
	T_FF tff10(q[10],q[9],reset);
	T_FF tff11(q[11],q[10],reset);
	T_FF tff12(q[12],q[11],reset);
	T_FF tff13(q[13],q[12],reset);
	T_FF tff14(q[14],q[13],reset);
	T_FF tff15(q[15],q[14],reset);
	T_FF tff16(q[16],q[15],reset);
	T_FF tff17(q[17],q[16],reset);
	T_FF tff18(q[18],q[17],reset);
	T_FF tff19(q[19],q[18],reset);
	T_FF tff20(q[20],q[19],reset);
	T_FF tff21(q[21],q[20],reset);
	T_FF tff22(q[22],q[21],reset);
	T_FF tff23(q[23],q[22],reset);
	T_FF tff24(q[24],q[23],reset);
	T_FF tff25(q[25],q[24],reset);
	T_FF tff26(q[26],q[25],reset);
	T_FF tff27(q[27],q[26],reset);
	T_FF tff28(q[28],q[27],reset);
	T_FF tff29(q[29],q[28],reset);
	T_FF tff30(q[30],q[29],reset);
	T_FF tff31(q[31],q[30],reset);
T_FF tff32(q[32],q[31],reset);
T_FF tff33(q[33],q[32],reset);
T_FF tff34(q[34],q[33],reset);
T_FF tff35(q[35],q[34],reset);
T_FF tff36(q[36],q[35],reset);
T_FF tff37(q[37],q[36],reset);
T_FF tff38(q[38],q[37],reset);
T_FF tff39(q[39],q[38],reset);
T_FF tff40(q[40],q[39],reset);
T_FF tff41(q[41],q[40],reset);
T_FF tff42(q[42],q[41],reset);
T_FF tff43(q[43],q[42],reset);
T_FF tff44(q[44],q[43],reset);
T_FF tff45(q[45],q[44],reset);
T_FF tff46(q[46],q[45],reset);
T_FF tff47(q[47],q[46],reset);
T_FF tff48(q[48],q[47],reset);
T_FF tff49(q[49],q[48],reset);
T_FF tff50(q[50],q[49],reset);
T_FF tff51(q[51],q[50],reset);
T_FF tff52(q[52],q[51],reset);
T_FF tff53(q[53],q[52],reset);
T_FF tff54(q[54],q[53],reset);
T_FF tff55(q[55],q[54],reset);
T_FF tff56(q[56],q[55],reset);
T_FF tff57(q[57],q[56],reset);
T_FF tff58(q[58],q[57],reset);
T_FF tff59(q[59],q[58],reset);
T_FF tff60(q[60],q[59],reset);
T_FF tff61(q[61],q[60],reset);
T_FF tff62(q[62],q[61],reset);
T_FF tff63(q[63],q[62],reset);
T_FF tff64(q[64],q[63],reset);
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
