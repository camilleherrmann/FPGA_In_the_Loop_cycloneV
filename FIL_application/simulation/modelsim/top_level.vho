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

-- DATE "12/16/2022 15:26:05"

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

ENTITY 	in_adapt IS
    PORT (
	clk_a : IN std_logic;
	clk_b : IN std_logic;
	enb : IN std_logic;
	reset : IN std_logic;
	din : IN std_logic_vector(31 DOWNTO 0);
	ast_source_ready : IN std_logic;
	ast_source_valid : BUFFER std_logic;
	ast_source_sop : BUFFER std_logic;
	ast_source_eop : BUFFER std_logic;
	ast_source_data : BUFFER std_logic_vector(31 DOWNTO 0);
	ast_source_channel : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END in_adapt;

-- Design Ports Information
-- ast_source_valid	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_sop	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_eop	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[3]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[7]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[8]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[10]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[11]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[13]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[14]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[16]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[18]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[19]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[20]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[21]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[22]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[23]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[24]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[25]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[26]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[27]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[28]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[30]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_data[31]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[2]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[5]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enb	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_b	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_ready	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_a	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[16]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[17]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[18]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[19]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[20]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[21]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[23]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[24]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[25]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[26]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[27]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[28]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[30]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[31]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF in_adapt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_a : std_logic;
SIGNAL ww_clk_b : std_logic;
SIGNAL ww_enb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_source_ready : std_logic;
SIGNAL ww_ast_source_valid : std_logic;
SIGNAL ww_ast_source_sop : std_logic;
SIGNAL ww_ast_source_eop : std_logic;
SIGNAL ww_ast_source_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_source_channel : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_b~input_o\ : std_logic;
SIGNAL \clk_b~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enb~input_o\ : std_logic;
SIGNAL \output|s_rden~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \output|s_rden~q\ : std_logic;
SIGNAL \output|addr[0]~1_combout\ : std_logic;
SIGNAL \ast_source_ready~input_o\ : std_logic;
SIGNAL \clk_a~input_o\ : std_logic;
SIGNAL \clk_a~inputCLKENA0_outclk\ : std_logic;
SIGNAL \entry|curr_head[0]~0_combout\ : std_logic;
SIGNAL \entry|u_data_addr~0_combout\ : std_logic;
SIGNAL \entry|Add0~1_sumout\ : std_logic;
SIGNAL \entry|Add0~2\ : std_logic;
SIGNAL \entry|Add0~5_sumout\ : std_logic;
SIGNAL \entry|Add0~6\ : std_logic;
SIGNAL \entry|Add0~9_sumout\ : std_logic;
SIGNAL \entry|Add0~10\ : std_logic;
SIGNAL \entry|Add0~13_sumout\ : std_logic;
SIGNAL \entry|addr[4]~feeder_combout\ : std_logic;
SIGNAL \entry|addr[1]~feeder_combout\ : std_logic;
SIGNAL \entry|addr[3]~feeder_combout\ : std_logic;
SIGNAL \entry|Equal1~1_combout\ : std_logic;
SIGNAL \entry|Add0~14\ : std_logic;
SIGNAL \entry|Add0~17_sumout\ : std_logic;
SIGNAL \entry|Add0~18\ : std_logic;
SIGNAL \entry|Add0~21_sumout\ : std_logic;
SIGNAL \entry|Add0~22\ : std_logic;
SIGNAL \entry|Add0~25_sumout\ : std_logic;
SIGNAL \entry|Add0~26\ : std_logic;
SIGNAL \entry|Add0~29_sumout\ : std_logic;
SIGNAL \entry|Add0~30\ : std_logic;
SIGNAL \entry|Add0~33_sumout\ : std_logic;
SIGNAL \entry|addr[9]~feeder_combout\ : std_logic;
SIGNAL \entry|addr[6]~feeder_combout\ : std_logic;
SIGNAL \entry|s_wren~0_combout\ : std_logic;
SIGNAL \entry|s_wren~1_combout\ : std_logic;
SIGNAL \entry|Equal1~0_combout\ : std_logic;
SIGNAL \entry|s_wren~2_combout\ : std_logic;
SIGNAL \entry|s_wren~q\ : std_logic;
SIGNAL \din[30]~input_o\ : std_logic;
SIGNAL \entry|s_data[30]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \output|Add0~33_sumout\ : std_logic;
SIGNAL \output|Add0~6\ : std_logic;
SIGNAL \output|Add0~1_sumout\ : std_logic;
SIGNAL \output|Add0~2\ : std_logic;
SIGNAL \output|Add0~17_sumout\ : std_logic;
SIGNAL \output|Add0~18\ : std_logic;
SIGNAL \output|Add0~13_sumout\ : std_logic;
SIGNAL \output|Add0~14\ : std_logic;
SIGNAL \output|Add0~9_sumout\ : std_logic;
SIGNAL \din[31]~input_o\ : std_logic;
SIGNAL \output|Equal2~0_combout\ : std_logic;
SIGNAL \output|Equal2~2_combout\ : std_logic;
SIGNAL \output|Equal2~1_combout\ : std_logic;
SIGNAL \output|state~0_combout\ : std_logic;
SIGNAL \output|state~q\ : std_logic;
SIGNAL \output|addr[9]~0_combout\ : std_logic;
SIGNAL \output|Add0~34\ : std_logic;
SIGNAL \output|Add0~29_sumout\ : std_logic;
SIGNAL \output|Add0~30\ : std_logic;
SIGNAL \output|Add0~25_sumout\ : std_logic;
SIGNAL \output|Add0~26\ : std_logic;
SIGNAL \output|Add0~21_sumout\ : std_logic;
SIGNAL \output|Add0~22\ : std_logic;
SIGNAL \output|Add0~5_sumout\ : std_logic;
SIGNAL \output|u_ast_pck~1_combout\ : std_logic;
SIGNAL \output|u_ast_pck~0_combout\ : std_logic;
SIGNAL \output|u_ast_pck~2_combout\ : std_logic;
SIGNAL \output|s_sop~q\ : std_logic;
SIGNAL \output|u_ast_pck~3_combout\ : std_logic;
SIGNAL \output|u_ast_pck~4_combout\ : std_logic;
SIGNAL \output|u_ast_pck~5_combout\ : std_logic;
SIGNAL \output|s_eop~q\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \entry|s_data[0]~feeder_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \entry|s_data[1]~feeder_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \entry|s_data[4]~feeder_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \entry|s_data[6]~feeder_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \entry|s_data[8]~feeder_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \entry|s_data[9]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[0]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[0]~0_combout\ : std_logic;
SIGNAL \output|ast_source_data[1]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[3]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[5]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[6]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[7]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[8]~feeder_combout\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \entry|s_data[10]~feeder_combout\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \entry|s_data[12]~feeder_combout\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \entry|s_data[13]~feeder_combout\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \entry|s_data[14]~feeder_combout\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \din[16]~input_o\ : std_logic;
SIGNAL \entry|s_data[16]~feeder_combout\ : std_logic;
SIGNAL \din[17]~input_o\ : std_logic;
SIGNAL \din[18]~input_o\ : std_logic;
SIGNAL \entry|s_data[18]~feeder_combout\ : std_logic;
SIGNAL \din[19]~input_o\ : std_logic;
SIGNAL \output|ast_source_data[10]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[11]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[13]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[15]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[16]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[18]~feeder_combout\ : std_logic;
SIGNAL \din[20]~input_o\ : std_logic;
SIGNAL \din[21]~input_o\ : std_logic;
SIGNAL \din[22]~input_o\ : std_logic;
SIGNAL \din[23]~input_o\ : std_logic;
SIGNAL \din[24]~input_o\ : std_logic;
SIGNAL \din[25]~input_o\ : std_logic;
SIGNAL \entry|s_data[25]~feeder_combout\ : std_logic;
SIGNAL \din[26]~input_o\ : std_logic;
SIGNAL \entry|s_data[26]~feeder_combout\ : std_logic;
SIGNAL \din[27]~input_o\ : std_logic;
SIGNAL \entry|s_data[27]~feeder_combout\ : std_logic;
SIGNAL \din[28]~input_o\ : std_logic;
SIGNAL \din[29]~input_o\ : std_logic;
SIGNAL \output|ast_source_data[20]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[21]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[23]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[25]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[26]~feeder_combout\ : std_logic;
SIGNAL \output|ast_source_data[28]~feeder_combout\ : std_logic;
SIGNAL \output|s_channel[0]~0_combout\ : std_logic;
SIGNAL \output|s_channel[1]~1_combout\ : std_logic;
SIGNAL \output|s_channel[1]~DUPLICATE_q\ : std_logic;
SIGNAL \output|s_channel[0]~DUPLICATE_q\ : std_logic;
SIGNAL \output|s_channel[1]~2_combout\ : std_logic;
SIGNAL \output|s_channel[2]~3_combout\ : std_logic;
SIGNAL \output|s_channel[2]~DUPLICATE_q\ : std_logic;
SIGNAL \output|s_channel[3]~4_combout\ : std_logic;
SIGNAL \output|s_channel[3]~DUPLICATE_q\ : std_logic;
SIGNAL \output|s_channel[4]~5_combout\ : std_logic;
SIGNAL \output|s_channel[4]~DUPLICATE_q\ : std_logic;
SIGNAL \output|s_channel[5]~6_combout\ : std_logic;
SIGNAL \output|s_channel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \output|ast_source_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \output|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|s_data\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \entry|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|curr_head\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \output|ALT_INV_s_channel[4]~DUPLICATE_q\ : std_logic;
SIGNAL \output|ALT_INV_s_channel[3]~DUPLICATE_q\ : std_logic;
SIGNAL \output|ALT_INV_s_channel[2]~DUPLICATE_q\ : std_logic;
SIGNAL \output|ALT_INV_s_channel[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_din[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_ready~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enb~input_o\ : std_logic;
SIGNAL \entry|ALT_INV_curr_head\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \entry|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \entry|ALT_INV_s_wren~1_combout\ : std_logic;
SIGNAL \entry|ALT_INV_s_wren~0_combout\ : std_logic;
SIGNAL \entry|ALT_INV_addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|ALT_INV_s_wren~q\ : std_logic;
SIGNAL \output|ALT_INV_s_channel[1]~2_combout\ : std_logic;
SIGNAL \output|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \output|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \output|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \output|ALT_INV_state~q\ : std_logic;
SIGNAL \output|ALT_INV_u_ast_pck~4_combout\ : std_logic;
SIGNAL \output|ALT_INV_u_ast_pck~3_combout\ : std_logic;
SIGNAL \output|ALT_INV_u_ast_pck~1_combout\ : std_logic;
SIGNAL \output|ALT_INV_addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \output|ALT_INV_u_ast_pck~0_combout\ : std_logic;
SIGNAL \output|ALT_INV_s_channel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \output|ALT_INV_s_rden~q\ : std_logic;

BEGIN

ww_clk_a <= clk_a;
ww_clk_b <= clk_b;
ww_enb <= enb;
ww_reset <= reset;
ww_din <= din;
ww_ast_source_ready <= ast_source_ready;
ast_source_valid <= ww_ast_source_valid;
ast_source_sop <= ww_ast_source_sop;
ast_source_eop <= ww_ast_source_eop;
ast_source_data <= ww_ast_source_data;
ast_source_channel <= ww_ast_source_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\entry|s_data\(9) & \entry|s_data\(8) & \entry|s_data\(7) & \entry|s_data\(6) & \entry|s_data\(5) & \entry|s_data\(4) & \entry|s_data\(3) & \entry|s_data\(2) & 
\entry|s_data\(1) & \entry|s_data\(0));

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(8) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(9) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(8) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(9) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ <= (\entry|s_data\(19) & \entry|s_data\(18) & \entry|s_data\(17) & \entry|s_data\(16) & \entry|s_data\(15) & \entry|s_data\(14) & \entry|s_data\(13) & \entry|s_data\(12) & 
\entry|s_data\(11) & \entry|s_data\(10));

\ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(10) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(11) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(12) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(13) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(14) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(15) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(16) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(17) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(18) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(19) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(10) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(11) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(12) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(13) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(14) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(15) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(16) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(17) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(18) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(19) <= \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ <= (\entry|s_data\(29) & \entry|s_data\(28) & \entry|s_data\(27) & \entry|s_data\(26) & \entry|s_data\(25) & \entry|s_data\(24) & \entry|s_data\(23) & \entry|s_data\(22) & 
\entry|s_data\(21) & \entry|s_data\(20));

\ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(20) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(21) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(22) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(23) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(24) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(25) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(26) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(27) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(28) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(29) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(20) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(21) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(22) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(23) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(24) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(25) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(26) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(27) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(28) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(29) <= \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ <= (\entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & \entry|addr\(0) & \entry|s_data\(31)
& \entry|s_data\(30));

\ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(30) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(31) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(32) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(33) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(34) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(35) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(36) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(37) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(38) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(39) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(30) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(31) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(32) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(33) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(34) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(35) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(36) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(37) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(38) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(39) <= \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(9);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(20) <= NOT \ram|altsyncram_component|auto_generated|q_b\(20);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \ram|altsyncram_component|auto_generated|q_b\(11);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \ram|altsyncram_component|auto_generated|q_b\(13);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(15) <= NOT \ram|altsyncram_component|auto_generated|q_b\(15);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16) <= NOT \ram|altsyncram_component|auto_generated|q_b\(16);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(18) <= NOT \ram|altsyncram_component|auto_generated|q_b\(18);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \ram|altsyncram_component|auto_generated|q_b\(10);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \ram|altsyncram_component|auto_generated|q_b\(1);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \ram|altsyncram_component|auto_generated|q_b\(3);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(5) <= NOT \ram|altsyncram_component|auto_generated|q_b\(5);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \ram|altsyncram_component|auto_generated|q_b\(6);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \ram|altsyncram_component|auto_generated|q_b\(7);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(8) <= NOT \ram|altsyncram_component|auto_generated|q_b\(8);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(0) <= NOT \ram|altsyncram_component|auto_generated|q_b\(0);
\output|ALT_INV_s_channel[4]~DUPLICATE_q\ <= NOT \output|s_channel[4]~DUPLICATE_q\;
\output|ALT_INV_s_channel[3]~DUPLICATE_q\ <= NOT \output|s_channel[3]~DUPLICATE_q\;
\output|ALT_INV_s_channel[2]~DUPLICATE_q\ <= NOT \output|s_channel[2]~DUPLICATE_q\;
\output|ALT_INV_s_channel[0]~DUPLICATE_q\ <= NOT \output|s_channel[0]~DUPLICATE_q\;
\ALT_INV_din[30]~input_o\ <= NOT \din[30]~input_o\;
\ALT_INV_din[27]~input_o\ <= NOT \din[27]~input_o\;
\ALT_INV_din[26]~input_o\ <= NOT \din[26]~input_o\;
\ALT_INV_din[25]~input_o\ <= NOT \din[25]~input_o\;
\ALT_INV_din[18]~input_o\ <= NOT \din[18]~input_o\;
\ALT_INV_din[16]~input_o\ <= NOT \din[16]~input_o\;
\ALT_INV_din[14]~input_o\ <= NOT \din[14]~input_o\;
\ALT_INV_din[13]~input_o\ <= NOT \din[13]~input_o\;
\ALT_INV_din[12]~input_o\ <= NOT \din[12]~input_o\;
\ALT_INV_din[10]~input_o\ <= NOT \din[10]~input_o\;
\ALT_INV_din[9]~input_o\ <= NOT \din[9]~input_o\;
\ALT_INV_din[8]~input_o\ <= NOT \din[8]~input_o\;
\ALT_INV_din[6]~input_o\ <= NOT \din[6]~input_o\;
\ALT_INV_din[4]~input_o\ <= NOT \din[4]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_din[0]~input_o\ <= NOT \din[0]~input_o\;
\ALT_INV_ast_source_ready~input_o\ <= NOT \ast_source_ready~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enb~input_o\ <= NOT \enb~input_o\;
\entry|ALT_INV_curr_head\(9) <= NOT \entry|curr_head\(9);
\entry|ALT_INV_curr_head\(8) <= NOT \entry|curr_head\(8);
\entry|ALT_INV_curr_head\(7) <= NOT \entry|curr_head\(7);
\entry|ALT_INV_curr_head\(6) <= NOT \entry|curr_head\(6);
\entry|ALT_INV_curr_head\(5) <= NOT \entry|curr_head\(5);
\entry|ALT_INV_curr_head\(4) <= NOT \entry|curr_head\(4);
\entry|ALT_INV_curr_head\(3) <= NOT \entry|curr_head\(3);
\entry|ALT_INV_curr_head\(2) <= NOT \entry|curr_head\(2);
\entry|ALT_INV_curr_head\(1) <= NOT \entry|curr_head\(1);
\entry|ALT_INV_curr_head\(0) <= NOT \entry|curr_head\(0);
\entry|ALT_INV_Equal1~1_combout\ <= NOT \entry|Equal1~1_combout\;
\entry|ALT_INV_Equal1~0_combout\ <= NOT \entry|Equal1~0_combout\;
\entry|ALT_INV_s_wren~1_combout\ <= NOT \entry|s_wren~1_combout\;
\entry|ALT_INV_s_wren~0_combout\ <= NOT \entry|s_wren~0_combout\;
\entry|ALT_INV_addr\(9) <= NOT \entry|addr\(9);
\entry|ALT_INV_addr\(8) <= NOT \entry|addr\(8);
\entry|ALT_INV_addr\(7) <= NOT \entry|addr\(7);
\entry|ALT_INV_addr\(6) <= NOT \entry|addr\(6);
\entry|ALT_INV_addr\(5) <= NOT \entry|addr\(5);
\entry|ALT_INV_addr\(4) <= NOT \entry|addr\(4);
\entry|ALT_INV_addr\(3) <= NOT \entry|addr\(3);
\entry|ALT_INV_addr\(2) <= NOT \entry|addr\(2);
\entry|ALT_INV_addr\(1) <= NOT \entry|addr\(1);
\entry|ALT_INV_addr\(0) <= NOT \entry|addr\(0);
\entry|ALT_INV_s_wren~q\ <= NOT \entry|s_wren~q\;
\output|ALT_INV_s_channel[1]~2_combout\ <= NOT \output|s_channel[1]~2_combout\;
\output|ALT_INV_Equal2~2_combout\ <= NOT \output|Equal2~2_combout\;
\output|ALT_INV_Equal2~1_combout\ <= NOT \output|Equal2~1_combout\;
\output|ALT_INV_Equal2~0_combout\ <= NOT \output|Equal2~0_combout\;
\output|ALT_INV_state~q\ <= NOT \output|state~q\;
\output|ALT_INV_u_ast_pck~4_combout\ <= NOT \output|u_ast_pck~4_combout\;
\output|ALT_INV_u_ast_pck~3_combout\ <= NOT \output|u_ast_pck~3_combout\;
\output|ALT_INV_u_ast_pck~1_combout\ <= NOT \output|u_ast_pck~1_combout\;
\output|ALT_INV_addr\(1) <= NOT \output|addr\(1);
\output|ALT_INV_addr\(2) <= NOT \output|addr\(2);
\output|ALT_INV_addr\(3) <= NOT \output|addr\(3);
\output|ALT_INV_addr\(4) <= NOT \output|addr\(4);
\output|ALT_INV_u_ast_pck~0_combout\ <= NOT \output|u_ast_pck~0_combout\;
\output|ALT_INV_addr\(7) <= NOT \output|addr\(7);
\output|ALT_INV_addr\(8) <= NOT \output|addr\(8);
\output|ALT_INV_addr\(9) <= NOT \output|addr\(9);
\output|ALT_INV_addr\(0) <= NOT \output|addr\(0);
\output|ALT_INV_addr\(5) <= NOT \output|addr\(5);
\output|ALT_INV_addr\(6) <= NOT \output|addr\(6);
\output|ALT_INV_s_channel\(5) <= NOT \output|s_channel\(5);
\output|ALT_INV_s_channel\(4) <= NOT \output|s_channel\(4);
\output|ALT_INV_s_channel\(3) <= NOT \output|s_channel\(3);
\output|ALT_INV_s_channel\(2) <= NOT \output|s_channel\(2);
\output|ALT_INV_s_channel\(1) <= NOT \output|s_channel\(1);
\output|ALT_INV_s_channel\(0) <= NOT \output|s_channel\(0);
\output|ALT_INV_s_rden~q\ <= NOT \output|s_rden~q\;
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(32) <= NOT \ram|altsyncram_component|auto_generated|q_b\(32);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(33) <= NOT \ram|altsyncram_component|auto_generated|q_b\(33);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(34) <= NOT \ram|altsyncram_component|auto_generated|q_b\(34);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(35) <= NOT \ram|altsyncram_component|auto_generated|q_b\(35);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(36) <= NOT \ram|altsyncram_component|auto_generated|q_b\(36);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(37) <= NOT \ram|altsyncram_component|auto_generated|q_b\(37);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(38) <= NOT \ram|altsyncram_component|auto_generated|q_b\(38);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(39) <= NOT \ram|altsyncram_component|auto_generated|q_b\(39);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(21) <= NOT \ram|altsyncram_component|auto_generated|q_b\(21);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(23) <= NOT \ram|altsyncram_component|auto_generated|q_b\(23);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(25) <= NOT \ram|altsyncram_component|auto_generated|q_b\(25);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(26) <= NOT \ram|altsyncram_component|auto_generated|q_b\(26);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(28) <= NOT \ram|altsyncram_component|auto_generated|q_b\(28);

-- Location: IOOBUF_X26_Y0_N93
\ast_source_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_rden~q\,
	devoe => ww_devoe,
	o => ww_ast_source_valid);

