library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity in_converter is 
	port map (
			clk     : IN  std_logic;
			enb     : IN  std_logic;
			reset   : IN  std_logic;
			
			-- from the simunlink wrapper
			din     : IN  std_logic_vector(31 DOWNTO 0);
			
			-- taken from the "to be tested" model
			ast_sink_valid			: out std_logic;													 												
			ast_sink_sop			: out std_logic;													 
			ast_sink_eop			: out std_logic;													
			ast_sink_data			: out std_logic_vector(35 downto 0);
			ast_sink_channel		: out std_logic_vector(CHANNEL_WIDTH-1 downto 0);
		);
end entity in_converter;

architecture bev of in_converter is 

	component  in_sram is
	port
	(
		aclr_a		: IN STD_LOGIC;
		aclr_b		: IN STD_LOGIC;
		address_a	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		address_b	: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock_a		: IN STD_LOGIC;
		clock_b		: IN STD_LOGIC;
		data_a		: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
		data_b		: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
		rden_a		: IN STD_LOGIC;
		rden_b		: IN STD_LOGIC;
		wren_a		: IN STD_LOGIC;
		wren_b		: IN STD_LOGIC;
		q_a			: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
		q_b			: OUT STD_LOGIC_VECTOR (39 DOWNTO 0)
	);
	end component;

