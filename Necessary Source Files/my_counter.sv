`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/09/2025 10:43:16 AM
// Design Name: 
// Module Name: my_counter
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


module my_counter#(parameter N=10)(
    input logic clk,
    input logic rst,
    input logic en,
    output logic tic
    );
    
    logic [N-1:0] count, ncount;
    
    always_ff@(posedge(clk), posedge(rst))
        if(rst)
            count<=0;
        else
            count<=ncount;
        
        
    always_comb begin
        if(en)
            ncount=count+1;
        else
            ncount=count;
    
    end
    
    assign tick = (count==1);
    
endmodule






