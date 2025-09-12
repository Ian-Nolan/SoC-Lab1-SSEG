`timescale 1ns / 1ps

module board_testing(
    input logic [15:0] SW,
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
    
    
    assign LED[15:14] = SW[15:14];
    
    assign AN[7:0] = SW[7:0];
    
    assign CA = SW[8];
    assign CB = SW[9];
    assign CC = SW[10];
    assign CD = SW[11];
    assign CE = SW[12];
    assign CF = SW[13];
    assign CG = SW[14];
    
    
    
    
    
    
        
    
    
    
    
    
    
    
endmodule
