`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 11:20:17 AM
// Design Name: 
// Module Name: tb_mult_circuit
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


module tb_mult_circuit();
reg [3:0] A, B;
wire [7:0] prod;
multiplier_circuit ip(.A(A), .B(B), .prod(prod));
initial begin 
    A = 4'b0000; B = 4'b0000;
    #10
    A = 4'b1111; B = 4'b0000;
    #10
    A = 4'b0010; B = 4'b0011;
    #10
    A = 4'b0001; B = 4'b0001;
    #10
    A = 4'b1111; B = 4'b1111;
    #10
    A = 4'b0101; B = 4'b0011;
    #10
    A = 4'b1000; B = 4'b1000;
    #10
    $finish;
end 
endmodule
