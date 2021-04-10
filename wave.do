# do manchesterdecode_run_msim_rtl_vhdl.do 
# if {[file exists rtl_work]} {
# 	vdel -lib rtl_work -all
# }
# vlib rtl_work
# vmap work rtl_work
# Copying /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini
# Modifying modelsim.ini
# ** Warning: Copied /opt/altera/13.0sp1/modelsim_ae/linuxaloem/../modelsim.ini to modelsim.ini.
#          Updated modelsim.ini.
# 
# vcom -93 -work work {/home/osvaldo.sn/projeto3/manchesterdecode.vhd}
# Model Technology ModelSim ALTERA vcom 10.1d Compiler 2012.11 Nov  2 2012
# -- Loading package STANDARD
# -- Loading package TEXTIO
# -- Loading package std_logic_1164
# -- Compiling entity manchesterdecode
# -- Compiling architecture moore_arch of manchesterdecode
# 
vsim work.manchesterdecode
# vsim work.manchesterdecode 
# //  ModelSim ALTERA 10.1d Nov  2 2012 Linux 4.19.0-13-amd64
# //
# //  Copyright 1991-2012 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION
# //  WHICH IS THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS
# //  LICENSORS AND IS SUBJECT TO LICENSE TERMS.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.manchesterdecode(moore_arch)
add wave -position end  sim:/manchesterdecode/clk
add wave -position end  sim:/manchesterdecode/reset
add wave -position end  sim:/manchesterdecode/y
add wave -position end  sim:/manchesterdecode/v
add wave -position end  sim:/manchesterdecode/d
add wave -position end  sim:/manchesterdecode/state_reg
add wave -position end  sim:/manchesterdecode/state_next
force -freeze sim:/manchesterdecode/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/manchesterdecode/reset 0 0
force -freeze sim:/manchesterdecode/y 0 0
run 50
run 25
run 100
run 100
force -freeze sim:/manchesterdecode/y 1 0
run 100
force -freeze sim:/manchesterdecode/y 0 0
run 100
run 100
run 100
restart -f
force -freeze sim:/manchesterdecode/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/manchesterdecode/reset 0 0
force -freeze sim:/manchesterdecode/y 0 0
run 50
run 25
force -freeze sim:/manchesterdecode/y 1 0
run 100
restart -f
force -freeze sim:/manchesterdecode/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/manchesterdecode/reset 0 0
force -freeze sim:/manchesterdecode/y 0 0
run 125
run 50
run 100
force -freeze sim:/manchesterdecode/y 1 0
run 100
restart -f
force -freeze sim:/manchesterdecode/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/manchesterdecode/reset 0 0
force -freeze sim:/manchesterdecode/y 0 0
run 125
run 100
run 100
force -freeze sim:/manchesterdecode/y 1 0
run 100
run 100
force -freeze sim:/manchesterdecode/y 0 0
run 100
force -freeze sim:/manchesterdecode/y 0 0
run 100
force -freeze sim:/manchesterdecode/y 1 0
run 100
run 25
run 25
run 25