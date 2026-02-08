`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2026 12:34:29
// Design Name: 
// Module Name: uart_tb
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


module uart_tb;

    reg clk = 0;
    reg rst = 1;
    reg tx_start;
    reg [7:0] tx_data;
    wire [7:0] rx_data;
    wire tx_done, rx_done;

    uart_top DUT (
        .clk(clk),
        .rst(rst),
        .tx_start(tx_start),
        .tx_data(tx_data),
        .rx_data(rx_data),
        .tx_done(tx_done),
        .rx_done(rx_done)
    );

    always #10 clk = ~clk; // 50 MHz

    initial begin
        tx_start = 0;
        tx_data  = 8'h00;

        #100 rst = 0;

        #200;
        tx_data  = 8'h55;
        tx_start = 1;

        #20 tx_start = 0;

        #2000000;
        $stop;
    end

endmodule

