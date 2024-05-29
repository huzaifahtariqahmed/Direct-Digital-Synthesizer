`timescale 1ns/1ps

module tb_topmodule();

  reg clk;
  reg reset;
  reg [9:0] fsw;
  
  wire [9:0] dds_sin;

  // Instantiate the top module
  topmodule uut(
    .clk(clk),
    .reset(reset),
    .fsw(fsw),
    .dds_sin(dds_sin)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #500 clk = ~clk; // 1 MHz clock
  end

  // Initial stimulus
  initial begin
    reset = 1;
    fsw = 256;
    #10 reset = 0; // Deassert reset after 10 time units
  end
  
  // Monitor for observing signals
  always @(posedge clk) begin
    $display("Time=%t, Counter=%0d, DDS_Sin=%0d", $time, uut.counter, uut.dds_sin); 
  end

  // Stop the simulation after some time
  initial #105000 $finish;

endmodule
