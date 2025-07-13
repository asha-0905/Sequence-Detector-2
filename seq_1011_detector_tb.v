`timescale 1ns / 1ps
`include "seq_1011_detector.v"
module seq_1011_detector_tb;

    reg clk, reset, x;
    wire z;

    seq_1011_detector dut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .z(z)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        $monitor("Time=%0t x=%b z=%b", $time, x, z);

        clk = 0;
        reset = 1;
        x = 0;

        #10 reset = 0;

        // Apply input stream 1 1 0 1 0 1
        #10 x = 1;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;

        #20 $finish;
    end

endmodule 
