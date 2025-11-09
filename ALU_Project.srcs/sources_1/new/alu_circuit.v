`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2025 04:53:48 PM
// Design Name: 
// Module Name: alu_circuit
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


module alu_circuit(
    input [3:0] op1,
    input [3:0] op2,
    input [2:0] sel,
    output reg [7:0] result
    );
wire [3:0] add_result, sub_result, and_result, or_result, twocomp_result, shl_result, shr_result;
wire [8:0] prod_result;
wire add_cout, sub_cout;
integer i;

adder_circuit add(.A(op1), .B(op2), .Cin(1'b0), .sum(add_result), .Cout(add_cout));
subtractor_circuit sub(.A(op1), .B(op2), .diff(sub_result), .Cout(sub_cout));
multiplier_circuit mult(.A(op1), .B(op2), .prod(prod_result));
two_comp comp(.A(op1), .comp(twocomp_result));
and_circuit an(.A(op1), .B(op2), .out(and_result));
or_circuit orc(.A(op1), .B(op2), .out(or_result));
shift_left shl(.A(op1), .out(shl_result));
shift_right shr(.A(op1), .out(shr_result));

initial begin 
    result = 8'b00000000;
end 

always @(*) begin 
    case(sel)
        3'b000: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = add_result[i];
            end 
            $display("Cout = %b", add_cout);
            result[4] = add_cout;
        end
        3'b001: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = sub_result[i];
            end
            $display("Cout = %b", sub_cout); 
            result[4] = sub_cout;
        end
        3'b010: begin 
            result = prod_result;
        end   
        3'b011: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = twocomp_result[i];
            end  
            for (i = 4; i < 8; i = i + 1) begin 
                result[i] = twocomp_result[3];
            end  
        end 
        3'b100: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = and_result[i];
            end     
        end 
        3'b101: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = or_result[i];
            end
        end 
        3'b110: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = shl_result[i];
            end 
        end  
        3'b111: begin 
            for (i = 0; i < 4; i = i + 1) begin 
                result[i] = shr_result[i];
            end 
        end                       
     endcase 
end 
endmodule
