################################################################################
##   _____   _____    _____    _____  
##  |_   _| |  __ \  |_   _|  / ____| 
##    | |   | |__) |   | |   | (___   
##    | |   |  _  /    | |    \___ \  
##   _| |_ _| | \ \ _ _| |_ _ ____) | 
##  |_____(_)_|  \_(_)_____(_)_____(_)
##       Optical Communication System                                                                                                            
##
##  File : Constraints.xdc
##  Authors : Yassine DEHHANI & Emile BAILEY
##  Description : This file contains all the constraints descriptions for the FPGA chip. 
##  Creation Date : 30-11-2023
## 
##
##
##  (c) Copyright 2023-2026 Yassine DEHHANI & Emile BAILEY. All rights reserved.
################################################################################






# Clock Constraints
#set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVDS} [get_ports SYS_CLK_P]
#set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVDS} [get_ports SYS_CLK_N]
#set_property -dict {PACKAGE_PIN F6 IOSTANDARD DIFF_SSTL15} [get_ports MGT_CLK0_P]
#set_property -dict {PACKAGE_PIN E6 IOSTANDARD DIFF_SSTL15} [get_ports MGT_CLK0_N]

create_clock -period 8.000 [get_ports Q0_CLK0_GTREFCLK_PAD_P_IN]

set_property PACKAGE_PIN F6 [get_ports Q0_CLK0_GTREFCLK_PAD_P_IN]
set_property PACKAGE_PIN E6 [get_ports Q0_CLK0_GTREFCLK_PAD_N_IN]

## LOC constrain for SYS_CLK_P/N
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_IN_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_IN_N]
set_property PACKAGE_PIN R4 [get_ports SYS_CLK_IN_P]
set_property PACKAGE_PIN T4 [get_ports SYS_CLK_IN_N]

# System Reset Key
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33} [get_ports RST]

# DDR3 Constraints
#set_property -dict {PACKAGE_PIN E1 IOSTANDARD SSTL15} [get_ports DDR3_DQS0_P]
#set_property -dict {PACKAGE_PIN D1 IOSTANDARD SSTL15} [get_ports DDR3_DQS0_N]
#set_property -dict {PACKAGE_PIN K2 IOSTANDARD SSTL15} [get_ports DDR3_DQS1_P]
#set_property -dict {PACKAGE_PIN J2 IOSTANDARD SSTL15} [get_ports DDR3_DQS1_N]
#set_property -dict {PACKAGE_PIN M1 IOSTANDARD SSTL15} [get_ports DDR3_DQS2_P]
#set_property -dict {PACKAGE_PIN L1 IOSTANDARD SSTL15} [get_ports DDR3_DQS2_N]
#set_property -dict {PACKAGE_PIN P5 IOSTANDARD SSTL15} [get_ports DDR3_DQS3_P]
#set_property -dict {PACKAGE_PIN P4 IOSTANDARD SSTL15} [get_ports DDR3_DQS3_N]
#set_property -dict {PACKAGE_PIN C2 IOSTANDARD SSTL15} [get_ports DDR3_DQ[0]]
#set_property -dict {PACKAGE_PIN G1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[1]]
#set_property -dict {PACKAGE_PIN A1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[2]]
#set_property -dict {PACKAGE_PIN F3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[3]]
#set_property -dict {PACKAGE_PIN B2 IOSTANDARD SSTL15} [get_ports DDR3_DQ[4]]
#set_property -dict {PACKAGE_PIN F1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[5]]
#set_property -dict {PACKAGE_PIN B1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[6]]
#set_property -dict {PACKAGE_PIN E2 IOSTANDARD SSTL15} [get_ports DDR3_DQ[7]]
#set_property -dict {PACKAGE_PIN H3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[8]]
#set_property -dict {PACKAGE_PIN G3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[9]]
#set_property -dict {PACKAGE_PIN H2 IOSTANDARD SSTL15} [get_ports DDR3_DQ[10]]
#set_property -dict {PACKAGE_PIN H5 IOSTANDARD SSTL15} [get_ports DDR3_DQ[11]]
#set_property -dict {PACKAGE_PIN J1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[12]]
#set_property -dict {PACKAGE_PIN J5 IOSTANDARD SSTL15} [get_ports DDR3_DQ[13]]
#set_property -dict {PACKAGE_PIN K1 IOSTANDARD SSTL15} [get_ports DDR3_DQ[14]]
#set_property -dict {PACKAGE_PIN H4 IOSTANDARD SSTL15} [get_ports DDR3_DQ[15]]
#set_property -dict {PACKAGE_PIN L4 IOSTANDARD SSTL15} [get_ports DDR3_DQ[16]]
#set_property -dict {PACKAGE_PIN M3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[17]]
#set_property -dict {PACKAGE_PIN L3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[18]]
#set_property -dict {PACKAGE_PIN J6 IOSTANDARD SSTL15} [get_ports DDR3_DQ[19]]
#set_property -dict {PACKAGE_PIN K3 IOSTANDARD SSTL15} [get_ports DDR3_DQ[20]]
#set_property -dict {PACKAGE_PIN K6 IOSTANDARD SSTL15} [get_ports DDR3_DQ[21]]