-- Location: IOOBUF_X40_Y0_N2
\ast_source_sop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_sop~q\,
	devoe => ww_devoe,
	o => ww_ast_source_sop);

-- Location: IOOBUF_X34_Y0_N42
\ast_source_eop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_eop~q\,
	devoe => ww_devoe,
	o => ww_ast_source_eop);

-- Location: IOOBUF_X36_Y0_N53
\ast_source_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(0),
	devoe => ww_devoe,
	o => ww_ast_source_data(0));

-- Location: IOOBUF_X58_Y0_N42
\ast_source_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(1),
	devoe => ww_devoe,
	o => ww_ast_source_data(1));

-- Location: IOOBUF_X36_Y0_N2
\ast_source_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(2),
	devoe => ww_devoe,
	o => ww_ast_source_data(2));

-- Location: IOOBUF_X38_Y0_N2
\ast_source_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(3),
	devoe => ww_devoe,
	o => ww_ast_source_data(3));

-- Location: IOOBUF_X38_Y0_N53
\ast_source_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(4),
	devoe => ww_devoe,
	o => ww_ast_source_data(4));

-- Location: IOOBUF_X34_Y0_N59
\ast_source_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(5),
	devoe => ww_devoe,
	o => ww_ast_source_data(5));

-- Location: IOOBUF_X38_Y0_N36
\ast_source_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(6),
	devoe => ww_devoe,
	o => ww_ast_source_data(6));

