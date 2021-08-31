library ieee;
use ieee.std_logic_1164.all;
	Entity one_bit_full_adder is
		Port(input1 : in bit;
			input2 : in bit;
			carry_in : in bit;
			carry_out : out bit;
			sum : out bit );
	end one_bit_full_adder;
	
	Architecture Behav of one_bit_full_adder is
		signal g : bit;
		signal h : bit;
		signal i : bit;
	begin

		g <= input1 and input2;
		h <= input1 xor input2;
		i <= h and carry_in;
		sum <= h xor carry_in;
		carry_out <= i or g;
		
	end behav;