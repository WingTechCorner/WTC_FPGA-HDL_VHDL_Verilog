--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.68d
--  \   \         Application: netgen
--  /   /         Filename: ripple_carry_counter_synthesis.vhd
-- /___/   /\     Timestamp: Sun Nov  3 13:01:18 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ripple_carry_counter -w -dir netgen/synthesis -ofmt vhdl -sim ripple_carry_counter.ngc ripple_carry_counter_synthesis.vhd 
-- Device	: xc6slx16-3-csg324
-- Input file	: ripple_carry_counter.ngc
-- Output file	: /opt/verilog/verilog-ripple-counter/netgen/synthesis/ripple_carry_counter_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ripple_carry_counter
-- Xilinx	: /opt/XilinxEmbedded/14.6/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ripple_carry_counter is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    q : out STD_LOGIC_VECTOR ( 31 downto 0 ) 
  );
end ripple_carry_counter;

architecture Structure of ripple_carry_counter is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal reset_IBUF_1 : STD_LOGIC; 
  signal tff0_dff0_q_2 : STD_LOGIC; 
  signal tff1_dff0_q_3 : STD_LOGIC; 
  signal tff2_dff0_q_4 : STD_LOGIC; 
  signal tff3_dff0_q_5 : STD_LOGIC; 
  signal tff4_dff0_q_6 : STD_LOGIC; 
  signal tff5_dff0_q_7 : STD_LOGIC; 
  signal tff6_dff0_q_8 : STD_LOGIC; 
  signal tff7_dff0_q_9 : STD_LOGIC; 
  signal tff8_dff0_q_10 : STD_LOGIC; 
  signal tff9_dff0_q_11 : STD_LOGIC; 
  signal tff10_dff0_q_12 : STD_LOGIC; 
  signal tff11_dff0_q_13 : STD_LOGIC; 
  signal tff12_dff0_q_14 : STD_LOGIC; 
  signal tff13_dff0_q_15 : STD_LOGIC; 
  signal tff14_dff0_q_16 : STD_LOGIC; 
  signal tff15_dff0_q_17 : STD_LOGIC; 
  signal tff16_dff0_q_18 : STD_LOGIC; 
  signal tff17_dff0_q_19 : STD_LOGIC; 
  signal tff18_dff0_q_20 : STD_LOGIC; 
  signal tff19_dff0_q_21 : STD_LOGIC; 
  signal tff20_dff0_q_22 : STD_LOGIC; 
  signal tff21_dff0_q_23 : STD_LOGIC; 
  signal tff22_dff0_q_24 : STD_LOGIC; 
  signal tff23_dff0_q_25 : STD_LOGIC; 
  signal tff24_dff0_q_26 : STD_LOGIC; 
  signal tff25_dff0_q_27 : STD_LOGIC; 
  signal tff26_dff0_q_28 : STD_LOGIC; 
  signal tff27_dff0_q_29 : STD_LOGIC; 
  signal tff28_dff0_q_30 : STD_LOGIC; 
  signal tff29_dff0_q_31 : STD_LOGIC; 
  signal tff30_dff0_q_32 : STD_LOGIC; 
  signal tff31_dff0_q_33 : STD_LOGIC; 
  signal tff31_d : STD_LOGIC; 
  signal tff30_d : STD_LOGIC; 
  signal tff29_d : STD_LOGIC; 
  signal tff28_d : STD_LOGIC; 
  signal tff27_d : STD_LOGIC; 
  signal tff26_d : STD_LOGIC; 
  signal tff25_d : STD_LOGIC; 
  signal tff24_d : STD_LOGIC; 
  signal tff23_d : STD_LOGIC; 
  signal tff22_d : STD_LOGIC; 
  signal tff21_d : STD_LOGIC; 
  signal tff20_d : STD_LOGIC; 
  signal tff19_d : STD_LOGIC; 
  signal tff18_d : STD_LOGIC; 
  signal tff17_d : STD_LOGIC; 
  signal tff16_d : STD_LOGIC; 
  signal tff15_d : STD_LOGIC; 
  signal tff14_d : STD_LOGIC; 
  signal tff13_d : STD_LOGIC; 
  signal tff12_d : STD_LOGIC; 
  signal tff11_d : STD_LOGIC; 
  signal tff10_d : STD_LOGIC; 
  signal tff9_d : STD_LOGIC; 
  signal tff8_d : STD_LOGIC; 
  signal tff7_d : STD_LOGIC; 
  signal tff6_d : STD_LOGIC; 
  signal tff5_d : STD_LOGIC; 
  signal tff4_d : STD_LOGIC; 
  signal tff3_d : STD_LOGIC; 
  signal tff2_d : STD_LOGIC; 
  signal tff1_d : STD_LOGIC; 
  signal tff0_d : STD_LOGIC; 
