-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/05/2022 18:51:55"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	enb : IN std_logic;
	reset : IN std_logic;
	din : IN std_logic_vector(31 DOWNTO 0);
	dout : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[10]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[11]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[12]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[13]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[16]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[17]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[18]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[19]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[20]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[21]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[22]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[23]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[24]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[26]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[27]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[28]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[29]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[30]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[31]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enb	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[16]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[17]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[18]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[19]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[20]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[21]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[22]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[23]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[24]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[25]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[27]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[28]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[29]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[30]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[31]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_enb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\ : std_logic;
SIGNAL \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \out_adapter|entry2|s_wren~feeder_combout\ : std_logic;
SIGNAL \enb~input_o\ : std_logic;
SIGNAL \out_adapter|entry2|s_wren~q\ : std_logic;
SIGNAL \out_adapter|output2|s_rden~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|s_rden~q\ : std_logic;
SIGNAL \in_adapter|entry|curr_head[0]~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|u_data_addr~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~25_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~26\ : std_logic;
SIGNAL \in_adapter|entry|Add0~21_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Equal1~1_combout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~22\ : std_logic;
SIGNAL \in_adapter|entry|Add0~17_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~18\ : std_logic;
SIGNAL \in_adapter|entry|Add0~13_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~14\ : std_logic;
SIGNAL \in_adapter|entry|Add0~9_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~10\ : std_logic;
SIGNAL \in_adapter|entry|Add0~5_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Add0~6\ : std_logic;
SIGNAL \in_adapter|entry|Add0~1_sumout\ : std_logic;
SIGNAL \in_adapter|entry|Equal1~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|round[0]~1_combout\ : std_logic;
SIGNAL \in_adapter|entry|round[1]~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|u_wren~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|s_wren~q\ : std_logic;
SIGNAL \in_adapter|output|s_rden~combout\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|addr[1]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|round2[0]~0_combout\ : std_logic;
SIGNAL \in_adapter|output|s_valid~q\ : std_logic;
SIGNAL \in_adapter|output|u_main_part~0_combout\ : std_logic;
SIGNAL \in_adapter|output|out_ready~q\ : std_logic;
SIGNAL \in_adapter|output|state~0_combout\ : std_logic;
SIGNAL \in_adapter|output|state~q\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[0]~0_combout\ : std_logic;
SIGNAL \in_adapter|output|Add0~1_sumout\ : std_logic;
SIGNAL \in_adapter|output|addr[1]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|Add0~2\ : std_logic;
SIGNAL \in_adapter|output|Add0~5_sumout\ : std_logic;
SIGNAL \in_adapter|output|addr[2]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|Add0~6\ : std_logic;
SIGNAL \in_adapter|output|Add0~9_sumout\ : std_logic;
SIGNAL \in_adapter|output|Add0~10\ : std_logic;
SIGNAL \in_adapter|output|Add0~13_sumout\ : std_logic;
SIGNAL \in_adapter|output|addr[4]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|Add0~14\ : std_logic;
SIGNAL \in_adapter|output|Add0~17_sumout\ : std_logic;
SIGNAL \in_adapter|output|Add0~18\ : std_logic;
SIGNAL \in_adapter|output|Add0~21_sumout\ : std_logic;
SIGNAL \in_adapter|output|addr[6]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|Add0~22\ : std_logic;
SIGNAL \in_adapter|output|Add0~25_sumout\ : std_logic;
SIGNAL \in_adapter|output|Equal0~0_combout\ : std_logic;
SIGNAL \in_adapter|output|round1[0]~0_combout\ : std_logic;
SIGNAL \in_adapter|output|round1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \in_adapter|output|round1[1]~1_combout\ : std_logic;
SIGNAL \in_adapter|output|addr[9]~feeder_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[1]~feeder_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[2]~feeder_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[3]~feeder_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[5]~feeder_combout\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[6]~feeder_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[8]~feeder_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[9]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[0]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|curr_head[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|entry2|curr_head[0]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~1_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~2\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~5_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~6\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~9_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|curr_head[3]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~10\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~13_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|addr[4]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~14\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~17_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|curr_head[5]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~18\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~21_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|curr_head[6]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~22\ : std_logic;
SIGNAL \out_adapter|entry2|Add1~25_sumout\ : std_logic;
SIGNAL \out_adapter|entry2|Equal0~0_combout\ : std_logic;
SIGNAL \out_adapter|entry2|round[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|entry2|round[0]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|addr[8]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|round[1]~1_combout\ : std_logic;
SIGNAL \out_adapter|output2|curr_head[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|output2|u_data_addr~0_combout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~1_sumout\ : std_logic;
SIGNAL \out_adapter|output2|addr[1]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~2\ : std_logic;
SIGNAL \out_adapter|output2|Add0~5_sumout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~6\ : std_logic;
SIGNAL \out_adapter|output2|Add0~9_sumout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~10\ : std_logic;
SIGNAL \out_adapter|output2|Add0~13_sumout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~14\ : std_logic;
SIGNAL \out_adapter|output2|Add0~17_sumout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~18\ : std_logic;
SIGNAL \out_adapter|output2|Add0~21_sumout\ : std_logic;
SIGNAL \out_adapter|output2|Add0~22\ : std_logic;
SIGNAL \out_adapter|output2|Add0~25_sumout\ : std_logic;
SIGNAL \out_adapter|output2|round[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|output2|round[0]~1_combout\ : std_logic;
SIGNAL \out_adapter|output2|round[0]~2_combout\ : std_logic;
SIGNAL \out_adapter|output2|addr[8]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|round[1]~3_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[1]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[1]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[2]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[2]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[4]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[6]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[8]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[9]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[1]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[3]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[4]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[5]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[6]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[7]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[8]~feeder_combout\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[10]~feeder_combout\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[11]~feeder_combout\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[13]~feeder_combout\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[15]~feeder_combout\ : std_logic;
SIGNAL \din[16]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[16]~feeder_combout\ : std_logic;
SIGNAL \din[17]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[17]~feeder_combout\ : std_logic;
SIGNAL \din[18]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[18]~feeder_combout\ : std_logic;
SIGNAL \din[19]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[19]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[11]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[11]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[12]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[13]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[13]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[14]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[14]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[15]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[15]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[16]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[16]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[17]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[18]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[10]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[11]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[13]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[15]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[18]~feeder_combout\ : std_logic;
SIGNAL \din[20]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[20]~feeder_combout\ : std_logic;
SIGNAL \din[21]~input_o\ : std_logic;
SIGNAL \din[22]~input_o\ : std_logic;
SIGNAL \din[23]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[23]~feeder_combout\ : std_logic;
SIGNAL \din[24]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[24]~feeder_combout\ : std_logic;
SIGNAL \din[25]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[25]~feeder_combout\ : std_logic;
SIGNAL \din[26]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[26]~feeder_combout\ : std_logic;
SIGNAL \din[27]~input_o\ : std_logic;
SIGNAL \din[28]~input_o\ : std_logic;
SIGNAL \din[29]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[29]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[22]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[22]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[23]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[23]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[25]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[26]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[27]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[27]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[28]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[28]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[29]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|entry2|data_a[29]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[23]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[24]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[26]~feeder_combout\ : std_logic;
SIGNAL \din[30]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[30]~feeder_combout\ : std_logic;
SIGNAL \din[31]~input_o\ : std_logic;
SIGNAL \in_adapter|entry|data_a[31]~feeder_combout\ : std_logic;
SIGNAL \in_adapter|output|ast_sink_data[31]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[30]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|dout[31]~feeder_combout\ : std_logic;
SIGNAL \out_adapter|output2|curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \out_adapter|output2|dout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \out_adapter|entry2|data_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \in_adapter|output|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \out_adapter|entry2|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \out_adapter|output2|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|output|ast_sink_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_adapter|entry2|curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_adapter|entry2|round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \out_adapter|output2|round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \in_adapter|entry|data_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \in_adapter|entry|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \in_adapter|entry|round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \in_adapter|entry|curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_adapter|output|round2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_adapter|output|round1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock|pll_a_b_inst|altera_pll_i|outclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \out_adapter|entry2|ALT_INV_round[0]~DUPLICATE_q\ : std_logic;
SIGNAL \out_adapter|entry2|ALT_INV_curr_head[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_din[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_enb~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_s_rden~combout\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_round1\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \in_adapter|output|ALT_INV_round2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_adapter|entry|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \in_adapter|entry|ALT_INV_curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_adapter|entry|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \in_adapter|entry|ALT_INV_round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \in_adapter|entry|ALT_INV_s_wren~q\ : std_logic;
SIGNAL \out_adapter|output2|ALT_INV_round[0]~1_combout\ : std_logic;
SIGNAL \out_adapter|output2|ALT_INV_round[0]~0_combout\ : std_logic;
SIGNAL \out_adapter|entry2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_out_ready~q\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_s_valid~q\ : std_logic;
SIGNAL \in_adapter|output|ALT_INV_ast_sink_data\ : std_logic_vector(29 DOWNTO 1);
SIGNAL \out_adapter|output2|ALT_INV_round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \out_adapter|output2|ALT_INV_curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \out_adapter|entry2|ALT_INV_round\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \out_adapter|entry2|ALT_INV_curr_head\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \in_adapter|output|ALT_INV_state~q\ : std_logic;
SIGNAL \out_adapter|output2|ALT_INV_s_rden~q\ : std_logic;
SIGNAL \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(31 DOWNTO 1);

BEGIN

ww_clk <= clk;
ww_enb <= enb;
ww_reset <= reset;
ww_din <= din;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\out_adapter|entry2|data_a\(9) & \out_adapter|entry2|data_a\(8) & \out_adapter|entry2|data_a\(7) & \out_adapter|entry2|data_a\(6) & 
\out_adapter|entry2|data_a\(5) & \out_adapter|entry2|data_a\(4) & \out_adapter|entry2|data_a\(3) & \out_adapter|entry2|data_a\(2) & \out_adapter|entry2|data_a\(1) & \out_adapter|entry2|data_a\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\out_adapter|entry2|data_a\(9) & \out_adapter|entry2|data_a\(8) & \out_adapter|entry2|data_a\(7) & \out_adapter|entry2|data_a\(6) & 
\out_adapter|entry2|data_a\(5) & \out_adapter|entry2|data_a\(4) & \out_adapter|entry2|data_a\(3) & \out_adapter|entry2|data_a\(2) & \out_adapter|entry2|data_a\(1) & \out_adapter|entry2|data_a\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\out_adapter|entry2|addr\(9) & \out_adapter|entry2|addr\(8) & \out_adapter|entry2|addr\(7) & \out_adapter|entry2|addr\(6) & \out_adapter|entry2|addr\(5) & 
\out_adapter|entry2|addr\(4) & \out_adapter|entry2|addr\(3) & \out_adapter|entry2|addr\(2) & \out_adapter|entry2|addr\(1) & \out_adapter|entry2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\out_adapter|output2|addr\(9) & \out_adapter|output2|addr\(8) & \out_adapter|output2|addr\(7) & \out_adapter|output2|addr\(6) & \out_adapter|output2|addr\(5)
& \out_adapter|output2|addr\(4) & \out_adapter|output2|addr\(3) & \out_adapter|output2|addr\(2) & \out_adapter|output2|addr\(1) & \out_adapter|output2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(0) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(1) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(2) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(3) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(4) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(5) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(6) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(7) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(8) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(9) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(0) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(1) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(2) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(3) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(4) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(5) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(6) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(7) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(8) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(9) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\out_adapter|entry2|data_a\(19) & \out_adapter|entry2|data_a\(18) & \out_adapter|entry2|data_a\(17) & \out_adapter|entry2|data_a\(16) & 
\out_adapter|entry2|data_a\(15) & \out_adapter|entry2|data_a\(14) & \out_adapter|entry2|data_a\(13) & \out_adapter|entry2|data_a\(12) & \out_adapter|entry2|data_a\(11) & \out_adapter|entry2|data_a\(10));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (\out_adapter|entry2|data_a\(19) & \out_adapter|entry2|data_a\(18) & \out_adapter|entry2|data_a\(17) & \out_adapter|entry2|data_a\(16) & 
\out_adapter|entry2|data_a\(15) & \out_adapter|entry2|data_a\(14) & \out_adapter|entry2|data_a\(13) & \out_adapter|entry2|data_a\(12) & \out_adapter|entry2|data_a\(11) & \out_adapter|entry2|data_a\(10));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\out_adapter|entry2|addr\(9) & \out_adapter|entry2|addr\(8) & \out_adapter|entry2|addr\(7) & \out_adapter|entry2|addr\(6) & \out_adapter|entry2|addr\(5) & 
\out_adapter|entry2|addr\(4) & \out_adapter|entry2|addr\(3) & \out_adapter|entry2|addr\(2) & \out_adapter|entry2|addr\(1) & \out_adapter|entry2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\out_adapter|output2|addr\(9) & \out_adapter|output2|addr\(8) & \out_adapter|output2|addr\(7) & \out_adapter|output2|addr\(6) & \out_adapter|output2|addr\(5)
& \out_adapter|output2|addr\(4) & \out_adapter|output2|addr\(3) & \out_adapter|output2|addr\(2) & \out_adapter|output2|addr\(1) & \out_adapter|output2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(10) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(11) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(12) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(13) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(14) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(15) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(16) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(17) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(18) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(19) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(10) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(11) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(12) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(13) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(14) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(15) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(16) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(17) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(18) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(19) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\out_adapter|entry2|data_a\(29) & \out_adapter|entry2|data_a\(28) & \out_adapter|entry2|data_a\(27) & \out_adapter|entry2|data_a\(26) & 
\out_adapter|entry2|data_a\(25) & \out_adapter|entry2|data_a\(24) & \out_adapter|entry2|data_a\(23) & \out_adapter|entry2|data_a\(22) & \out_adapter|entry2|data_a\(21) & \out_adapter|entry2|data_a\(20));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ <= (\out_adapter|entry2|data_a\(29) & \out_adapter|entry2|data_a\(28) & \out_adapter|entry2|data_a\(27) & \out_adapter|entry2|data_a\(26) & 
\out_adapter|entry2|data_a\(25) & \out_adapter|entry2|data_a\(24) & \out_adapter|entry2|data_a\(23) & \out_adapter|entry2|data_a\(22) & \out_adapter|entry2|data_a\(21) & \out_adapter|entry2|data_a\(20));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\out_adapter|entry2|addr\(9) & \out_adapter|entry2|addr\(8) & \out_adapter|entry2|addr\(7) & \out_adapter|entry2|addr\(6) & \out_adapter|entry2|addr\(5) & 
\out_adapter|entry2|addr\(4) & \out_adapter|entry2|addr\(3) & \out_adapter|entry2|addr\(2) & \out_adapter|entry2|addr\(1) & \out_adapter|entry2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\out_adapter|output2|addr\(9) & \out_adapter|output2|addr\(8) & \out_adapter|output2|addr\(7) & \out_adapter|output2|addr\(6) & \out_adapter|output2|addr\(5)
& \out_adapter|output2|addr\(4) & \out_adapter|output2|addr\(3) & \out_adapter|output2|addr\(2) & \out_adapter|output2|addr\(1) & \out_adapter|output2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(20) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(21) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(22) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(23) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(24) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(25) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(26) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(27) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(28) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(29) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(20) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(21) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(22) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(2);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(23) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(24) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(25) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(26) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(27) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(28) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(8);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(29) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(9);

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \out_adapter|entry2|data_a\(31) & \out_adapter|entry2|data_a\(30));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \out_adapter|entry2|data_a\(31) & \out_adapter|entry2|data_a\(30));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\out_adapter|entry2|addr\(9) & \out_adapter|entry2|addr\(8) & \out_adapter|entry2|addr\(7) & \out_adapter|entry2|addr\(6) & \out_adapter|entry2|addr\(5) & 
\out_adapter|entry2|addr\(4) & \out_adapter|entry2|addr\(3) & \out_adapter|entry2|addr\(2) & \out_adapter|entry2|addr\(1) & \out_adapter|entry2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\out_adapter|output2|addr\(9) & \out_adapter|output2|addr\(8) & \out_adapter|output2|addr\(7) & \out_adapter|output2|addr\(6) & \out_adapter|output2|addr\(5)
& \out_adapter|output2|addr\(4) & \out_adapter|output2|addr\(3) & \out_adapter|output2|addr\(2) & \out_adapter|output2|addr\(1) & \out_adapter|output2|addr\(0));

\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(30) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_a\(31) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(1);

\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(30) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|q_b\(31) <= \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(1);

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\in_adapter|entry|data_a\(9) & \in_adapter|entry|data_a\(8) & \in_adapter|entry|data_a\(7) & \in_adapter|entry|data_a\(6) & \in_adapter|entry|data_a\(5) & 
\in_adapter|entry|data_a\(4) & \in_adapter|entry|data_a\(3) & \in_adapter|entry|data_a\(2) & \in_adapter|entry|data_a\(1) & \in_adapter|entry|data_a\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\in_adapter|entry|data_a\(9) & \in_adapter|entry|data_a\(8) & \in_adapter|entry|data_a\(7) & \in_adapter|entry|data_a\(6) & \in_adapter|entry|data_a\(5) & 
\in_adapter|entry|data_a\(4) & \in_adapter|entry|data_a\(3) & \in_adapter|entry|data_a\(2) & \in_adapter|entry|data_a\(1) & \in_adapter|entry|data_a\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\in_adapter|entry|addr\(9) & \in_adapter|entry|addr\(8) & \in_adapter|entry|addr\(7) & \in_adapter|entry|addr\(6) & \in_adapter|entry|addr\(5) & 
\in_adapter|entry|addr\(4) & \in_adapter|entry|addr\(3) & \in_adapter|entry|addr\(2) & \in_adapter|entry|addr\(1) & \in_adapter|entry|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\in_adapter|output|addr\(9) & \in_adapter|output|addr\(8) & \in_adapter|output|addr\(7) & \in_adapter|output|addr\(6) & \in_adapter|output|addr\(5) & 
\in_adapter|output|addr\(4) & \in_adapter|output|addr\(3) & \in_adapter|output|addr\(2) & \in_adapter|output|addr\(1) & \in_adapter|output|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|q_a\(0) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(1) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(2) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(3) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(4) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(5) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(6) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(7) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(8) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(9) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|q_b\(0) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(1) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(2) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(3) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(4) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(5) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(6) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(7) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(8) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(9) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\in_adapter|entry|data_a\(19) & \in_adapter|entry|data_a\(18) & \in_adapter|entry|data_a\(17) & \in_adapter|entry|data_a\(16) & \in_adapter|entry|data_a\(15) & 
\in_adapter|entry|data_a\(14) & \in_adapter|entry|data_a\(13) & \in_adapter|entry|data_a\(12) & \in_adapter|entry|data_a\(11) & \in_adapter|entry|data_a\(10));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (\in_adapter|entry|data_a\(19) & \in_adapter|entry|data_a\(18) & \in_adapter|entry|data_a\(17) & \in_adapter|entry|data_a\(16) & \in_adapter|entry|data_a\(15) & 
\in_adapter|entry|data_a\(14) & \in_adapter|entry|data_a\(13) & \in_adapter|entry|data_a\(12) & \in_adapter|entry|data_a\(11) & \in_adapter|entry|data_a\(10));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\in_adapter|entry|addr\(9) & \in_adapter|entry|addr\(8) & \in_adapter|entry|addr\(7) & \in_adapter|entry|addr\(6) & \in_adapter|entry|addr\(5) & 
\in_adapter|entry|addr\(4) & \in_adapter|entry|addr\(3) & \in_adapter|entry|addr\(2) & \in_adapter|entry|addr\(1) & \in_adapter|entry|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\in_adapter|output|addr\(9) & \in_adapter|output|addr\(8) & \in_adapter|output|addr\(7) & \in_adapter|output|addr\(6) & \in_adapter|output|addr\(5) & 
\in_adapter|output|addr\(4) & \in_adapter|output|addr\(3) & \in_adapter|output|addr\(2) & \in_adapter|output|addr\(1) & \in_adapter|output|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|q_a\(10) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(11) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(12) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(13) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(14) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(15) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(16) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(17) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(18) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(19) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|q_b\(10) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(11) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(12) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(13) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(14) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(15) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(16) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(17) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(18) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(19) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\in_adapter|entry|data_a\(29) & \in_adapter|entry|data_a\(28) & \in_adapter|entry|data_a\(27) & \in_adapter|entry|data_a\(26) & \in_adapter|entry|data_a\(25) & 
\in_adapter|entry|data_a\(24) & \in_adapter|entry|data_a\(23) & \in_adapter|entry|data_a\(22) & \in_adapter|entry|data_a\(21) & \in_adapter|entry|data_a\(20));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ <= (\in_adapter|entry|data_a\(29) & \in_adapter|entry|data_a\(28) & \in_adapter|entry|data_a\(27) & \in_adapter|entry|data_a\(26) & \in_adapter|entry|data_a\(25) & 
\in_adapter|entry|data_a\(24) & \in_adapter|entry|data_a\(23) & \in_adapter|entry|data_a\(22) & \in_adapter|entry|data_a\(21) & \in_adapter|entry|data_a\(20));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\in_adapter|entry|addr\(9) & \in_adapter|entry|addr\(8) & \in_adapter|entry|addr\(7) & \in_adapter|entry|addr\(6) & \in_adapter|entry|addr\(5) & 
\in_adapter|entry|addr\(4) & \in_adapter|entry|addr\(3) & \in_adapter|entry|addr\(2) & \in_adapter|entry|addr\(1) & \in_adapter|entry|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\in_adapter|output|addr\(9) & \in_adapter|output|addr\(8) & \in_adapter|output|addr\(7) & \in_adapter|output|addr\(6) & \in_adapter|output|addr\(5) & 
\in_adapter|output|addr\(4) & \in_adapter|output|addr\(3) & \in_adapter|output|addr\(2) & \in_adapter|output|addr\(1) & \in_adapter|output|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|q_a\(20) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(21) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(22) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(23) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(24) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(25) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(26) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(27) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(28) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(29) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|q_b\(20) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(21) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(1);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(22) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(2);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(23) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(3);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(24) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(4);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(25) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(5);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(26) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(6);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(27) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(7);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(28) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(8);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(29) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(9);

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \in_adapter|entry|data_a\(31) & \in_adapter|entry|data_a\(30));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \in_adapter|entry|data_a\(31) & \in_adapter|entry|data_a\(30));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\in_adapter|entry|addr\(9) & \in_adapter|entry|addr\(8) & \in_adapter|entry|addr\(7) & \in_adapter|entry|addr\(6) & \in_adapter|entry|addr\(5) & 
\in_adapter|entry|addr\(4) & \in_adapter|entry|addr\(3) & \in_adapter|entry|addr\(2) & \in_adapter|entry|addr\(1) & \in_adapter|entry|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\in_adapter|output|addr\(9) & \in_adapter|output|addr\(8) & \in_adapter|output|addr\(7) & \in_adapter|output|addr\(6) & \in_adapter|output|addr\(5) & 
\in_adapter|output|addr\(4) & \in_adapter|output|addr\(3) & \in_adapter|output|addr\(2) & \in_adapter|output|addr\(1) & \in_adapter|output|addr\(0));

