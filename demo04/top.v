//`default_nettype none

module top;
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
reg [3:0] b;  //bit-wise little endian.  Ends with LSB
reg [0:7] c[1:0];  //bit-wise big endian.  Ends with MSB

initial begin
    $display("a = %b, b = %b, c[0] = %b, c[1] = %b", a, b, c[0], c[1]);
    a = 5'b10101;
    b = 4'b1111;
    c[0] = 8'bxx11_0x0x; // underscore is ignored in verilog for reading
    c[1] = 8'b1111_0000;
    $display("a = %b, b = %b, c[0] = %b, c[1] = %b", a, b , c[0], c[1]);
    //#50 b = a;  //This will only capture the bits of a that match the size of b
    //any higher order bits will be truncated
   // $display("a = %b, b = %b, c[0] = %b, c[1] = %b", a, b , c[0], c[1]);
end

reg clk, reset;
initial begin
    reset = 0;
    clk = 0;
end
always begin
    #5 clk = ~clk; //this will toggle the clock signal every 5 time units
end

example_module U1 (clk, reset);
initial begin
    #500 $finish; //Finish is a system task that ends the simulation
end
endmodule

module example_module(input clk, input reset);
reg [7:0] count = 0; // little bit-wise endian
reg [0:7] count2 = 0; // big bit-wise endian
reg enable = 1;
//assign data2 = count
assign data = count;
assign data2 = count2;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        count <= 0;
        enable <= 0;
    end
    else if (enable) begin
        count <= count + 1;
        count2 <= count2 + 1;
    end
    $display("data = %b data2 = %b count = %b count2 = %b", data, data2, count, count2);
end
endmodule