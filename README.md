# FPGA_In_the_Loop_cycloneV
## Context
This idea isabout to be able to test VHDL IPs more efficiently than classicals ways: simulation or prototyping. The tool chosen is FPGA-In-the-Loop. FIL is a complement of behavior simulator such as ModelSim from Quartus. ModelSim is done for simulation at one cycle close, to control in detail the behavior or timing. On the contrary FIL allows to use a large range of libraries or mathematics tools through MATLAB features therefore to work on applicative test, in real time. Another specification of the project is to have a generic benchmark, not to have to generate a new for each IP. To manage that I consider that the IP to test are on Avalon Streaming interface (AST).

This repository contains a tuto folder "FIL_get_started_tuto" which is about a first use of the Quartus tools and a first application of the FPGA in the loop.
The other folder "FIL application" is about using the FIL for a particular use. First in vhdl is goal is to create converter with memory to store the Simulink received signals, convert them in Avalon-ST (AST) communication. Then te module to test will receive and process the signal in AST send its outputs and the outputs are again converted stored and finally send back to the Simunlink testbench.

Here is a schematic of the environment 

![image](https://user-images.githubusercontent.com/107047264/215046840-816df99d-c0a7-4cba-b0ec-dbd63b3a8292.png)

