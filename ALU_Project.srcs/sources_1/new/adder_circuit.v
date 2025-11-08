`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 02:01:46 PM
// Design Name: 
// Module Name: adder_circuit
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

//Unsigned Binary Addition
module adder_circuit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] sum,
    output Cout
    );
wire [3:0] G, P;
wire [4:1] C;
partial_full_adder a0(.A(A[0]), .B(B[0]), .Cin(Cin), .G(G[0]), .P(P[0]), .S(sum[0]));
partial_full_adder a1(.A(A[1]), .B(B[1]), .Cin(C[1]), .G(G[1]), .P(P[1]), .S(sum[1]));
partial_full_adder a2(.A(A[2]), .B(B[2]), .Cin(C[2]), .G(G[2]), .P(P[2]), .S(sum[2]));
partial_full_adder a3(.A(A[3]), .B(B[3]), .Cin(C[3]), .G(G[3]), .P(P[3]), .S(sum[3]));
carry_lookahead_logic ip(.G(G), .P(P), .Cin(Cin), .C(C));
assign Cout = C[4];
endmodule

module carry_lookahead_logic(
    input [3:0] G,
    input [3:0] P,
    input Cin,
    output [4:1] C
    );
assign C[1] = G[0] | (P[0] & Cin);
assign C[2] = G[1] | (P[1] & C[1]);
assign C[3] = G[2] | (P[2] & C[2]);
assign C[4] = G[3] | (P[3] & C[3]);
endmodule

module partial_full_adder(
    input A,
    input B,
    input Cin,
    output G,
    output P,
    output S 
    );
assign S = A ^ B ^ Cin;
assign G = A & B;
assign P = A ^ B;
endmodule