\in_adapter|ram|altsyncram_component|auto_generated|q_a\(30) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_a\(31) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(1);

\in_adapter|ram|altsyncram_component|auto_generated|q_b\(30) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);
\in_adapter|ram|altsyncram_component|auto_generated|q_b\(31) <= \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(1);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clk~input_o\);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(1);
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\ <= \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(8);

\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\clock|pll_a_b_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\out_adapter|entry2|ALT_INV_round[0]~DUPLICATE_q\ <= NOT \out_adapter|entry2|round[0]~DUPLICATE_q\;
\out_adapter|entry2|ALT_INV_curr_head[0]~DUPLICATE_q\ <= NOT \out_adapter|entry2|curr_head[0]~DUPLICATE_q\;
\ALT_INV_din[31]~input_o\ <= NOT \din[31]~input_o\;
\ALT_INV_din[30]~input_o\ <= NOT \din[30]~input_o\;
\ALT_INV_din[29]~input_o\ <= NOT \din[29]~input_o\;
\ALT_INV_din[26]~input_o\ <= NOT \din[26]~input_o\;
\ALT_INV_din[25]~input_o\ <= NOT \din[25]~input_o\;
\ALT_INV_din[24]~input_o\ <= NOT \din[24]~input_o\;
\ALT_INV_din[23]~input_o\ <= NOT \din[23]~input_o\;
\ALT_INV_din[20]~input_o\ <= NOT \din[20]~input_o\;
\ALT_INV_din[19]~input_o\ <= NOT \din[19]~input_o\;
\ALT_INV_din[18]~input_o\ <= NOT \din[18]~input_o\;
\ALT_INV_din[17]~input_o\ <= NOT \din[17]~input_o\;
\ALT_INV_din[16]~input_o\ <= NOT \din[16]~input_o\;
\ALT_INV_din[15]~input_o\ <= NOT \din[15]~input_o\;
\ALT_INV_din[13]~input_o\ <= NOT \din[13]~input_o\;
\ALT_INV_din[11]~input_o\ <= NOT \din[11]~input_o\;
\ALT_INV_din[10]~input_o\ <= NOT \din[10]~input_o\;
\ALT_INV_din[9]~input_o\ <= NOT \din[9]~input_o\;
\ALT_INV_din[8]~input_o\ <= NOT \din[8]~input_o\;
\ALT_INV_din[6]~input_o\ <= NOT \din[6]~input_o\;
\ALT_INV_din[5]~input_o\ <= NOT \din[5]~input_o\;
\ALT_INV_din[3]~input_o\ <= NOT \din[3]~input_o\;
\ALT_INV_din[2]~input_o\ <= NOT \din[2]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_enb~input_o\ <= NOT \enb~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\in_adapter|output|ALT_INV_s_rden~combout\ <= NOT \in_adapter|output|s_rden~combout\;
\in_adapter|output|ALT_INV_Equal0~0_combout\ <= NOT \in_adapter|output|Equal0~0_combout\;
\in_adapter|output|ALT_INV_round1\(1) <= NOT \in_adapter|output|round1\(1);
\in_adapter|output|ALT_INV_round1\(0) <= NOT \in_adapter|output|round1\(0);
\in_adapter|output|ALT_INV_round2\(7) <= NOT \in_adapter|output|round2\(7);
\in_adapter|output|ALT_INV_round2\(6) <= NOT \in_adapter|output|round2\(6);
\in_adapter|output|ALT_INV_round2\(5) <= NOT \in_adapter|output|round2\(5);
\in_adapter|output|ALT_INV_round2\(4) <= NOT \in_adapter|output|round2\(4);
\in_adapter|output|ALT_INV_round2\(3) <= NOT \in_adapter|output|round2\(3);
\in_adapter|output|ALT_INV_round2\(2) <= NOT \in_adapter|output|round2\(2);
\in_adapter|output|ALT_INV_round2\(1) <= NOT \in_adapter|output|round2\(1);
\in_adapter|output|ALT_INV_round2\(0) <= NOT \in_adapter|output|round2\(0);
\in_adapter|entry|ALT_INV_Equal1~1_combout\ <= NOT \in_adapter|entry|Equal1~1_combout\;
\in_adapter|entry|ALT_INV_curr_head\(1) <= NOT \in_adapter|entry|curr_head\(1);
\in_adapter|entry|ALT_INV_curr_head\(2) <= NOT \in_adapter|entry|curr_head\(2);
\in_adapter|entry|ALT_INV_Equal1~0_combout\ <= NOT \in_adapter|entry|Equal1~0_combout\;
\in_adapter|entry|ALT_INV_curr_head\(3) <= NOT \in_adapter|entry|curr_head\(3);
\in_adapter|entry|ALT_INV_curr_head\(4) <= NOT \in_adapter|entry|curr_head\(4);
\in_adapter|entry|ALT_INV_curr_head\(5) <= NOT \in_adapter|entry|curr_head\(5);
\in_adapter|entry|ALT_INV_curr_head\(6) <= NOT \in_adapter|entry|curr_head\(6);
\in_adapter|entry|ALT_INV_curr_head\(7) <= NOT \in_adapter|entry|curr_head\(7);
\in_adapter|entry|ALT_INV_curr_head\(0) <= NOT \in_adapter|entry|curr_head\(0);
\in_adapter|entry|ALT_INV_round\(0) <= NOT \in_adapter|entry|round\(0);
\in_adapter|entry|ALT_INV_round\(1) <= NOT \in_adapter|entry|round\(1);
\in_adapter|entry|ALT_INV_s_wren~q\ <= NOT \in_adapter|entry|s_wren~q\;
\out_adapter|output2|ALT_INV_round[0]~1_combout\ <= NOT \out_adapter|output2|round[0]~1_combout\;
\out_adapter|output2|ALT_INV_round[0]~0_combout\ <= NOT \out_adapter|output2|round[0]~0_combout\;
\out_adapter|entry2|ALT_INV_Equal0~0_combout\ <= NOT \out_adapter|entry2|Equal0~0_combout\;
\in_adapter|output|ALT_INV_out_ready~q\ <= NOT \in_adapter|output|out_ready~q\;
\in_adapter|output|ALT_INV_s_valid~q\ <= NOT \in_adapter|output|s_valid~q\;
\in_adapter|output|ALT_INV_ast_sink_data\(29) <= NOT \in_adapter|output|ast_sink_data\(29);
\in_adapter|output|ALT_INV_ast_sink_data\(28) <= NOT \in_adapter|output|ast_sink_data\(28);
\in_adapter|output|ALT_INV_ast_sink_data\(27) <= NOT \in_adapter|output|ast_sink_data\(27);
\in_adapter|output|ALT_INV_ast_sink_data\(23) <= NOT \in_adapter|output|ast_sink_data\(23);
\in_adapter|output|ALT_INV_ast_sink_data\(22) <= NOT \in_adapter|output|ast_sink_data\(22);
\in_adapter|output|ALT_INV_ast_sink_data\(18) <= NOT \in_adapter|output|ast_sink_data\(18);
\in_adapter|output|ALT_INV_ast_sink_data\(16) <= NOT \in_adapter|output|ast_sink_data\(16);
\in_adapter|output|ALT_INV_ast_sink_data\(15) <= NOT \in_adapter|output|ast_sink_data\(15);
\in_adapter|output|ALT_INV_ast_sink_data\(14) <= NOT \in_adapter|output|ast_sink_data\(14);
\in_adapter|output|ALT_INV_ast_sink_data\(13) <= NOT \in_adapter|output|ast_sink_data\(13);
\in_adapter|output|ALT_INV_ast_sink_data\(11) <= NOT \in_adapter|output|ast_sink_data\(11);
\in_adapter|output|ALT_INV_ast_sink_data\(2) <= NOT \in_adapter|output|ast_sink_data\(2);
\in_adapter|output|ALT_INV_ast_sink_data\(1) <= NOT \in_adapter|output|ast_sink_data\(1);
\out_adapter|output2|ALT_INV_round\(1) <= NOT \out_adapter|output2|round\(1);
\out_adapter|output2|ALT_INV_round\(0) <= NOT \out_adapter|output2|round\(0);
\out_adapter|output2|ALT_INV_curr_head\(7) <= NOT \out_adapter|output2|curr_head\(7);
\out_adapter|output2|ALT_INV_curr_head\(6) <= NOT \out_adapter|output2|curr_head\(6);
\out_adapter|output2|ALT_INV_curr_head\(5) <= NOT \out_adapter|output2|curr_head\(5);
\out_adapter|output2|ALT_INV_curr_head\(4) <= NOT \out_adapter|output2|curr_head\(4);
\out_adapter|output2|ALT_INV_curr_head\(3) <= NOT \out_adapter|output2|curr_head\(3);
\out_adapter|output2|ALT_INV_curr_head\(2) <= NOT \out_adapter|output2|curr_head\(2);
\out_adapter|output2|ALT_INV_curr_head\(1) <= NOT \out_adapter|output2|curr_head\(1);
\out_adapter|output2|ALT_INV_curr_head\(0) <= NOT \out_adapter|output2|curr_head\(0);
\out_adapter|entry2|ALT_INV_round\(1) <= NOT \out_adapter|entry2|round\(1);
\out_adapter|entry2|ALT_INV_round\(0) <= NOT \out_adapter|entry2|round\(0);
\out_adapter|entry2|ALT_INV_curr_head\(7) <= NOT \out_adapter|entry2|curr_head\(7);
\out_adapter|entry2|ALT_INV_curr_head\(6) <= NOT \out_adapter|entry2|curr_head\(6);
\out_adapter|entry2|ALT_INV_curr_head\(5) <= NOT \out_adapter|entry2|curr_head\(5);
\out_adapter|entry2|ALT_INV_curr_head\(4) <= NOT \out_adapter|entry2|curr_head\(4);
\out_adapter|entry2|ALT_INV_curr_head\(3) <= NOT \out_adapter|entry2|curr_head\(3);
\out_adapter|entry2|ALT_INV_curr_head\(2) <= NOT \out_adapter|entry2|curr_head\(2);
\out_adapter|entry2|ALT_INV_curr_head\(1) <= NOT \out_adapter|entry2|curr_head\(1);
\out_adapter|entry2|ALT_INV_curr_head\(0) <= NOT \out_adapter|entry2|curr_head\(0);
\in_adapter|output|ALT_INV_state~q\ <= NOT \in_adapter|output|state~q\;
\out_adapter|output2|ALT_INV_s_rden~q\ <= NOT \out_adapter|output2|s_rden~q\;
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(31) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(31);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(22) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(22);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(23) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(23);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(25) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(25);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(26) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(26);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(27) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(27);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(28) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(28);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(29) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(29);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(11);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(12) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(12);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(13);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(14) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(14);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(15);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(16);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(17) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(17);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(1);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(2);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(4);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(6);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(8);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(9) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(9);
\in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \in_adapter|ram|altsyncram_component|auto_generated|q_b\(0);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(31) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(31);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(30) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(30);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(23) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(23);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(24) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(24);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(26) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(26);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(11);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(13);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(15);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(18) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(18);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(10);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(1);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(3);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(4) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(4);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(5);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(6);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(7);
\out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(8);

