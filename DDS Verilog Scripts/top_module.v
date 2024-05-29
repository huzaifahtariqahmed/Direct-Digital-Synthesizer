`timescale 1ns / 1ps

module topmodule(clk,
        		 reset,
                 fsw,
                 dds_sin);
                 
        input clk;
        input reset;
        input [9:0] fsw;
        
        output [9:0] dds_sin;

                 
        wire [9:0] counter;
  
        phase_counter pc(clk,reset,fsw,counter);

        phase_to_amplitude pta(counter,reset,dds_sin);

endmodule
