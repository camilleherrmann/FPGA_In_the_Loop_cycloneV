library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use IEEE.Std_Logic_unsigned.all;

entity tb_in is 
end entity tb_in;

architecture testbench of tb_in is

component in_adapt is 
generic(	
		NUM_CHANNEL 			 : integer 	:= 40;
		CHANNEL_WIDTH			 : integer 	:= 6  
	);
	port (
		clk   				 	 : IN  std_logic;
		enb   				 	 : IN  std_logic;
		reset 				 	 : IN  std_logic;
		
		-- from the simunlink wrapper
		din     					: IN  std_logic_vector(31 DOWNTO 0);
		
		
		-- link to the "to be tested"
	
		--from AST interface  
		ast_source_ready				: in std_logic; 
		ast_source_channel			: in  std_logic_vector(CHANNEL_WIDTH-1 downto 0);

		--to AST interface
		ast_sink_valid					: out std_logic;													 												
		ast_sink_sop					: out std_logic;													 
		ast_sink_eop					: out std_logic;	
		ast_sink_ready					: out  std_logic; 
		ast_sink_data					: out std_logic_vector(31 downto 0);
		ast_sink_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end component in_adapt;

constant CLK_PERIOD_125MHZ 		: time := 8 ns;
constant CHANNEL_WIDTH			   : integer 	:= 6;

signal s_clk   				 	: std_logic;
signal s_enb   				 	: std_logic;
signal s_reset 				 	: std_logic;

signal s_din    					: std_logic_vector(31 DOWNTO 0) := (others => '0');

signal s_ast_source_ready		: std_logic;
signal s_ast_source_channel	: std_logic_vector(CHANNEL_WIDTH-1 downto 0) := (others => '0')	; 

signal s_ast_sink_valid			: std_logic;													 												
signal s_ast_sink_sop			: std_logic;													 
signal s_ast_sink_eop			: std_logic;	
signal s_ast_sink_ready			: std_logic;												
signal s_ast_sink_data			: std_logic_vector(31 downto 0);
signal s_ast_sink_channel		: std_logic_vector(CHANNEL_WIDTH-1 downto 0)	;


begin

	signal_clk: process
	Begin
		s_clk  					<= '1' ; 
		wait for CLK_PERIOD_125MHZ/2 ;
		s_clk  					<= '0'  ;
		wait for CLK_PERIOD_125MHZ/2 ;
	End Process;
	
	rst_enb: process
	begin 	
		s_reset 					<= '0';
		s_enb 					<= '0';
		s_ast_source_ready 	<= '1';
		wait for 8ns;
		s_reset 					<= '1';
		wait for 16ns;
		s_enb 					<= '1';
		wait;
	end process;
	
	data : process
	begin
		s_din 					<= s_din + 1;
		s_ast_source_channel	<= s_ast_source_channel + 1;
		wait for CLK_PERIOD_125MHZ;
	end process;
	
	
	
	uut : in_adapt
	generic map(	
		NUM_CHANNEL 			 => 40,
		CHANNEL_WIDTH			 => 6  
	)
		port map (
		clk   				 	 => s_clk,
		enb   				 	 => s_enb,
		reset 				 	 => s_reset,
		
		-- from the simunlink wrapper
		din     					 => s_din,
		
		
		-- link to the "to be tested"
	
		--from AST interface  
		ast_source_ready		=> s_ast_source_ready,
		ast_source_channel	=> s_ast_source_channel,

		--to AST interface
		ast_sink_valid			=> s_ast_sink_valid,
		ast_sink_sop			=> s_ast_sink_sop,
		ast_sink_eop			=> s_ast_sink_eop,
		ast_sink_ready			=> s_ast_sink_ready,
		ast_sink_data			=> s_ast_sink_data,
		ast_sink_channel		=> s_ast_sink_channel
		);

end testbench;
		