-- Location: IOOBUF_X74_Y81_N76
\dout[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(0),
	devoe => ww_devoe,
	o => ww_dout(0));

-- Location: IOOBUF_X66_Y81_N42
\dout[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(1),
	devoe => ww_devoe,
	o => ww_dout(1));

-- Location: IOOBUF_X66_Y81_N93
\dout[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(2),
	devoe => ww_devoe,
	o => ww_dout(2));

-- Location: IOOBUF_X66_Y81_N59
\dout[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(3),
	devoe => ww_devoe,
	o => ww_dout(3));

-- Location: IOOBUF_X84_Y81_N2
\dout[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(4),
	devoe => ww_devoe,
	o => ww_dout(4));

-- Location: IOOBUF_X78_Y81_N36
\dout[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(5),
	devoe => ww_devoe,
	o => ww_dout(5));

-- Location: IOOBUF_X72_Y81_N19
\dout[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(6),
	devoe => ww_devoe,
	o => ww_dout(6));

-- Location: IOOBUF_X70_Y81_N36
\dout[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(7),
	devoe => ww_devoe,
	o => ww_dout(7));

-- Location: IOOBUF_X74_Y81_N93
\dout[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(8),
	devoe => ww_devoe,
	o => ww_dout(8));

-- Location: IOOBUF_X64_Y81_N53
\dout[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(9),
	devoe => ww_devoe,
	o => ww_dout(9));

-- Location: IOOBUF_X78_Y81_N2
\dout[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(10),
	devoe => ww_devoe,
	o => ww_dout(10));

-- Location: IOOBUF_X80_Y81_N2
\dout[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(11),
	devoe => ww_devoe,
	o => ww_dout(11));

-- Location: IOOBUF_X80_Y81_N19
\dout[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(12),
	devoe => ww_devoe,
	o => ww_dout(12));

-- Location: IOOBUF_X82_Y81_N59
\dout[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(13),
	devoe => ww_devoe,
	o => ww_dout(13));

-- Location: IOOBUF_X76_Y81_N2
\dout[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(14),
	devoe => ww_devoe,
	o => ww_dout(14));

-- Location: IOOBUF_X80_Y81_N36
\dout[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(15),
	devoe => ww_devoe,
	o => ww_dout(15));

-- Location: IOOBUF_X80_Y81_N53
\dout[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(16),
	devoe => ww_devoe,
	o => ww_dout(16));

-- Location: IOOBUF_X54_Y81_N19
\dout[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(17),
	devoe => ww_devoe,
	o => ww_dout(17));

-- Location: IOOBUF_X72_Y81_N36
\dout[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(18),
	devoe => ww_devoe,
	o => ww_dout(18));

-- Location: IOOBUF_X72_Y81_N53
\dout[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(19),
	devoe => ww_devoe,
	o => ww_dout(19));

-- Location: IOOBUF_X78_Y81_N53
\dout[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(20),
	devoe => ww_devoe,
	o => ww_dout(20));

-- Location: IOOBUF_X68_Y81_N2
\dout[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(21),
	devoe => ww_devoe,
	o => ww_dout(21));

-- Location: IOOBUF_X78_Y81_N19
\dout[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(22),
	devoe => ww_devoe,
	o => ww_dout(22));

-- Location: IOOBUF_X76_Y81_N19
\dout[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(23),
	devoe => ww_devoe,
	o => ww_dout(23));

-- Location: IOOBUF_X84_Y81_N19
\dout[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(24),
	devoe => ww_devoe,
	o => ww_dout(24));

-- Location: IOOBUF_X82_Y81_N76
\dout[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(25),
	devoe => ww_devoe,
	o => ww_dout(25));

-- Location: IOOBUF_X66_Y81_N76
\dout[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(26),
	devoe => ww_devoe,
	o => ww_dout(26));

-- Location: IOOBUF_X76_Y81_N53
\dout[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(27),
	devoe => ww_devoe,
	o => ww_dout(27));

-- Location: IOOBUF_X72_Y81_N2
\dout[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(28),
	devoe => ww_devoe,
	o => ww_dout(28));

-- Location: IOOBUF_X76_Y81_N36
\dout[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(29),
	devoe => ww_devoe,
	o => ww_dout(29));

-- Location: IOOBUF_X82_Y81_N93
\dout[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(30),
	devoe => ww_devoe,
	o => ww_dout(30));

-- Location: IOOBUF_X82_Y81_N42
\dout[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_adapter|output2|dout\(31),
	devoe => ww_devoe,
	o => ww_dout(31));

-- Location: IOIBUF_X56_Y81_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLLREFCLKSELECT_X89_Y80_N0
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: IOIBUF_X86_Y81_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FRACTIONALPLL_X89_Y74_N0
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "500.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 5,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 5,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "100.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \clock|pll_a_b_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \reset~input_o\,
	refclkin => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \clock|pll_a_b_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X89_Y78_N0
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X89_Y73_N1
\clock|pll_a_b_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 13,
	dprio0_cnt_lo_div => 12,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "20.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 8)
-- pragma translate_on
PORT MAP (
	nen0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN8\,
	tclk0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \clock|pll_a_b_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G13
\clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire\(1),
	outclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: PLLOUTPUTCOUNTER_X89_Y80_N1
\clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 2,
	dprio0_cnt_lo_div => 2,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "125.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 1)
-- pragma translate_on
PORT MAP (
	nen0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTEN1\,
	tclk0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \clock|pll_a_b_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G11
\clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire\(0),
	outclk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X70_Y76_N42
\out_adapter|entry2|s_wren~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|s_wren~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \out_adapter|entry2|s_wren~feeder_combout\);

-- Location: IOIBUF_X74_Y81_N41
\enb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enb,
	o => \enb~input_o\);

-- Location: FF_X70_Y76_N44
\out_adapter|entry2|s_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|s_wren~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \enb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|s_wren~q\);

-- Location: MLABCELL_X72_Y77_N48
\out_adapter|output2|s_rden~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|s_rden~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \out_adapter|output2|s_rden~feeder_combout\);

-- Location: FF_X72_Y77_N50
\out_adapter|output2|s_rden\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|s_rden~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \enb~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|s_rden~q\);

-- Location: LABCELL_X68_Y74_N21
\in_adapter|entry|curr_head[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|curr_head[0]~0_combout\ = !\in_adapter|entry|curr_head\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(0),
	combout => \in_adapter|entry|curr_head[0]~0_combout\);

-- Location: LABCELL_X70_Y76_N51
\in_adapter|entry|u_data_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|u_data_addr~0_combout\ = ( \in_adapter|entry|s_wren~q\ & ( \enb~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enb~input_o\,
	dataf => \in_adapter|entry|ALT_INV_s_wren~q\,
	combout => \in_adapter|entry|u_data_addr~0_combout\);

-- Location: FF_X68_Y74_N22
\in_adapter|entry|curr_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(0));

-- Location: LABCELL_X68_Y74_N30
\in_adapter|entry|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~25_sumout\ = SUM(( \in_adapter|entry|curr_head\(1) ) + ( \in_adapter|entry|curr_head\(0) ) + ( !VCC ))
-- \in_adapter|entry|Add0~26\ = CARRY(( \in_adapter|entry|curr_head\(1) ) + ( \in_adapter|entry|curr_head\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in_adapter|entry|ALT_INV_curr_head\(0),
	datad => \in_adapter|entry|ALT_INV_curr_head\(1),
	cin => GND,
	sumout => \in_adapter|entry|Add0~25_sumout\,
	cout => \in_adapter|entry|Add0~26\);

-- Location: FF_X68_Y74_N32
\in_adapter|entry|curr_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(1));

-- Location: LABCELL_X68_Y74_N33
\in_adapter|entry|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~21_sumout\ = SUM(( \in_adapter|entry|curr_head\(2) ) + ( GND ) + ( \in_adapter|entry|Add0~26\ ))
-- \in_adapter|entry|Add0~22\ = CARRY(( \in_adapter|entry|curr_head\(2) ) + ( GND ) + ( \in_adapter|entry|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(2),
	cin => \in_adapter|entry|Add0~26\,
	sumout => \in_adapter|entry|Add0~21_sumout\,
	cout => \in_adapter|entry|Add0~22\);

-- Location: FF_X68_Y74_N35
\in_adapter|entry|curr_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(2));

-- Location: LABCELL_X68_Y74_N18
\in_adapter|entry|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Equal1~1_combout\ = (\in_adapter|entry|curr_head\(1) & \in_adapter|entry|curr_head\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in_adapter|entry|ALT_INV_curr_head\(1),
	datad => \in_adapter|entry|ALT_INV_curr_head\(2),
	combout => \in_adapter|entry|Equal1~1_combout\);

-- Location: LABCELL_X68_Y74_N36
\in_adapter|entry|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~17_sumout\ = SUM(( \in_adapter|entry|curr_head\(3) ) + ( GND ) + ( \in_adapter|entry|Add0~22\ ))
-- \in_adapter|entry|Add0~18\ = CARRY(( \in_adapter|entry|curr_head\(3) ) + ( GND ) + ( \in_adapter|entry|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(3),
	cin => \in_adapter|entry|Add0~22\,
	sumout => \in_adapter|entry|Add0~17_sumout\,
	cout => \in_adapter|entry|Add0~18\);

-- Location: FF_X68_Y74_N38
\in_adapter|entry|curr_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(3));

-- Location: LABCELL_X68_Y74_N39
\in_adapter|entry|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~13_sumout\ = SUM(( \in_adapter|entry|curr_head\(4) ) + ( GND ) + ( \in_adapter|entry|Add0~18\ ))
-- \in_adapter|entry|Add0~14\ = CARRY(( \in_adapter|entry|curr_head\(4) ) + ( GND ) + ( \in_adapter|entry|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(4),
	cin => \in_adapter|entry|Add0~18\,
	sumout => \in_adapter|entry|Add0~13_sumout\,
	cout => \in_adapter|entry|Add0~14\);

-- Location: FF_X68_Y74_N41
\in_adapter|entry|curr_head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(4));

-- Location: LABCELL_X68_Y74_N42
\in_adapter|entry|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~9_sumout\ = SUM(( \in_adapter|entry|curr_head\(5) ) + ( GND ) + ( \in_adapter|entry|Add0~14\ ))
-- \in_adapter|entry|Add0~10\ = CARRY(( \in_adapter|entry|curr_head\(5) ) + ( GND ) + ( \in_adapter|entry|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(5),
	cin => \in_adapter|entry|Add0~14\,
	sumout => \in_adapter|entry|Add0~9_sumout\,
	cout => \in_adapter|entry|Add0~10\);

-- Location: FF_X68_Y74_N44
\in_adapter|entry|curr_head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(5));

