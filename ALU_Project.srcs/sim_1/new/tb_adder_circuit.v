`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 04:06:11 PM
// Design Name: 
// Module Name: tb_adder_circuit
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


module tb_adder_circuit();
reg [3:0] A, B;
reg Cin;
wire [3:0] sum;
wire Cout;
adder_circuit ip(.A(A), .B(B), .Cin(Cin), .sum(sum), .Cout(Cout));
initial begin
    A = 4'b0011; B = 4'b0010; Cin = 1'b0;
    #10
    A = 4'b1011; B = 4'b0110; Cin = 1'b1;
    #10
    A = 4'b0111; B = 4'b0011; Cin = 1'b0;
    #10
    A = 4'b1111; B = 4'b0010; Cin = 1'b1;
    #10
    A = 4'b1111; B = 4'b0001; Cin = 1'b0;
    #10
    A = 4'b0100; B = 4'b0100; Cin = 1'b1;
    #10
    A = 4'b0000; B = 4'b0000; Cin = 1'b0;
    #10
    A = 4'b1111; B = 4'b1111; Cin = 1'b1;
    #10
    A = 4'b1110; B = 4'b0001; Cin = 1'b1;
    #10
    A = 4'b1111; B = 4'b1111; Cin = 1'b0;
    #10
    $finish;
end
endmodule
