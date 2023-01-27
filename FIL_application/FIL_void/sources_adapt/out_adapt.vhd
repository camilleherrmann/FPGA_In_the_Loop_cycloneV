library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity out_adapt is 
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
end entity out_adapt;

architecture bev of out_adapt is 

	component fifo_out IS
	PORT
	(
		data			: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdclk			: IN STD_LOGIC ;
		rdreq			: IN STD_LOGIC ;
		wrclk			: IN STD_LOGIC ;
		wrreq			: IN STD_LOGIC ;
		q				: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		rdempty			: OUT STD_LOGIC ;
		wrfull			: OUT STD_LOGIC 
	);
	END component fifo_out;
	
	component out_storing is 
	generic (	
		NUM_CHANNEL 		: integer 	:= 40;
		CHANNEL_WIDTH		: integer 	:= 6  
	);
	port (
			clk_b	   						: IN  std_logic;
			enb    							: IN  std_logic;
			reset  							: IN  std_logic;
			
			-- to FIFO
			data							: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			wrreq							: OUT STD_LOGIC ;
			wrfull							: IN STD_LOGIC;
			
			--to AST interface  
			ast_sink_ready					: OUT std_logic; 
	
			--from AST interface
			ast_sink_valid					: IN std_logic;													 												
			ast_sink_sop					: IN std_logic;													 
			ast_sink_eop					: IN std_logic;	
			ast_sink_data					: IN std_logic_vector(31 downto 0);
			ast_sink_channel				: IN std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end  component out_storing;

	
	component out_stream is
	port(
		clk_a    					 : IN  std_logic;
		enb    						 : IN  std_logic;
		reset  						 : IN  std_logic;
		
		--to matlab
		dout						: OUT std_logic_vector(31 downto 0);
		
		--from fifo
		rdreq						: OUT STD_LOGIC ;
		q							: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wrfull						: IN STD_LOGIC;
		rdempty						: IN STD_LOGIC
		);
	end component out_stream;

	signal s_data_in, s_data_out		: std_logic_vector(31 downto 0);
	signal s_full, s_empty				: std_logic  ;
	signal s_read, s_write				: std_logic  ;
	
begin
	
	entry2 : out_storing 
	port map(
			clk_b	   					=> clk_b,
			enb    						=> enb,
			reset  						=> reset,
			
			data						=> s_data_in,
			wrreq						=> s_write,
			wrfull						=> s_full,
			
 			ast_sink_ready				=> ast_sink_ready,
												
			ast_sink_valid				=> ast_sink_valid,
			ast_sink_sop				=> ast_sink_sop,
			ast_sink_eop				=> ast_sink_eop,
			ast_sink_data				=> ast_sink_data,
	      ast_sink_channel       => ast_sink_channel
			);
			
	fifo : fifo_out 
	port map(
			data					=> s_data_in,
			rdclk					=> clk_a,
			rdreq					=> s_read,
			wrclk					=> clk_b,
			wrreq					=> s_write,
			q						=> s_data_out,
			rdempty					=> s_empty,
			wrfull					=> s_full				
			);

	output2 : out_stream 
	port map(
			clk_a    				=> clk_a,
			enb    					=> enb,	
			reset  					=> reset,
            				
	        dout					=> dout,
							
			rdreq					=> s_read,
			q						=> s_data_out,
			wrfull					=> s_full,
			rdempty					=> s_empty
			); 
			
end bev;
		