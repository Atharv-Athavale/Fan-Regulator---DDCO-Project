module demux(s1,s0,a,b,c,d,e,i);
	input s1,s0,e,i;
	output a,b,c,d;
	assign a =i&e&~s1&~s0;
	assign b =i&e&~s1&s0;
	assign c =i&e&s1&~s0;
	assign d =i&e&s1&s0;
endmodule