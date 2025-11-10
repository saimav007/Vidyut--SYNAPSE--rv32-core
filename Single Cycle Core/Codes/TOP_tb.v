`timescale 1ns / 1ps
module TOP_tb;

    reg clk;
    reg reset;
    wire [3:0] out;
    TOP uut (
        .reset(reset),
        .clk(clk),
        //.clk_signal(clk),
        .out_1(out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
    reset = 1;
    #10;
    reset = 0;
    #2000;
    $finish;
    end

    initial begin 
    $dumpfile("output.vcd");
    $dumpvars(0,uut);
    end

endmodule
