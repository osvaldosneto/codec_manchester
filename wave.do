# do manchesterdecode_run_msim_rtl_vhdl.do 

add wave -position end  sim:/codec_manchester/clk_in
add wave -position end  sim:/codec_manchester/reset_in
add wave -position end  sim:/codec_manchester/v_in
add wave -position end  sim:/codec_manchester/d_in
add wave -position end  sim:/codec_manchester/y_out
add wave -position end  sim:/codec_manchester/v_out

force -freeze sim:/codec_manchester/clk_in 1 0, 0 {50 ps} -r 100

force -freeze sim:/codec_manchester/reset_in 0 0
force -freeze sim:/codec_manchester/v_in 1 0
force -freeze sim:/codec_manchester/d_in 0 0
run 325
force -freeze sim:/codec_manchester/d_in 1 0
run 150
force -freeze sim:/codec_manchester/d_in 0 0
run 150
force -freeze sim:/codec_manchester/d_in 1 0
run 100
force -freeze sim:/codec_manchester/d_in 0 0
run 100
force -freeze sim:/codec_manchester/d_in 1 0

