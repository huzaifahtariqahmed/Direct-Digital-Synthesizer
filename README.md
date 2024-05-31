# Direct Digital Synthesizer Design in Verilog

## What is DDS?

Direct digital synthesis (DDS) is a technique utilized by frequency synthesizers to generate arbitrary waveforms from a single, fixed-frequency reference clock. DDS finds application in signal generation, local oscillators for communication systems, function generators, mixers, modulators, sound synthesizers, and digital phase-locked loops.

## Project Focus

This project involves creating a Direct Digital Synthesizer to:
- Generate Discrete-Time Sine Waves of Different Frequencies in the range of 10kHz - 250kHz.
- The Waves are generated with a 10-bit Digital Representation.
- We later use Matlab to plot the 10-bit digital output.
- The Master Clock of the system is 1MHz.

## Architecture

![Architecture](Images/architecture.png)

## Verilog Top Module Schematic Generated

![Top Level Schematic](Images/top_schematic.png)

--- 

**Contributions**: All of the code in this repository is written by [Huzaifah Tariq Ahmed](https://github.com/huzaifahtariqahmed). 