# QSPI Constraints
#set_property -dict {PACKAGE_PIN L12 IOSTANDARD LVCMOS33} [get_ports QSPI_CLK]
#set_property -dict {PACKAGE_PIN T19 IOSTANDARD LVCMOS33} [get_ports QSPI_CS]
#set_property -dict {PACKAGE_PIN P22 IOSTANDARD LVCMOS33} [get_ports QSPI_DQ0]
#set_property -dict {PACKAGE_PIN R22 IOSTANDARD LVCMOS33} [get_ports QSPI_DQ1]
#set_property -dict {PACKAGE_PIN P21 IOSTANDARD LVCMOS33} [get_ports QSPI_DQ2]
#set_property -dict {PACKAGE_PIN R21 IOSTANDARD LVCMOS33} [get_ports QSPI_DQ3]

# Ethernet Constraints
#set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVCMOS33} [get_ports E_GTXC]
#set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports E_TXD0]
#set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports E_TXD1]
#set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports E_TXD2]
#set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports E_TXD3]
#set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports E_TXD4]
#set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports E_TXD5]
#set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports E_TXD6]
#set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports E_TXD7]
#set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVCMOS33} [get_ports E_TXEN]
#set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS33} [get_ports E_TXER]
#set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33} [get_ports E_TXC]
#set_property -dict {PACKAGE_PIN K18 IOSTANDARD LVCMOS33} [get_ports E_RXC]
#set_property -dict {PACKAGE_PIN M22 IOSTANDARD LVCMOS33} [get_ports E_RXDV]
#set_property -dict {PACKAGE_PIN N19 IOSTANDARD LVCMOS33} [get_ports E_RXER]
#set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS33} [get_ports E_RXD0]
#set_property -dict {PACKAGE_PIN H18 IOSTANDARD LVCMOS33} [get_ports E_RXD1]
#set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports E_RXD2]
#set_property -dict {PACKAGE_PIN K19 IOSTANDARD LVCMOS33} [get_ports E_RXD3]
#set_property -dict {PACKAGE_PIN M21 IOSTANDARD LVCMOS33} [get_ports E_RXD4]
#set_property -dict {PACKAGE_PIN L21 IOSTANDARD LVCMOS33} [get_ports E_RXD5]
#set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVCMOS33} [get_ports E_RXD6]
#set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVCMOS33} [get_ports E_RXD7]
#set_property -dict {PACKAGE_PIN N18 IOSTANDARD LVCMOS33} [get_ports E_COL]
#set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVCMOS33} [get_ports E_CRS]
#set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports E_RESET]
#set_property -dict {PACKAGE_PIN W10 IOSTANDARD LVCMOS33} [get_ports E_MDC]
#set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33} [get_ports E_MDIO]

# SFP1 Constraints
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVDS} [get_ports SFP1_TX_P]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVDS} [get_ports SFP1_TX_N]
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVDS} [get_ports SFP1_RX_P]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVDS} [get_ports SFP1_RX_N]
set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS33} [get_ports SFP1_TX_DIS]
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS33} [get_ports SFP1_LOSS]

# SFP2 Constraints
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVDS} [get_ports SFP2_TX_P]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVDS} [get_ports SFP2_TX_N]
set_property -dict {PACKAGE_PIN D11 IOSTANDARD LVDS} [get_ports SFP2_RX_P]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVDS} [get_ports SFP2_RX_N]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports SFP2_TX_DIS]
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports SFP2_LOSS]

