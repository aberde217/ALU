`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 07:54:51 PM
// Design Name: 
// Module Name: multiplier_circuit
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


module multiplier_circuit(
    input [3:0] A,
    input [3:0] B,
    output [7:0] prod
    );
wire [7:0] p1, p2, p3, p4;
partial_mult partial1(.A(A), .B(B[0]), .starting_pos(2'b00), .partial_prod(p1));
partial_mult partial2(.A(A), .B(B[1]), .starting_pos(2'b01), .partial_prod(p2));
partial_mult partial3(.A(A), .B(B[2]), .starting_pos(2'b10), .partial_prod(p3));
partial_mult partial4(.A(A), .B(B[3]), .starting_pos(2'b11), .partial_prod(p4));

wire [7:0] temp1, temp2;

CLA7 a0(.A(p1), .B(p2), .sum(temp1));
CLA7 a2(.A(temp1), .B(p3), .sum(temp2));
CLA7 a3(.A(temp2), .B(p4), .sum(prod));
endmodule

module partial_mult(
    input [3:0] A,
    input B,
    input [1:0] starting_pos,  //representing decimal number from 0-3
    output reg [7:0] partial_prod
    );
integer i, j, k;
reg temp;
always @(*) begin  
for (i = 0; i < starting_pos; i = i + 1) begin 
    partial_prod[i] = 1'b0;
end 
for (j = starting_pos; j <= (starting_pos + 3); j = j + 1) begin 
    partial_prod[j] = A[j - starting_pos] & B;
end 
for (k = j; k < 8; k = k + 1) begin 
    partial_prod[k] = 1'b0;
end 
end  
endmodule

module CLA7(
    input [7:0] A,
    input [7:0] B,
    output [7:0] sum
    );
wire [7:0] G, P;
wire [7:0] C;
genvar i;
generate 
    for (i = 0; i < 8; i = i + 1) begin 
        PFA partial(.A(A[i]), .B(B[i]), .Cin(C[i]), .G(G[i]), .P(P[i]), .S(sum[i]));
    end 
endgenerate 
cla_logic log(.G(G), .P(P), .Cin(1'b0), .C(C));
endmodule

//CLA logic for lookahead adder
module cla_logic(
    input [7:0] G,
    input [7:0] P,
    input Cin, 
    output reg [7:0] C 
    );
integer i;
always @(*) begin 
    C[0] = Cin;
    for (i = 1; i < 8; i = i + 1) begin 
        C[i] = G[i-1] | (P[i-1] & C[i-1]);
    end 
end 
endmodule 

//partial full adder for CLA
module PFA(
    input A, 
    input B,
    input Cin, 
    output G, 
    output P, 
    output S 
    );
assign G = A & B;
assign P = A ^ B;
assign S = A ^ B ^ Cin;
endmodule 
