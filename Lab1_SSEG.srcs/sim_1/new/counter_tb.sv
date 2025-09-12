`timescale 1ns / 1ps

module counter_tb;

  // Parameters
  parameter N = 4;

  // Testbench signals
  logic clk;
  logic rst;
  logic en;
  logic tick;

  // Instantiate the DUT (Device Under Test)
  my_counter #(N) dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .tick(tick)
  );

  // Clock generation: 10ns period
  initial clk = 0;
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    $display("Starting simulation...");
    $monitor("Time: %0t | rst: %b | en: %b | tick: %b", $time, rst, en, tick);

    // Initial values
    rst = 1;
    en  = 0;

    // Hold reset for a few cycles
    #12;
    rst = 0;

    // Enable counting
    en = 1;

    // Run for a few cycles
    #100;

    // Disable counting
    en = 0;

    #20;

    // Re-enable counting
    en = 1;

    #50;

    $finish;
  end

endmodule