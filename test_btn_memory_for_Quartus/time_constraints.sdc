# 50MHz board input clock
create_clock -period 20 [get_ports clk]
derive_clock_uncertainty
derive_pll_clocks