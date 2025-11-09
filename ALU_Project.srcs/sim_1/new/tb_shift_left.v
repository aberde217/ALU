`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 03:08:57 PM
// Design Name: 
// Module Name: tb_shift_left
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


module tb_shift_left();
reg [3:0] A;
wire [3:0] out;
shift_left ip(.A(A), .out(out));
initial begin 
A = 4'b0000;
#10
A = 4'b0001;
#10
A = 4'b0100;
#10
A = 4'b1000;
#10
A = 4'b1111;
#10
$finish;
end 
endmodule
