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

-- DATE "11/29/2022 09:50:18"

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
	clk : IN std_logic;
	enb : IN std_logic;
	reset : IN std_logic;
	din : IN std_logic_vector(31 DOWNTO 0);
	ast_sink_valid : BUFFER std_logic;
	ast_sink_sop : BUFFER std_logic;
	ast_sink_eop : BUFFER std_logic;
	ast_sink_data : BUFFER std_logic_vector(31 DOWNTO 0);
	ast_sink_channel : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END in_adapt;

-- Design Ports Information
-- enb	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[17]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[18]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[19]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[21]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[22]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[23]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[24]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[25]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[27]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[28]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[29]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[30]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[31]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_valid	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_sop	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_eop	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[7]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[9]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[10]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[11]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[12]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[13]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[15]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[16]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[17]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[18]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[19]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[20]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[21]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[22]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[23]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[24]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[25]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[26]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[27]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[28]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[29]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[30]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[31]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[3]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_enb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_sink_valid : std_logic;
SIGNAL ww_ast_sink_sop : std_logic;
SIGNAL ww_ast_sink_eop : std_logic;
SIGNAL ww_ast_sink_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_sink_channel : std_logic_vector(5 DOWNTO 0);
SIGNAL \enb~input_o\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \din[16]~input_o\ : std_logic;
SIGNAL \din[17]~input_o\ : std_logic;
SIGNAL \din[18]~input_o\ : std_logic;
SIGNAL \din[19]~input_o\ : std_logic;
SIGNAL \din[20]~input_o\ : std_logic;
SIGNAL \din[21]~input_o\ : std_logic;
SIGNAL \din[22]~input_o\ : std_logic;
SIGNAL \din[23]~input_o\ : std_logic;
SIGNAL \din[24]~input_o\ : std_logic;
SIGNAL \din[25]~input_o\ : std_logic;
SIGNAL \din[26]~input_o\ : std_logic;
SIGNAL \din[27]~input_o\ : std_logic;
SIGNAL \din[28]~input_o\ : std_logic;
SIGNAL \din[29]~input_o\ : std_logic;
SIGNAL \din[30]~input_o\ : std_logic;
SIGNAL \din[31]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \output|s_eop~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \output|s_eop~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_enb <= enb;
ww_reset <= reset;
ww_din <= din;
ast_sink_valid <= ww_ast_sink_valid;
ast_sink_sop <= ww_ast_sink_sop;
ast_sink_eop <= ww_ast_sink_eop;
ast_sink_data <= ww_ast_sink_data;
ast_sink_channel <= ww_ast_sink_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X40_Y0_N53
\ast_sink_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_valid);

-- Location: IOOBUF_X28_Y81_N53
\ast_sink_sop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_sop);

-- Location: IOOBUF_X68_Y0_N19
\ast_sink_eop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_eop~q\,
	devoe => ww_devoe,
	o => ww_ast_sink_eop);

-- Location: IOOBUF_X26_Y0_N42
\ast_sink_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(0));

-- Location: IOOBUF_X38_Y81_N53
\ast_sink_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(1));

-- Location: IOOBUF_X89_Y6_N39
\ast_sink_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(2));

-- Location: IOOBUF_X82_Y81_N93
\ast_sink_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(3));

-- Location: IOOBUF_X58_Y81_N42
\ast_sink_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(4));

-- Location: IOOBUF_X36_Y81_N2
\ast_sink_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(5));

-- Location: IOOBUF_X80_Y81_N19
\ast_sink_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(6));

-- Location: IOOBUF_X26_Y0_N76
\ast_sink_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(7));

-- Location: IOOBUF_X4_Y0_N2
\ast_sink_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(8));

-- Location: IOOBUF_X50_Y0_N59
\ast_sink_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(9));

-- Location: IOOBUF_X89_Y8_N22
\ast_sink_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(10));

-- Location: IOOBUF_X60_Y0_N53
\ast_sink_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(11));

-- Location: IOOBUF_X6_Y0_N2
\ast_sink_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(12));

-- Location: IOOBUF_X64_Y0_N36
\ast_sink_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(13));

