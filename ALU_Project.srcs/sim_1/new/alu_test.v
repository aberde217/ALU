`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 06:27:22 PM
// Design Name: 
// Module Name: alu_test
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


module alu_test();
reg [3:0] A, B;
reg [2:0] sel;
wire [7:0] result;
alu_circuit alu(.op1(A), .op2(B), .sel(sel), .result(result));
initial begin 
A = 4'b1011; B = 4'b1110; sel = 3'b000;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b001;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b010;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b011;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b100;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b101;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b110;
#10
A = 4'b1011; B = 4'b1110; sel = 3'b111;
#10
$finish;
end 
endmodule 