-- Location: LABCELL_X68_Y74_N45
\in_adapter|entry|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~5_sumout\ = SUM(( \in_adapter|entry|curr_head\(6) ) + ( GND ) + ( \in_adapter|entry|Add0~10\ ))
-- \in_adapter|entry|Add0~6\ = CARRY(( \in_adapter|entry|curr_head\(6) ) + ( GND ) + ( \in_adapter|entry|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(6),
	cin => \in_adapter|entry|Add0~10\,
	sumout => \in_adapter|entry|Add0~5_sumout\,
	cout => \in_adapter|entry|Add0~6\);

-- Location: FF_X68_Y74_N47
\in_adapter|entry|curr_head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(6));

-- Location: LABCELL_X68_Y74_N48
\in_adapter|entry|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Add0~1_sumout\ = SUM(( \in_adapter|entry|curr_head\(7) ) + ( GND ) + ( \in_adapter|entry|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|entry|ALT_INV_curr_head\(7),
	cin => \in_adapter|entry|Add0~6\,
	sumout => \in_adapter|entry|Add0~1_sumout\);

-- Location: FF_X68_Y74_N50
\in_adapter|entry|curr_head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|curr_head\(7));

-- Location: LABCELL_X68_Y74_N24
\in_adapter|entry|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|Equal1~0_combout\ = ( \in_adapter|entry|curr_head\(6) & ( \in_adapter|entry|curr_head\(4) & ( (\in_adapter|entry|curr_head\(3) & (\in_adapter|entry|curr_head\(0) & (\in_adapter|entry|curr_head\(7) & \in_adapter|entry|curr_head\(5)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|entry|ALT_INV_curr_head\(3),
	datab => \in_adapter|entry|ALT_INV_curr_head\(0),
	datac => \in_adapter|entry|ALT_INV_curr_head\(7),
	datad => \in_adapter|entry|ALT_INV_curr_head\(5),
	datae => \in_adapter|entry|ALT_INV_curr_head\(6),
	dataf => \in_adapter|entry|ALT_INV_curr_head\(4),
	combout => \in_adapter|entry|Equal1~0_combout\);

-- Location: MLABCELL_X72_Y77_N30
\in_adapter|entry|round[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|round[0]~1_combout\ = ( \in_adapter|entry|round\(0) & ( \in_adapter|entry|s_wren~q\ & ( (!\in_adapter|entry|Equal1~1_combout\) # ((!\in_adapter|entry|Equal1~0_combout\) # (!\enb~input_o\)) ) ) ) # ( !\in_adapter|entry|round\(0) & ( 
-- \in_adapter|entry|s_wren~q\ & ( (\in_adapter|entry|Equal1~1_combout\ & (\in_adapter|entry|Equal1~0_combout\ & \enb~input_o\)) ) ) ) # ( \in_adapter|entry|round\(0) & ( !\in_adapter|entry|s_wren~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|entry|ALT_INV_Equal1~1_combout\,
	datab => \in_adapter|entry|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_enb~input_o\,
	datae => \in_adapter|entry|ALT_INV_round\(0),
	dataf => \in_adapter|entry|ALT_INV_s_wren~q\,
	combout => \in_adapter|entry|round[0]~1_combout\);

-- Location: FF_X72_Y77_N32
\in_adapter|entry|round[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|round[0]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|round\(0));

-- Location: MLABCELL_X72_Y77_N12
\in_adapter|entry|round[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|round[1]~0_combout\ = ( \in_adapter|entry|round\(1) & ( \in_adapter|entry|s_wren~q\ & ( (!\in_adapter|entry|Equal1~1_combout\) # ((!\in_adapter|entry|Equal1~0_combout\) # ((!\enb~input_o\) # (!\in_adapter|entry|round\(0)))) ) ) ) # ( 
-- !\in_adapter|entry|round\(1) & ( \in_adapter|entry|s_wren~q\ & ( (\in_adapter|entry|Equal1~1_combout\ & (\in_adapter|entry|Equal1~0_combout\ & (\enb~input_o\ & \in_adapter|entry|round\(0)))) ) ) ) # ( \in_adapter|entry|round\(1) & ( 
-- !\in_adapter|entry|s_wren~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|entry|ALT_INV_Equal1~1_combout\,
	datab => \in_adapter|entry|ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_enb~input_o\,
	datad => \in_adapter|entry|ALT_INV_round\(0),
	datae => \in_adapter|entry|ALT_INV_round\(1),
	dataf => \in_adapter|entry|ALT_INV_s_wren~q\,
	combout => \in_adapter|entry|round[1]~0_combout\);

-- Location: FF_X72_Y77_N14
\in_adapter|entry|round[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|round[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|round\(1));

-- Location: MLABCELL_X72_Y77_N57
\in_adapter|entry|u_wren~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|u_wren~0_combout\ = ( \in_adapter|entry|Equal1~0_combout\ & ( \in_adapter|entry|round\(1) & ( (!\in_adapter|entry|Equal1~1_combout\) # (!\in_adapter|entry|round\(0)) ) ) ) # ( !\in_adapter|entry|Equal1~0_combout\ & ( 
-- \in_adapter|entry|round\(1) ) ) # ( \in_adapter|entry|Equal1~0_combout\ & ( !\in_adapter|entry|round\(1) ) ) # ( !\in_adapter|entry|Equal1~0_combout\ & ( !\in_adapter|entry|round\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|entry|ALT_INV_Equal1~1_combout\,
	datac => \in_adapter|entry|ALT_INV_round\(0),
	datae => \in_adapter|entry|ALT_INV_Equal1~0_combout\,
	dataf => \in_adapter|entry|ALT_INV_round\(1),
	combout => \in_adapter|entry|u_wren~0_combout\);

-- Location: FF_X72_Y77_N58
\in_adapter|entry|s_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|u_wren~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|s_wren~q\);

-- Location: LABCELL_X70_Y76_N18
\in_adapter|output|s_rden\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|s_rden~combout\ = ( \reset~input_o\ & ( \in_adapter|output|s_rden~combout\ ) ) # ( \reset~input_o\ & ( !\in_adapter|output|s_rden~combout\ & ( \enb~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enb~input_o\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \in_adapter|output|ALT_INV_s_rden~combout\,
	combout => \in_adapter|output|s_rden~combout\);

-- Location: IOIBUF_X58_Y81_N92
\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: FF_X68_Y73_N29
\in_adapter|entry|data_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(0));

-- Location: FF_X68_Y74_N53
\in_adapter|entry|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(0));

-- Location: LABCELL_X68_Y74_N9
\in_adapter|entry|addr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|addr[1]~feeder_combout\ = \in_adapter|entry|curr_head\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|entry|ALT_INV_curr_head\(1),
	combout => \in_adapter|entry|addr[1]~feeder_combout\);

-- Location: FF_X68_Y74_N11
\in_adapter|entry|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|addr[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(1));

-- Location: FF_X68_Y74_N29
\in_adapter|entry|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(2));

-- Location: FF_X68_Y74_N58
\in_adapter|entry|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(3));

-- Location: FF_X68_Y74_N23
\in_adapter|entry|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(4));

-- Location: FF_X68_Y74_N1
\in_adapter|entry|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(5));

-- Location: FF_X68_Y74_N13
\in_adapter|entry|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(6));

-- Location: FF_X68_Y74_N4
\in_adapter|entry|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|curr_head\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(7));

-- Location: FF_X70_Y75_N7
\in_adapter|entry|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|round\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(8));

-- Location: FF_X70_Y75_N29
\in_adapter|entry|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \in_adapter|entry|round\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|addr\(9));

-- Location: LABCELL_X68_Y75_N15
\in_adapter|output|round2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|round2[0]~0_combout\ = !\in_adapter|output|round2\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(0),
	combout => \in_adapter|output|round2[0]~0_combout\);

-- Location: FF_X70_Y76_N38
\in_adapter|output|s_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|s_rden~combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|s_valid~q\);

-- Location: LABCELL_X70_Y76_N30
\in_adapter|output|u_main_part~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|u_main_part~0_combout\ = ( !\in_adapter|output|out_ready~q\ & ( \in_adapter|output|s_valid~q\ ) ) # ( \in_adapter|output|out_ready~q\ & ( !\in_adapter|output|s_valid~q\ ) ) # ( !\in_adapter|output|out_ready~q\ & ( 
-- !\in_adapter|output|s_valid~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \in_adapter|output|ALT_INV_out_ready~q\,
	dataf => \in_adapter|output|ALT_INV_s_valid~q\,
	combout => \in_adapter|output|u_main_part~0_combout\);

-- Location: FF_X70_Y76_N31
\in_adapter|output|out_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|u_main_part~0_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|out_ready~q\);

-- Location: LABCELL_X70_Y76_N39
\in_adapter|output|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|state~0_combout\ = ( \in_adapter|output|state~q\ & ( \in_adapter|output|out_ready~q\ & ( !\in_adapter|output|s_valid~q\ ) ) ) # ( !\in_adapter|output|state~q\ & ( \in_adapter|output|out_ready~q\ & ( \in_adapter|output|s_valid~q\ ) ) ) # 
-- ( \in_adapter|output|state~q\ & ( !\in_adapter|output|out_ready~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_s_valid~q\,
	datae => \in_adapter|output|ALT_INV_state~q\,
	dataf => \in_adapter|output|ALT_INV_out_ready~q\,
	combout => \in_adapter|output|state~0_combout\);

-- Location: FF_X70_Y76_N41
\in_adapter|output|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|state~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|state~q\);

-- Location: LABCELL_X68_Y75_N3
\out_adapter|entry2|data_a[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[0]~0_combout\ = (\reset~input_o\ & !\in_adapter|output|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \in_adapter|output|ALT_INV_state~q\,
	combout => \out_adapter|entry2|data_a[0]~0_combout\);

-- Location: FF_X68_Y75_N17
\in_adapter|output|round2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|round2[0]~0_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(0));

-- Location: FF_X68_Y75_N22
\in_adapter|output|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|round2\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(0));

-- Location: LABCELL_X68_Y75_N30
\in_adapter|output|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~1_sumout\ = SUM(( \in_adapter|output|round2\(1) ) + ( \in_adapter|output|round2\(0) ) + ( !VCC ))
-- \in_adapter|output|Add0~2\ = CARRY(( \in_adapter|output|round2\(1) ) + ( \in_adapter|output|round2\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in_adapter|output|ALT_INV_round2\(0),
	datad => \in_adapter|output|ALT_INV_round2\(1),
	cin => GND,
	sumout => \in_adapter|output|Add0~1_sumout\,
	cout => \in_adapter|output|Add0~2\);

-- Location: FF_X68_Y75_N32
\in_adapter|output|round2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~1_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(1));

-- Location: LABCELL_X68_Y75_N24
\in_adapter|output|addr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|addr[1]~feeder_combout\ = ( \in_adapter|output|round2\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_round2\(1),
	combout => \in_adapter|output|addr[1]~feeder_combout\);

-- Location: FF_X68_Y75_N26
\in_adapter|output|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|addr[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(1));

-- Location: LABCELL_X68_Y75_N33
\in_adapter|output|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~5_sumout\ = SUM(( \in_adapter|output|round2\(2) ) + ( GND ) + ( \in_adapter|output|Add0~2\ ))
-- \in_adapter|output|Add0~6\ = CARRY(( \in_adapter|output|round2\(2) ) + ( GND ) + ( \in_adapter|output|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(2),
	cin => \in_adapter|output|Add0~2\,
	sumout => \in_adapter|output|Add0~5_sumout\,
	cout => \in_adapter|output|Add0~6\);

-- Location: FF_X68_Y75_N35
\in_adapter|output|round2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~5_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(2));

-- Location: LABCELL_X68_Y75_N6
\in_adapter|output|addr[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|addr[2]~feeder_combout\ = \in_adapter|output|round2\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_round2\(2),
	combout => \in_adapter|output|addr[2]~feeder_combout\);

-- Location: FF_X68_Y75_N7
\in_adapter|output|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|addr[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(2));

-- Location: LABCELL_X68_Y75_N36
\in_adapter|output|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~9_sumout\ = SUM(( \in_adapter|output|round2\(3) ) + ( GND ) + ( \in_adapter|output|Add0~6\ ))
-- \in_adapter|output|Add0~10\ = CARRY(( \in_adapter|output|round2\(3) ) + ( GND ) + ( \in_adapter|output|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(3),
	cin => \in_adapter|output|Add0~6\,
	sumout => \in_adapter|output|Add0~9_sumout\,
	cout => \in_adapter|output|Add0~10\);

-- Location: FF_X68_Y75_N38
\in_adapter|output|round2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~9_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(3));

-- Location: FF_X68_Y75_N8
\in_adapter|output|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|round2\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(3));

-- Location: LABCELL_X68_Y75_N39
\in_adapter|output|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~13_sumout\ = SUM(( \in_adapter|output|round2\(4) ) + ( GND ) + ( \in_adapter|output|Add0~10\ ))
-- \in_adapter|output|Add0~14\ = CARRY(( \in_adapter|output|round2\(4) ) + ( GND ) + ( \in_adapter|output|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(4),
	cin => \in_adapter|output|Add0~10\,
	sumout => \in_adapter|output|Add0~13_sumout\,
	cout => \in_adapter|output|Add0~14\);

-- Location: FF_X68_Y75_N41
\in_adapter|output|round2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~13_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(4));

-- Location: LABCELL_X68_Y75_N9
\in_adapter|output|addr[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|addr[4]~feeder_combout\ = \in_adapter|output|round2\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_round2\(4),
	combout => \in_adapter|output|addr[4]~feeder_combout\);

-- Location: FF_X68_Y75_N10
\in_adapter|output|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|addr[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(4));

-- Location: LABCELL_X68_Y75_N42
\in_adapter|output|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~17_sumout\ = SUM(( \in_adapter|output|round2\(5) ) + ( GND ) + ( \in_adapter|output|Add0~14\ ))
-- \in_adapter|output|Add0~18\ = CARRY(( \in_adapter|output|round2\(5) ) + ( GND ) + ( \in_adapter|output|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(5),
	cin => \in_adapter|output|Add0~14\,
	sumout => \in_adapter|output|Add0~17_sumout\,
	cout => \in_adapter|output|Add0~18\);

-- Location: FF_X68_Y75_N44
\in_adapter|output|round2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~17_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(5));

-- Location: FF_X68_Y75_N19
\in_adapter|output|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|round2\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(5));

-- Location: LABCELL_X68_Y75_N45
\in_adapter|output|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~21_sumout\ = SUM(( \in_adapter|output|round2\(6) ) + ( GND ) + ( \in_adapter|output|Add0~18\ ))
-- \in_adapter|output|Add0~22\ = CARRY(( \in_adapter|output|round2\(6) ) + ( GND ) + ( \in_adapter|output|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(6),
	cin => \in_adapter|output|Add0~18\,
	sumout => \in_adapter|output|Add0~21_sumout\,
	cout => \in_adapter|output|Add0~22\);

-- Location: FF_X68_Y75_N47
\in_adapter|output|round2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~21_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(6));

