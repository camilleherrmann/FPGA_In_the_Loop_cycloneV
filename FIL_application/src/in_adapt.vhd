library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity in_adapt is 
generic(	
		NUM_CHANNEL 					 : integer 	:= 40;
		CHANNEL_WIDTH					 : integer 	:= 6  
	);
	port (
		clk_a   				 			 : IN  std_logic;
		clk_b  				 			 : IN  std_logic;
		enb   				 			 : IN  std_logic;
		reset 				 			 : IN  std_logic;
		
		-- from the simunlink wrapper
		din     							 : IN  std_logic_vector(31 DOWNTO 0);
		
		
		-- link to the "to be tested"
	
		--from AST sink  	
		ast_source_ready						: in std_logic; 

		--to AST sink
		ast_source_valid					: out std_logic;													 												
		ast_source_sop						: out std_logic;													 
		ast_source_eop						: out std_logic;	
		ast_source_data					: out std_logic_vector(31 downto 0);
		ast_source_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end entity in_adapt;

architecture bev of in_adapt is 

	component  in_sram is
	port
	(
		aclr_a							: IN STD_LOGIC;
		aclr_b							: IN STD_LOGIC;
		address_a						: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		address_b						: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock_a							: IN STD_LOGIC;
		clock_b							: IN STD_LOGIC;
		data_a							: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
		data_b							: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
		rden_a							: IN STD_LOGIC;
		rden_b							: IN STD_LOGIC;
		wren_a							: IN STD_LOGIC;
		wren_b							: IN STD_LOGIC;
		q_a								: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
		q_b								: OUT STD_LOGIC_VECTOR (39 DOWNTO 0)
	);
	end component in_sram;
	
	component in_storing is 
	port (
			clk_a    					 : IN  std_logic;
			enb    						 : IN  std_logic;
			reset  						 : IN  std_logic;
			
			-- from the simunlink wrapper
			din    						 : IN  std_logic_vector(31 DOWNTO 0);
			
			-- to the SRAM a ports
			address_a					: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			data_a						: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
			rden_a						: OUT STD_LOGIC := '0' ;
			wren_a						: OUT STD_LOGIC;
			q_a							: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
			
			start							: out std_logic
		);
	end component in_storing;
	
	component in_conv is 
	generic(	
			NUM_CHANNEL 		: integer 	:= 40;
			CHANNEL_WIDTH		: integer 	:= 6 
		);	
	port (
			clk_b    						: IN  std_logic;
			enb    							: IN  std_logic;
			reset  							: IN  std_logic;
			
			-- from SRAM B
			address_b						: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			data_b							: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
			rden_b							: OUT STD_LOGIC;
			wren_b							: OUT STD_LOGIC;
			q_b								: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
			
			--from AST sink  	
			ast_source_ready						: in std_logic; 
	
			--to AST sink
			ast_source_valid					: out std_logic;													 												
			ast_source_sop						: out std_logic;													 
			ast_source_eop						: out std_logic;	
			ast_source_data					: out std_logic_vector(31 downto 0);
			ast_source_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0);
			
			start 								: in std_logic
		);
end component in_conv;
	
	signal s_addr_a, s_addr_b 			: std_logic_vector(9 downto 0);
	signal s_data_a, s_q_b, s_q_a, s_data_b	: std_logic_vector(39 downto 0);
	signal s_wren_a, s_rden_b			: std_logic := '1' ;
	signal s_start							: std_logic;
	
begin
	
	entry : in_storing port map(
			clk_a    					=> clk_a,
			enb    						=> enb,	
			reset  						=> reset,

			din    						=> din,
	
			address_a					=> s_addr_a,
			data_a						=> s_data_a,
			rden_a						=> open,
			wren_a						=> s_wren_a,
			q_a							=> s_q_a,
			start							=> s_start
			);
			
	ram : in_sram port map(
			aclr_a						=> '0',
			aclr_b						=> '0',
			address_a					=> s_addr_a,
			address_b					=> s_addr_b,
			clock_a						=> clk_a,
			clock_b						=> clk_b,
			data_a						=> s_data_a,
			data_b						=> (others => '0'),
			rden_a						=> '0',
			rden_b						=> s_rden_b,
			wren_a						=> s_wren_a,
			wren_b						=> '0',
			q_a							=> s_q_a,
			q_b							=> s_q_b
			);

	output : in_conv port map(
			clk_b    					=> clk_b,
			enb    						=> enb,
			reset  						=> reset,

			address_b					=> s_addr_b,
			data_b						=> open,
			rden_b						=> s_rden_b,
			wren_b						=> open,
			q_b							=> s_q_b,
 
			ast_source_ready			=> ast_source_ready,
			ast_source_valid			=> ast_source_valid,
			ast_source_sop				=> ast_source_sop,
			ast_source_eop				=> ast_source_eop,
			ast_source_data			=> ast_source_data,
			ast_source_channel		=> ast_source_channel,
			
			start							=> s_start
			);
			
end bev;
		