set SRCDIR C:/Program Files/MATLAB/R2017b/bin/C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc
set SIMDIR C:/Program Files/MATLAB/R2017b/bin/C:/Users/test/Documents/MATLAB/FIL/pid_ethernet/filsrc/sim
set COMPILE vcom

set SIM vsim

vlib $SIMDIR/work
vmap work $SIMDIR/work

$COMPILE $SRCDIR/mwrxmac.vhd
$COMPILE $SRCDIR/mwtxmac.vhd
$COMPILE $SRCDIR/mwpingram.vhd
$COMPILE $SRCDIR/MWMAC.vhd
$COMPILE $SRCDIR/MWDPRAM.vhd
$COMPILE $SRCDIR/FILUDPCRC.vhd
$COMPILE $SRCDIR/FILPktMUX.vhd
$COMPILE $SRCDIR/FILCmdProc.vhd
$COMPILE $SRCDIR/MWAsyncFIFO.vhd
$COMPILE $SRCDIR/FILDataProc.vhd
$COMPILE $SRCDIR/MWPKTBuffer.vhd
$COMPILE $SRCDIR/MWUDPPKTBuilder.vhd
$COMPILE $SRCDIR/FILPktProc.vhd
$COMPILE $SRCDIR/FILCommLayer.vhd
$COMPILE $SRCDIR/mwfil_dpscram.vhd
$COMPILE $SRCDIR/mwfil_udfifo.vhd
$COMPILE $SRCDIR/mwfil_bus2dut.vhd
$COMPILE $SRCDIR/mwfil_chifcore.vhd
$COMPILE $SRCDIR/mwfil_controller.vhd
$COMPILE $SRCDIR/mwfil_dut2bus.vhd
$COMPILE $SRCDIR/Controller_wrapper.vhd
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/FILCore.vhd