`timescale 1ns / 1ps

module barrel_shifter_tb;

  // Testbench signals
  logic tick;
  logic rst;
  logic dir;
  logic [7:0] in_value;
  logic [7:0] out;

  // Instantiate the DUT (Device Under Test)
  barrel_shifter dut (
    .tick(tick),
    .rst(rst),
    .dir(dir),
    .in_value(in_value),
    .out(out)
  );

  // Clock generation: 10ns period
  initial tick = 0;
  always #5 tick = ~tick;

  // Stimulus
  initial begin
    $display("Starting simulation...");
    $monitor("Time: %0t | in_value: %b | out: %b | dir: %b", $time, in_value, out, dir);
    //$monitor("Time: %0t | in_value: %b | out: %b | dir: %b | tick: %b", $time, in_value, out, dir, tick);

    rst = 1;
    #12
    rst = 0;
    #5

    dir = 1;
    in_value  = 8'b00000001;
    #30;
    

    dir = 1;
    in_value  = 8'b00000010;
    #30;
    

    dir = 1;
    in_value  = 8'b00000100;
    #30;
    

    dir = 1;
    in_value  = 8'b00001000;
    #30;
    

    dir = 1;
    in_value  = 8'b00010000;
    #30;
    

    dir = 1;
    in_value  = 8'b00100000;
    #30;
    

    dir = 1;
    in_value  = 8'b01000000;
    #30;
    

    dir = 1;
    in_value  = 8'b10000000;
    #30;
    
    
    

    dir = 0;
    in_value  = 8'b00000001;
    #30;
    

    dir = 0;
    in_value  = 8'b00000010;
    #30;
    

    dir = 0;
    in_value  = 8'b00000100;
    #30;
    

    dir = 0;
    in_value  = 8'b00001000;
    #30;
    

    dir = 0;
    in_value  = 8'b00010000;
    #30;
    

    dir = 0;
    in_value  = 8'b00100000;
    #30;
    

    dir = 0;
    in_value  = 8'b01000000;
    #30;
    

    dir = 0;
    in_value  = 8'b10000000;
    #30;
    

    $finish;
  end

endmodule