-- Location: IOOBUF_X58_Y0_N93
\ast_sink_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(14));

-- Location: IOOBUF_X26_Y0_N59
\ast_sink_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(15));

-- Location: IOOBUF_X54_Y0_N36
\ast_sink_data[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(16));

-- Location: IOOBUF_X82_Y81_N59
\ast_sink_data[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(17));

-- Location: IOOBUF_X62_Y0_N53
\ast_sink_data[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(18));

-- Location: IOOBUF_X34_Y0_N42
\ast_sink_data[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(19));

-- Location: IOOBUF_X34_Y81_N93
\ast_sink_data[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(20));

-- Location: IOOBUF_X60_Y81_N2
\ast_sink_data[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(21));

-- Location: IOOBUF_X89_Y4_N62
\ast_sink_data[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(22));

-- Location: IOOBUF_X30_Y81_N36
\ast_sink_data[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(23));

-- Location: IOOBUF_X86_Y81_N2
\ast_sink_data[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(24));

-- Location: IOOBUF_X54_Y81_N2
\ast_sink_data[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(25));

-- Location: IOOBUF_X32_Y0_N53
\ast_sink_data[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(26));

-- Location: IOOBUF_X89_Y9_N5
\ast_sink_data[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(27));

-- Location: IOOBUF_X74_Y81_N42
\ast_sink_data[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(28));

-- Location: IOOBUF_X54_Y0_N2
\ast_sink_data[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(29));

-- Location: IOOBUF_X89_Y38_N56
\ast_sink_data[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(30));

-- Location: IOOBUF_X54_Y0_N19
\ast_sink_data[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_data(31));

-- Location: IOOBUF_X26_Y81_N59
\ast_sink_channel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(0));

-- Location: IOOBUF_X66_Y0_N59
\ast_sink_channel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(1));

-- Location: IOOBUF_X66_Y0_N42
\ast_sink_channel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(2));

-- Location: IOOBUF_X88_Y81_N37
\ast_sink_channel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(3));

-- Location: IOOBUF_X80_Y81_N2
\ast_sink_channel[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(4));

-- Location: IOOBUF_X72_Y81_N36
\ast_sink_channel[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ast_sink_channel(5));

-- Location: IOIBUF_X68_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X68_Y1_N3
\output|s_eop~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_eop~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \output|s_eop~feeder_combout\);

-- Location: IOIBUF_X68_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X68_Y1_N5
\output|s_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \output|s_eop~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_eop~q\);

-- Location: IOIBUF_X62_Y81_N35
\enb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enb,
	o => \enb~input_o\);

-- Location: IOIBUF_X64_Y81_N35
\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: IOIBUF_X74_Y81_N75
\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: IOIBUF_X54_Y81_N35
\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: IOIBUF_X62_Y0_N18
\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: IOIBUF_X84_Y81_N1
\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\din[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(16),
	o => \din[16]~input_o\);

-- Location: IOIBUF_X70_Y81_N18
\din[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(17),
	o => \din[17]~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\din[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(18),
	o => \din[18]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\din[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(19),
	o => \din[19]~input_o\);

-- Location: IOIBUF_X30_Y81_N1
\din[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(20),
	o => \din[20]~input_o\);

-- Location: IOIBUF_X70_Y0_N1
\din[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(21),
	o => \din[21]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\din[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(22),
	o => \din[22]~input_o\);

-- Location: IOIBUF_X32_Y81_N18
\din[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(23),
	o => \din[23]~input_o\);

-- Location: IOIBUF_X58_Y81_N92
\din[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(24),
	o => \din[24]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\din[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(25),
	o => \din[25]~input_o\);

-- Location: IOIBUF_X70_Y81_N35
\din[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(26),
	o => \din[26]~input_o\);

-- Location: IOIBUF_X78_Y81_N35
\din[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(27),
	o => \din[27]~input_o\);

-- Location: IOIBUF_X66_Y81_N92
\din[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(28),
	o => \din[28]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\din[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(29),
	o => \din[29]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\din[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(30),
	o => \din[30]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\din[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(31),
	o => \din[31]~input_o\);

-- Location: LABCELL_X75_Y11_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


