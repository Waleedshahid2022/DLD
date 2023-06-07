////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Paramitirized_Adder_Substractor_synthesis.v
// /___/   /\     Timestamp: Fri Apr 14 02:23:52 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Paramitirized_Adder_Substractor.ngc Paramitirized_Adder_Substractor_synthesis.v 
// Device	: xa7a100t-2I-csg324
// Input file	: Paramitirized_Adder_Substractor.ngc
// Output file	: E:\fpga\HalfAdder\netgen\synthesis\Paramitirized_Adder_Substractor_synthesis.v
// # of Modules	: 1
// Design Name	: Paramitirized_Adder_Substractor
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Paramitirized_Adder_Substractor (
  Cout, V, A, B, Sub
);
  output Cout;
  output V;
  input [3 : 0] A;
  input [3 : 0] B;
  output [3 : 0] Sub;
  wire A_0_IBUF_0;
  wire A_1_IBUF_1;
  wire A_2_IBUF_2;
  wire A_3_IBUF_3;
  wire B_0_IBUF_4;
  wire B_1_IBUF_5;
  wire B_2_IBUF_6;
  wire B_3_IBUF_7;
  wire Cout_OBUF_9;
  wire Sub_0_OBUF_10;
  wire Sub_1_OBUF_11;
  wire Sub_2_OBUF_12;
  wire Sub_3_OBUF_13;
  wire V_OBUF_14;
  wire [3 : 3] C;
  LUT2 #(
    .INIT ( 4'h6 ))
  \Sub<0>1  (
    .I0(A_0_IBUF_0),
    .I1(B_0_IBUF_4),
    .O(Sub_0_OBUF_10)
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  Cout1 (
    .I0(B_3_IBUF_7),
    .I1(C[3]),
    .I2(A_3_IBUF_3),
    .O(Cout_OBUF_9)
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \Mxor_Sub<3>_xo<0>1  (
    .I0(A_3_IBUF_3),
    .I1(B_3_IBUF_7),
    .I2(C[3]),
    .O(Sub_3_OBUF_13)
  );
  LUT4 #(
    .INIT ( 16'h4BB4 ))
  \Mxor_Sub<1>_xo<0>1  (
    .I0(A_0_IBUF_0),
    .I1(B_0_IBUF_4),
    .I2(A_1_IBUF_1),
    .I3(B_1_IBUF_5),
    .O(Sub_1_OBUF_11)
  );
  LUT6 #(
    .INIT ( 64'hB2BB22B2B2BBB2BB ))
  \C<3>1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(A_1_IBUF_1),
    .I3(B_1_IBUF_5),
    .I4(A_0_IBUF_0),
    .I5(B_0_IBUF_4),
    .O(C[3])
  );
  LUT6 #(
    .INIT ( 64'h6966996969666966 ))
  \Mxor_Sub<2>_xo<0>1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(A_1_IBUF_1),
    .I3(B_1_IBUF_5),
    .I4(A_0_IBUF_0),
    .I5(B_0_IBUF_4),
    .O(Sub_2_OBUF_12)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_3)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_2)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_0)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_7)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_6)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_5)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_4)
  );
  OBUF   Sub_3_OBUF (
    .I(Sub_3_OBUF_13),
    .O(Sub[3])
  );
  OBUF   Sub_2_OBUF (
    .I(Sub_2_OBUF_12),
    .O(Sub[2])
  );
  OBUF   Sub_1_OBUF (
    .I(Sub_1_OBUF_11),
    .O(Sub[1])
  );
  OBUF   Sub_0_OBUF (
    .I(Sub_0_OBUF_10),
    .O(Sub[0])
  );
  OBUF   Cout_OBUF (
    .I(Cout_OBUF_9),
    .O(Cout)
  );
  OBUF   V_OBUF (
    .I(V_OBUF_14),
    .O(V)
  );
  LUT3 #(
    .INIT ( 8'h18 ))
  \Mxor_V_xo<0>1  (
    .I0(C[3]),
    .I1(B_3_IBUF_7),
    .I2(A_3_IBUF_3),
    .O(V_OBUF_14)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

