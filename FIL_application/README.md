# FIL application
## Idea

This file contains the heart of the project. We consider here that the IPs to be tested are all working on the Avalon interface, more precisely the AST. The tools and devices are told in the previous readme (software version or board) Using this assumption, we want to build a test design ready to simulate and test different IPs that are inserted in the design. 
We can see 3 folder in this section :
### src 

Sources folder is the source files in VHDL of the adapter. The adapter takes raw data and communicate with Avalon. It has been tested on Quartus and below scematics of the architechture

![image](https://user-images.githubusercontent.com/107047264/215060765-73fbbafa-c81a-452e-a518-790cfccd994e.png)

The outputs of the testbench are looked with ModelSim

### FIL_void

This folder contains the full fpga project and source file to use in the FIL. Using the '.sof' of the project in the simulink schematic available. Only the adapter is tested with nothing inside. The goal were to check no data were lost or damaged

### FIL_fir

This folder contains the full fpga project and source file to use in the FIL. Using the '.sof' of the project in the simulink schematic available. Inside the adapter is a fir to characterize. Using it I have found the coeficients of the FIR and the frequency response

## Results

To have details and the flow or results the final report in available in the parent section 'FPGA_In_the_Loop_cycloneV'
