default:
	iverilog -Wall -o ripple.out   ripple.v
xilinx6:
	#     -family {xcup|xcu|xc7|xc6s}
	yosys -p "synth_xilinx -family xc6s -edif ripple.edif -blif ripple.blif" ripple_no_tb.v

