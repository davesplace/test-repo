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
    reg c0, c1, c2, c3;
    reg s0, s1;

    wire out;

    mux4 U1(out, c0, c1, c2, c3, s0, s1);


    initial begin
        c0 = 1;
        c1 = 0;
        c2 = 1;
        c3 = 0;
        #1 $display ("c0 = %b, c1 = %b, c2 = %b, c3 = %b\n", c0, c1, c2, c3);

        s0 = 0;
        s1 = 0;
        #1 $display ("s0 = %b, s1 = %b, out = %b\n",s0, s1, out);

        s0 = 1;
        s1 = 0;
        #1 $display ("s0 = %b, s1 = %b, out = %b\n",s0, s1, out);

        s0 = 0;
        s1 = 1;
        #1 $display ("s0 = %b, s1 = %b, out = %b\n",s0, s1, out);

        s0 = 1;
        s1 = 1;
        #1 $display ("s0 = %b, s1 = %b, out = %b\n",s0, s1, out);

        
    end    
endmodule