-- Location: LABCELL_X68_Y75_N21
\in_adapter|output|addr[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|addr[6]~feeder_combout\ = \in_adapter|output|round2\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_round2\(6),
	combout => \in_adapter|output|addr[6]~feeder_combout\);

-- Location: FF_X68_Y75_N23
\in_adapter|output|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|addr[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(6));

-- Location: LABCELL_X68_Y75_N48
\in_adapter|output|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Add0~25_sumout\ = SUM(( \in_adapter|output|round2\(7) ) + ( GND ) + ( \in_adapter|output|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \in_adapter|output|ALT_INV_round2\(7),
	cin => \in_adapter|output|Add0~22\,
	sumout => \in_adapter|output|Add0~25_sumout\);

-- Location: FF_X68_Y75_N50
\in_adapter|output|round2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|Add0~25_sumout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round2\(7));

-- Location: FF_X68_Y75_N25
\in_adapter|output|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|round2\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(7));

-- Location: FF_X68_Y75_N1
\in_adapter|output|round1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|round1[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round1\(0));

-- Location: LABCELL_X68_Y75_N12
\in_adapter|output|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|Equal0~0_combout\ = ( \in_adapter|output|round2\(0) & ( (\in_adapter|output|round2\(5) & (\in_adapter|output|round2\(4) & (\in_adapter|output|round2\(7) & \in_adapter|output|round2\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_round2\(5),
	datab => \in_adapter|output|ALT_INV_round2\(4),
	datac => \in_adapter|output|ALT_INV_round2\(7),
	datad => \in_adapter|output|ALT_INV_round2\(6),
	dataf => \in_adapter|output|ALT_INV_round2\(0),
	combout => \in_adapter|output|Equal0~0_combout\);

-- Location: LABCELL_X68_Y75_N0
\in_adapter|output|round1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|round1[0]~0_combout\ = ( \in_adapter|output|Equal0~0_combout\ & ( !\in_adapter|output|round1\(0) $ (((!\in_adapter|output|round2\(3)) # ((!\in_adapter|output|round2\(1)) # (!\in_adapter|output|round2\(2))))) ) ) # ( 
-- !\in_adapter|output|Equal0~0_combout\ & ( \in_adapter|output|round1\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_round2\(3),
	datab => \in_adapter|output|ALT_INV_round2\(1),
	datac => \in_adapter|output|ALT_INV_round2\(2),
	datad => \in_adapter|output|ALT_INV_round1\(0),
	dataf => \in_adapter|output|ALT_INV_Equal0~0_combout\,
	combout => \in_adapter|output|round1[0]~0_combout\);

-- Location: FF_X68_Y75_N2
\in_adapter|output|round1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|round1[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round1[0]~DUPLICATE_q\);

-- Location: FF_X68_Y75_N29
\in_adapter|output|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|round1[0]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(8));

-- Location: LABCELL_X68_Y75_N54
\in_adapter|output|round1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|round1[1]~1_combout\ = ( \in_adapter|output|round1\(1) & ( \in_adapter|output|round1\(0) & ( (!\in_adapter|output|round2\(3)) # ((!\in_adapter|output|round2\(1)) # ((!\in_adapter|output|round2\(2)) # 
-- (!\in_adapter|output|Equal0~0_combout\))) ) ) ) # ( !\in_adapter|output|round1\(1) & ( \in_adapter|output|round1\(0) & ( (\in_adapter|output|round2\(3) & (\in_adapter|output|round2\(1) & (\in_adapter|output|round2\(2) & 
-- \in_adapter|output|Equal0~0_combout\))) ) ) ) # ( \in_adapter|output|round1\(1) & ( !\in_adapter|output|round1\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_round2\(3),
	datab => \in_adapter|output|ALT_INV_round2\(1),
	datac => \in_adapter|output|ALT_INV_round2\(2),
	datad => \in_adapter|output|ALT_INV_Equal0~0_combout\,
	datae => \in_adapter|output|ALT_INV_round1\(1),
	dataf => \in_adapter|output|ALT_INV_round1\(0),
	combout => \in_adapter|output|round1[1]~1_combout\);

-- Location: FF_X68_Y75_N55
\in_adapter|output|round1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|round1[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|round1\(1));

-- Location: LABCELL_X71_Y75_N51
\in_adapter|output|addr[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|addr[9]~feeder_combout\ = \in_adapter|output|round1\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_round1\(1),
	combout => \in_adapter|output|addr[9]~feeder_combout\);

-- Location: FF_X71_Y75_N53
\in_adapter|output|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|addr[9]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|addr\(9));

-- Location: IOIBUF_X58_Y81_N75
\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LABCELL_X68_Y73_N15
\in_adapter|entry|data_a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[1]~feeder_combout\ = ( \din[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[1]~input_o\,
	combout => \in_adapter|entry|data_a[1]~feeder_combout\);

-- Location: FF_X68_Y73_N17
\in_adapter|entry|data_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(1));

-- Location: IOIBUF_X56_Y81_N35
\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LABCELL_X68_Y73_N54
\in_adapter|entry|data_a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[2]~feeder_combout\ = ( \din[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[2]~input_o\,
	combout => \in_adapter|entry|data_a[2]~feeder_combout\);

-- Location: FF_X68_Y73_N56
\in_adapter|entry|data_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(2));

-- Location: IOIBUF_X56_Y81_N18
\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LABCELL_X68_Y73_N36
\in_adapter|entry|data_a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[3]~feeder_combout\ = ( \din[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[3]~input_o\,
	combout => \in_adapter|entry|data_a[3]~feeder_combout\);

-- Location: FF_X68_Y73_N38
\in_adapter|entry|data_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(3));

-- Location: IOIBUF_X58_Y81_N58
\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: FF_X68_Y73_N8
\in_adapter|entry|data_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[4]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(4));

-- Location: IOIBUF_X52_Y81_N35
\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: LABCELL_X68_Y73_N48
\in_adapter|entry|data_a[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[5]~feeder_combout\ = ( \din[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[5]~input_o\,
	combout => \in_adapter|entry|data_a[5]~feeder_combout\);

-- Location: FF_X68_Y73_N50
\in_adapter|entry|data_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(5));

-- Location: IOIBUF_X54_Y81_N35
\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LABCELL_X68_Y73_N21
\in_adapter|entry|data_a[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[6]~feeder_combout\ = ( \din[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[6]~input_o\,
	combout => \in_adapter|entry|data_a[6]~feeder_combout\);

-- Location: FF_X68_Y73_N23
\in_adapter|entry|data_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(6));

-- Location: IOIBUF_X40_Y81_N35
\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: FF_X68_Y73_N35
\in_adapter|entry|data_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(7));

-- Location: IOIBUF_X56_Y81_N52
\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: LABCELL_X68_Y73_N42
\in_adapter|entry|data_a[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[8]~feeder_combout\ = ( \din[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[8]~input_o\,
	combout => \in_adapter|entry|data_a[8]~feeder_combout\);

-- Location: FF_X68_Y73_N43
\in_adapter|entry|data_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[8]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(8));

-- Location: IOIBUF_X54_Y81_N1
\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: LABCELL_X68_Y73_N3
\in_adapter|entry|data_a[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[9]~feeder_combout\ = ( \din[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[9]~input_o\,
	combout => \in_adapter|entry|data_a[9]~feeder_combout\);

-- Location: FF_X68_Y73_N5
\in_adapter|entry|data_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[9]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(9));

-- Location: M10K_X69_Y73_N0
\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_adapt:in_adapter|in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \in_adapter|entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \in_adapter|output|s_rden~combout\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X68_Y77_N30
\in_adapter|output|ast_sink_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[0]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \in_adapter|output|ast_sink_data[0]~feeder_combout\);

-- Location: FF_X68_Y77_N32
\in_adapter|output|ast_sink_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[0]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(0));

-- Location: FF_X68_Y77_N41
\out_adapter|entry2|data_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(0),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(0));

-- Location: FF_X71_Y75_N35
\out_adapter|entry2|curr_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(0));

-- Location: LABCELL_X71_Y75_N33
\out_adapter|entry2|curr_head[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|curr_head[0]~0_combout\ = !\out_adapter|entry2|curr_head\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(0),
	combout => \out_adapter|entry2|curr_head[0]~0_combout\);

-- Location: FF_X71_Y75_N34
\out_adapter|entry2|curr_head[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head[0]~DUPLICATE_q\);

-- Location: FF_X71_Y75_N22
\out_adapter|entry2|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head[0]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(0));

-- Location: LABCELL_X71_Y75_N0
\out_adapter|entry2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~1_sumout\ = SUM(( \out_adapter|entry2|curr_head\(1) ) + ( \out_adapter|entry2|curr_head[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \out_adapter|entry2|Add1~2\ = CARRY(( \out_adapter|entry2|curr_head\(1) ) + ( \out_adapter|entry2|curr_head[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_adapter|entry2|ALT_INV_curr_head[0]~DUPLICATE_q\,
	datad => \out_adapter|entry2|ALT_INV_curr_head\(1),
	cin => GND,
	sumout => \out_adapter|entry2|Add1~1_sumout\,
	cout => \out_adapter|entry2|Add1~2\);

-- Location: FF_X71_Y75_N2
\out_adapter|entry2|curr_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~1_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(1));

-- Location: FF_X71_Y75_N38
\out_adapter|entry2|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(1));

-- Location: LABCELL_X71_Y75_N3
\out_adapter|entry2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~5_sumout\ = SUM(( \out_adapter|entry2|curr_head\(2) ) + ( GND ) + ( \out_adapter|entry2|Add1~2\ ))
-- \out_adapter|entry2|Add1~6\ = CARRY(( \out_adapter|entry2|curr_head\(2) ) + ( GND ) + ( \out_adapter|entry2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(2),
	cin => \out_adapter|entry2|Add1~2\,
	sumout => \out_adapter|entry2|Add1~5_sumout\,
	cout => \out_adapter|entry2|Add1~6\);

-- Location: FF_X71_Y75_N5
\out_adapter|entry2|curr_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~5_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(2));

-- Location: FF_X71_Y75_N40
\out_adapter|entry2|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(2));

-- Location: FF_X71_Y75_N7
\out_adapter|entry2|curr_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~9_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(3));

-- Location: LABCELL_X71_Y75_N6
\out_adapter|entry2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~9_sumout\ = SUM(( \out_adapter|entry2|curr_head\(3) ) + ( GND ) + ( \out_adapter|entry2|Add1~6\ ))
-- \out_adapter|entry2|Add1~10\ = CARRY(( \out_adapter|entry2|curr_head\(3) ) + ( GND ) + ( \out_adapter|entry2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(3),
	cin => \out_adapter|entry2|Add1~6\,
	sumout => \out_adapter|entry2|Add1~9_sumout\,
	cout => \out_adapter|entry2|Add1~10\);

-- Location: FF_X71_Y75_N8
\out_adapter|entry2|curr_head[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~9_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head[3]~DUPLICATE_q\);

-- Location: FF_X71_Y75_N43
\out_adapter|entry2|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head[3]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(3));

-- Location: LABCELL_X71_Y75_N9
\out_adapter|entry2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~13_sumout\ = SUM(( \out_adapter|entry2|curr_head\(4) ) + ( GND ) + ( \out_adapter|entry2|Add1~10\ ))
-- \out_adapter|entry2|Add1~14\ = CARRY(( \out_adapter|entry2|curr_head\(4) ) + ( GND ) + ( \out_adapter|entry2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(4),
	cin => \out_adapter|entry2|Add1~10\,
	sumout => \out_adapter|entry2|Add1~13_sumout\,
	cout => \out_adapter|entry2|Add1~14\);

-- Location: FF_X71_Y75_N11
\out_adapter|entry2|curr_head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~13_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(4));

-- Location: LABCELL_X71_Y75_N36
\out_adapter|entry2|addr[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|addr[4]~feeder_combout\ = \out_adapter|entry2|curr_head\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \out_adapter|entry2|ALT_INV_curr_head\(4),
	combout => \out_adapter|entry2|addr[4]~feeder_combout\);

-- Location: FF_X71_Y75_N37
\out_adapter|entry2|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|addr[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(4));

-- Location: FF_X71_Y75_N13
\out_adapter|entry2|curr_head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~17_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(5));

-- Location: LABCELL_X71_Y75_N12
\out_adapter|entry2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~17_sumout\ = SUM(( \out_adapter|entry2|curr_head\(5) ) + ( GND ) + ( \out_adapter|entry2|Add1~14\ ))
-- \out_adapter|entry2|Add1~18\ = CARRY(( \out_adapter|entry2|curr_head\(5) ) + ( GND ) + ( \out_adapter|entry2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(5),
	cin => \out_adapter|entry2|Add1~14\,
	sumout => \out_adapter|entry2|Add1~17_sumout\,
	cout => \out_adapter|entry2|Add1~18\);

-- Location: FF_X71_Y75_N14
\out_adapter|entry2|curr_head[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~17_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head[5]~DUPLICATE_q\);

-- Location: FF_X71_Y75_N50
\out_adapter|entry2|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head[5]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(5));

-- Location: FF_X71_Y75_N16
\out_adapter|entry2|curr_head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~21_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(6));

-- Location: LABCELL_X71_Y75_N15
\out_adapter|entry2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~21_sumout\ = SUM(( \out_adapter|entry2|curr_head\(6) ) + ( GND ) + ( \out_adapter|entry2|Add1~18\ ))
-- \out_adapter|entry2|Add1~22\ = CARRY(( \out_adapter|entry2|curr_head\(6) ) + ( GND ) + ( \out_adapter|entry2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(6),
	cin => \out_adapter|entry2|Add1~18\,
	sumout => \out_adapter|entry2|Add1~21_sumout\,
	cout => \out_adapter|entry2|Add1~22\);

-- Location: FF_X71_Y75_N17
\out_adapter|entry2|curr_head[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~21_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head[6]~DUPLICATE_q\);

-- Location: FF_X71_Y75_N52
\out_adapter|entry2|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head[6]~DUPLICATE_q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(6));

-- Location: LABCELL_X71_Y75_N18
\out_adapter|entry2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Add1~25_sumout\ = SUM(( \out_adapter|entry2|curr_head\(7) ) + ( GND ) + ( \out_adapter|entry2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|entry2|ALT_INV_curr_head\(7),
	cin => \out_adapter|entry2|Add1~22\,
	sumout => \out_adapter|entry2|Add1~25_sumout\);

-- Location: FF_X71_Y75_N20
\out_adapter|entry2|curr_head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|Add1~25_sumout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|curr_head\(7));

-- Location: FF_X71_Y75_N47
\out_adapter|entry2|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|curr_head\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(7));

