`timescale 1ns / 1ps

module top(
    input   logic clk,
    input   logic SW[1:0],
    input   logic BTNC,
    output logic [15:0] LED,
    output logic [7:0] AN,
    output logic CA,
    output logic CB,
    output logic CC,
    output logic CD,
    output logic CE,
    output logic CF,
    output logic CG
    );
    
    wire tick;
    logic  [2:0] out_sseg;
    logic  [2:0] next_out_sseg;
    
    my_counter  #(.N(25))count_cycles(
        .clk(clk),
        .rst(BTNC),
        .en(SW[0]),
        .tick(tick)
    );
    
    my_adder cycle_states(
        .clk(clk),
        .tick(tick),
        .rst(BTNC),
        .en(SW[0]),
        .dir(SW[1]),
        .in_val(out_sseg),
        .out_val(next_out_sseg)
    );
    
//    barrel_shifter shift(
//        .tick(tick),
//        .rst(BTNC),
//        .dir(SW[1]),
//        .in_value(out_sseg),
//        .out(next_out_sseg)
//    );
    
    
    always_comb begin
    
        out_sseg = next_out_sseg;
        
        LED[15:0] = 1'b0;
        AN[7:0] = 8'b11111111;
    
        case (out_sseg)
            3'b000: begin
            //8'b00000001: begin
                //LED[15:1] = 1'b0;
                //LED[0] = 1'b1;
                //AN[7:1] = 1'b1;
                AN[0] = 1'b0;
                CA = 1'b0;
                CB = 1'b0;
                CC = 1'b1;
                CD = 1'b1;
                CE = 1'b1;
                CF = 1'b0;
                CG = 1'b0;
            end
            3'b001: begin
            //8'b00000010: begin
                //LED[15:2] = 1'b0;
                //LED[0] = 1'b0;
                //LED[1] = 1'b1;
                //AN[7:2] = 1'b1;
                //AN[0] = 1'b1;
                AN[1] = 1'b0;
                CA = 1'b0;
                CB = 1'b0;
                CC = 1'b1;
                CD = 1'b1;
                CE = 1'b1;
                CF = 1'b0;
                CG = 1'b0;
            end
            3'b010: begin
            //8'b00000100: begin
                //LED[15:3] = 1'b0;
                //LED[1:0] = 1'b0;
                //LED[2] = 1'b1;
                //AN[7:3] = 1'b1;
                //AN[1:0] = 1'b1;
                AN[2] = 1'b0;
                CA = 1'b0;
                CB = 1'b0;
                CC = 1'b1;
                CD = 1'b1;
                CE = 1'b1;
                CF = 1'b0;
                CG = 1'b0;
            end
            3'b011: begin
            //8'b00001000: begin
                //LED[15:4] = 1'b0;
                //LED[2:0] = 1'b0;
                //LED[3] = 1'b1;
                //AN[7:4] = 1'b1;
                //AN[2:0] = 1'b1;
                AN[3] = 1'b0;
                CA = 1'b0;
                CB = 1'b0;
                CC = 1'b1;
                CD = 1'b1;
                CE = 1'b1;
                CF = 1'b0;
                CG = 1'b0;
            end
            3'b100: begin
            //8'b00010000: begin
                //LED[15:5] = 1'b0;
                //LED[3:0] = 1'b0;
                //LED[4] = 1'b1;
                //AN[7:4] = 1'b1;
                //AN[2:0] = 1'b1;
                AN[3] = 1'b0;
                CA = 1'b1;
                CB = 1'b1;
                CC = 1'b0;
                CD = 1'b0;
                CE = 1'b0;
                CF = 1'b1;
                CG = 1'b0;
            end
            3'b101: begin
            //8'b00100000: begin
                //LED[15:6] = 1'b0;
                //LED[4:0] = 1'b0;
                //LED[5] = 1'b1;
                //AN[7:3] = 1'b1;
                //AN[1:0] = 1'b1;
                AN[2] = 1'b0;
                CA = 1'b1;
                CB = 1'b1;
                CC = 1'b0;
                CD = 1'b0;
                CE = 1'b0;
                CF = 1'b1;
                CG = 1'b0;
            end
            3'b110: begin
            //8'b01000000: begin
                //LED[15:7] = 1'b0;
                //LED[5:0] = 1'b0;
                //LED[6] = 1'b1;
                //AN[7:2] = 1'b1;
                //AN[0] = 1'b1;
                AN[1] = 1'b0;
                CA = 1'b1;
                CB = 1'b1;
                CC = 1'b0;
                CD = 1'b0;
                CE = 1'b0;
                CF = 1'b1;
                CG = 1'b0;
            end
            3'b111: begin
            //8'b10000000: begin
                //LED[15:8] = 1'b0;
                //LED[3:0] = 1'b0;
                //LED[7] = 1'b1;
                //AN[7:1] = 1'b1;
                AN[0] = 1'b0;
                CA = 1'b1;
                CB = 1'b1;
                CC = 1'b0;
                CD = 1'b0;
                CE = 1'b0;
                CF = 1'b1;
                CG = 1'b0;
            end
            default: begin
                LED[15:0] = 1'b0;
                LED[14] = 1'b1;
                LED[12] = 1'b1;
                LED[10] = 1'b1;
                LED[8] = 1'b1;
                LED[6] = 1'b1;
                LED[4] = 1'b1;
                LED[2] = 1'b1;
                AN[7:4] = 1'b0;
                AN[3:0] = 1'b1;
                CA = 1'b0;
                CB = 1'b1;
                CC = 1'b1;
                CD = 1'b0;
                CE = 1'b1;
                CF = 1'b1;
                CG = 1'b1;
            end
        endcase
    end
    
endmodule
