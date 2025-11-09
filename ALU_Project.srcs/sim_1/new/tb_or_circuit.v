`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 02:08:45 PM
// Design Name: 
// Module Name: tb_or_circuit
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


module tb_or_circuit();
reg [3:0] A, B;
wire [3:0] out;
or_circuit ip(.A(A), .B(B), .out(out));
initial begin 
    A = 4'b0000; B = 4'b0000;
    #10
    A = 4'b1111; B = 4'b0000;
    #10
    A = 4'b0011; B = 4'b1010;
    #10
    A = 4'b1010; B = 4'b0101;
    #10
    A = 4'b1001; B = 4'b1110;
    #10
    A = 4'b1111; B = 4'b1111;
    #10
    $finish;
end 
endmodule
