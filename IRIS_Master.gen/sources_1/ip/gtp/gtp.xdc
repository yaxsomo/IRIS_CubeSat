################################################################################
##   ____  ____
##  /   /\/   /
## /___/  \  /    Vendor: AMD
## \   \   \/     Version : 3.6
##  \   \         Application : 7 Series FPGAs Transceivers Wizard
##  /   /         Filename : gtp.xdc
## /___/   /\     
## \   \  /  \ 
##  \___\/\___\
##
##
## USER CONSTRAINTS FILE FOR MGT WRAPPER EXAMPLE DESIGN
## Generated by AMD 7 Series FPGAs Transceivers Wizard
##
## Device:  xc7a100t
## Package: fgg484
##
## (c) Copyright 2010-2012 Advanced Micro Devices, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Advanced Micro Devices, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## AMD, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) AMD shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or AMD had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## AMD products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of AMD products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
## 
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.

 

################################## Clock Constraints ##########################



# User Clock Constraints
create_clock -period 4.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt0_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt0_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt0_gtp_i*gtpe2_i*}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gtp_i*gtpe2_i*TXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gtp_i*gtpe2_i*TXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]

#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gtp_i*gtpe2_i*RXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt0_gtp_i*gtpe2_i*RXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]


create_clock -period 4.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt1_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt1_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt1_gtp_i*gtpe2_i*}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt1_gtp_i*gtpe2_i*TXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt1_gtp_i*gtpe2_i*TXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]

#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt1_gtp_i*gtpe2_i*RXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt1_gtp_i*gtpe2_i*RXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]


create_clock -period 4.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt2_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt2_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt2_gtp_i*gtpe2_i*}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt2_gtp_i*gtpe2_i*TXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt2_gtp_i*gtpe2_i*TXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]

#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt2_gtp_i*gtpe2_i*RXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt2_gtp_i*gtpe2_i*RXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]


create_clock -period 4.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLK} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt3_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*TXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt3_gtp_i*gtpe2_i*}]]
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*RXOUTCLKFABRIC} -of_objects [get_cells -hierarchical -filter {NAME =~ *gt3_gtp_i*gtpe2_i*}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt3_gtp_i*gtpe2_i*TXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt3_gtp_i*gtpe2_i*TXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]

#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]] -to [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt3_gtp_i*gtpe2_i*RXOUTCLK}]]
#set_false_path -from [get_clocks -include_generated_clocks -of_objects [get_pins -hier -filter {name=~*gt3_gtp_i*gtpe2_i*RXOUTCLK}]] -to [get_clocks -include_generated_clocks -of_objects [get_ports sysclk_in]]


set_false_path -to [get_cells -hierarchical -filter {NAME =~ *data_sync_reg1}]
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_sync1*}]
set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_sync2*}]

set_false_path -to [get_cells -hierarchical -filter {NAME =~ *txpmaresetdone_i_reg}]



####################### GT reference clock constraints #########################



################################# RefClk Location constraints (Can be uncommented) ##################### 
## set_property LOC E6 [get_ports  Q0_CLK0_GTREFCLK_PAD_N_IN ] 
## set_property LOC F6 [get_ports  Q0_CLK0_GTREFCLK_PAD_P_IN ]