begin
  tff0_dff0_q : FDC_1
    port map (
      C => clk_BUFGP_0,
      CLR => reset_IBUF_1,
      D => tff0_d,
      Q => tff0_dff0_q_2
    );
  tff1_dff0_q : FDC_1
    port map (
      C => tff0_dff0_q_2,
      CLR => reset_IBUF_1,
      D => tff1_d,
      Q => tff1_dff0_q_3
    );
  tff2_dff0_q : FDC_1
    port map (
      C => tff1_dff0_q_3,
      CLR => reset_IBUF_1,
      D => tff2_d,
      Q => tff2_dff0_q_4
    );
  tff3_dff0_q : FDC_1
    port map (
      C => tff2_dff0_q_4,
      CLR => reset_IBUF_1,
      D => tff3_d,
      Q => tff3_dff0_q_5
    );
  tff4_dff0_q : FDC_1
    port map (
      C => tff3_dff0_q_5,
      CLR => reset_IBUF_1,
      D => tff4_d,
      Q => tff4_dff0_q_6
    );
  tff5_dff0_q : FDC_1
    port map (
      C => tff4_dff0_q_6,
      CLR => reset_IBUF_1,
      D => tff5_d,
      Q => tff5_dff0_q_7
    );
  tff6_dff0_q : FDC_1
    port map (
      C => tff5_dff0_q_7,
      CLR => reset_IBUF_1,
      D => tff6_d,
      Q => tff6_dff0_q_8
    );
  tff7_dff0_q : FDC_1
    port map (
      C => tff6_dff0_q_8,
      CLR => reset_IBUF_1,
      D => tff7_d,
      Q => tff7_dff0_q_9
    );
  tff8_dff0_q : FDC_1
    port map (
      C => tff7_dff0_q_9,
      CLR => reset_IBUF_1,
      D => tff8_d,
      Q => tff8_dff0_q_10
    );
  tff9_dff0_q : FDC_1
    port map (
      C => tff8_dff0_q_10,
      CLR => reset_IBUF_1,
      D => tff9_d,
      Q => tff9_dff0_q_11
    );
  tff10_dff0_q : FDC_1
    port map (
      C => tff9_dff0_q_11,
      CLR => reset_IBUF_1,
      D => tff10_d,
      Q => tff10_dff0_q_12
    );
  tff11_dff0_q : FDC_1
    port map (
      C => tff10_dff0_q_12,
      CLR => reset_IBUF_1,
      D => tff11_d,
      Q => tff11_dff0_q_13
    );
  tff12_dff0_q : FDC_1
    port map (
      C => tff11_dff0_q_13,
      CLR => reset_IBUF_1,
      D => tff12_d,
      Q => tff12_dff0_q_14
    );
  tff13_dff0_q : FDC_1
    port map (
      C => tff12_dff0_q_14,
      CLR => reset_IBUF_1,
      D => tff13_d,
      Q => tff13_dff0_q_15
    );
  tff14_dff0_q : FDC_1
    port map (
      C => tff13_dff0_q_15,
      CLR => reset_IBUF_1,
      D => tff14_d,
      Q => tff14_dff0_q_16
    );
  tff15_dff0_q : FDC_1
    port map (
      C => tff14_dff0_q_16,
      CLR => reset_IBUF_1,
      D => tff15_d,
      Q => tff15_dff0_q_17
    );
  tff16_dff0_q : FDC_1
    port map (
      C => tff15_dff0_q_17,
      CLR => reset_IBUF_1,
      D => tff16_d,
      Q => tff16_dff0_q_18
    );
  tff17_dff0_q : FDC_1
    port map (
      C => tff16_dff0_q_18,
      CLR => reset_IBUF_1,
      D => tff17_d,
      Q => tff17_dff0_q_19
    );
  tff18_dff0_q : FDC_1
    port map (
      C => tff17_dff0_q_19,
      CLR => reset_IBUF_1,
      D => tff18_d,
      Q => tff18_dff0_q_20
    );
  tff19_dff0_q : FDC_1
    port map (
      C => tff18_dff0_q_20,
      CLR => reset_IBUF_1,
      D => tff19_d,
      Q => tff19_dff0_q_21
    );
  tff20_dff0_q : FDC_1
    port map (
      C => tff19_dff0_q_21,
      CLR => reset_IBUF_1,
      D => tff20_d,
      Q => tff20_dff0_q_22
    );
  tff21_dff0_q : FDC_1
    port map (
      C => tff20_dff0_q_22,
      CLR => reset_IBUF_1,
      D => tff21_d,
      Q => tff21_dff0_q_23
    );
  tff22_dff0_q : FDC_1
    port map (
      C => tff21_dff0_q_23,
      CLR => reset_IBUF_1,
      D => tff22_d,
      Q => tff22_dff0_q_24
    );
  tff23_dff0_q : FDC_1
    port map (
      C => tff22_dff0_q_24,
      CLR => reset_IBUF_1,
      D => tff23_d,
      Q => tff23_dff0_q_25
    );
  tff24_dff0_q : FDC_1
    port map (
      C => tff23_dff0_q_25,
      CLR => reset_IBUF_1,
      D => tff24_d,
      Q => tff24_dff0_q_26
    );
  tff25_dff0_q : FDC_1
    port map (
      C => tff24_dff0_q_26,
      CLR => reset_IBUF_1,
      D => tff25_d,
      Q => tff25_dff0_q_27
    );
  tff26_dff0_q : FDC_1
    port map (
      C => tff25_dff0_q_27,
      CLR => reset_IBUF_1,
      D => tff26_d,
      Q => tff26_dff0_q_28
    );
  tff27_dff0_q : FDC_1
    port map (
      C => tff26_dff0_q_28,
      CLR => reset_IBUF_1,
      D => tff27_d,
      Q => tff27_dff0_q_29
    );
  tff28_dff0_q : FDC_1
    port map (
      C => tff27_dff0_q_29,
      CLR => reset_IBUF_1,
      D => tff28_d,
      Q => tff28_dff0_q_30
    );
  tff29_dff0_q : FDC_1
    port map (
      C => tff28_dff0_q_30,
      CLR => reset_IBUF_1,
      D => tff29_d,
      Q => tff29_dff0_q_31
    );
  tff30_dff0_q : FDC_1
    port map (
      C => tff29_dff0_q_31,
      CLR => reset_IBUF_1,
      D => tff30_d,
      Q => tff30_dff0_q_32
    );
  tff31_dff0_q : FDC_1
    port map (
      C => tff30_dff0_q_32,
      CLR => reset_IBUF_1,
      D => tff31_d,
      Q => tff31_dff0_q_33
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF_1
    );
  q_31_OBUF : OBUF
    port map (
      I => tff31_dff0_q_33,
      O => q(31)
    );
  q_30_OBUF : OBUF
    port map (
      I => tff30_dff0_q_32,
      O => q(30)
    );
  q_29_OBUF : OBUF
    port map (
      I => tff29_dff0_q_31,
      O => q(29)
    );
  q_28_OBUF : OBUF
    port map (
      I => tff28_dff0_q_30,
      O => q(28)
    );
  q_27_OBUF : OBUF
    port map (
      I => tff27_dff0_q_29,
      O => q(27)
    );
  q_26_OBUF : OBUF
    port map (
      I => tff26_dff0_q_28,
      O => q(26)
    );
  q_25_OBUF : OBUF
    port map (
      I => tff25_dff0_q_27,
      O => q(25)
    );
  q_24_OBUF : OBUF
    port map (
      I => tff24_dff0_q_26,
      O => q(24)
    );
  q_23_OBUF : OBUF
    port map (
      I => tff23_dff0_q_25,
      O => q(23)
    );
  q_22_OBUF : OBUF
    port map (
      I => tff22_dff0_q_24,
      O => q(22)
    );
  q_21_OBUF : OBUF
    port map (
      I => tff21_dff0_q_23,
      O => q(21)
    );
  q_20_OBUF : OBUF
    port map (
      I => tff20_dff0_q_22,
      O => q(20)
    );
  q_19_OBUF : OBUF
    port map (
      I => tff19_dff0_q_21,
      O => q(19)
    );
  q_18_OBUF : OBUF
    port map (
      I => tff18_dff0_q_20,
      O => q(18)
    );
  q_17_OBUF : OBUF
    port map (
      I => tff17_dff0_q_19,
      O => q(17)
    );
  q_16_OBUF : OBUF
    port map (
      I => tff16_dff0_q_18,
      O => q(16)
    );
  q_15_OBUF : OBUF
    port map (
      I => tff15_dff0_q_17,
      O => q(15)
    );
  q_14_OBUF : OBUF
    port map (
      I => tff14_dff0_q_16,
      O => q(14)
    );
  q_13_OBUF : OBUF
    port map (
      I => tff13_dff0_q_15,
      O => q(13)
    );
  q_12_OBUF : OBUF
    port map (
      I => tff12_dff0_q_14,
      O => q(12)
    );
  q_11_OBUF : OBUF
    port map (
      I => tff11_dff0_q_13,
      O => q(11)
    );
  q_10_OBUF : OBUF
    port map (
      I => tff10_dff0_q_12,
      O => q(10)
    );
  q_9_OBUF : OBUF
    port map (
      I => tff9_dff0_q_11,
      O => q(9)
    );
  q_8_OBUF : OBUF
    port map (
      I => tff8_dff0_q_10,
      O => q(8)
    );
  q_7_OBUF : OBUF
    port map (
      I => tff7_dff0_q_9,
      O => q(7)
    );
  q_6_OBUF : OBUF
    port map (
      I => tff6_dff0_q_8,
      O => q(6)
    );
  q_5_OBUF : OBUF
    port map (
      I => tff5_dff0_q_7,
      O => q(5)
    );
  q_4_OBUF : OBUF
    port map (
      I => tff4_dff0_q_6,
      O => q(4)
    );
  q_3_OBUF : OBUF
    port map (
      I => tff3_dff0_q_5,
      O => q(3)
    );
  q_2_OBUF : OBUF
    port map (
      I => tff2_dff0_q_4,
      O => q(2)
    );
  q_1_OBUF : OBUF
    port map (
      I => tff1_dff0_q_3,
      O => q(1)
    );
  q_0_OBUF : OBUF
    port map (
      I => tff0_dff0_q_2,
      O => q(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  tff31_d1_INV_0 : INV
    port map (
      I => tff31_dff0_q_33,
      O => tff31_d
    );
  tff30_d1_INV_0 : INV
    port map (
      I => tff30_dff0_q_32,
      O => tff30_d
    );
  tff29_d1_INV_0 : INV
    port map (
      I => tff29_dff0_q_31,
      O => tff29_d
    );
  tff28_d1_INV_0 : INV
    port map (
      I => tff28_dff0_q_30,
      O => tff28_d
    );
  tff27_d1_INV_0 : INV
    port map (
      I => tff27_dff0_q_29,
      O => tff27_d
    );
  tff26_d1_INV_0 : INV
    port map (
      I => tff26_dff0_q_28,
      O => tff26_d
    );
  tff25_d1_INV_0 : INV
    port map (
      I => tff25_dff0_q_27,
      O => tff25_d
    );
  tff24_d1_INV_0 : INV
    port map (
      I => tff24_dff0_q_26,
      O => tff24_d
    );
  tff23_d1_INV_0 : INV
    port map (
      I => tff23_dff0_q_25,
      O => tff23_d
    );
  tff22_d1_INV_0 : INV
    port map (
      I => tff22_dff0_q_24,
      O => tff22_d
    );
  tff21_d1_INV_0 : INV
    port map (
      I => tff21_dff0_q_23,
      O => tff21_d
    );
  tff20_d1_INV_0 : INV
    port map (
      I => tff20_dff0_q_22,
      O => tff20_d
    );
  tff19_d1_INV_0 : INV
    port map (
      I => tff19_dff0_q_21,
      O => tff19_d
    );
  tff18_d1_INV_0 : INV
    port map (
      I => tff18_dff0_q_20,
      O => tff18_d
    );
  tff17_d1_INV_0 : INV
    port map (
      I => tff17_dff0_q_19,
      O => tff17_d
    );
  tff16_d1_INV_0 : INV
    port map (
      I => tff16_dff0_q_18,
      O => tff16_d
    );
  tff15_d1_INV_0 : INV
    port map (
      I => tff15_dff0_q_17,
      O => tff15_d
    );
  tff14_d1_INV_0 : INV
    port map (
      I => tff14_dff0_q_16,
      O => tff14_d
    );
  tff13_d1_INV_0 : INV
    port map (
      I => tff13_dff0_q_15,
      O => tff13_d
    );
  tff12_d1_INV_0 : INV
    port map (
      I => tff12_dff0_q_14,
      O => tff12_d
    );
  tff11_d1_INV_0 : INV
    port map (
      I => tff11_dff0_q_13,
      O => tff11_d
    );
  tff10_d1_INV_0 : INV
    port map (
      I => tff10_dff0_q_12,
      O => tff10_d
    );
  tff9_d1_INV_0 : INV
    port map (
      I => tff9_dff0_q_11,
      O => tff9_d
    );
  tff8_d1_INV_0 : INV
    port map (
      I => tff8_dff0_q_10,
      O => tff8_d
    );
  tff7_d1_INV_0 : INV
    port map (
      I => tff7_dff0_q_9,
      O => tff7_d
    );
  tff6_d1_INV_0 : INV
    port map (
      I => tff6_dff0_q_8,
      O => tff6_d
    );
  tff5_d1_INV_0 : INV
    port map (
      I => tff5_dff0_q_7,
      O => tff5_d
    );
  tff4_d1_INV_0 : INV
    port map (
      I => tff4_dff0_q_6,
      O => tff4_d
    );
  tff3_d1_INV_0 : INV
    port map (
      I => tff3_dff0_q_5,
      O => tff3_d
    );
  tff2_d1_INV_0 : INV
    port map (
      I => tff2_dff0_q_4,
      O => tff2_d
    );
  tff1_d1_INV_0 : INV
    port map (
      I => tff1_dff0_q_3,
      O => tff1_d
    );
  tff0_d1_INV_0 : INV
    port map (
      I => tff0_dff0_q_2,
      O => tff0_d
    );

end Structure;

