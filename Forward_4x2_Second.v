`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 11:53:34 AM
// Design Name: 
// Module Name: Forward_4x2_Second
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


module Forward_4x2_Second(ip_IF_ID_RegisterRS2,ip_EX_MEM_RegisterRS2,ip_ForwardD,op_Forward_RegisterRS2);
    input [31:0] ip_IF_ID_RegisterRS2;                           
    input [31:0] ip_EX_MEM_RegisterRS2;                          
    input ip_ForwardD;                                           
    output reg [31:0]op_Forward_RegisterRS2;                           
always @ (*) begin                                           
    if(ip_ForwardD)begin                                     
           op_Forward_RegisterRS2 <=  ip_EX_MEM_RegisterRS2; 
    end                                                      
    else begin                                               
           op_Forward_RegisterRS2 <= ip_IF_ID_RegisterRS2;   
    end                                                      
end   
endmodule
