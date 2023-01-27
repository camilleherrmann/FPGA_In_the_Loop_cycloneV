library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity in_adapt is 
generic(	
		NUM_CHANNEL 					 : integer 	:= 40;
		CHANNEL_WIDTH					 : integer 	:= 6  
	);
	port (
		clk   				 			 : IN  std_logic;
		enb   				 			 : IN  std_logic;
		reset 				 			 : IN  std_logic;
		
		-- from the simunlink wrapper
		din     							 : IN  std_logic_vector(31 DOWNTO 0);
		
		
		-- link to the "to be tested"
	
		--from AST sink  	
		ast_source_ready					: in std_logic; 

		--to AST sink
		ast_source_valid					: out std_logic;													 												
		ast_source_sop						: out std_logic;													 
		ast_source_eop						: out std_logic;	
		ast_source_data					: out std_logic_vector(31 downto 0);
		ast_source_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end entity in_adapt;

architecture bev of in_adapt is 

component fifo IS
	PORT
	(
		data									: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdclk									: IN STD_LOGIC ;
		rdreq									: IN STD_LOGIC ;
		wrclk									: IN STD_LOGIC ;
		wrreq									: IN STD_LOGIC ;
		q										: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdempty								: OUT STD_LOGIC ;
		wrfull								: OUT STD_LOGIC 
	);
END component fifo;
	
	component in_storing is 
	port (
			clk_a    					 : IN  std_logic;
			enb    						 : IN  std_logic;
			reset  						 : IN  std_logic;
			
			-- from the simunlink wrapper
			din    						 : IN  std_logic_vector(31 DOWNTO 0);
			
			
			data							: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			wrreq							: OUT STD_LOGIC ;
			rdempty						: IN STD_LOGIC ;
			wrfull						: IN STD_LOGIC 
			);
end component in_storing;
	
component in_conv is 
	generic(	
		NUM_CHANNEL 					: integer 	:= 40;
		CHANNEL_WIDTH					: integer 	:= 6  
	);
	port (
			clk_b    					: IN  std_logic;
			enb    						: IN  std_logic;
			reset  						: IN  std_logic;
			
			-- from fifo
			rdreq							: OUT STD_LOGIC ;
			q								: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			rdempty						: IN STD_LOGIC ;
			wrfull						: IN STD_LOGIC ;
				
			--from AST sink  		
			ast_source_ready			: in std_logic; 
		
			--to AST sink	
			ast_source_valid			: out std_logic;													 												
			ast_source_sop				: out std_logic;													 
			ast_source_eop				: out std_logic;	
			ast_source_data			: out std_logic_vector(31 downto 0);
			ast_source_channel		: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)
		
		);
end component in_conv;
	
	signal s_data, s_q				: std_logic_vector(31 downto 0);
	signal s_wren_a, s_rden_b		: std_logic := '0' ;
	signal s_full, s_empty			: std_logic;
	
begin
	
	entry : in_storing port map(
			clk_a    					=> clk,
			enb    						=> enb,	
			reset  						=> reset,

			din    						=> din,
	
			data							=> s_data,
			wrreq							=> s_wren_a,
			rdempty						=> s_empty,
			wrfull						=> s_full
			);
			
	buf : fifo port map(
			data							=> s_data,									
			rdclk							=> clk,				
			rdreq							=> s_rden_b,						
			wrclk							=> clk	,					
			wrreq							=> s_wren_a	,					
			q								=> s_q,						
			rdempty						=> s_empty,					
			wrfull						=> s_full						
			);						
						
	output : in_conv port map(					
			clk_b    					=> clk,
			enb    						=> enb,
			reset  						=> reset,

			rdreq							=> s_rden_b,
			q								=> s_q,
			rdempty						=> s_empty,
			wrfull						=> s_full,
 
			ast_source_ready			=> ast_source_ready,
			ast_source_valid			=> ast_source_valid,
			ast_source_sop				=> ast_source_sop,
			ast_source_eop				=> ast_source_eop,
			ast_source_data			=> ast_source_data,
			ast_source_channel		=> ast_source_channel
			);
			
end bev;
		