# VGA Constraints
#set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports VGA_CLK]
#set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports VGA_EN]
#set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS33} [get_ports VGA_HS]
#set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVCMOS33} [get_ports VGA_VS]
#set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports VGA_R7]
#set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports VGA_R6]
#set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS33} [get_ports VGA_R5]
#set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS33} [get_ports VGA_R4]
#set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports VGA_R3]
#set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports VGA_R2]
#set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS33} [get_ports VGA_R1]
#set_property -dict {PACKAGE_PIN W12 IOSTANDARD LVCMOS33} [get_ports VGA_R0]
#set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports VGA_G7]
#set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports VGA_G6]
#set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports VGA_G5]
#set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports VGA_G4]
#set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports VGA_G3]
#set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports VGA_G2]
#set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports VGA_G1]
#set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports VGA_G0]
#set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports VGA_B7]
#set_property -dict {PACKAGE_PIN W21 IOSTANDARD LVCMOS33} [get_ports VGA_B6]
#set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports VGA_B5]
#set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports VGA_B4]
#set_property -dict {PACKAGE_PIN T20 IOSTANDARD LVCMOS33} [get_ports VGA_B3]
#set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports VGA_B2]
#set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports VGA_B1]
#set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports VGA_B0]

# USB Constraints
#set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports USB_CLKOUT]
#set_property -dict {PACKAGE_PIN Y21 IOSTANDARD LVCMOS33} [get_ports USB_IFCLK]
#set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports USB_FLAGA]
#set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports USB_FLAGB]
#set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports USB_FLAGC]
#set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports USB_SLCS]
#set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports USB_SLWR]
#set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports USB_SLRD]
#set_property -dict {PACKAGE_PIN N13 IOSTANDARD LVCMOS33} [get_ports USB_SLOE]
#set_property -dict {PACKAGE_PIN P20 IOSTANDARD LVCMOS33} [get_ports USB_PKTEND]
#set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports USB_FIFOADR[0]]
#set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports USB_FIFOADR[1]]
#set_property -dict {PACKAGE_PIN Y22 IOSTANDARD LVCMOS33} [get_ports USB_FD[0]]
#set_property -dict {PACKAGE_PIN W20 IOSTANDARD LVCMOS33} [get_ports USB_FD[1]]
#set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports USB_FD[2]]
#set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports USB_FD[3]]
#set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports USB_FD[4]]
#set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports USB_FD[5]]
#set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports USB_FD[6]]
#set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports USB_FD[7]]
#set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports USB_FD[8]]
#set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports USB_FD[9]]
#set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports USB_FD[10]]
#set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports USB_FD[11]]
#set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports USB_FD[12]]
#set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports USB_FD[13]]
#set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS33} [get_ports USB_FD[14]]
#set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports USB_FD[15]]

# SD Constraints
#set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports SD_CLK]
#set_property -dict {PACKAGE_PIN C15 IOSTANDARD LVCMOS33} [get_ports SD_CMD]
#set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports SD_CD_N]
#set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports SD_DAT0]
#set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports SD_DAT1]
#set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports SD_DAT2]
#set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports SD_DAT3]

# UART Constraints
set_property -dict {PACKAGE_PIN Y12 IOSTANDARD LVCMOS33} [get_ports UART1_RXD]
set_property -dict {PACKAGE_PIN Y11 IOSTANDARD LVCMOS33} [get_ports UART1_TXD]
#set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS33} [get_ports UART2_RXD]
#set_property -dict {PACKAGE_PIN AA9 IOSTANDARD LVCMOS33} [get_ports UART2_TXD]

# I2C Constraints
#set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports I2C_SCL]
#set_property -dict {PACKAGE_PIN V18 IOSTANDARD LVCMOS33} [get_ports I2C_SDA]

# RTC Constraints
#set_property -dict {PACKAGE_PIN B15 IOSTANDARD LVCMOS33} [get_ports RTC_SCLK]
#set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports RTC_DATA]
#set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports RTC_RESET]

