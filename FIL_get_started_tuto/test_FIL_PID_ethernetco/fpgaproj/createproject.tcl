load_package flow
project_new -overwrite Controller_fil
set_global_assignment -name FAMILY  {Cyclone V}
set_global_assignment -name DEVICE  {5CGXFC7D6F31C7ES}
set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
set_global_assignment -name VHDL_FILE "C:/Program Files/MATLAB/R2017b/toolbox/shared/eda/fil/fildemos/fil_pid/Controller.vhd"
set_global_assignment -name VHDL_FILE "C:/Program Files/MATLAB/R2017b/toolbox/shared/eda/fil/fildemos/fil_pid/D_component.vhd"
set_global_assignment -name VHDL_FILE "C:/Program Files/MATLAB/R2017b/toolbox/shared/eda/fil/fildemos/fil_pid/I_component.vhd"
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWClkMgr.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/rgmiiBridge.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwrxmac.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwtxmac.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwpingram.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWMAC.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWDPRAM.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILUDPCRC.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILPktMUX.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILCmdProc.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWAsyncFIFO.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILDataProc.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWPKTBuffer.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWUDPPKTBuilder.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILPktProc.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILCommLayer.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_dpscram.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_udfifo.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_bus2dut.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_chifcore.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_controller.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_dut2bus.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/Controller_wrapper.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/mwfil_chiftop.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/FILCore.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MWMdioAdv.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/MDIOROM.vhd
set_global_assignment -name VHDL_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/Controller_fil.vhd
source C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/Controller_fil.qsf
set_global_assignment -name SDC_FILE C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/Controller_fil.sdc
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name TOP_LEVEL_ENTITY Controller_fil
execute_flow -analysis_and_elaboration
project_close
