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

# OR COMMIT: 182e733faa149c80f36cfd2198a83dcdeb7853ea
set script_dir [file dirname [file normalize [info script]]]

set ::env(DESIGN_NAME) "housekeeping"
set ::env(ROUTING_CORES) 64 
set ::env(RUN_KLAYOUT) 0

set ::env(VERILOG_FILES) "\
	$script_dir/../../verilog/rtl/defines.v\
    $script_dir/../../verilog/rtl/housekeeping_spi.v\
    $script_dir/../../verilog/rtl/housekeeping.v"

set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "$::env(CLOCK_PORT) csclk mgmt_gpio_in\[4\]"

# set ::env(BASE_SDC_FILE) $script_dir/base.sdc

## Synthesis  
set ::env(SYNTH_STRATEGY) "AREA 3"

set ::env(SYNTH_MAX_FANOUT) 20

## Floorplan
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 300 750"

set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg

# set ::env(FP_IO_MIN_DISTANCE) 2

set ::env(CELL_PAD) 0

# ## Routing 
set ::env(GLB_RT_ADJUSTMENT) 0
set ::env(GLB_RT_ALLOW_CONGESTION) 1
# set ::env(GLB_RT_OVERFLOW_ITERS) 200

# set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 0.17


# ## Placement
set ::env(PL_TARGET_DENSITY) 0.80
set ::env(GLB_RESIZER_TIMING_OPTIMIZATIONS) 0
# set ::env(PL_RESIZER_TIMING_OPTIMIZATIONS) 0
# set ::env(PL_RESIZER_DESIGN_OPTIMIZATIONS) 0
set ::env(PL_MAX_DISPLACEMENT_Y) 900
set ::env(FP_TAPCELL_DIST) 30

# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) .17
# set ::env(PL_RESIZER_MAX_SLEW_MARGIN) "30"

# ## Diode Insertion
set ::env(DIODE_INSERTION_STRATEGY) "4"
# set ::env(GLB_RT_ANT_ITERS) "7"
