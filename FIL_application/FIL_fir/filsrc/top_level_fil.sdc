create_clock -name sysclk -period 8 -waveform {0.000ns 4.000ns} [get_ports {sysclk_p}]
create_clock -name ETH_RXCLK -period 8ns -waveform {0.000 4.000} [get_ports {ETH_RXCLK}]
## Virtual clock for input signals ##
create_clock -name virtual_clk -period 8 -waveform {2.000 6.000}
set_input_delay 0 -clock  [get_clocks virtual_clk] -add_delay [get_ports ETH_RXD*]
set_input_delay 0 -clock  [get_clocks virtual_clk] -clock_fall -add_delay [get_ports ETH_RXD*]
set_input_delay 0 -clock  [get_clocks virtual_clk] -add_delay [get_ports ETH_RX_CTL]
set_input_delay 0 -clock  [get_clocks virtual_clk] -clock_fall -add_delay [get_ports ETH_RX_CTL]
# Set false paths for altddio_in
set_false_path -fall_from [get_clocks virtual_clk] -rise_to [get_clocks ETH_RXCLK] -setup
set_false_path -rise_from [get_clocks virtual_clk] -fall_to [get_clocks ETH_RXCLK] -setup
set_false_path -fall_from [get_clocks virtual_clk] -fall_to [get_clocks ETH_RXCLK] -hold
set_false_path -rise_from [get_clocks virtual_clk] -rise_to [get_clocks ETH_RXCLK] -hold
## Derive clocks ##
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty
## Set clock groups ##
set_clock_groups -exclusive -group {u_ClockManager|u_dcm|auto_generated|generic_pll1~PLL_OUTPUT_COUNTER|divclk} -group {u_ClockManager|u_dcm|auto_generated|generic_pll2~PLL_OUTPUT_COUNTER|divclk} -group {ETH_RXCLK} -group {ETH_TXCLK} -group {u_FILCore|clk}