-- Location: IOOBUF_X36_Y0_N36
\ast_source_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(7),
	devoe => ww_devoe,
	o => ww_ast_source_data(7));

-- Location: IOOBUF_X50_Y0_N42
\ast_source_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(8),
	devoe => ww_devoe,
	o => ww_ast_source_data(8));

-- Location: IOOBUF_X38_Y0_N19
\ast_source_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(9),
	devoe => ww_devoe,
	o => ww_ast_source_data(9));

-- Location: IOOBUF_X32_Y0_N2
\ast_source_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(10),
	devoe => ww_devoe,
	o => ww_ast_source_data(10));

-- Location: IOOBUF_X30_Y0_N36
\ast_source_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(11),
	devoe => ww_devoe,
	o => ww_ast_source_data(11));

-- Location: IOOBUF_X32_Y0_N19
\ast_source_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(12),
	devoe => ww_devoe,
	o => ww_ast_source_data(12));

-- Location: IOOBUF_X34_Y0_N93
\ast_source_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(13),
	devoe => ww_devoe,
	o => ww_ast_source_data(13));

-- Location: IOOBUF_X36_Y0_N19
\ast_source_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(14),
	devoe => ww_devoe,
	o => ww_ast_source_data(14));

-- Location: IOOBUF_X32_Y0_N36
\ast_source_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(15),
	devoe => ww_devoe,
	o => ww_ast_source_data(15));

-- Location: IOOBUF_X30_Y0_N2
\ast_source_data[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(16),
	devoe => ww_devoe,
	o => ww_ast_source_data(16));

-- Location: IOOBUF_X30_Y0_N53
\ast_source_data[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(17),
	devoe => ww_devoe,
	o => ww_ast_source_data(17));

-- Location: IOOBUF_X32_Y0_N53
\ast_source_data[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(18),
	devoe => ww_devoe,
	o => ww_ast_source_data(18));

-- Location: IOOBUF_X34_Y0_N76
\ast_source_data[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(19),
	devoe => ww_devoe,
	o => ww_ast_source_data(19));

-- Location: IOOBUF_X58_Y0_N59
\ast_source_data[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(20),
	devoe => ww_devoe,
	o => ww_ast_source_data(20));

-- Location: IOOBUF_X62_Y0_N53
\ast_source_data[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(21),
	devoe => ww_devoe,
	o => ww_ast_source_data(21));

-- Location: IOOBUF_X40_Y0_N36
\ast_source_data[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(22),
	devoe => ww_devoe,
	o => ww_ast_source_data(22));

-- Location: IOOBUF_X50_Y0_N59
\ast_source_data[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(23),
	devoe => ww_devoe,
	o => ww_ast_source_data(23));

-- Location: IOOBUF_X56_Y0_N2
\ast_source_data[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(24),
	devoe => ww_devoe,
	o => ww_ast_source_data(24));

-- Location: IOOBUF_X50_Y0_N76
\ast_source_data[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(25),
	devoe => ww_devoe,
	o => ww_ast_source_data(25));

-- Location: IOOBUF_X62_Y0_N2
\ast_source_data[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(26),
	devoe => ww_devoe,
	o => ww_ast_source_data(26));

-- Location: IOOBUF_X40_Y0_N19
\ast_source_data[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(27),
	devoe => ww_devoe,
	o => ww_ast_source_data(27));

-- Location: IOOBUF_X52_Y0_N19
\ast_source_data[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(28),
	devoe => ww_devoe,
	o => ww_ast_source_data(28));

-- Location: IOOBUF_X50_Y0_N93
\ast_source_data[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(29),
	devoe => ww_devoe,
	o => ww_ast_source_data(29));

-- Location: IOOBUF_X52_Y0_N2
\ast_source_data[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(30),
	devoe => ww_devoe,
	o => ww_ast_source_data(30));

-- Location: IOOBUF_X60_Y0_N36
\ast_source_data[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_source_data\(31),
	devoe => ww_devoe,
	o => ww_ast_source_data(31));

-- Location: IOOBUF_X62_Y0_N36
\ast_source_channel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(0),
	devoe => ww_devoe,
	o => ww_ast_source_channel(0));

-- Location: IOOBUF_X52_Y0_N36
\ast_source_channel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ast_source_channel(1));

-- Location: IOOBUF_X60_Y0_N53
\ast_source_channel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ast_source_channel(2));

-- Location: IOOBUF_X64_Y0_N19
\ast_source_channel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(3),
	devoe => ww_devoe,
	o => ww_ast_source_channel(3));

