`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2026 19:31:57
// Design Name: 
// Module Name: fifo_8x8_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fifo_8x8_tb(

    );
    reg wr_en,rd_en,clk,rst;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire full,empty;
    
fifo_8x8 dut(wr_en,rd_en,clk,rst,data_in,data_out,full,empty);

    initial
        begin
            {wr_en,rd_en,clk,rst,data_in}=0;
        end
    
    always #5 clk= ~clk;
    initial
        begin
            rst=1;
            #10;
            rst=0;
            wr_en=1;
            data_in=5;
            #10;
            wr_en=1;
            data_in=10;
            #10;
            wr_en=0;
            #10;
            rd_en=1'b1;
            #10;
            $finish;
         end
            
       
            
    
endmodule
