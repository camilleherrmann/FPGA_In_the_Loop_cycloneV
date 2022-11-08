load_package flow
project_new -overwrite test_btn_memory_fil
set_global_assignment -name FAMILY  {Cyclone V}
set_global_assignment -name DEVICE  {5CSXFC6D6F31C8}
set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
set_global_assignment -name VHDL_FILE Z:/test_btn_memory/btn.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory/RAM.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory/test_btn_memory.vhd
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWClkMgr.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWAJTAG.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWDPRAM.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILUDPCRC.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILPktMUX.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILCmdProc.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWAsyncFIFO.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILDataProc.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWPKTBuffer.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/MWUDPPKTBuilder.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILPktProc.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILCommLayer.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_dpscram.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_udfifo.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_bus2dut.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_chifcore.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_controller.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_dut2bus.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/test_btn_memory_wrapper.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/mwfil_chiftop.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/FILCore.vhd
set_global_assignment -name VHDL_FILE Z:/test_btn_memory_for_FIL/filsrc/test_btn_memory_fil.vhd
source Z:/test_btn_memory_for_FIL/filsrc/test_btn_memory_fil.qsf
set_global_assignment -name SDC_FILE Z:/test_btn_memory_for_FIL/filsrc/test_btn_memory_fil.sdc
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name TOP_LEVEL_ENTITY test_btn_memory_fil
execute_flow -analysis_and_elaboration
project_close