-- Location: IOOBUF_X60_Y0_N19
\ast_source_channel[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(4),
	devoe => ww_devoe,
	o => ww_ast_source_channel(4));

-- Location: IOOBUF_X58_Y0_N76
\ast_source_channel[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(5),
	devoe => ww_devoe,
	o => ww_ast_source_channel(5));

-- Location: IOIBUF_X89_Y35_N44
\clk_b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_b,
	o => \clk_b~input_o\);

-- Location: CLKCTRL_G8
\clk_b~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_b~input_o\,
	outclk => \clk_b~inputCLKENA0_outclk\);

-- Location: IOIBUF_X58_Y0_N92
\enb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enb,
	o => \enb~input_o\);

-- Location: MLABCELL_X25_Y3_N54
\output|s_rden~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_rden~0_combout\ = ( \enb~input_o\ ) # ( !\enb~input_o\ & ( \output|s_rden~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_s_rden~q\,
	dataf => \ALT_INV_enb~input_o\,
	combout => \output|s_rden~0_combout\);

-- Location: IOIBUF_X28_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X25_Y3_N56
\output|s_rden\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_rden~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_rden~q\);

-- Location: MLABCELL_X28_Y4_N33
\output|addr[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|addr[0]~1_combout\ = ( !\output|addr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \output|ALT_INV_addr\(0),
	combout => \output|addr[0]~1_combout\);

-- Location: IOIBUF_X40_Y0_N52
\ast_source_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_ready,
	o => \ast_source_ready~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clk_a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_a,
	o => \clk_a~input_o\);

-- Location: CLKCTRL_G10
\clk_a~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_a~input_o\,
	outclk => \clk_a~inputCLKENA0_outclk\);

-- Location: LABCELL_X24_Y3_N24
\entry|curr_head[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|curr_head[0]~0_combout\ = ( !\entry|curr_head\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \entry|ALT_INV_curr_head\(0),
	combout => \entry|curr_head[0]~0_combout\);

-- Location: MLABCELL_X25_Y3_N3
\entry|u_data_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|u_data_addr~0_combout\ = ( \entry|s_wren~q\ & ( \enb~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enb~input_o\,
	dataf => \entry|ALT_INV_s_wren~q\,
	combout => \entry|u_data_addr~0_combout\);

-- Location: FF_X24_Y3_N26
\entry|curr_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(0));

-- Location: LABCELL_X24_Y3_N30
\entry|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~1_sumout\ = SUM(( \entry|curr_head\(1) ) + ( \entry|curr_head\(0) ) + ( !VCC ))
-- \entry|Add0~2\ = CARRY(( \entry|curr_head\(1) ) + ( \entry|curr_head\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \entry|ALT_INV_curr_head\(0),
	datad => \entry|ALT_INV_curr_head\(1),
	cin => GND,
	sumout => \entry|Add0~1_sumout\,
	cout => \entry|Add0~2\);

-- Location: FF_X24_Y3_N31
\entry|curr_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(1));

-- Location: LABCELL_X24_Y3_N33
\entry|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~5_sumout\ = SUM(( \entry|curr_head\(2) ) + ( GND ) + ( \entry|Add0~2\ ))
-- \entry|Add0~6\ = CARRY(( \entry|curr_head\(2) ) + ( GND ) + ( \entry|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(2),
	cin => \entry|Add0~2\,
	sumout => \entry|Add0~5_sumout\,
	cout => \entry|Add0~6\);

-- Location: FF_X24_Y3_N34
\entry|curr_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(2));

-- Location: LABCELL_X24_Y3_N36
\entry|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~9_sumout\ = SUM(( \entry|curr_head\(3) ) + ( GND ) + ( \entry|Add0~6\ ))
-- \entry|Add0~10\ = CARRY(( \entry|curr_head\(3) ) + ( GND ) + ( \entry|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(3),
	cin => \entry|Add0~6\,
	sumout => \entry|Add0~9_sumout\,
	cout => \entry|Add0~10\);

-- Location: FF_X24_Y3_N37
\entry|curr_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(3));

-- Location: LABCELL_X24_Y3_N39
\entry|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~13_sumout\ = SUM(( \entry|curr_head\(4) ) + ( GND ) + ( \entry|Add0~10\ ))
-- \entry|Add0~14\ = CARRY(( \entry|curr_head\(4) ) + ( GND ) + ( \entry|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(4),
	cin => \entry|Add0~10\,
	sumout => \entry|Add0~13_sumout\,
	cout => \entry|Add0~14\);

-- Location: FF_X24_Y3_N41
\entry|curr_head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(4));

-- Location: MLABCELL_X25_Y3_N51
\entry|addr[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[4]~feeder_combout\ = ( \entry|curr_head\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_curr_head\(4),
	combout => \entry|addr[4]~feeder_combout\);

-- Location: FF_X25_Y3_N53
\entry|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(4));

-- Location: MLABCELL_X25_Y3_N30
\entry|addr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[1]~feeder_combout\ = ( \entry|curr_head\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_curr_head\(1),
	combout => \entry|addr[1]~feeder_combout\);

-- Location: FF_X25_Y3_N32
\entry|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(1));

-- Location: FF_X25_Y3_N17
\entry|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|curr_head\(2),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(2));

-- Location: FF_X25_Y3_N8
\entry|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|curr_head\(0),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(0));

-- Location: MLABCELL_X25_Y3_N18
\entry|addr[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[3]~feeder_combout\ = ( \entry|curr_head\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_curr_head\(3),
	combout => \entry|addr[3]~feeder_combout\);

-- Location: FF_X25_Y3_N20
\entry|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(3));

