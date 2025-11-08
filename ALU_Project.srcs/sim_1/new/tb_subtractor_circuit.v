`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2025 01:14:20 PM
// Design Name: 
// Module Name: tb_subtractor_circuit
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


module tb_subtractor_circuit();
reg [3:0] A, B;
wire [3:0] diff;
wire Cout;
subtractor_circuit ip(.A(A), .B(B), .diff(diff), .Cout(Cout));
initial begin 
    A = 4'b1111; B = 4'b0001;
    #10
    A = 4'b1111; B = 4'b1111;
    #10
    A = 4'b1000; B = 4'b0100;
    #10
    A = 4'b1111; B = 4'b1110;
    #10
    A = 4'b0000; B = 4'b0010;
    #10
    A = 4'b0011; B = 4'b1010;
    #10
    A = 4'b0111; B = 4'b0110;
    #10
    $finish;
end 
endmodule
