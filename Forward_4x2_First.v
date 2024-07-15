`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 11:48:21 AM
// Design Name: 
// Module Name: Forward_4x2_First
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


module Forward_4x2_First(ip_IF_ID_RegisterRS1,ip_EX_MEM_RegisterRS1,ip_ForwardC,op_Forward_RegisterRS1);
    input [31:0] ip_IF_ID_RegisterRS1;
    input [31:0] ip_EX_MEM_RegisterRS1;
    input ip_ForwardC;
    output reg [31:0]op_Forward_RegisterRS1;
    always @ (*) begin
        if(ip_ForwardC)begin
               op_Forward_RegisterRS1 <=  ip_EX_MEM_RegisterRS1;      
        end
        else begin
               op_Forward_RegisterRS1 <= ip_IF_ID_RegisterRS1;
        end
    end
endmodule