-- Location: MLABCELL_X25_Y3_N45
\entry|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Equal1~1_combout\ = ( !\entry|addr\(0) & ( \entry|addr\(3) & ( (\entry|addr\(1) & \entry|addr\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \entry|ALT_INV_addr\(1),
	datac => \entry|ALT_INV_addr\(2),
	datae => \entry|ALT_INV_addr\(0),
	dataf => \entry|ALT_INV_addr\(3),
	combout => \entry|Equal1~1_combout\);

-- Location: LABCELL_X24_Y3_N42
\entry|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~17_sumout\ = SUM(( \entry|curr_head\(5) ) + ( GND ) + ( \entry|Add0~14\ ))
-- \entry|Add0~18\ = CARRY(( \entry|curr_head\(5) ) + ( GND ) + ( \entry|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(5),
	cin => \entry|Add0~14\,
	sumout => \entry|Add0~17_sumout\,
	cout => \entry|Add0~18\);

-- Location: FF_X24_Y3_N43
\entry|curr_head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(5));

-- Location: LABCELL_X24_Y3_N45
\entry|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~21_sumout\ = SUM(( \entry|curr_head\(6) ) + ( GND ) + ( \entry|Add0~18\ ))
-- \entry|Add0~22\ = CARRY(( \entry|curr_head\(6) ) + ( GND ) + ( \entry|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(6),
	cin => \entry|Add0~18\,
	sumout => \entry|Add0~21_sumout\,
	cout => \entry|Add0~22\);

-- Location: FF_X24_Y3_N47
\entry|curr_head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(6));

-- Location: LABCELL_X24_Y3_N48
\entry|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~25_sumout\ = SUM(( \entry|curr_head\(7) ) + ( GND ) + ( \entry|Add0~22\ ))
-- \entry|Add0~26\ = CARRY(( \entry|curr_head\(7) ) + ( GND ) + ( \entry|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(7),
	cin => \entry|Add0~22\,
	sumout => \entry|Add0~25_sumout\,
	cout => \entry|Add0~26\);

-- Location: FF_X24_Y3_N49
\entry|curr_head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(7));

-- Location: LABCELL_X24_Y3_N51
\entry|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~29_sumout\ = SUM(( \entry|curr_head\(8) ) + ( GND ) + ( \entry|Add0~26\ ))
-- \entry|Add0~30\ = CARRY(( \entry|curr_head\(8) ) + ( GND ) + ( \entry|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(8),
	cin => \entry|Add0~26\,
	sumout => \entry|Add0~29_sumout\,
	cout => \entry|Add0~30\);

-- Location: FF_X24_Y3_N52
\entry|curr_head[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~29_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(8));

-- Location: LABCELL_X24_Y3_N54
\entry|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~33_sumout\ = SUM(( \entry|curr_head\(9) ) + ( GND ) + ( \entry|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_curr_head\(9),
	cin => \entry|Add0~30\,
	sumout => \entry|Add0~33_sumout\);

-- Location: FF_X24_Y3_N55
\entry|curr_head[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~33_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|curr_head\(9));

-- Location: MLABCELL_X25_Y3_N9
\entry|addr[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[9]~feeder_combout\ = ( \entry|curr_head\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_curr_head\(9),
	combout => \entry|addr[9]~feeder_combout\);

-- Location: FF_X25_Y3_N11
\entry|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[9]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(9));

-- Location: FF_X25_Y3_N14
\entry|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|curr_head\(8),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(8));

-- Location: FF_X25_Y3_N44
\entry|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|curr_head\(5),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(5));

-- Location: FF_X25_Y3_N23
\entry|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|curr_head\(7),
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(7));

-- Location: MLABCELL_X25_Y3_N48
\entry|addr[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[6]~feeder_combout\ = ( \entry|curr_head\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_curr_head\(6),
	combout => \entry|addr[6]~feeder_combout\);

-- Location: FF_X25_Y3_N50
\entry|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(6));

-- Location: MLABCELL_X25_Y3_N57
\entry|s_wren~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_wren~0_combout\ = ( !\entry|addr\(6) & ( (!\entry|addr\(9) & (!\entry|addr\(8) & (!\entry|addr\(5) & !\entry|addr\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entry|ALT_INV_addr\(9),
	datab => \entry|ALT_INV_addr\(8),
	datac => \entry|ALT_INV_addr\(5),
	datad => \entry|ALT_INV_addr\(7),
	dataf => \entry|ALT_INV_addr\(6),
	combout => \entry|s_wren~0_combout\);

-- Location: MLABCELL_X25_Y3_N39
\entry|s_wren~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_wren~1_combout\ = ( !\entry|addr\(1) & ( (!\entry|addr\(2) & (!\entry|addr\(0) & !\entry|addr\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \entry|ALT_INV_addr\(2),
	datac => \entry|ALT_INV_addr\(0),
	datad => \entry|ALT_INV_addr\(3),
	dataf => \entry|ALT_INV_addr\(1),
	combout => \entry|s_wren~1_combout\);

-- Location: MLABCELL_X25_Y3_N12
\entry|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Equal1~0_combout\ = ( \entry|addr\(9) & ( (\entry|addr\(7) & (\entry|addr\(5) & (\entry|addr\(6) & \entry|addr\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entry|ALT_INV_addr\(7),
	datab => \entry|ALT_INV_addr\(5),
	datac => \entry|ALT_INV_addr\(6),
	datad => \entry|ALT_INV_addr\(8),
	dataf => \entry|ALT_INV_addr\(9),
	combout => \entry|Equal1~0_combout\);

-- Location: MLABCELL_X25_Y3_N24
\entry|s_wren~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_wren~2_combout\ = ( \entry|s_wren~q\ & ( \entry|Equal1~0_combout\ & ( (!\entry|addr\(4)) # (!\entry|Equal1~1_combout\) ) ) ) # ( !\entry|s_wren~q\ & ( \entry|Equal1~0_combout\ & ( (!\entry|addr\(4) & (\entry|s_wren~0_combout\ & 
-- \entry|s_wren~1_combout\)) ) ) ) # ( \entry|s_wren~q\ & ( !\entry|Equal1~0_combout\ ) ) # ( !\entry|s_wren~q\ & ( !\entry|Equal1~0_combout\ & ( (!\entry|addr\(4) & (\entry|s_wren~0_combout\ & \entry|s_wren~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111111111111111100000000000010101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entry|ALT_INV_addr\(4),
	datab => \entry|ALT_INV_Equal1~1_combout\,
	datac => \entry|ALT_INV_s_wren~0_combout\,
	datad => \entry|ALT_INV_s_wren~1_combout\,
	datae => \entry|ALT_INV_s_wren~q\,
	dataf => \entry|ALT_INV_Equal1~0_combout\,
	combout => \entry|s_wren~2_combout\);

-- Location: FF_X25_Y3_N25
\entry|s_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_wren~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_wren~q\);

-- Location: IOIBUF_X28_Y0_N35
\din[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(30),
	o => \din[30]~input_o\);

-- Location: MLABCELL_X25_Y2_N6
\entry|s_data[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[30]~feeder_combout\ = ( \din[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[30]~input_o\,
	combout => \entry|s_data[30]~feeder_combout\);

-- Location: FF_X25_Y2_N8
\entry|s_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[30]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(30));

-- Location: LABCELL_X27_Y1_N9
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LABCELL_X27_Y4_N30
\output|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~33_sumout\ = SUM(( \output|addr\(1) ) + ( \output|addr\(0) ) + ( !VCC ))
-- \output|Add0~34\ = CARRY(( \output|addr\(1) ) + ( \output|addr\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \output|ALT_INV_addr\(0),
	datad => \output|ALT_INV_addr\(1),
	cin => GND,
	sumout => \output|Add0~33_sumout\,
	cout => \output|Add0~34\);

-- Location: FF_X27_Y4_N32
\output|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~33_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(1));

-- Location: LABCELL_X27_Y4_N42
\output|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~5_sumout\ = SUM(( \output|addr\(5) ) + ( GND ) + ( \output|Add0~22\ ))
-- \output|Add0~6\ = CARRY(( \output|addr\(5) ) + ( GND ) + ( \output|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(5),
	cin => \output|Add0~22\,
	sumout => \output|Add0~5_sumout\,
	cout => \output|Add0~6\);

-- Location: LABCELL_X27_Y4_N45
\output|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~1_sumout\ = SUM(( \output|addr\(6) ) + ( GND ) + ( \output|Add0~6\ ))
-- \output|Add0~2\ = CARRY(( \output|addr\(6) ) + ( GND ) + ( \output|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(6),
	cin => \output|Add0~6\,
	sumout => \output|Add0~1_sumout\,
	cout => \output|Add0~2\);

-- Location: FF_X27_Y4_N47
\output|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(6));

-- Location: LABCELL_X27_Y4_N48
\output|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~17_sumout\ = SUM(( \output|addr\(7) ) + ( GND ) + ( \output|Add0~2\ ))
-- \output|Add0~18\ = CARRY(( \output|addr\(7) ) + ( GND ) + ( \output|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(7),
	cin => \output|Add0~2\,
	sumout => \output|Add0~17_sumout\,
	cout => \output|Add0~18\);

-- Location: FF_X27_Y4_N50
\output|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(7));

-- Location: LABCELL_X27_Y4_N51
\output|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~13_sumout\ = SUM(( \output|addr\(8) ) + ( GND ) + ( \output|Add0~18\ ))
-- \output|Add0~14\ = CARRY(( \output|addr\(8) ) + ( GND ) + ( \output|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(8),
	cin => \output|Add0~18\,
	sumout => \output|Add0~13_sumout\,
	cout => \output|Add0~14\);

-- Location: FF_X27_Y4_N53
\output|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(8));

-- Location: LABCELL_X27_Y4_N54
\output|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~9_sumout\ = SUM(( \output|addr\(9) ) + ( GND ) + ( \output|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(9),
	cin => \output|Add0~14\,
	sumout => \output|Add0~9_sumout\);

-- Location: FF_X27_Y4_N56
\output|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(9));

-- Location: IOIBUF_X54_Y0_N52
\din[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(31),
	o => \din[31]~input_o\);

-- Location: FF_X25_Y2_N59
\entry|s_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[31]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(31));

-- Location: M10K_X26_Y4_N0
\ram|altsyncram_component|auto_generated|ram_block1a30\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
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
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X28_Y4_N45
\output|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Equal2~0_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(38) & ( \output|addr\(6) & ( !\ram|altsyncram_component|auto_generated|q_b\(39) $ (\output|addr\(7)) ) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(38) & ( 
-- !\output|addr\(6) & ( !\ram|altsyncram_component|auto_generated|q_b\(39) $ (\output|addr\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(39),
	datad => \output|ALT_INV_addr\(7),
	datae => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(38),
	dataf => \output|ALT_INV_addr\(6),
	combout => \output|Equal2~0_combout\);

-- Location: LABCELL_X27_Y4_N6
\output|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Equal2~2_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(35) & ( \output|addr\(4) & ( (\output|addr\(3) & (\ram|altsyncram_component|auto_generated|q_b\(36) & (!\output|addr\(5) $ (\ram|altsyncram_component|auto_generated|q_b\(37))))) ) 
-- ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(35) & ( \output|addr\(4) & ( (!\output|addr\(3) & (\ram|altsyncram_component|auto_generated|q_b\(36) & (!\output|addr\(5) $ (\ram|altsyncram_component|auto_generated|q_b\(37))))) ) ) ) # ( 
-- \ram|altsyncram_component|auto_generated|q_b\(35) & ( !\output|addr\(4) & ( (\output|addr\(3) & (!\ram|altsyncram_component|auto_generated|q_b\(36) & (!\output|addr\(5) $ (\ram|altsyncram_component|auto_generated|q_b\(37))))) ) ) ) # ( 
-- !\ram|altsyncram_component|auto_generated|q_b\(35) & ( !\output|addr\(4) & ( (!\output|addr\(3) & (!\ram|altsyncram_component|auto_generated|q_b\(36) & (!\output|addr\(5) $ (\ram|altsyncram_component|auto_generated|q_b\(37))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(3),
	datab => \output|ALT_INV_addr\(5),
	datac => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(37),
	datad => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(36),
	datae => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(35),
	dataf => \output|ALT_INV_addr\(4),
	combout => \output|Equal2~2_combout\);

-- Location: LABCELL_X27_Y4_N0
\output|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Equal2~1_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(34) & ( \ram|altsyncram_component|auto_generated|q_b\(33) & ( (\output|addr\(2) & (\output|addr\(1) & (!\ram|altsyncram_component|auto_generated|q_b\(32) $ (\output|addr\(0))))) ) 
-- ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(34) & ( \ram|altsyncram_component|auto_generated|q_b\(33) & ( (!\output|addr\(2) & (\output|addr\(1) & (!\ram|altsyncram_component|auto_generated|q_b\(32) $ (\output|addr\(0))))) ) ) ) # ( 
-- \ram|altsyncram_component|auto_generated|q_b\(34) & ( !\ram|altsyncram_component|auto_generated|q_b\(33) & ( (\output|addr\(2) & (!\output|addr\(1) & (!\ram|altsyncram_component|auto_generated|q_b\(32) $ (\output|addr\(0))))) ) ) ) # ( 
-- !\ram|altsyncram_component|auto_generated|q_b\(34) & ( !\ram|altsyncram_component|auto_generated|q_b\(33) & ( (!\output|addr\(2) & (!\output|addr\(1) & (!\ram|altsyncram_component|auto_generated|q_b\(32) $ (\output|addr\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000010010000000000000000100100000000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(32),
	datab => \output|ALT_INV_addr\(0),
	datac => \output|ALT_INV_addr\(2),
	datad => \output|ALT_INV_addr\(1),
	datae => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(34),
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(33),
	combout => \output|Equal2~1_combout\);

-- Location: MLABCELL_X28_Y4_N12
\output|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|state~0_combout\ = ( \output|Equal2~1_combout\ & ( (!\output|state~q\ & (\ast_source_ready~input_o\)) # (\output|state~q\ & (((!\output|Equal2~0_combout\) # (!\output|Equal2~2_combout\)))) ) ) # ( !\output|Equal2~1_combout\ & ( (\output|state~q\) 
-- # (\ast_source_ready~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111000101010111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	datab => \output|ALT_INV_Equal2~0_combout\,
	datac => \output|ALT_INV_Equal2~2_combout\,
	datad => \output|ALT_INV_state~q\,
	dataf => \output|ALT_INV_Equal2~1_combout\,
	combout => \output|state~0_combout\);

-- Location: FF_X28_Y4_N14
\output|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|state~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|state~q\);

-- Location: MLABCELL_X28_Y4_N15
\output|addr[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|addr[9]~0_combout\ = ( !\output|state~q\ & ( \ast_source_ready~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	dataf => \output|ALT_INV_state~q\,
	combout => \output|addr[9]~0_combout\);

-- Location: FF_X28_Y4_N35
\output|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|addr[0]~1_combout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(0));

-- Location: LABCELL_X27_Y4_N33
\output|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~29_sumout\ = SUM(( \output|addr\(2) ) + ( GND ) + ( \output|Add0~34\ ))
-- \output|Add0~30\ = CARRY(( \output|addr\(2) ) + ( GND ) + ( \output|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(2),
	cin => \output|Add0~34\,
	sumout => \output|Add0~29_sumout\,
	cout => \output|Add0~30\);

-- Location: FF_X27_Y4_N35
\output|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~29_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(2));

-- Location: LABCELL_X27_Y4_N36
\output|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~25_sumout\ = SUM(( \output|addr\(3) ) + ( GND ) + ( \output|Add0~30\ ))
-- \output|Add0~26\ = CARRY(( \output|addr\(3) ) + ( GND ) + ( \output|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(3),
	cin => \output|Add0~30\,
	sumout => \output|Add0~25_sumout\,
	cout => \output|Add0~26\);

-- Location: FF_X27_Y4_N38
\output|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(3));

-- Location: LABCELL_X27_Y4_N39
\output|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~21_sumout\ = SUM(( \output|addr\(4) ) + ( GND ) + ( \output|Add0~26\ ))
-- \output|Add0~22\ = CARRY(( \output|addr\(4) ) + ( GND ) + ( \output|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(4),
	cin => \output|Add0~26\,
	sumout => \output|Add0~21_sumout\,
	cout => \output|Add0~22\);

-- Location: FF_X27_Y4_N41
\output|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(4));

-- Location: FF_X27_Y4_N44
\output|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \output|addr[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(5));

-- Location: MLABCELL_X28_Y4_N57
\output|u_ast_pck~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~1_combout\ = ( !\output|addr\(3) & ( !\output|addr\(1) & ( (!\output|addr\(4) & !\output|addr\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \output|ALT_INV_addr\(4),
	datac => \output|ALT_INV_addr\(2),
	datae => \output|ALT_INV_addr\(3),
	dataf => \output|ALT_INV_addr\(1),
	combout => \output|u_ast_pck~1_combout\);

-- Location: MLABCELL_X28_Y4_N36
\output|u_ast_pck~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~0_combout\ = ( !\output|addr\(7) & ( !\output|addr\(9) & ( (\ast_source_ready~input_o\ & !\output|addr\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	datac => \output|ALT_INV_addr\(8),
	datae => \output|ALT_INV_addr\(7),
	dataf => \output|ALT_INV_addr\(9),
	combout => \output|u_ast_pck~0_combout\);

-- Location: MLABCELL_X28_Y4_N27
\output|u_ast_pck~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~2_combout\ = ( \output|u_ast_pck~0_combout\ & ( !\output|addr\(6) & ( (!\output|addr\(5) & (\output|u_ast_pck~1_combout\ & !\output|addr\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \output|ALT_INV_addr\(5),
	datac => \output|ALT_INV_u_ast_pck~1_combout\,
	datad => \output|ALT_INV_addr\(0),
	datae => \output|ALT_INV_u_ast_pck~0_combout\,
	dataf => \output|ALT_INV_addr\(6),
	combout => \output|u_ast_pck~2_combout\);

-- Location: FF_X28_Y4_N28
\output|s_sop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|u_ast_pck~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_sop~q\);

-- Location: MLABCELL_X28_Y4_N18
\output|u_ast_pck~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~3_combout\ = ( \output|addr\(7) & ( (\output|addr\(9) & (\output|addr\(8) & \ast_source_ready~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(9),
	datac => \output|ALT_INV_addr\(8),
	datad => \ALT_INV_ast_source_ready~input_o\,
	dataf => \output|ALT_INV_addr\(7),
	combout => \output|u_ast_pck~3_combout\);

-- Location: MLABCELL_X28_Y4_N21
\output|u_ast_pck~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~4_combout\ = ( \output|addr\(1) & ( (\output|addr\(4) & (\output|addr\(2) & \output|addr\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \output|ALT_INV_addr\(4),
	datac => \output|ALT_INV_addr\(2),
	datad => \output|ALT_INV_addr\(3),
	dataf => \output|ALT_INV_addr\(1),
	combout => \output|u_ast_pck~4_combout\);

-- Location: MLABCELL_X28_Y4_N6
\output|u_ast_pck~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_pck~5_combout\ = ( \output|addr\(6) & ( (\output|u_ast_pck~3_combout\ & (\output|addr\(5) & (\output|addr\(0) & \output|u_ast_pck~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_u_ast_pck~3_combout\,
	datab => \output|ALT_INV_addr\(5),
	datac => \output|ALT_INV_addr\(0),
	datad => \output|ALT_INV_u_ast_pck~4_combout\,
	dataf => \output|ALT_INV_addr\(6),
	combout => \output|u_ast_pck~5_combout\);

-- Location: FF_X28_Y4_N7
\output|s_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|u_ast_pck~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_eop~q\);

-- Location: IOIBUF_X4_Y0_N35
\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: MLABCELL_X25_Y2_N12
\entry|s_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[0]~feeder_combout\ = ( \din[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[0]~input_o\,
	combout => \entry|s_data[0]~feeder_combout\);

-- Location: FF_X25_Y2_N13
\entry|s_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(0));

-- Location: IOIBUF_X4_Y0_N1
\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: MLABCELL_X25_Y2_N45
\entry|s_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[1]~feeder_combout\ = ( \din[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[1]~input_o\,
	combout => \entry|s_data[1]~feeder_combout\);

-- Location: FF_X25_Y2_N47
\entry|s_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(1));

-- Location: IOIBUF_X56_Y0_N52
\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: FF_X25_Y2_N38
\entry|s_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(2));

-- Location: IOIBUF_X54_Y0_N1
\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: FF_X25_Y2_N20
\entry|s_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[3]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(3));

-- Location: IOIBUF_X54_Y0_N35
\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: MLABCELL_X25_Y2_N51
\entry|s_data[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[4]~feeder_combout\ = ( \din[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[4]~input_o\,
	combout => \entry|s_data[4]~feeder_combout\);

-- Location: FF_X25_Y2_N53
\entry|s_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(4));

-- Location: IOIBUF_X28_Y0_N52
\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: FF_X25_Y2_N32
\entry|s_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(5));

-- Location: IOIBUF_X30_Y0_N18
\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: MLABCELL_X25_Y2_N0
\entry|s_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[6]~feeder_combout\ = ( \din[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[6]~input_o\,
	combout => \entry|s_data[6]~feeder_combout\);

-- Location: FF_X25_Y2_N2
\entry|s_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(6));

-- Location: IOIBUF_X26_Y0_N75
\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: FF_X25_Y2_N5
\entry|s_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[7]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(7));

-- Location: IOIBUF_X56_Y0_N35
\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: MLABCELL_X25_Y2_N54
\entry|s_data[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[8]~feeder_combout\ = ( \din[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[8]~input_o\,
	combout => \entry|s_data[8]~feeder_combout\);

-- Location: FF_X25_Y2_N56
\entry|s_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[8]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(8));

-- Location: IOIBUF_X28_Y0_N1
\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: MLABCELL_X25_Y2_N27
\entry|s_data[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[9]~feeder_combout\ = ( \din[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[9]~input_o\,
	combout => \entry|s_data[9]~feeder_combout\);

-- Location: FF_X25_Y2_N29
\entry|s_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[9]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(9));

-- Location: M10K_X26_Y2_N0
\ram|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
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
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X27_Y2_N0
\output|ast_source_data[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[0]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(0),
	combout => \output|ast_source_data[0]~feeder_combout\);

-- Location: MLABCELL_X28_Y4_N9
\output|ast_source_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[0]~0_combout\ = ( !\output|state~q\ & ( (\reset~input_o\ & \ast_source_ready~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \ALT_INV_ast_source_ready~input_o\,
	dataf => \output|ALT_INV_state~q\,
	combout => \output|ast_source_data[0]~0_combout\);

-- Location: FF_X27_Y2_N1
\output|ast_source_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[0]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(0));

-- Location: LABCELL_X27_Y2_N21
\output|ast_source_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[1]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \output|ast_source_data[1]~feeder_combout\);

-- Location: FF_X27_Y2_N22
\output|ast_source_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[1]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(1));

-- Location: FF_X27_Y2_N49
\output|ast_source_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(2),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(2));

-- Location: LABCELL_X27_Y2_N33
\output|ast_source_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[3]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \output|ast_source_data[3]~feeder_combout\);

-- Location: FF_X27_Y2_N34
\output|ast_source_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[3]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(3));

-- Location: FF_X27_Y2_N28
\output|ast_source_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(4),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(4));

-- Location: LABCELL_X27_Y2_N45
\output|ast_source_data[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[5]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(5),
	combout => \output|ast_source_data[5]~feeder_combout\);

-- Location: FF_X27_Y2_N46
\output|ast_source_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[5]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(5));

-- Location: LABCELL_X27_Y2_N12
\output|ast_source_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[6]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \output|ast_source_data[6]~feeder_combout\);

-- Location: FF_X27_Y2_N13
\output|ast_source_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[6]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(6));

-- Location: LABCELL_X27_Y2_N6
\output|ast_source_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[7]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \output|ast_source_data[7]~feeder_combout\);

-- Location: FF_X27_Y2_N7
\output|ast_source_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[7]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(7));

-- Location: LABCELL_X27_Y2_N36
\output|ast_source_data[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[8]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(8),
	combout => \output|ast_source_data[8]~feeder_combout\);

-- Location: FF_X27_Y2_N37
\output|ast_source_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[8]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(8));

-- Location: FF_X27_Y2_N55
\output|ast_source_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(9),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(9));

-- Location: IOIBUF_X6_Y0_N18
\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: MLABCELL_X25_Y1_N15
\entry|s_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[10]~feeder_combout\ = ( \din[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[10]~input_o\,
	combout => \entry|s_data[10]~feeder_combout\);

-- Location: FF_X25_Y1_N16
\entry|s_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[10]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(10));

-- Location: IOIBUF_X6_Y0_N52
\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: FF_X25_Y1_N8
\entry|s_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[11]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(11));

-- Location: IOIBUF_X8_Y0_N1
\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: MLABCELL_X25_Y1_N48
\entry|s_data[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[12]~feeder_combout\ = ( \din[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[12]~input_o\,
	combout => \entry|s_data[12]~feeder_combout\);

-- Location: FF_X25_Y1_N50
\entry|s_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[12]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(12));

-- Location: IOIBUF_X26_Y0_N58
\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: MLABCELL_X25_Y1_N21
\entry|s_data[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[13]~feeder_combout\ = ( \din[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[13]~input_o\,
	combout => \entry|s_data[13]~feeder_combout\);

-- Location: FF_X25_Y1_N23
\entry|s_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[13]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(13));

-- Location: IOIBUF_X8_Y0_N18
\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: MLABCELL_X25_Y1_N3
\entry|s_data[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[14]~feeder_combout\ = ( \din[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[14]~input_o\,
	combout => \entry|s_data[14]~feeder_combout\);

-- Location: FF_X25_Y1_N4
\entry|s_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[14]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(14));

-- Location: IOIBUF_X4_Y0_N52
\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: FF_X25_Y1_N55
\entry|s_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[15]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(15));

-- Location: IOIBUF_X6_Y0_N35
\din[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(16),
	o => \din[16]~input_o\);

-- Location: MLABCELL_X25_Y1_N24
\entry|s_data[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[16]~feeder_combout\ = ( \din[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[16]~input_o\,
	combout => \entry|s_data[16]~feeder_combout\);

-- Location: FF_X25_Y1_N26
\entry|s_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[16]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(16));

-- Location: IOIBUF_X8_Y0_N35
\din[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(17),
	o => \din[17]~input_o\);

-- Location: FF_X25_Y1_N43
\entry|s_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[17]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(17));

-- Location: IOIBUF_X26_Y0_N41
\din[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(18),
	o => \din[18]~input_o\);

-- Location: MLABCELL_X25_Y1_N36
\entry|s_data[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[18]~feeder_combout\ = ( \din[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[18]~input_o\,
	combout => \entry|s_data[18]~feeder_combout\);

-- Location: FF_X25_Y1_N38
\entry|s_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[18]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(18));

-- Location: IOIBUF_X8_Y0_N52
\din[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(19),
	o => \din[19]~input_o\);

-- Location: FF_X25_Y1_N35
\entry|s_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[19]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(19));

-- Location: M10K_X26_Y1_N0
\ram|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
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
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

-- Location: LABCELL_X27_Y1_N3
\output|ast_source_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[10]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	combout => \output|ast_source_data[10]~feeder_combout\);

-- Location: FF_X27_Y1_N4
\output|ast_source_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[10]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(10));

-- Location: LABCELL_X27_Y1_N18
\output|ast_source_data[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[11]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \output|ast_source_data[11]~feeder_combout\);

-- Location: FF_X27_Y1_N19
\output|ast_source_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[11]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(11));

-- Location: FF_X27_Y1_N16
\output|ast_source_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(12),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(12));

-- Location: LABCELL_X27_Y1_N42
\output|ast_source_data[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[13]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \output|ast_source_data[13]~feeder_combout\);

-- Location: FF_X27_Y1_N43
\output|ast_source_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[13]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(13));

-- Location: FF_X27_Y1_N40
\output|ast_source_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(14),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(14));

-- Location: LABCELL_X27_Y1_N30
\output|ast_source_data[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[15]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(15) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(15),
	combout => \output|ast_source_data[15]~feeder_combout\);

-- Location: FF_X27_Y1_N31
\output|ast_source_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[15]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(15));

-- Location: LABCELL_X27_Y1_N24
\output|ast_source_data[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[16]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16),
	combout => \output|ast_source_data[16]~feeder_combout\);

-- Location: FF_X27_Y1_N25
\output|ast_source_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[16]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(16));

-- Location: FF_X27_Y1_N46
\output|ast_source_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(17),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(17));

-- Location: LABCELL_X27_Y1_N57
\output|ast_source_data[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[18]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(18),
	combout => \output|ast_source_data[18]~feeder_combout\);

-- Location: FF_X27_Y1_N58
\output|ast_source_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[18]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(18));

-- Location: FF_X27_Y1_N49
\output|ast_source_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(19),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(19));

-- Location: IOIBUF_X54_Y0_N18
\din[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(20),
	o => \din[20]~input_o\);

-- Location: FF_X27_Y3_N29
\entry|s_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[20]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(20));

-- Location: IOIBUF_X2_Y0_N41
\din[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(21),
	o => \din[21]~input_o\);

-- Location: FF_X25_Y3_N47
\entry|s_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(21));

-- Location: IOIBUF_X2_Y0_N58
\din[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(22),
	o => \din[22]~input_o\);

-- Location: FF_X25_Y3_N35
\entry|s_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[22]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(22));

-- Location: IOIBUF_X56_Y0_N18
\din[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(23),
	o => \din[23]~input_o\);

-- Location: FF_X25_Y3_N5
\entry|s_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[23]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(23));

-- Location: IOIBUF_X60_Y0_N1
\din[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(24),
	o => \din[24]~input_o\);

-- Location: FF_X25_Y3_N2
\entry|s_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[24]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(24));

-- Location: IOIBUF_X2_Y0_N75
\din[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(25),
	o => \din[25]~input_o\);

-- Location: MLABCELL_X25_Y3_N15
\entry|s_data[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[25]~feeder_combout\ = \din[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_din[25]~input_o\,
	combout => \entry|s_data[25]~feeder_combout\);

-- Location: FF_X25_Y3_N16
\entry|s_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[25]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(25));

-- Location: IOIBUF_X62_Y0_N18
\din[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(26),
	o => \din[26]~input_o\);

-- Location: LABCELL_X27_Y3_N54
\entry|s_data[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[26]~feeder_combout\ = ( \din[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[26]~input_o\,
	combout => \entry|s_data[26]~feeder_combout\);

-- Location: FF_X27_Y3_N56
\entry|s_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[26]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(26));

-- Location: IOIBUF_X6_Y0_N1
\din[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(27),
	o => \din[27]~input_o\);

-- Location: LABCELL_X24_Y3_N18
\entry|s_data[27]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|s_data[27]~feeder_combout\ = ( \din[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[27]~input_o\,
	combout => \entry|s_data[27]~feeder_combout\);

-- Location: FF_X24_Y3_N20
\entry|s_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|s_data[27]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(27));

-- Location: IOIBUF_X4_Y0_N18
\din[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(28),
	o => \din[28]~input_o\);

-- Location: FF_X25_Y3_N41
\entry|s_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[28]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(28));

-- Location: IOIBUF_X52_Y0_N52
\din[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(29),
	o => \din[29]~input_o\);

-- Location: FF_X25_Y3_N38
\entry|s_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[29]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_data\(29));

-- Location: M10K_X26_Y3_N0
\ram|altsyncram_component|auto_generated|ram_block1a20\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
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
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

-- Location: LABCELL_X27_Y3_N0
\output|ast_source_data[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[20]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(20),
	combout => \output|ast_source_data[20]~feeder_combout\);

-- Location: FF_X27_Y3_N1
\output|ast_source_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[20]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(20));

-- Location: LABCELL_X27_Y3_N30
\output|ast_source_data[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[21]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(21),
	combout => \output|ast_source_data[21]~feeder_combout\);

-- Location: FF_X27_Y3_N31
\output|ast_source_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[21]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(21));

-- Location: FF_X27_Y3_N16
\output|ast_source_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(22),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(22));

-- Location: LABCELL_X27_Y3_N3
\output|ast_source_data[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[23]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(23) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(23),
	combout => \output|ast_source_data[23]~feeder_combout\);

-- Location: FF_X27_Y3_N4
\output|ast_source_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[23]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(23));

-- Location: FF_X27_Y3_N43
\output|ast_source_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(24),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(24));

-- Location: LABCELL_X27_Y3_N39
\output|ast_source_data[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[25]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(25) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(25),
	combout => \output|ast_source_data[25]~feeder_combout\);

-- Location: FF_X27_Y3_N40
\output|ast_source_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[25]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(25));

-- Location: LABCELL_X27_Y3_N6
\output|ast_source_data[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[26]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(26) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(26),
	combout => \output|ast_source_data[26]~feeder_combout\);

-- Location: FF_X27_Y3_N7
\output|ast_source_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[26]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(26));

-- Location: FF_X27_Y3_N52
\output|ast_source_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(27),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(27));

-- Location: LABCELL_X27_Y3_N33
\output|ast_source_data[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_source_data[28]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(28) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(28),
	combout => \output|ast_source_data[28]~feeder_combout\);

-- Location: FF_X27_Y3_N34
\output|ast_source_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_source_data[28]~feeder_combout\,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(28));

