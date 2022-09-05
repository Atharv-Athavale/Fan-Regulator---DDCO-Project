module test;
	reg s1, s0, e, i;
	wire a, b, c, d;
	demux obj(s1,s0,a,b,c,d,e,i);
	initial 
		begin
		$dumpfile("demux.vcd");
		$dumpvars(0, test);
		$display("\n\t\tFan Regulator\n");
		$display("(The enabler bit is used as the switch)\n");
		$display("e\ts1\ts0\tOff\tLow\tMedium\t  High");
		$monitor("%b\t%b\t%b\t %b\t %b\t  %b\t   %b" ,e,s1,s0,a,b,c,d);
		i=1; e=0; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=0;
		#10  i=1; e=1; s1=0; s0=1;
		#10  i=1; e=1; s1=1; s0=0;
		#10  i=1; e=1; s1=1; s0=1;
	 $finish;
	end
endmodule