`timescale 1ns / 1ps


module select_direction(
    input   logic btn_U,
    output  logic selected_dir
    );
    
    if (btn_U)
        assign selected_dir = ~selected_dir;
    else
        assign selected_dir = selected_dir;
    
endmodule