-- Location: FF_X27_Y3_N19
\output|ast_source_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(29),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(29));

-- Location: FF_X27_Y4_N4
\output|ast_source_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(30),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(30));

-- Location: FF_X27_Y4_N10
\output|ast_source_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(31),
	sload => VCC,
	ena => \output|ast_source_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_source_data\(31));

-- Location: MLABCELL_X28_Y4_N0
\output|s_channel[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[0]~0_combout\ = ( \output|s_channel\(0) & ( \output|state~q\ & ( (!\output|Equal2~0_combout\) # ((!\output|Equal2~2_combout\) # (!\output|Equal2~1_combout\)) ) ) ) # ( !\output|s_channel\(0) & ( \output|state~q\ & ( 
-- (\output|Equal2~0_combout\ & (\output|Equal2~2_combout\ & \output|Equal2~1_combout\)) ) ) ) # ( \output|s_channel\(0) & ( !\output|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \output|ALT_INV_Equal2~0_combout\,
	datac => \output|ALT_INV_Equal2~2_combout\,
	datad => \output|ALT_INV_Equal2~1_combout\,
	datae => \output|ALT_INV_s_channel\(0),
	dataf => \output|ALT_INV_state~q\,
	combout => \output|s_channel[0]~0_combout\);

-- Location: FF_X28_Y4_N1
\output|s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(0));

