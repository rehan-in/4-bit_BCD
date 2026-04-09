`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/07/2025 08:06:44 AM
// Design Name: 
// Module Name: binary_to_onehot
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


module binary_to_onehot (
    input  wire       enable,
    input  wire [3:0] bin_in,
    output reg  [15:0] hex_out
);
    always @(*) begin
        if (enable)
            hex_out = 16'b0000000000000001 << bin_in;
        else
            hex_out = 16'b0000000000000000;
    end
endmodule
