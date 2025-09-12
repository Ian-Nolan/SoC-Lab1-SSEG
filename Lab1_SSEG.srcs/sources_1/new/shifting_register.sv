`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2025 12:12:37 PM
// Design Name: 
// Module Name: shifting_register
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


module shifting_register #(parameter N=8) (
    input logic tick,
    input logic direction,
    output logic [N-1:0] selection
    );
    
    always_ff @ (posedge tick) begin
        if (direction) begin
            selection>>1;
            if (selection == 0) begin
                selection = 8'b10000000;
            end
        end
        else begin
            selection<<1;
            if (selection == 0) begin
                selection = 8'b00000001;
            end
        end
    end
    
    
    
    
    
    
    
    
    
    
    
endmodule
