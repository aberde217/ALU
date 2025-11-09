`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 12:27:51 PM
// Design Name: 
// Module Name: tb_two_comp
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


module tb_two_comp();
reg [3:0] A;
wire [3:0] comp;
two_comp ip(.A(A), .comp(comp));
initial begin 
    A = 4'b0011;
    #10
    A = 4'b0010;
    #10
    A = 4'b0001;
    #10
    A = 4'b1111;
    #10
    A = 4'b0000;
    #10
    A = 4'b1110;
    #10
    $finish;   
end 
endmodule