-- Location: LABCELL_X71_Y75_N30
\out_adapter|entry2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|Equal0~0_combout\ = ( \out_adapter|entry2|curr_head\(5) & ( (\out_adapter|entry2|curr_head\(7) & (\out_adapter|entry2|curr_head\(4) & (\out_adapter|entry2|curr_head\(6) & \out_adapter|entry2|curr_head\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|entry2|ALT_INV_curr_head\(7),
	datab => \out_adapter|entry2|ALT_INV_curr_head\(4),
	datac => \out_adapter|entry2|ALT_INV_curr_head\(6),
	datad => \out_adapter|entry2|ALT_INV_curr_head\(3),
	dataf => \out_adapter|entry2|ALT_INV_curr_head\(5),
	combout => \out_adapter|entry2|Equal0~0_combout\);

-- Location: FF_X71_Y75_N25
\out_adapter|entry2|round[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|round[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|round\(0));

-- Location: LABCELL_X71_Y75_N24
\out_adapter|entry2|round[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|round[0]~0_combout\ = ( \out_adapter|entry2|round\(0) & ( \out_adapter|entry2|curr_head[0]~DUPLICATE_q\ & ( (!\out_adapter|entry2|curr_head\(2)) # ((!\out_adapter|entry2|Equal0~0_combout\) # (!\out_adapter|entry2|curr_head\(1))) ) ) ) 
-- # ( !\out_adapter|entry2|round\(0) & ( \out_adapter|entry2|curr_head[0]~DUPLICATE_q\ & ( (\out_adapter|entry2|curr_head\(2) & (\out_adapter|entry2|Equal0~0_combout\ & \out_adapter|entry2|curr_head\(1))) ) ) ) # ( \out_adapter|entry2|round\(0) & ( 
-- !\out_adapter|entry2|curr_head[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|entry2|ALT_INV_curr_head\(2),
	datab => \out_adapter|entry2|ALT_INV_Equal0~0_combout\,
	datac => \out_adapter|entry2|ALT_INV_curr_head\(1),
	datae => \out_adapter|entry2|ALT_INV_round\(0),
	dataf => \out_adapter|entry2|ALT_INV_curr_head[0]~DUPLICATE_q\,
	combout => \out_adapter|entry2|round[0]~0_combout\);

-- Location: FF_X71_Y75_N26
\out_adapter|entry2|round[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|round[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|round[0]~DUPLICATE_q\);

-- Location: LABCELL_X71_Y75_N42
\out_adapter|entry2|addr[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|addr[8]~feeder_combout\ = \out_adapter|entry2|round[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_adapter|entry2|ALT_INV_round[0]~DUPLICATE_q\,
	combout => \out_adapter|entry2|addr[8]~feeder_combout\);

-- Location: FF_X71_Y75_N44
\out_adapter|entry2|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|addr[8]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(8));

-- Location: LABCELL_X71_Y75_N54
\out_adapter|entry2|round[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|round[1]~1_combout\ = ( \out_adapter|entry2|round\(1) & ( \out_adapter|entry2|round\(0) & ( (!\out_adapter|entry2|curr_head\(0)) # ((!\out_adapter|entry2|Equal0~0_combout\) # ((!\out_adapter|entry2|curr_head\(2)) # 
-- (!\out_adapter|entry2|curr_head\(1)))) ) ) ) # ( !\out_adapter|entry2|round\(1) & ( \out_adapter|entry2|round\(0) & ( (\out_adapter|entry2|curr_head\(0) & (\out_adapter|entry2|Equal0~0_combout\ & (\out_adapter|entry2|curr_head\(2) & 
-- \out_adapter|entry2|curr_head\(1)))) ) ) ) # ( \out_adapter|entry2|round\(1) & ( !\out_adapter|entry2|round\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|entry2|ALT_INV_curr_head\(0),
	datab => \out_adapter|entry2|ALT_INV_Equal0~0_combout\,
	datac => \out_adapter|entry2|ALT_INV_curr_head\(2),
	datad => \out_adapter|entry2|ALT_INV_curr_head\(1),
	datae => \out_adapter|entry2|ALT_INV_round\(1),
	dataf => \out_adapter|entry2|ALT_INV_round\(0),
	combout => \out_adapter|entry2|round[1]~1_combout\);

-- Location: FF_X71_Y75_N56
\out_adapter|entry2|round[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|round[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|round\(1));

-- Location: FF_X71_Y75_N31
\out_adapter|entry2|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \out_adapter|entry2|round\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|output|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|addr\(9));

-- Location: LABCELL_X71_Y76_N3
\out_adapter|output2|curr_head[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|curr_head[0]~0_combout\ = ( !\out_adapter|output2|curr_head\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \out_adapter|output2|ALT_INV_curr_head\(0),
	combout => \out_adapter|output2|curr_head[0]~0_combout\);

-- Location: MLABCELL_X72_Y76_N18
\out_adapter|output2|u_data_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|u_data_addr~0_combout\ = ( \enb~input_o\ & ( \out_adapter|output2|s_rden~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_adapter|output2|ALT_INV_s_rden~q\,
	dataf => \ALT_INV_enb~input_o\,
	combout => \out_adapter|output2|u_data_addr~0_combout\);

-- Location: FF_X71_Y76_N5
\out_adapter|output2|curr_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(0));

-- Location: FF_X72_Y76_N2
\out_adapter|output2|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(0));

-- Location: MLABCELL_X72_Y76_N30
\out_adapter|output2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~1_sumout\ = SUM(( \out_adapter|output2|curr_head\(1) ) + ( \out_adapter|output2|curr_head\(0) ) + ( !VCC ))
-- \out_adapter|output2|Add0~2\ = CARRY(( \out_adapter|output2|curr_head\(1) ) + ( \out_adapter|output2|curr_head\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_adapter|output2|ALT_INV_curr_head\(0),
	datad => \out_adapter|output2|ALT_INV_curr_head\(1),
	cin => GND,
	sumout => \out_adapter|output2|Add0~1_sumout\,
	cout => \out_adapter|output2|Add0~2\);

-- Location: FF_X72_Y76_N32
\out_adapter|output2|curr_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(1));

-- Location: MLABCELL_X72_Y76_N9
\out_adapter|output2|addr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|addr[1]~feeder_combout\ = \out_adapter|output2|curr_head\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \out_adapter|output2|ALT_INV_curr_head\(1),
	combout => \out_adapter|output2|addr[1]~feeder_combout\);

-- Location: FF_X72_Y76_N11
\out_adapter|output2|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|addr[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(1));

-- Location: MLABCELL_X72_Y76_N33
\out_adapter|output2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~5_sumout\ = SUM(( \out_adapter|output2|curr_head\(2) ) + ( GND ) + ( \out_adapter|output2|Add0~2\ ))
-- \out_adapter|output2|Add0~6\ = CARRY(( \out_adapter|output2|curr_head\(2) ) + ( GND ) + ( \out_adapter|output2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(2),
	cin => \out_adapter|output2|Add0~2\,
	sumout => \out_adapter|output2|Add0~5_sumout\,
	cout => \out_adapter|output2|Add0~6\);

-- Location: FF_X72_Y76_N35
\out_adapter|output2|curr_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(2));

-- Location: FF_X72_Y76_N29
\out_adapter|output2|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(2));

-- Location: MLABCELL_X72_Y76_N36
\out_adapter|output2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~9_sumout\ = SUM(( \out_adapter|output2|curr_head\(3) ) + ( GND ) + ( \out_adapter|output2|Add0~6\ ))
-- \out_adapter|output2|Add0~10\ = CARRY(( \out_adapter|output2|curr_head\(3) ) + ( GND ) + ( \out_adapter|output2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(3),
	cin => \out_adapter|output2|Add0~6\,
	sumout => \out_adapter|output2|Add0~9_sumout\,
	cout => \out_adapter|output2|Add0~10\);

-- Location: FF_X72_Y76_N38
\out_adapter|output2|curr_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(3));

-- Location: FF_X72_Y76_N23
\out_adapter|output2|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(3),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(3));

-- Location: MLABCELL_X72_Y76_N39
\out_adapter|output2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~13_sumout\ = SUM(( \out_adapter|output2|curr_head\(4) ) + ( GND ) + ( \out_adapter|output2|Add0~10\ ))
-- \out_adapter|output2|Add0~14\ = CARRY(( \out_adapter|output2|curr_head\(4) ) + ( GND ) + ( \out_adapter|output2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(4),
	cin => \out_adapter|output2|Add0~10\,
	sumout => \out_adapter|output2|Add0~13_sumout\,
	cout => \out_adapter|output2|Add0~14\);

-- Location: FF_X72_Y76_N41
\out_adapter|output2|curr_head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(4));

-- Location: FF_X72_Y76_N5
\out_adapter|output2|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(4),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(4));

-- Location: MLABCELL_X72_Y76_N42
\out_adapter|output2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~17_sumout\ = SUM(( \out_adapter|output2|curr_head\(5) ) + ( GND ) + ( \out_adapter|output2|Add0~14\ ))
-- \out_adapter|output2|Add0~18\ = CARRY(( \out_adapter|output2|curr_head\(5) ) + ( GND ) + ( \out_adapter|output2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(5),
	cin => \out_adapter|output2|Add0~14\,
	sumout => \out_adapter|output2|Add0~17_sumout\,
	cout => \out_adapter|output2|Add0~18\);

-- Location: FF_X72_Y76_N44
\out_adapter|output2|curr_head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(5));

-- Location: FF_X72_Y76_N20
\out_adapter|output2|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(5));

-- Location: MLABCELL_X72_Y76_N45
\out_adapter|output2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~21_sumout\ = SUM(( \out_adapter|output2|curr_head\(6) ) + ( GND ) + ( \out_adapter|output2|Add0~18\ ))
-- \out_adapter|output2|Add0~22\ = CARRY(( \out_adapter|output2|curr_head\(6) ) + ( GND ) + ( \out_adapter|output2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(6),
	cin => \out_adapter|output2|Add0~18\,
	sumout => \out_adapter|output2|Add0~21_sumout\,
	cout => \out_adapter|output2|Add0~22\);

-- Location: FF_X72_Y76_N47
\out_adapter|output2|curr_head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(6));

-- Location: FF_X72_Y76_N53
\out_adapter|output2|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(6),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(6));

-- Location: MLABCELL_X72_Y76_N48
\out_adapter|output2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|Add0~25_sumout\ = SUM(( \out_adapter|output2|curr_head\(7) ) + ( GND ) + ( \out_adapter|output2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \out_adapter|output2|ALT_INV_curr_head\(7),
	cin => \out_adapter|output2|Add0~22\,
	sumout => \out_adapter|output2|Add0~25_sumout\);

-- Location: FF_X72_Y76_N50
\out_adapter|output2|curr_head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|curr_head\(7));

-- Location: FF_X72_Y76_N17
\out_adapter|output2|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|curr_head\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(7));

-- Location: MLABCELL_X72_Y76_N24
\out_adapter|output2|round[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|round[0]~0_combout\ = ( \out_adapter|output2|curr_head\(6) & ( (\out_adapter|output2|s_rden~q\ & (\out_adapter|output2|curr_head\(5) & (\out_adapter|output2|curr_head\(7) & \enb~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|output2|ALT_INV_s_rden~q\,
	datab => \out_adapter|output2|ALT_INV_curr_head\(5),
	datac => \out_adapter|output2|ALT_INV_curr_head\(7),
	datad => \ALT_INV_enb~input_o\,
	datae => \out_adapter|output2|ALT_INV_curr_head\(6),
	combout => \out_adapter|output2|round[0]~0_combout\);

-- Location: MLABCELL_X72_Y76_N12
\out_adapter|output2|round[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|round[0]~1_combout\ = ( \out_adapter|output2|curr_head\(3) & ( (\out_adapter|output2|curr_head\(2) & (\out_adapter|output2|curr_head\(1) & \out_adapter|output2|curr_head\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|output2|ALT_INV_curr_head\(2),
	datab => \out_adapter|output2|ALT_INV_curr_head\(1),
	datac => \out_adapter|output2|ALT_INV_curr_head\(0),
	datae => \out_adapter|output2|ALT_INV_curr_head\(3),
	combout => \out_adapter|output2|round[0]~1_combout\);

-- Location: MLABCELL_X72_Y76_N54
\out_adapter|output2|round[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|round[0]~2_combout\ = ( \out_adapter|output2|round[0]~1_combout\ & ( !\out_adapter|output2|round\(0) $ (((!\out_adapter|output2|curr_head\(4)) # (!\out_adapter|output2|round[0]~0_combout\))) ) ) # ( 
-- !\out_adapter|output2|round[0]~1_combout\ & ( \out_adapter|output2|round\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \out_adapter|output2|ALT_INV_curr_head\(4),
	datac => \out_adapter|output2|ALT_INV_round[0]~0_combout\,
	datad => \out_adapter|output2|ALT_INV_round\(0),
	dataf => \out_adapter|output2|ALT_INV_round[0]~1_combout\,
	combout => \out_adapter|output2|round[0]~2_combout\);

-- Location: FF_X72_Y76_N56
\out_adapter|output2|round[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|round[0]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|round\(0));

-- Location: MLABCELL_X72_Y76_N6
\out_adapter|output2|addr[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|addr[8]~feeder_combout\ = ( \out_adapter|output2|round\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|output2|ALT_INV_round\(0),
	combout => \out_adapter|output2|addr[8]~feeder_combout\);

-- Location: FF_X72_Y76_N8
\out_adapter|output2|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|addr[8]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(8));

-- Location: MLABCELL_X72_Y76_N57
\out_adapter|output2|round[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|round[1]~3_combout\ = ( \out_adapter|output2|round\(0) & ( !\out_adapter|output2|round\(1) $ (((!\out_adapter|output2|round[0]~0_combout\) # ((!\out_adapter|output2|curr_head\(4)) # (!\out_adapter|output2|round[0]~1_combout\)))) ) ) # 
-- ( !\out_adapter|output2|round\(0) & ( \out_adapter|output2|round\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \out_adapter|output2|ALT_INV_round[0]~0_combout\,
	datab => \out_adapter|output2|ALT_INV_curr_head\(4),
	datac => \out_adapter|output2|ALT_INV_round[0]~1_combout\,
	datad => \out_adapter|output2|ALT_INV_round\(1),
	dataf => \out_adapter|output2|ALT_INV_round\(0),
	combout => \out_adapter|output2|round[1]~3_combout\);

-- Location: FF_X72_Y76_N58
\out_adapter|output2|round[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|round[1]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|round\(1));

-- Location: FF_X72_Y76_N14
\out_adapter|output2|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|output2|round\(1),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \out_adapter|output2|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|addr\(9));

-- Location: LABCELL_X68_Y77_N48
\in_adapter|output|ast_sink_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[1]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \in_adapter|output|ast_sink_data[1]~feeder_combout\);

-- Location: FF_X68_Y77_N50
\in_adapter|output|ast_sink_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[1]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(1));

-- Location: LABCELL_X68_Y77_N18
\out_adapter|entry2|data_a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[1]~feeder_combout\ = \in_adapter|output|ast_sink_data\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_ast_sink_data\(1),
	combout => \out_adapter|entry2|data_a[1]~feeder_combout\);

-- Location: FF_X68_Y77_N20
\out_adapter|entry2|data_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[1]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(1));

-- Location: LABCELL_X70_Y77_N48
\in_adapter|output|ast_sink_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[2]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \in_adapter|output|ast_sink_data[2]~feeder_combout\);

-- Location: FF_X70_Y77_N50
\in_adapter|output|ast_sink_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[2]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(2));

-- Location: LABCELL_X70_Y77_N51
\out_adapter|entry2|data_a[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[2]~feeder_combout\ = \in_adapter|output|ast_sink_data\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_ast_sink_data\(2),
	combout => \out_adapter|entry2|data_a[2]~feeder_combout\);

-- Location: FF_X70_Y77_N53
\out_adapter|entry2|data_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[2]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(2));

-- Location: FF_X70_Y77_N8
\in_adapter|output|ast_sink_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(3),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(3));

-- Location: FF_X70_Y77_N11
\out_adapter|entry2|data_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(3),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(3));

-- Location: LABCELL_X68_Y77_N21
\in_adapter|output|ast_sink_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[4]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \in_adapter|output|ast_sink_data[4]~feeder_combout\);

-- Location: FF_X68_Y77_N23
\in_adapter|output|ast_sink_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[4]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(4));

-- Location: FF_X68_Y77_N26
\out_adapter|entry2|data_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(4),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(4));

-- Location: FF_X70_Y77_N41
\in_adapter|output|ast_sink_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(5),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(5));

-- Location: FF_X70_Y77_N38
\out_adapter|entry2|data_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(5),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(5));

-- Location: LABCELL_X68_Y77_N45
\in_adapter|output|ast_sink_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[6]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \in_adapter|output|ast_sink_data[6]~feeder_combout\);

-- Location: FF_X68_Y77_N47
\in_adapter|output|ast_sink_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[6]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(6));

-- Location: FF_X68_Y77_N59
\out_adapter|entry2|data_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(6),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(6));

-- Location: FF_X70_Y77_N56
\in_adapter|output|ast_sink_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(7),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(7));

-- Location: FF_X70_Y77_N59
\out_adapter|entry2|data_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(7),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(7));

