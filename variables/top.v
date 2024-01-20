module top;

// 4 fundamental types
reg t1;
reg t2;
reg t3, t4;

initial begin
    t1 = 1'b0;  //Logic 0 or false
    t2 = 1'b1;  //Logic 1 or true
    t3 = 1'bx;  //Don't care or unknown
    t4 = 1'bz;  //High Impedance
    $display("t1 = %b\nt2 = %b\nt3 = %b\nt4 = %b\n", t1, t2, t3, t4);
end


//vectors and arrays.
reg [4:0] a;
reg [3:0] b;
reg [0:7] c[1:0];  //creates an array of 2, 8 bit registers

initial begin
    $display("a = %b, b = %b, c[0] = %b, c[1] = %b", a, b, c[0], c[1]);

end
endmodule