# J4 Constraints
#set_property -dict {PACKAGE_PIN K14 IOSTANDARD LVCMOS33} [get_ports J4_P3]
#set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports J4_P5]
#set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports J4_P7]
#set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports J4_P9]
#set_property -dict {PACKAGE_PIN J21 IOSTANDARD LVCMOS33} [get_ports J4_P11]
#set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports J4_P13]
#set_property -dict {PACKAGE_PIN H19 IOSTANDARD LVCMOS33} [get_ports J4_P15]
#set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports J4_P17]
#set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports J4_P19]
#set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVCMOS33} [get_ports J4_P21]
#set_property -dict {PACKAGE_PIN H22 IOSTANDARD LVCMOS33} [get_ports J4_P23]
#set_property -dict {PACKAGE_PIN G20 IOSTANDARD LVCMOS33} [get_ports J4_P25]
#set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS33} [get_ports J4_P27]
#set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS33} [get_ports J4_P29]
#set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS33} [get_ports J4_P31]
#set_property -dict {PACKAGE_PIN A21 IOSTANDARD LVCMOS33} [get_ports J4_P33]
#set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS33} [get_ports J4_P35]
#set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports J4_P4]
#set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports J4_P6]
#set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports J4_P8]
#set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports J4_P10]
#set_property -dict {PACKAGE_PIN J20 IOSTANDARD LVCMOS33} [get_ports J4_P12]
#set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports J4_P14]
#set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports J4_P16]
#set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports J4_P18]
#set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports J4_P20]
#set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVCMOS33} [get_ports J4_P22]
#set_property -dict {PACKAGE_PIN J22 IOSTANDARD LVCMOS33} [get_ports J4_P24]
#set_property -dict {PACKAGE_PIN H20 IOSTANDARD LVCMOS33} [get_ports J4_P26]
#set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS33} [get_ports J4_P28]
#set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS33} [get_ports J4_P30]
#set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS33} [get_ports J4_P32]
#set_property -dict {PACKAGE_PIN B21 IOSTANDARD LVCMOS33} [get_ports J4_P34]
#set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS33} [get_ports J4_P36]

# J5 Constraints
#set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS33} [get_ports J5_P3]
#set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS33} [get_ports J5_P5]
#set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS33} [get_ports J5_P7]
#set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS33} [get_ports J5_P9]
#set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS33} [get_ports J5_P11]
#set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports J5_P13]
#set_property -dict {PACKAGE_PIN C19 IOSTANDARD LVCMOS33} [get_ports J5_P15]
#set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports J5_P17]
#set_property -dict {PACKAGE_PIN E14 IOSTANDARD LVCMOS33} [get_ports J5_P19]
#set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports J5_P21]
#set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports J5_P23]
#set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS33} [get_ports J5_P25]
#set_property -dict {PACKAGE_PIN A19 IOSTANDARD LVCMOS33} [get_ports J5_P27]
#set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports J5_P29]
#set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports J5_P31]
#set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports J5_P33]
#set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports J5_P35]
#set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS33} [get_ports J5_P4]
#set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS33} [get_ports J5_P6]
#set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS33} [get_ports J5_P8]
#set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports J5_P10]
#set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33} [get_ports J5_P12]
#set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports J5_P14]
#set_property -dict {PACKAGE_PIN C18 IOSTANDARD LVCMOS33} [get_ports J5_P16]
#set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports J5_P18]
#set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports J5_P20]
#set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports J5_P22]
#set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports J5_P24]
#set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS33} [get_ports J5_P26]
#set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports J5_P28]
#set_property -dict {PACKAGE_PIN F18 IOSTANDARD LVCMOS33} [get_ports J5_P30]
#set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports J5_P32]
#set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports J5_P34]
#set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports J5_P36]

# Buttons Constraints
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports KEY1]
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports KEY2]
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports KEY3]
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports KEY4]

#LEDs Constraints
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports LED1]
set_property -dict {PACKAGE_PIN D17 IOSTANDARD LVCMOS33} [get_ports LED2]
set_property -dict {PACKAGE_PIN V20 IOSTANDARD LVCMOS33} [get_ports LED3]
set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports LED4]