-- Location: LABCELL_X70_Y77_N45
\in_adapter|output|ast_sink_data[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[8]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \in_adapter|output|ast_sink_data[8]~feeder_combout\);

-- Location: FF_X70_Y77_N47
\in_adapter|output|ast_sink_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[8]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(8));

-- Location: FF_X70_Y77_N26
\out_adapter|entry2|data_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(8),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(8));

-- Location: LABCELL_X68_Y77_N0
\in_adapter|output|ast_sink_data[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[9]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(9),
	combout => \in_adapter|output|ast_sink_data[9]~feeder_combout\);

-- Location: FF_X68_Y77_N2
\in_adapter|output|ast_sink_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[9]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(9));

-- Location: FF_X68_Y77_N17
\out_adapter|entry2|data_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(9),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(9));

-- Location: M10K_X69_Y77_N0
\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "out_adapt:out_adapter|out_ram:ram2|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \out_adapter|entry2|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \out_adapter|output2|s_rden~q\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X70_Y76_N15
\out_adapter|output2|dout[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[0]~0_combout\ = ( \reset~input_o\ & ( (\enb~input_o\ & \out_adapter|output2|s_rden~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enb~input_o\,
	datac => \out_adapter|output2|ALT_INV_s_rden~q\,
	datae => \ALT_INV_reset~input_o\,
	combout => \out_adapter|output2|dout[0]~0_combout\);

-- Location: FF_X71_Y77_N28
\out_adapter|output2|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(0));

-- Location: MLABCELL_X72_Y77_N3
\out_adapter|output2|dout[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[1]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \out_adapter|output2|dout[1]~feeder_combout\);

-- Location: FF_X72_Y77_N4
\out_adapter|output2|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[1]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(1));

-- Location: FF_X70_Y77_N16
\out_adapter|output2|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(2));

-- Location: LABCELL_X70_Y77_N12
\out_adapter|output2|dout[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[3]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \out_adapter|output2|dout[3]~feeder_combout\);

-- Location: FF_X70_Y77_N13
\out_adapter|output2|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[3]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(3));

-- Location: MLABCELL_X78_Y77_N27
\out_adapter|output2|dout[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[4]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(4),
	combout => \out_adapter|output2|dout[4]~feeder_combout\);

-- Location: FF_X78_Y77_N28
\out_adapter|output2|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[4]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(4));

-- Location: MLABCELL_X78_Y80_N0
\out_adapter|output2|dout[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[5]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \out_adapter|output2|dout[5]~feeder_combout\);

-- Location: FF_X78_Y80_N2
\out_adapter|output2|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[5]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(5));

-- Location: MLABCELL_X72_Y77_N18
\out_adapter|output2|dout[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[6]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \out_adapter|output2|dout[6]~feeder_combout\);

-- Location: FF_X72_Y77_N19
\out_adapter|output2|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[6]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(6));

-- Location: LABCELL_X71_Y77_N57
\out_adapter|output2|dout[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[7]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \out_adapter|output2|dout[7]~feeder_combout\);

-- Location: FF_X71_Y77_N59
\out_adapter|output2|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[7]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(7));

-- Location: LABCELL_X77_Y77_N15
\out_adapter|output2|dout[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[8]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \out_adapter|output2|dout[8]~feeder_combout\);

-- Location: FF_X77_Y77_N16
\out_adapter|output2|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[8]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(8));

-- Location: FF_X70_Y77_N19
\out_adapter|output2|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(9),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(9));

-- Location: IOIBUF_X60_Y81_N52
\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: LABCELL_X68_Y76_N9
\in_adapter|entry|data_a[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[10]~feeder_combout\ = ( \din[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[10]~input_o\,
	combout => \in_adapter|entry|data_a[10]~feeder_combout\);

-- Location: FF_X68_Y76_N11
\in_adapter|entry|data_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[10]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(10));

-- Location: IOIBUF_X60_Y81_N1
\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: LABCELL_X68_Y76_N24
\in_adapter|entry|data_a[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[11]~feeder_combout\ = ( \din[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[11]~input_o\,
	combout => \in_adapter|entry|data_a[11]~feeder_combout\);

-- Location: FF_X68_Y76_N26
\in_adapter|entry|data_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[11]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(11));

-- Location: IOIBUF_X68_Y81_N35
\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: FF_X68_Y76_N38
\in_adapter|entry|data_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[12]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(12));

-- Location: IOIBUF_X62_Y81_N18
\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: LABCELL_X68_Y76_N45
\in_adapter|entry|data_a[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[13]~feeder_combout\ = ( \din[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[13]~input_o\,
	combout => \in_adapter|entry|data_a[13]~feeder_combout\);

-- Location: FF_X68_Y76_N47
\in_adapter|entry|data_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[13]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(13));

-- Location: IOIBUF_X68_Y81_N52
\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: FF_X68_Y76_N50
\in_adapter|entry|data_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[14]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(14));

-- Location: IOIBUF_X62_Y81_N35
\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: LABCELL_X68_Y76_N57
\in_adapter|entry|data_a[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[15]~feeder_combout\ = ( \din[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[15]~input_o\,
	combout => \in_adapter|entry|data_a[15]~feeder_combout\);

-- Location: FF_X68_Y76_N59
\in_adapter|entry|data_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[15]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(15));

-- Location: IOIBUF_X68_Y81_N18
\din[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(16),
	o => \din[16]~input_o\);

-- Location: LABCELL_X68_Y76_N18
\in_adapter|entry|data_a[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[16]~feeder_combout\ = ( \din[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[16]~input_o\,
	combout => \in_adapter|entry|data_a[16]~feeder_combout\);

-- Location: FF_X68_Y76_N20
\in_adapter|entry|data_a[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[16]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(16));

-- Location: IOIBUF_X62_Y81_N52
\din[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(17),
	o => \din[17]~input_o\);

-- Location: LABCELL_X68_Y76_N30
\in_adapter|entry|data_a[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[17]~feeder_combout\ = ( \din[17]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[17]~input_o\,
	combout => \in_adapter|entry|data_a[17]~feeder_combout\);

-- Location: FF_X68_Y76_N32
\in_adapter|entry|data_a[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[17]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(17));

-- Location: IOIBUF_X62_Y81_N1
\din[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(18),
	o => \din[18]~input_o\);

-- Location: LABCELL_X68_Y76_N15
\in_adapter|entry|data_a[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[18]~feeder_combout\ = ( \din[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[18]~input_o\,
	combout => \in_adapter|entry|data_a[18]~feeder_combout\);

-- Location: FF_X68_Y76_N17
\in_adapter|entry|data_a[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[18]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(18));

-- Location: IOIBUF_X60_Y81_N35
\din[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(19),
	o => \din[19]~input_o\);

-- Location: LABCELL_X68_Y76_N0
\in_adapter|entry|data_a[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[19]~feeder_combout\ = ( \din[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[19]~input_o\,
	combout => \in_adapter|entry|data_a[19]~feeder_combout\);

-- Location: FF_X68_Y76_N2
\in_adapter|entry|data_a[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[19]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(19));

-- Location: M10K_X69_Y76_N0
\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_adapt:in_adapter|in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \in_adapter|entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \in_adapter|output|s_rden~combout\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: FF_X75_Y76_N2
\in_adapter|output|ast_sink_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(10),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(10));

-- Location: FF_X75_Y76_N26
\out_adapter|entry2|data_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(10),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(10));

-- Location: LABCELL_X75_Y76_N57
\in_adapter|output|ast_sink_data[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[11]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \in_adapter|output|ast_sink_data[11]~feeder_combout\);

-- Location: FF_X75_Y76_N58
\in_adapter|output|ast_sink_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[11]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(11));

-- Location: LABCELL_X75_Y76_N54
\out_adapter|entry2|data_a[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[11]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(11),
	combout => \out_adapter|entry2|data_a[11]~feeder_combout\);

-- Location: FF_X75_Y76_N56
\out_adapter|entry2|data_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[11]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(11));

-- Location: LABCELL_X75_Y76_N18
\in_adapter|output|ast_sink_data[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[12]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(12) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(12),
	combout => \in_adapter|output|ast_sink_data[12]~feeder_combout\);

-- Location: FF_X75_Y76_N20
\in_adapter|output|ast_sink_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[12]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(12));

-- Location: FF_X75_Y76_N5
\out_adapter|entry2|data_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(12),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(12));

-- Location: LABCELL_X75_Y76_N48
\in_adapter|output|ast_sink_data[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[13]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \in_adapter|output|ast_sink_data[13]~feeder_combout\);

-- Location: FF_X75_Y76_N50
\in_adapter|output|ast_sink_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[13]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(13));

-- Location: LABCELL_X75_Y76_N21
\out_adapter|entry2|data_a[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[13]~feeder_combout\ = \in_adapter|output|ast_sink_data\(13)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \in_adapter|output|ALT_INV_ast_sink_data\(13),
	combout => \out_adapter|entry2|data_a[13]~feeder_combout\);

-- Location: FF_X75_Y76_N23
\out_adapter|entry2|data_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[13]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(13));

-- Location: LABCELL_X75_Y76_N42
\in_adapter|output|ast_sink_data[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[14]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(14),
	combout => \in_adapter|output|ast_sink_data[14]~feeder_combout\);

-- Location: FF_X75_Y76_N44
\in_adapter|output|ast_sink_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[14]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(14));

-- Location: LABCELL_X75_Y76_N51
\out_adapter|entry2|data_a[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[14]~feeder_combout\ = \in_adapter|output|ast_sink_data\(14)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_ast_sink_data\(14),
	combout => \out_adapter|entry2|data_a[14]~feeder_combout\);

-- Location: FF_X75_Y76_N53
\out_adapter|entry2|data_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[14]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(14));

-- Location: LABCELL_X75_Y76_N12
\in_adapter|output|ast_sink_data[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[15]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \in_adapter|output|ast_sink_data[15]~feeder_combout\);

-- Location: FF_X75_Y76_N13
\in_adapter|output|ast_sink_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[15]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(15));

-- Location: LABCELL_X75_Y76_N45
\out_adapter|entry2|data_a[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[15]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(15),
	combout => \out_adapter|entry2|data_a[15]~feeder_combout\);

-- Location: FF_X75_Y76_N47
\out_adapter|entry2|data_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[15]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(15));

-- Location: LABCELL_X75_Y76_N30
\in_adapter|output|ast_sink_data[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[16]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16),
	combout => \in_adapter|output|ast_sink_data[16]~feeder_combout\);

-- Location: FF_X75_Y76_N31
\in_adapter|output|ast_sink_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[16]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(16));

-- Location: LABCELL_X75_Y76_N15
\out_adapter|entry2|data_a[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[16]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(16),
	combout => \out_adapter|entry2|data_a[16]~feeder_combout\);

-- Location: FF_X75_Y76_N17
\out_adapter|entry2|data_a[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[16]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(16));

-- Location: LABCELL_X75_Y76_N36
\in_adapter|output|ast_sink_data[17]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[17]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(17) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(17),
	combout => \in_adapter|output|ast_sink_data[17]~feeder_combout\);

-- Location: FF_X75_Y76_N38
\in_adapter|output|ast_sink_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[17]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(17));

-- Location: FF_X75_Y76_N35
\out_adapter|entry2|data_a[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(17),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(17));

-- Location: FF_X75_Y76_N8
\in_adapter|output|ast_sink_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(18),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(18));

-- Location: LABCELL_X75_Y76_N39
\out_adapter|entry2|data_a[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[18]~feeder_combout\ = \in_adapter|output|ast_sink_data\(18)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_ast_sink_data\(18),
	combout => \out_adapter|entry2|data_a[18]~feeder_combout\);

-- Location: FF_X75_Y76_N41
\out_adapter|entry2|data_a[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[18]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(18));

-- Location: FF_X75_Y76_N29
\in_adapter|output|ast_sink_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(19),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(19));

-- Location: FF_X75_Y76_N11
\out_adapter|entry2|data_a[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(19),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(19));

-- Location: M10K_X76_Y76_N0
\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "out_adapt:out_adapter|out_ram:ram2|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \out_adapter|entry2|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \out_adapter|output2|s_rden~q\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y76_N12
\out_adapter|output2|dout[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[10]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	combout => \out_adapter|output2|dout[10]~feeder_combout\);

-- Location: FF_X77_Y76_N13
\out_adapter|output2|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[10]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(10));

-- Location: LABCELL_X77_Y76_N21
\out_adapter|output2|dout[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[11]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \out_adapter|output2|dout[11]~feeder_combout\);

-- Location: FF_X77_Y76_N22
\out_adapter|output2|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[11]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(11));

-- Location: FF_X77_Y76_N37
\out_adapter|output2|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(12),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(12));

