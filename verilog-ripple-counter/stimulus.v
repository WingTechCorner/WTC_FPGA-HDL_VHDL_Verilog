`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:37 11/03/2019
// Design Name:   ripple_carry_counter
// Module Name:   /opt/verilog/verilog-ripple-counter/stimulus.v
// Project Name:  verilog-ripple-counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stimulus;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_counter uut (
		.q(q), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		reset = 1'b1;
		#15 reset = 1'b0;
		#180 reset = 1'b1;
		#10 reset = 1'b0;
		#20 $finish;
	end
      
		
	initial
			$monitor($time, " Output q = %d", q);
endmodule

