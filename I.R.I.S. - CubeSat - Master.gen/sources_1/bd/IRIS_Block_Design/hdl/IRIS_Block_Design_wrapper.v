//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Thu Dec 14 14:51:29 2023
//Host        : DESKTOP-BC6995K running 64-bit major release  (build 9200)
//Command     : generate_target IRIS_Block_Design_wrapper.bd
//Design      : IRIS_Block_Design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IRIS_Block_Design_wrapper
   (KEY1,
    LED1,
    RST,
    SYS_CLK_IN_N,
    SYS_CLK_IN_P,
    UART1_RXD,
    UART1_TXD);
  input [0:0]KEY1;
  output [0:0]LED1;
  input RST;
  input SYS_CLK_IN_N;
  input SYS_CLK_IN_P;
  input UART1_RXD;
  output UART1_TXD;

  wire [0:0]KEY1;
  wire [0:0]LED1;
  wire RST;
  wire SYS_CLK_IN_N;
  wire SYS_CLK_IN_P;
  wire UART1_RXD;
  wire UART1_TXD;

  IRIS_Block_Design IRIS_Block_Design_i
       (.KEY1(KEY1),
        .LED1(LED1),
        .RST(RST),
        .SYS_CLK_IN_N(SYS_CLK_IN_N),
        .SYS_CLK_IN_P(SYS_CLK_IN_P),
        .UART1_RXD(UART1_RXD),
        .UART1_TXD(UART1_TXD));
endmodule
