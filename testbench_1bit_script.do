vsim -gui work.one_bit_full_adder
# vsim -gui work.one_bit_full_adder 
# Start time: 21:56:00 on Aug 31,2021
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.one_bit_full_adder(behav)
add wave -position end  sim:/one_bit_full_adder/input1
add wave -position end  sim:/one_bit_full_adder/input2
add wave -position end  sim:/one_bit_full_adder/carry_in
add wave -position end  sim:/one_bit_full_adder/carry_out
add wave -position end  sim:/one_bit_full_adder/sum
force -freeze sim:/one_bit_full_adder/input1 0 0
force -freeze sim:/one_bit_full_adder/input2 0 0
run

force -freeze sim:/one_bit_full_adder/input1 0 0
force -freeze sim:/one_bit_full_adder/input2 1 0
run

force -freeze sim:/one_bit_full_adder/input1 1 0
force -freeze sim:/one_bit_full_adder/input2 0 0
run

force -freeze sim:/one_bit_full_adder/input1 1 0
force -freeze sim:/one_bit_full_adder/input2 1 0
run