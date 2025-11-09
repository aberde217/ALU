`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 12:03:41 PM
// Design Name: 
// Module Name: two_complement
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


module two_comp(
    input [3:0] A,
    output [3:0] comp
    );
wire [3:0] one_comp;
wire temp; //represents Cout, however we won't include it in simulation
assign one_comp[0] = ~(A[0]);
assign one_comp[1] = ~(A[1]);
assign one_comp[2] = ~(A[2]);
assign one_comp[3] = ~(A[3]);
adder_circuit add(.A(one_comp), .B(4'b0001), .Cin(1'b0), .sum(comp), .Cout(temp));
endmodule
