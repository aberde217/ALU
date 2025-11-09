`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 11:54:40 AM
// Design Name: 
// Module Name: subtractor_circuit
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

//Unsigned Binary Subtraction
module subtractor_circuit(
    input [3:0] A, 
    input [3:0] B,
    output [3:0] diff, 
    output Cout
    );
wire [3:0] b_comp;
two_complement c(.val(B), .comp(b_comp));
wire [3:0] temp = b_comp;
adder_circuit ip(.A(A), .B(temp), .Cin(1'b0), .sum(diff), .Cout(Cout));
endmodule 

module two_complement(
    input [3:0] val,
    output [3:0] comp
    );
wire Cout;
wire [3:0] one_comp;
assign one_comp[3] = ~(val[3]);
assign one_comp[2] = ~(val[2]);
assign one_comp[1] = ~(val[1]);
assign one_comp[0] = ~(val[0]);
adder_circuit plus_1(.A(one_comp), .B(4'b0001), .Cin(1'b0), .sum(comp), .Cout(Cout));
endmodule 
