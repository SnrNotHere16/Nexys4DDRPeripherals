`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// SevenSegmentDisplayTopTest.v 
// The following module is the top module. 
// Modules: SevenSegmentDisplayController
// The module displays a hardcoded value onto the seven segment display
//
//////////////////////////////////////////////////////////////////////////////////

module SevenSegmentDisplayTopTest(clk, reset, 
                    a, b, c, d, e, f, g, anode, 
                    LED);
//inputs
    input clk, reset; 
//outputs 
    //dividend and divisor 
    //7 segment display 
    output a, b, c, d, e, f, g;
    output [7:0] anode; 
    //16 LEDS 
    output wire [15:0] LED; 

//Module for displaying on the seven segment display     
SevenSegmentDisplayController zero(clk, reset, 32'hFEDC_BA98, 
                                      a, b, c, d, e, f, g, anode);

    assign LED = 32'hFEDC_BA98; 
endmodule