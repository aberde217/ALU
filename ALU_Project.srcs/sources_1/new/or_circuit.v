`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 02:01:32 PM
// Design Name: 
// Module Name: or_circuit
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

module or_circuit(
    input [3:0] A,
    input [3:0] B,
    output [3:0] out
    );
assign out[0] = A[0] | B[0];
assign out[1] = A[1] | B[1];
assign out[2] = A[2] | B[2];
assign out[3] = A[3] | B[3];
endmodule
