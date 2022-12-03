# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# User config
set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) caravel

set ::env(ROUTING_CORES) 128

set verilog_root $::env(PROJECT_ROOT)/verilog/
set lef_root $::env(PROJECT_ROOT)/lef/
set gds_root $::env(PROJECT_ROOT)/gds/

set mgmt_area_verilog_root $::env(MCW_ROOT)/verilog/
set mgmt_area_lef_root $::env(MCW_ROOT)/lef/
set mgmt_area_gds_root $::env(MCW_ROOT)/gds/

# Change if needed
set ::env(VERILOG_FILES) "\
    $verilog_root/rtl/user_defines.v \
    $verilog_root/rtl/caravel.v"

set ::env(SYNTH_READ_BLACKBOX_LIB) 1

#$verilog_root/rtl/pads.v
set ::env(VERILOG_FILES_BLACKBOX) "\
    $verilog_root/rtl/defines.v \
    $verilog_root/rtl/chip_io.v \
    $verilog_root/rtl/__user_project_wrapper.v \
    $verilog_root/rtl/mgmt_protect.v \
    $verilog_root/rtl/gpio_defaults_block.v \
    $verilog_root/rtl/gpio_control_block.v \
    $verilog_root/rtl/user_id_programming.v \
    $verilog_root/rtl/housekeeping.v \
    $verilog_root/rtl/digital_pll.v \
    $verilog_root/rtl/caravel_clocking.v \
    $verilog_root/rtl/simple_por.v\
    $verilog_root/rtl/caravel_gf180_pdn.v \
    $verilog_root/rtl/spare_logic_block.v\
    $mgmt_area_verilog_root/rtl/mgmt_core_wrapper.v \
    "

#$lef_root/user_id_programming.lef
#$lef_root/simple_por.lef
#$lef_root/xres_buf.lef

set ::env(EXTRA_LEFS) "\
    $lef_root/chip_io.lef \
    $lef_root/user_project_wrapper.lef \
    $lef_root/mgmt_protect.lef \
    $lef_root/gpio_control_block.lef \
    $lef_root/gpio_defaults_block.lef \
    $lef_root/housekeeping.lef \
    $lef_root/digital_pll.lef \
    $lef_root/caravel_clocking.lef \
    $lef_root/caravel_gf180_pdn.lef \
    $lef_root/user_id_programming.lef \
    $lef_root/spare_logic_block.lef\
    $::env(PROJECT_ROOT)/macros/simple_por/lef/simple_por.lef \
    $mgmt_area_lef_root/mgmt_core_wrapper.lef \
    "

#$gds_root/simple_por.gds
set ::env(EXTRA_GDS_FILES) "\
    $gds_root/user_project_wrapper.gds \
    $gds_root/mgmt_protect.gds \
    $gds_root/gpio_control_block.gds \
    $gds_root/gpio_defaults_block-zeroized.gds \
    $gds_root/housekeeping.gds \
    $gds_root/digital_pll.gds \
    $gds_root/caravel_gf180_pdn.gds \
    $gds_root/user_id_programming.gds \
    $gds_root/chip_io.gds \
    $gds_root/user_id_programming.gds \
    $gds_root/caravel_clocking.gds \
    $gds_root/spare_logic_block.gds \
    $::env(PROJECT_ROOT)/macros/simple_por/gds/simple_por.gds \
    $mgmt_area_gds_root/mgmt_core_wrapper.gds \
    "

#
# if { [info exists ::env(LVS_RUN_DIR)] || [info exists ::env(CONNECTIVITY_RUN)] } {
# 	# if running to get a full floorplan, need the original pads due to
# 	# missing pins in the abstracted version
# 	set ::env(GPIO_PADS_LEF) [glob "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/lef/s8iom0s8/*.lef"]
# }

set ::env(SYNTH_TOP_LEVEL) 1
set ::env(SYNTH_FLAT_TOP) 1
set ::env(LEC_ENABLE) 0

set ::env(FP_SIZING) absolute

set ::env(DIE_AREA) "0 0 3890.00 5100.00"

set ::env(CELL_PAD) 0

set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0

set ::env(DIODE_INSERTION_STRATEGY) 0

set ::env(GLB_RT_ALLOW_CONGESTION) 1
set ::env(GLB_RT_OVERFLOW_ITERS) 50
set ::env(GLB_RT_TILES) 30
#set ::env(GLB_RT_MINLAYER) 2
#set ::env(GLB_RT_MAXLAYER) 6
#set ::env(RT_MIN_LAYER) met1
#set ::env(RT_MAX_LAYER) met5

set ::env(GLB_RT_ADJUSTMENT) "0"
set ::env(GLB_RT_L1_ADJUSTMENT) "0.99"
set ::env(GLB_RT_L2_ADJUSTMENT) "0.1"
set ::env(GLB_RT_L3_ADJUSTMENT) "0.15"
set ::env(GLB_RT_L4_ADJUSTMENT) "0.15"
set ::env(GLB_RT_L5_ADJUSTMENT) "0.15"
set ::env(GLB_RT_L6_ADJUSTMENT) "0"
#set ::env(GLB_RT_L1_ADJUSTMENT) "0.99"
#set ::env(GLB_RT_L2_ADJUSTMENT) "0"
#set ::env(GLB_RT_L3_ADJUSTMENT) "0"
#set ::env(GLB_RT_L4_ADJUSTMENT) "0"
#set ::env(GLB_RT_L5_ADJUSTMENT) "0"
#set ::env(GLB_RT_L6_ADJUSTMENT) "0"
#set ::env(GLB_RT_L1_ADJUSTMENT) "0"
#set ::env(GLB_RT_L2_ADJUSTMENT) "0"
#set ::env(GLB_RT_L3_ADJUSTMENT) "0"
#set ::env(GLB_RT_L4_ADJUSTMENT) "0"
#set ::env(GLB_RT_L5_ADJUSTMENT) "0"
#set ::env(GLB_RT_L6_ADJUSTMENT) "0"

# set ::env(ROUTING_OPT_ITERS) 7
# set ::env(GLB_RT_UNIDIRECTIONAL) 0

set ::env(FILL_INSERTION) 0

# DON'T PUT CELLS ON THE TOP LEVEL
set ::env(LVS_INSERT_POWER_PINS) 0

set ::env(MAGIC_GENERATE_LEF) 0

set ::env(QUIT_ON_ILLEGAL_OVERLAPS) 0
set ::env(QUIT_ON_TR_DRC) 0
set ::env(QUIT_ON_LVS_ERROR) 0

#set ::env(TRACKS_INFO_FILE) $script_dir/tracks.info
#
