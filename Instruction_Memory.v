`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 10:02:29 PM
// Design Name: 
// Module Name: Instruction_Memory
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


module Instruction_Memory(
    input clk,
    input reset,
    input [7:0] Address,
    output reg[31:0] instruction
    );
    reg [7:0] mem [255:0];                                                         
    always @(posedge clk)begin                                                     
      if(reset)                                                                    
        instruction<=32'b0;                                                        
      else                                                                         
        instruction<={mem[Address],mem[Address+1],mem[Address+2],mem[Address+3]};  
    end                                                                            
                                                                                   
    initial begin                                                                  
          $readmemh("Memory.mem",mem);  // Read Memory File                        
    end                                                                            
endmodule
