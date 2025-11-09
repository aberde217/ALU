`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 02:33:28 PM
// Design Name: 
// Module Name: shift_left
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

module shift_left(
    input [3:0] A,
    output reg [3:0] out
    );
integer i;
always @(*) begin 
    out[0] = 1'b0;
    for(i = 1; i < 4; i = i + 1) begin 
        out[i] = A[i-1];
    end 
end 
endmodule
