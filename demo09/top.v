//declare the 4-to-1 multiplexor
module mux4 (
    output x,
    input c0, c1, c2, c3, s0, s1
);

    wire t0, t1, t2, t3;

    and (t0, c0, ~s0, ~s1);
    and (t1, c1, s0, ~s1);
    and (t2, c2, ~s0, s1);
    and (t3, c3, s0, s1);

    or (x, t0, t1, t2, t3);
  

endmodule

module top;
    reg a, b, c, d;
    reg S0, S1;

    wire out;

    mux4 U1(out, a, b, c, d, S0, S1);


    initial begin
        a=1;
        b=1;
        c=0;
        d=1;
        #1 $display ("a = %b, b = %b, c = %b, d = %b\n", a, b, c, d);

        S0 = 0;
        S1 = 0;
        #1 $display ("S0 = %b, S1 = %b, out = %b\n",S0, S1, out);

        S0 = 1;
        S1 = 0;
        #1 $display ("S0 = %b, S1 = %b, out = %b\n",S0, S1, out);

        S0 = 0;
        S1 = 1;
        #1 $display ("S0 = %b, S1 = %b, out = %b\n",S0, S1, out);

        S0 = 1;
        S1 = 1;
        #1 $display ("S0 = %b, S1 = %b, out = %b\n",S0, S1, out);

        
    end    
endmodule