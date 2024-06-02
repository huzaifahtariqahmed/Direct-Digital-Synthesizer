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

The architecture planned for developing a DDS, is such that it is broken down into 2 distinct modules. First we have a "Phase Accumulator" and then we have a "Phase to Amplitude" Module which outputs the desired sine waves.

![Architecture](Images/architecture.png)

### Phase Accumulator

- This module basically acts as a cyclic counter. 
- Basically producing output phases of a Sine Wave. 
- It takes as input a "Frequency Select Word (FSW)". 
- This value is stored in a 10-Bit Register. 
- This value sets the increments that the phase counter should take.
- This is what actually sets the frequency of the Sine Wave generated.
- This mechanism allows us to vary the frequency of the Sine Wave generated.

### Phase To Amplitude 

## Verilog Top Module Schematic Generated

![Top Level Schematic](Images/top_schematic.png)

It can be seen that this Vivado Schematic is pretty much same as what was originally proposed. You
can see a 10 bit fsw going into phase counter which is our phase accumulator and then the counter
value going to phase to amplitude block where it assigns a specific amplitude to that counter value,
giving us a digital sine wave as output.

## Generated Sine Waves (Plotted in Matlab)

### 10kHz Sine Wave

![10kHz Sine Wave](Images/10kHz.png)

### 50kHz Sine Wave

![50kHz Sine Wave](Images/50kHz.png)

### 125kHz Sine Wave

![125kHz Sine Wave](Images/125kHz.png)

### 200kHz Sine Wave

![200kHz Sine Wave](Images/200kHz.png)

### 250kHz Sine Wave

![250kHz Sine Wave](Images/250kHz.png)

--- 

**Contributions**: All of the code in this repository is written by [Huzaifah Tariq Ahmed](https://github.com/huzaifahtariqahmed). 
