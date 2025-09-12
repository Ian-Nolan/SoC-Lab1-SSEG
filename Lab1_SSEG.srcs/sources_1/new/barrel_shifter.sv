`timescale 1ns / 1ps

module barrel_shifter(

    input   logic tick,
    input   logic rst,
    input   logic dir,
    input   logic [7:0] in_value,
    output  logic [7:0] out
    );
    
    reg [7:0] out_temp;
    
    always_ff @(posedge tick, posedge rst) begin
    
        if (rst) begin
            out_temp = 8'b00000100;
        end
        else begin
            case (dir)
                1'b0: out_temp = {in_value[6:0], in_value[7]};
                1'b1: out_temp = {in_value[0], in_value[7:1]};
            endcase
        end
    end
    
    assign out = out_temp;
        
endmodule
