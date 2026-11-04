//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Sat May 16 17:01:46 2026
//Host        : Charles_Clarke running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led_0,
    led_1_tri_io);
  output led_0;
  inout [0:0]led_1_tri_io;

  wire led_0;
  wire [0:0]led_1_tri_i_0;
  wire [0:0]led_1_tri_io_0;
  wire [0:0]led_1_tri_o_0;
  wire [0:0]led_1_tri_t_0;

  design_1 design_1_i
       (.led_0(led_0),
        .led_1_tri_i(led_1_tri_i_0),
        .led_1_tri_o(led_1_tri_o_0),
        .led_1_tri_t(led_1_tri_t_0));
  IOBUF led_1_tri_iobuf_0
       (.I(led_1_tri_o_0),
        .IO(led_1_tri_io[0]),
        .O(led_1_tri_i_0),
        .T(led_1_tri_t_0));
endmodule