-- Location: FF_X28_Y4_N50
\output|s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(1));

-- Location: MLABCELL_X28_Y4_N48
\output|s_channel[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[1]~1_combout\ = ( \output|s_channel\(1) & ( \output|s_channel\(0) & ( (!\output|Equal2~2_combout\) # ((!\output|Equal2~1_combout\) # ((!\output|Equal2~0_combout\) # (!\output|state~q\))) ) ) ) # ( !\output|s_channel\(1) & ( 
-- \output|s_channel\(0) & ( (\output|Equal2~2_combout\ & (\output|Equal2~1_combout\ & (\output|Equal2~0_combout\ & \output|state~q\))) ) ) ) # ( \output|s_channel\(1) & ( !\output|s_channel\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_Equal2~2_combout\,
	datab => \output|ALT_INV_Equal2~1_combout\,
	datac => \output|ALT_INV_Equal2~0_combout\,
	datad => \output|ALT_INV_state~q\,
	datae => \output|ALT_INV_s_channel\(1),
	dataf => \output|ALT_INV_s_channel\(0),
	combout => \output|s_channel[1]~1_combout\);

-- Location: FF_X28_Y4_N49
\output|s_channel[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel[1]~DUPLICATE_q\);

-- Location: FF_X27_Y4_N28
\output|s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(2));

