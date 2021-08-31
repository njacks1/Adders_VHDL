Entity four_bit_full_adder is
	port( A : in bit_vector(3 downto 0);
		B : in bit_vector(3 downto 0);
		Cin: in bit;
		S : out bit_vector(3 downto 0);
		Cout: out bit );
	End four_bit_full_adder;

Architecture struct of four_bit_full_adder is
	Component one_bit_full_adder
		Port(input1 : in bit;
			input2 : in bit;
			carry_in : in bit;
			carry_out : out bit;
			sum : out bit );
	End component;
	
	signal C : bit_vector(3 downto 1);
	
	Begin
		FA0 : one_bit_full_adder port map (A(0), B(0), Cin, C(1), S(0));
		FA1 : one_bit_full_adder port map (A(1), B(1), C(1), C(2), S(1));
		FA2 : one_bit_full_adder port map (A(2), B(2), C(2), C(3), S(2));
		FA3 : one_bit_full_adder port map (A(3), B(3), C(3), Cout, S(3));
	End struct;
				
