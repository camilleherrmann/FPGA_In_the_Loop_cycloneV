# FPGA_In_the_Loop_cycloneV
## Context
FPGA in the loop is about running a Simulink testbench, the testbench contains a FIL (FPGA In the Loop) block. The block is generated thanks to MATLAB and the block can flash the board with a generated Quartus project.
This test method allows to run longer test (about seconds or tens of seconds) than the usual vhdl/verilog testbench (about ns or us).
This repository contains a tuto folder "FIL_get_started_tuto" wich is about a first use of the Quartus tools and a first application of the FPGA in the loop.
The other folder "FIL application" is about using the FIL for a particular use. First in vhdl is goal is to create converter with memory to store the Simulink received signals, convert them in Avalon-ST (AST) communication. Then te module to test will receive and process the signal in AST send its outputs and the outputs are again converted stored and finally send back to the Simunlink testbench.

Here is a schematic of the environment 
![image](https://user-images.githubusercontent.com/107047264/200548170-3b03c2c3-f9aa-498e-9b85-30750b708a8c.png)