-- Location: FF_X28_Y4_N2
\output|s_channel[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel[0]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y4_N24
\output|s_channel[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[1]~2_combout\ = ( \output|Equal2~0_combout\ & ( (\output|state~q\ & (\output|Equal2~2_combout\ & (\output|Equal2~1_combout\ & \output|s_channel[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_state~q\,
	datab => \output|ALT_INV_Equal2~2_combout\,
	datac => \output|ALT_INV_Equal2~1_combout\,
	datad => \output|ALT_INV_s_channel[0]~DUPLICATE_q\,
	dataf => \output|ALT_INV_Equal2~0_combout\,
	combout => \output|s_channel[1]~2_combout\);

-- Location: LABCELL_X27_Y4_N27
\output|s_channel[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[2]~3_combout\ = ( \output|s_channel[1]~2_combout\ & ( !\output|s_channel\(1) $ (!\output|s_channel\(2)) ) ) # ( !\output|s_channel[1]~2_combout\ & ( \output|s_channel\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \output|ALT_INV_s_channel\(1),
	datad => \output|ALT_INV_s_channel\(2),
	dataf => \output|ALT_INV_s_channel[1]~2_combout\,
	combout => \output|s_channel[2]~3_combout\);

-- Location: FF_X27_Y4_N29
\output|s_channel[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[2]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel[2]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y4_N21
\output|s_channel[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[3]~4_combout\ = ( \output|s_channel[1]~2_combout\ & ( !\output|s_channel\(3) $ (((!\output|s_channel[2]~DUPLICATE_q\) # (!\output|s_channel\(1)))) ) ) # ( !\output|s_channel[1]~2_combout\ & ( \output|s_channel\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_s_channel[2]~DUPLICATE_q\,
	datac => \output|ALT_INV_s_channel\(1),
	datad => \output|ALT_INV_s_channel\(3),
	dataf => \output|ALT_INV_s_channel[1]~2_combout\,
	combout => \output|s_channel[3]~4_combout\);

-- Location: FF_X27_Y4_N22
\output|s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(3));

-- Location: FF_X27_Y4_N23
\output|s_channel[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[3]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel[3]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y4_N18
\output|s_channel[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[4]~5_combout\ = ( \output|s_channel[1]~2_combout\ & ( !\output|s_channel\(4) $ (((!\output|s_channel[2]~DUPLICATE_q\) # ((!\output|s_channel\(1)) # (!\output|s_channel[3]~DUPLICATE_q\)))) ) ) # ( !\output|s_channel[1]~2_combout\ & ( 
-- \output|s_channel\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_s_channel[2]~DUPLICATE_q\,
	datab => \output|ALT_INV_s_channel\(1),
	datac => \output|ALT_INV_s_channel[3]~DUPLICATE_q\,
	datad => \output|ALT_INV_s_channel\(4),
	dataf => \output|ALT_INV_s_channel[1]~2_combout\,
	combout => \output|s_channel[4]~5_combout\);

-- Location: FF_X27_Y4_N19
\output|s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[4]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(4));

-- Location: FF_X27_Y4_N20
\output|s_channel[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[4]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel[4]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y4_N12
\output|s_channel[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[5]~6_combout\ = ( \output|s_channel\(5) & ( \output|s_channel[1]~2_combout\ & ( (!\output|s_channel[4]~DUPLICATE_q\) # ((!\output|s_channel\(2)) # ((!\output|s_channel[3]~DUPLICATE_q\) # (!\output|s_channel\(1)))) ) ) ) # ( 
-- !\output|s_channel\(5) & ( \output|s_channel[1]~2_combout\ & ( (\output|s_channel[4]~DUPLICATE_q\ & (\output|s_channel\(2) & (\output|s_channel[3]~DUPLICATE_q\ & \output|s_channel\(1)))) ) ) ) # ( \output|s_channel\(5) & ( !\output|s_channel[1]~2_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_s_channel[4]~DUPLICATE_q\,
	datab => \output|ALT_INV_s_channel\(2),
	datac => \output|ALT_INV_s_channel[3]~DUPLICATE_q\,
	datad => \output|ALT_INV_s_channel\(1),
	datae => \output|ALT_INV_s_channel\(5),
	dataf => \output|ALT_INV_s_channel[1]~2_combout\,
	combout => \output|s_channel[5]~6_combout\);

-- Location: FF_X27_Y4_N13
\output|s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[5]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(5));
END structure;


