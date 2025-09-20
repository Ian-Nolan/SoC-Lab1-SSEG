`timescale 1ns / 1ps

module my_adder(
    input   logic clk,
    input   logic tick,
    input   logic en,
    input   logic dir,
    input   logic rst,
    input   logic [2:0] in_val,
    output   reg [2:0] out_val
    );
    
    
    always_ff @(posedge clk, posedge rst) begin
        
        if (rst)
            out_val = 3'b000;
        else if (en & tick) begin
            if (dir)
                out_val = in_val + 1;
            else
                out_val = in_val - 1;
        end
        else
            out_val = in_val;
            
    end
    
endmodule






