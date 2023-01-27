# Quartus_FPGA_In_the_Loop_Getting_started
## Context and tools/softwares

This repo is shared in two parts:
| Goal        | Tools          | 
| ------------- |:-------------:| 
| 1. Guetting started with Quartus tools such as Modelsim signal tap...     | [Quartus 18.1 lite standard edition for Windows](https://www.intel.com/content/www/us/en/software-kit/665990/intel-quartus-prime-lite-edition-design-software-version-18-1-for-windows.html). This version doesn t request licence | 
| 2. Guetting started with FPGA In The Loop (FIL) from MATLAB/Simulink      |   MATLAB 2017b (To run the FPGA in te Loop a particular licence is required for the module "HDL verifier").

 The code will be run on a Cyclone V SoC FPGA from Intel through JTAG connection, the USB Blaster.

## Quartus software 
### Code used

The code will be pretty simple, the goal is to start with the tools. The code is using inputs buttons and an output led. The led is on at the begging and turn off once you push the button, then turn on the next time you'll push the button, and again and again. Each time the led change its state (button is pushed) the time in nanosec in stored.

### Timing analyser 

Timing analyser is checking all path of the design and check is there are any timing problems.It checks problems such as setup and hold time (it means that the signal must arrive enought time before the rising edge to it destination and stay long enough).
On the menu "Tools" or in the "Task" tab you can access to the Timing analyser. 
An SDC file is necessary to include the clocks frequency. Meaning the clock on the fpga but also the derivatives clocks like PLL ones. In this case you can check the file "time_constraints.sdc".
So here is how it looks

![image](https://user-images.githubusercontent.com/107047264/196902286-80bd449c-4c00-44ee-8538-9fc56fc2752e.png)

1. Corresponds to the Corners (i.e. the condition of exepriments in Voltage and temperature)
2. regroups all the reports on timing
3. Offers the reports and some features, for exemple the timing between a certain path, the clock tree, skew...
4. Show the results of what you asked to see in previous part (corner, reports, timing)
5. Is the console

### ModelSim

ModelSim allows to run a simulution through a testbench. Testbench is a vhd (or verilog) code with no I/O and taking for component the model to test, then it genreate signals for the clocks and model inputs and then we can see the outputs.
ModelSim should have been installed with your Quartus Version. First go on Tools/options../EDA Tool OPtions and add the path if not already to ModelSim-Aletra:

![image](https://user-images.githubusercontent.com/107047264/196905154-01aebffe-16fc-47cf-a26c-8fab5b91ad58.png)

Then go on Assignments/Settings.../EDA Tool Settings/Simulation and fill the information and add yur testbench file

![image](https://user-images.githubusercontent.com/107047264/196905798-06143cec-1dbd-44c9-a865-2b498999390e.png)

Now configurations are OK it's time to run ModelSim and to do so go on Tools/Run Simulation Tool/RTL Simulation and you ca see a new window openning.
Click and the tool bar on Compile/compile... and select all the files of your model and the testbench. Then open the "work librairy on the left and double click on the test bench. It will open a signal tab and on the hierachie select those to observe and add wave by righ click or green plus. Finally choose the period to run on the top and run with the icon of a text and down arrow.

![image](https://user-images.githubusercontent.com/107047264/196908282-7639f5cc-cc84-474c-9543-b16b182e5fa5.png)

On this exemple we can see our clock on 50MHz, the button changing the state of the led, and the RAM stored data each time the led change its state.

### Signal Tap

Siganl Tap is a debug system, it allows to probe a chosen signal on the model in real time. It's found in Tools/Signal Tap Logic Analyser.
Once open
- on the "setup" tab add te nodes you wanna watch, choose the trigger conditions (here a OR) and the trigger node(s) with rising, falling edges, boths...
- on the "signal Configuration" tab add the name of the clock and depth 
- on the "JTAG chain configuration" tab select the hardware to scan (here JTAG usb blaster), the chip to flash.

![image](https://user-images.githubusercontent.com/107047264/196911083-e085d682-2649-4600-b8fd-123abac53f4f.png)


WARNING: after any modification the the sinal tap configuration you need compile again.
Once compiled on the "JTAG chain configuration" tab programme the device with the icon : ![image](https://user-images.githubusercontent.com/107047264/196910914-ce7b9418-187b-40c8-92f9-fdd2bdbad0ea.png)
Once ready you can read "Ready to acquire" and run the process with ![image](https://user-images.githubusercontent.com/107047264/196911845-528f30b0-7ac6-4c1c-862c-818199128ae4.png)
Now active your trigger (here I push the button and you can see the behavior.

### Programmer
Finally we want to flash the board. Go on Tools/Programmer, add the device you're using , here "5CSXFC6D6F31", choose the hardx=ware setup  and mode to JTAG and BUS-Blaster. Finally click on the chip to program, "Cange File" and add the .sof output file of the model and "voila" you can start the flash and test on the board

![image](https://user-images.githubusercontent.com/107047264/196913156-d786b4e4-84e0-48bb-a867-35ad31a12bba.png)

https://user-images.githubusercontent.com/107047264/196944916-8b8c6aac-7692-4e7e-bd57-2b47e02beb94.mp4



## FPGA In the Loop (FIL)

FIL is a flow allowing to generate a a Simulink block instance from vhd or verilog files. Then you can create a whole model arround to test it with stimulis chosen
This requieres a licence including "HDL Verifier"

Go on MATLAB and chose for curent folder the folder containing the quartus.exe and its librairies. 
Then activate the hdl tool on MATLAB shell 
```
hdlsetuptoolpath('ToolName','Altera Quartus II','ToolPath','C:\Intel\quartus\bin64\quartus.exe')
```
And open the filWIzard
```
filWizard
```

![image](https://user-images.githubusercontent.com/107047264/196919450-b095b0fc-8a46-4407-8052-44a103e724b2.png)
- Choose or add your board in the board option. If you add a new board you will add the clock pin and cinnection mode and then you can validate it. then click next.
- In the source files section add the vhd files and select the top one then click next.
![image](https://user-images.githubusercontent.com/107047264/196932648-42dbdecb-521f-4660-93e8-c769d3573f9a.png)

- In the DUT I/O Ports the outputs and inputs are automatically generated and filled, modyfied if needed and click next.
![image](https://user-images.githubusercontent.com/107047264/196933355-a12fec68-6085-44cf-bce5-6a60a5142359.png)

- In the Output Types change the Data Type and informaton corresponding 
![image](https://user-images.githubusercontent.com/107047264/196933562-811f6094-91f5-406d-9f46-b9fdfb077aa1.png)

- Finally chose the output folder and build the FIL
![image](https://user-images.githubusercontent.com/107047264/196933808-f5f989d9-2d16-45c4-a6c0-847a3f4f8019.png)

By then end of the build you will have a shell with the quartus reports and an open simulink window with the generated block
WARNING: AT least on my version if you copy the generated block in a another Simulink page it won't work and MATLAB will crash. Keep the same window on create or copy your model there.

Now create the model around the generated block depending on the test you want. Once you've your model turn on the board and double click on the FIL instance to load the generated binary.
![image](https://user-images.githubusercontent.com/107047264/196936384-31bbd523-7903-4df5-83c2-ef20d6ead85d.png)

Give the time duration of th simulation in the tool bar and put the simulation settings to discrete by Simulation/Model Configuration Parameter/Solver and in Solver options type choose "Fixed-step". Run it and on the scope you should see the expected result 
![image](https://user-images.githubusercontent.com/107047264/196937301-f8803668-f1a1-4f18-b146-801006ee7516.png)


Congratullation you've run a FPGA In The Loop. 

## With Ethernet

But we've run it fully with JTAG which isn't optimal because it is limitated to a slower transfer rate and smaller amount of data. 
Let's use the [PID control example from MATHWORKS](https://fr.mathworks.com/help/hdlverifier/ug/verify-hdl-implementation-of-pid-controller-using-fpga-in-the-loop.html)

Most of the setps are identicals such as the activation the hdl tool on MATLAB shell 
```
hdlsetuptoolpath('ToolName','Altera Quartus II','ToolPath','C:\Intel\quartus\bin64\quartus.exe')
```
And open the filWIzard
```
filWizard
```

But I have to setup the ethernet. To setup the host computer-board connection I choose my host address. To do that I go to the control panel and choose for the project 192.168.0.1 because it is not already used. 
Then on the FilWizard I complete the fields depending on the needs (detailled before). On my case what’s different from the example is the board used. I use the board manager to get my board with all its fields filled but it also can be done manually. Be careful, on my project after those steps I had problems, the board wasn’t connected well, to resolve that I went to “Board Manager”, selected my board, and click on “edit” “Interface” and in “advanced option” I ticked to generate MDIO module. According to MATLAB documentation this box needs to be checked when the connection is about to be done with RGMII mode with ethernet PHY device Marvell88E1111 which is the case for the cyclone V GX. After the board the second thing different is for the ethernet configuration, for the board IP address, since I choose for the host 192.168.0.1 so the IP address has to be a subnet of 192.168.0.x and I choose 192.168.0.2.

The rest of the setps are the exact same ones where I inform on the top level/ inputs/ outputs/ format...

Before launching the test I check with a ping 192.168.0.2 that the connection is ok and then I can run my PID and I have as the tuto:

![image](https://user-images.githubusercontent.com/107047264/215048739-c269b05c-411a-4687-bfb3-0635974b4adb.png)