-- Location: LABCELL_X77_Y76_N54
\out_adapter|output2|dout[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[13]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \out_adapter|output2|dout[13]~feeder_combout\);

-- Location: FF_X77_Y76_N55
\out_adapter|output2|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[13]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(13));

-- Location: FF_X77_Y76_N28
\out_adapter|output2|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(14),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(14));

-- Location: LABCELL_X77_Y76_N30
\out_adapter|output2|dout[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[15]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \out_adapter|output2|dout[15]~feeder_combout\);

-- Location: FF_X77_Y76_N31
\out_adapter|output2|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[15]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(15));

-- Location: FF_X80_Y80_N29
\out_adapter|output2|dout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(16),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(16));

-- Location: FF_X77_Y76_N52
\out_adapter|output2|dout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(17),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(17));

-- Location: MLABCELL_X72_Y77_N24
\out_adapter|output2|dout[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[18]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(18),
	combout => \out_adapter|output2|dout[18]~feeder_combout\);

-- Location: FF_X72_Y77_N26
\out_adapter|output2|dout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[18]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(18));

-- Location: FF_X72_Y77_N7
\out_adapter|output2|dout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(19),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(19));

-- Location: IOIBUF_X64_Y81_N18
\din[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(20),
	o => \din[20]~input_o\);

-- Location: LABCELL_X70_Y75_N54
\in_adapter|entry|data_a[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[20]~feeder_combout\ = ( \din[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[20]~input_o\,
	combout => \in_adapter|entry|data_a[20]~feeder_combout\);

-- Location: FF_X70_Y75_N56
\in_adapter|entry|data_a[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[20]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(20));

-- Location: IOIBUF_X64_Y81_N1
\din[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(21),
	o => \din[21]~input_o\);

-- Location: FF_X70_Y75_N50
\in_adapter|entry|data_a[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(21));

-- Location: IOIBUF_X52_Y81_N52
\din[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(22),
	o => \din[22]~input_o\);

-- Location: FF_X70_Y75_N11
\in_adapter|entry|data_a[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[22]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(22));

-- Location: IOIBUF_X52_Y81_N18
\din[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(23),
	o => \din[23]~input_o\);

-- Location: LABCELL_X70_Y75_N15
\in_adapter|entry|data_a[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[23]~feeder_combout\ = ( \din[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[23]~input_o\,
	combout => \in_adapter|entry|data_a[23]~feeder_combout\);

-- Location: FF_X70_Y75_N16
\in_adapter|entry|data_a[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[23]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(23));

-- Location: IOIBUF_X64_Y81_N35
\din[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(24),
	o => \din[24]~input_o\);

-- Location: LABCELL_X70_Y75_N24
\in_adapter|entry|data_a[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[24]~feeder_combout\ = ( \din[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[24]~input_o\,
	combout => \in_adapter|entry|data_a[24]~feeder_combout\);

-- Location: FF_X70_Y75_N25
\in_adapter|entry|data_a[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[24]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(24));

-- Location: IOIBUF_X54_Y81_N52
\din[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(25),
	o => \din[25]~input_o\);

-- Location: LABCELL_X70_Y75_N3
\in_adapter|entry|data_a[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[25]~feeder_combout\ = ( \din[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[25]~input_o\,
	combout => \in_adapter|entry|data_a[25]~feeder_combout\);

-- Location: FF_X70_Y75_N4
\in_adapter|entry|data_a[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[25]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(25));

-- Location: IOIBUF_X70_Y81_N18
\din[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(26),
	o => \din[26]~input_o\);

-- Location: LABCELL_X70_Y75_N42
\in_adapter|entry|data_a[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[26]~feeder_combout\ = ( \din[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[26]~input_o\,
	combout => \in_adapter|entry|data_a[26]~feeder_combout\);

-- Location: FF_X70_Y75_N43
\in_adapter|entry|data_a[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[26]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(26));

-- Location: IOIBUF_X70_Y81_N1
\din[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(27),
	o => \din[27]~input_o\);

-- Location: FF_X70_Y75_N37
\in_adapter|entry|data_a[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[27]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(27));

-- Location: IOIBUF_X74_Y81_N58
\din[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(28),
	o => \din[28]~input_o\);

-- Location: FF_X70_Y75_N19
\in_adapter|entry|data_a[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \din[28]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(28));

-- Location: IOIBUF_X70_Y81_N52
\din[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(29),
	o => \din[29]~input_o\);

-- Location: LABCELL_X70_Y75_N33
\in_adapter|entry|data_a[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[29]~feeder_combout\ = ( \din[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[29]~input_o\,
	combout => \in_adapter|entry|data_a[29]~feeder_combout\);

-- Location: FF_X70_Y75_N34
\in_adapter|entry|data_a[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[29]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(29));

-- Location: M10K_X69_Y75_N0
\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_adapt:in_adapter|in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \in_adapter|entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \in_adapter|output|s_rden~combout\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portbdatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\,
	portaaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\,
	portbdataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: FF_X75_Y77_N53
\in_adapter|output|ast_sink_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(20),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(20));

-- Location: FF_X75_Y77_N50
\out_adapter|entry2|data_a[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(20),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(20));

-- Location: FF_X75_Y77_N47
\in_adapter|output|ast_sink_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(21),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(21));

-- Location: FF_X75_Y77_N44
\out_adapter|entry2|data_a[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(21),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(21));

-- Location: LABCELL_X70_Y77_N0
\in_adapter|output|ast_sink_data[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[22]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(22),
	combout => \in_adapter|output|ast_sink_data[22]~feeder_combout\);

-- Location: FF_X70_Y77_N1
\in_adapter|output|ast_sink_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[22]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(22));

-- Location: LABCELL_X75_Y77_N24
\out_adapter|entry2|data_a[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[22]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(22),
	combout => \out_adapter|entry2|data_a[22]~feeder_combout\);

-- Location: FF_X75_Y77_N26
\out_adapter|entry2|data_a[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[22]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(22));

-- Location: LABCELL_X74_Y77_N24
\in_adapter|output|ast_sink_data[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[23]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(23),
	combout => \in_adapter|output|ast_sink_data[23]~feeder_combout\);

-- Location: FF_X74_Y77_N25
\in_adapter|output|ast_sink_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[23]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(23));

-- Location: LABCELL_X75_Y77_N6
\out_adapter|entry2|data_a[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[23]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(23),
	combout => \out_adapter|entry2|data_a[23]~feeder_combout\);

-- Location: FF_X75_Y77_N8
\out_adapter|entry2|data_a[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[23]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(23));

-- Location: FF_X75_Y77_N17
\in_adapter|output|ast_sink_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(24),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(24));

-- Location: FF_X75_Y77_N14
\out_adapter|entry2|data_a[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(24),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(24));

-- Location: LABCELL_X75_Y77_N9
\in_adapter|output|ast_sink_data[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[25]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(25),
	combout => \in_adapter|output|ast_sink_data[25]~feeder_combout\);

-- Location: FF_X75_Y77_N10
\in_adapter|output|ast_sink_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[25]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(25));

-- Location: FF_X75_Y77_N59
\out_adapter|entry2|data_a[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(25),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(25));

-- Location: LABCELL_X75_Y77_N3
\in_adapter|output|ast_sink_data[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[26]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(26),
	combout => \in_adapter|output|ast_sink_data[26]~feeder_combout\);

-- Location: FF_X75_Y77_N5
\in_adapter|output|ast_sink_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[26]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(26));

-- Location: FF_X75_Y77_N2
\out_adapter|entry2|data_a[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(26),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(26));

-- Location: LABCELL_X75_Y77_N21
\in_adapter|output|ast_sink_data[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[27]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(27),
	combout => \in_adapter|output|ast_sink_data[27]~feeder_combout\);

-- Location: FF_X75_Y77_N22
\in_adapter|output|ast_sink_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[27]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(27));

-- Location: LABCELL_X75_Y77_N18
\out_adapter|entry2|data_a[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[27]~feeder_combout\ = ( \in_adapter|output|ast_sink_data\(27) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|output|ALT_INV_ast_sink_data\(27),
	combout => \out_adapter|entry2|data_a[27]~feeder_combout\);

-- Location: FF_X75_Y77_N20
\out_adapter|entry2|data_a[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[27]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(27));

-- Location: LABCELL_X75_Y77_N39
\in_adapter|output|ast_sink_data[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[28]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(28),
	combout => \in_adapter|output|ast_sink_data[28]~feeder_combout\);

-- Location: FF_X75_Y77_N41
\in_adapter|output|ast_sink_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[28]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(28));

-- Location: LABCELL_X75_Y77_N36
\out_adapter|entry2|data_a[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[28]~feeder_combout\ = \in_adapter|output|ast_sink_data\(28)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \in_adapter|output|ALT_INV_ast_sink_data\(28),
	combout => \out_adapter|entry2|data_a[28]~feeder_combout\);

-- Location: FF_X75_Y77_N38
\out_adapter|entry2|data_a[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[28]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(28));

-- Location: LABCELL_X75_Y77_N33
\in_adapter|output|ast_sink_data[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[29]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(29) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(29),
	combout => \in_adapter|output|ast_sink_data[29]~feeder_combout\);

-- Location: FF_X75_Y77_N35
\in_adapter|output|ast_sink_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[29]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(29));

-- Location: LABCELL_X75_Y77_N30
\out_adapter|entry2|data_a[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|entry2|data_a[29]~feeder_combout\ = \in_adapter|output|ast_sink_data\(29)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \in_adapter|output|ALT_INV_ast_sink_data\(29),
	combout => \out_adapter|entry2|data_a[29]~feeder_combout\);

-- Location: FF_X75_Y77_N32
\out_adapter|entry2|data_a[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \out_adapter|entry2|data_a[29]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(29));

-- Location: M10K_X76_Y77_N0
\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "out_adapt:out_adapter|out_ram:ram2|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \out_adapter|entry2|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \out_adapter|output2|s_rden~q\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portbdatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\,
	portaaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\,
	portbdataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: FF_X78_Y77_N35
\out_adapter|output2|dout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(20),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(20));

-- Location: FF_X72_Y77_N40
\out_adapter|output2|dout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(21),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(21));

-- Location: FF_X77_Y77_N46
\out_adapter|output2|dout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(22),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(22));

-- Location: LABCELL_X77_Y77_N39
\out_adapter|output2|dout[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[23]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(23),
	combout => \out_adapter|output2|dout[23]~feeder_combout\);

-- Location: FF_X77_Y77_N41
\out_adapter|output2|dout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[23]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(23));

-- Location: LABCELL_X80_Y80_N30
\out_adapter|output2|dout[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[24]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(24),
	combout => \out_adapter|output2|dout[24]~feeder_combout\);

-- Location: FF_X80_Y80_N31
\out_adapter|output2|dout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[24]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(24));

-- Location: FF_X79_Y79_N37
\out_adapter|output2|dout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(25),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(25));

-- Location: LABCELL_X71_Y77_N48
\out_adapter|output2|dout[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[26]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(26),
	combout => \out_adapter|output2|dout[26]~feeder_combout\);

-- Location: FF_X71_Y77_N49
\out_adapter|output2|dout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[26]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(26));

-- Location: FF_X77_Y77_N59
\out_adapter|output2|dout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(27),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(27));

-- Location: FF_X72_Y77_N43
\out_adapter|output2|dout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(28),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(28));

-- Location: FF_X77_Y79_N38
\out_adapter|output2|dout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(29),
	sload => VCC,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(29));

-- Location: IOIBUF_X60_Y81_N18
\din[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(30),
	o => \din[30]~input_o\);

-- Location: LABCELL_X68_Y74_N6
\in_adapter|entry|data_a[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[30]~feeder_combout\ = ( \din[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[30]~input_o\,
	combout => \in_adapter|entry|data_a[30]~feeder_combout\);

-- Location: FF_X68_Y74_N7
\in_adapter|entry|data_a[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[30]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(30));

-- Location: IOIBUF_X58_Y81_N41
\din[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(31),
	o => \din[31]~input_o\);

-- Location: LABCELL_X68_Y74_N15
\in_adapter|entry|data_a[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|entry|data_a[31]~feeder_combout\ = ( \din[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[31]~input_o\,
	combout => \in_adapter|entry|data_a[31]~feeder_combout\);

-- Location: FF_X68_Y74_N16
\in_adapter|entry|data_a[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \in_adapter|entry|data_a[31]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \in_adapter|entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|entry|data_a\(31));

-- Location: M10K_X69_Y74_N0
\in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_adapt:in_adapter|in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \in_adapter|entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \in_adapter|output|s_rden~combout\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portbdatain => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\,
	portaaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\,
	portbdataout => \in_adapter|ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: FF_X75_Y75_N17
\in_adapter|output|ast_sink_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|ram|altsyncram_component|auto_generated|q_b\(30),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(30));

-- Location: FF_X75_Y75_N26
\out_adapter|entry2|data_a[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(30),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(30));

-- Location: LABCELL_X75_Y75_N42
\in_adapter|output|ast_sink_data[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \in_adapter|output|ast_sink_data[31]~feeder_combout\ = ( \in_adapter|ram|altsyncram_component|auto_generated|q_b\(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \in_adapter|ram|altsyncram_component|auto_generated|ALT_INV_q_b\(31),
	combout => \in_adapter|output|ast_sink_data[31]~feeder_combout\);

-- Location: FF_X75_Y75_N44
\in_adapter|output|ast_sink_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \in_adapter|output|ast_sink_data[31]~feeder_combout\,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \in_adapter|output|ast_sink_data\(31));

-- Location: FF_X75_Y75_N56
\out_adapter|entry2|data_a[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \in_adapter|output|ast_sink_data\(31),
	sload => VCC,
	ena => \out_adapter|entry2|data_a[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|entry2|data_a\(31));

-- Location: M10K_X76_Y75_N0
\out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "out_adapt:out_adapter|out_ram:ram2|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \out_adapter|entry2|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \out_adapter|output2|s_rden~q\,
	clk0 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	clk1 => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portbdatain => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\,
	portaaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\,
	portbdataout => \out_adapter|ram2|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: LABCELL_X77_Y75_N39
\out_adapter|output2|dout[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[30]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(30),
	combout => \out_adapter|output2|dout[30]~feeder_combout\);

-- Location: FF_X77_Y75_N40
\out_adapter|output2|dout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[30]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(30));

-- Location: LABCELL_X77_Y75_N30
\out_adapter|output2|dout[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_adapter|output2|dout[31]~feeder_combout\ = ( \out_adapter|ram2|altsyncram_component|auto_generated|q_b\(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \out_adapter|ram2|altsyncram_component|auto_generated|ALT_INV_q_b\(31),
	combout => \out_adapter|output2|dout[31]~feeder_combout\);

-- Location: FF_X77_Y75_N31
\out_adapter|output2|dout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock|pll_a_b_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \out_adapter|output2|dout[31]~feeder_combout\,
	ena => \out_adapter|output2|dout[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out_adapter|output2|dout\(31));

-- Location: LABCELL_X74_Y30_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


