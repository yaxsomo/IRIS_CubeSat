################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name SYS_CLK_IN_P -period 8 [get_ports SYS_CLK_IN_P]
create_clock -name SYS_CLK_IN_N -period 8 [get_ports SYS_CLK_IN_N]

################################################################################