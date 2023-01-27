library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity top_level is 
	port (
		clk125								: IN  std_logic;
		reset 				 				: IN  std_logic;
		enb									: IN  std_logic;

		-- from the simunlink wrapper
		din     								: IN  std_logic_vector(31 DOWNTO 0);
		
		-- to the simunlink wrapper
		dout    								: OUT  std_logic_vector(31 DOWNTO 0)
		
		);
end entity top_level;

architecture bev of top_level is 

	component in_adapt is 
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
	end component in_adapt;
	
	
	component out_adapt is 
	generic(	
		NUM_CHANNEL 			 : integer 	:= 40;
		CHANNEL_WIDTH			 : integer 	:= 6  
	);
	port (
		clk_a   				 				: IN  std_logic;
		clk_b   				 				: IN  std_logic;
		enb   				 				: IN  std_logic;
		reset 				 				: IN  std_logic;
		
		-- to the simunlink wrapper
		dout    							: OUT  std_logic_vector(31 DOWNTO 0);
		
		
		-- link to the "to be tested"
	
		--from AST interface  
		ast_sink_ready					: OUT std_logic; 

		--to AST interface
		ast_sink_valid					: IN std_logic;													 												
		ast_sink_sop					: IN std_logic;													 
		ast_sink_eop					: IN std_logic;	
		ast_sink_data					: IN std_logic_vector(31 downto 0);
		ast_sink_channel				: IN std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
	end component out_adapt;

	
	constant NUM_CHANNEL 			 : integer 	:= 40;
	constant CHANNEL_WIDTH			 : integer 	:= 6 ;

	signal s_ast_ready				: std_logic;	
	signal s_ast_valid				: std_logic;	
	signal s_ast_sop					: std_logic;	
	signal s_ast_eop					: std_logic;	
	signal s_ast_data					: std_logic_vector(31 downto 0);	
	signal s_ast_channel				: std_logic_vector(CHANNEL_WIDTH-1 downto 0);	
	
	begin
	
	in_adapter : in_adapt 
	port map(
		clk_a									=> clk125,  				 				
		clk_b  				 				=> clk125,
		enb   								=> enb,				 				
		reset 				 				=> reset,
		
		din     								=> din,							
		
		ast_source_ready					=> s_ast_ready,

		ast_source_valid					=> s_ast_valid,
		ast_source_sop						=> s_ast_sop,
		ast_source_eop						=> s_ast_eop,
		ast_source_data					=> s_ast_data,
		ast_source_channel				=> s_ast_channel
		);
		
		
	out_adapter : out_adapt 
	port map(
		clk_b  								=> clk125, 				 				
		clk_a   				 				=> clk125,
		enb   				 				=> enb,
		reset 				 				=> reset,	
		
		dout    								=> dout,
		
		ast_sink_ready						=> s_ast_ready,

		--to AST interface
		ast_sink_valid						=> s_ast_valid,
		ast_sink_sop						=> s_ast_sop,
		ast_sink_eop						=> s_ast_eop,
		ast_sink_data						=> s_ast_data,
		ast_sink_channel					=> s_ast_channel
		);
		
end bev;
		