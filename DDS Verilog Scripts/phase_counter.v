`timescale 1ns / 1ps

module phase_counter(
        input clk,
        input reset,
  		input [9:0] fsw,
  		output reg [9:0] counter
        );
  
  		always @ (posedge clk or posedge reset)
        begin
          if(reset)
            counter <= 0;
          else if (counter < 1024)
            counter <= counter + fsw;
          else 
            counter <= 0;
        end
endmodule
