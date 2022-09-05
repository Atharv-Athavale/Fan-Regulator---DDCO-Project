module test;
	reg s1, s0, e, i;
	wire a, b, c, d;
	demux obj(s1,s0,a,b,c,d,e,i);
	initial 
		begin
		$display("\n\t\tFan Regulator\n");
		$display("(The enabler bit is used as the switch)\n");
		$display("1. When off mode is required");
		$display("e\ts1\ts0\tSpeed");
		$monitor("%b\t%b\t%b\t %b\t",e,s1,s0,a);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
		$display("\n2. When low mode is required");
		$display("e\ts1\ts0\tSpeed");
		$monitor("%b\t%b\t%b\t %b\t",e,s1,s0,b);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
		$display("\n3. When medium mode is required");
		$display("e\ts1\ts0\tSpeed");
		$monitor("%b\t%b\t%b\t %b\t",e,s1,s0,c);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
		$display("\n4. When high mode is required");
		$display("e\ts1\ts0\tSpeed");
		$monitor("%b\t%b\t%b\t %b\t",e,s1,s0,d);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
	 $finish;
	end
endmodule