`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 02:33:28 PM
// Design Name: 
// Module Name: shift_right
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

module shift_right(
    input [3:0] A,
    output reg [3:0] out
    );
integer i;
always @(*) begin 
    out[3] = 1'b0;
    for(i = 0; i < 3; i = i + 1) begin 
        out[i] = A[i+1];
    end 
end 
endmodule
