# User config
set script_dir [file dirname [file normalize [info script]]]

# name of your project, should also match the name of the top module
set ::env(DESIGN_NAME) wrapped_multiplier_8

set ::env(STD_CELL_LIBRARY) "gf180mcu_fd_sc_mcu7t5v0"

# add your source files here
#set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/../../verilog/rtl/wrapped_multiplier_8.v"

set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/../../verilog/rtl/wrapped_multiplier_8.v \
    $::env(DESIGN_DIR)/../../verilog/rtl/multilib_8.v"


# set absolute size of the die to 300 x 300 um
set ::env(DIE_AREA) "0 0 300 300"
set ::env(FP_SIZING) absolute

set ::env(FP_CORE_UTIL) 40
set ::env(PL_TARGET_DENSITY) [ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]

# define number of IO pads
set ::env(SYNTH_DEFINES) "MPRJ_IO_PADS=38"

# clock period is ns
# need 40MHz for VGA out = 25ns
# copied from VGA example
set ::env(CLOCK_PERIOD) "300"
set ::env(CLOCK_PORT) "wb_clk_i"

# macro needs to work inside Caravel, so can't be core and can't use metal 5
set ::env(DESIGN_IS_CORE) 0
set ::env(RT_MAX_LAYER) {Metal4}

# define power straps so the macro works inside Caravel's PDN
set ::env(VDD_NETS) [list {vdd}]
set ::env(GND_NETS) [list {vss}]

# regular pin order seems to help with aggregating all the macros for the group project
#set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

set ::env(FP_IO_VTHICKNESS_MULT) 4
set ::env(FP_IO_HTHICKNESS_MULT) 4

