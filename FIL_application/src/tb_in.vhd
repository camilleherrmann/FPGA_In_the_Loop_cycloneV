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
		din    					 : IN  std_logic_vector(31 DOWNTO 0);
		
		
		-- taken from the "to be tested" model
		ast_sink_valid			: out std_logic;													 												
		ast_sink_sop			: out std_logic;													 
		ast_sink_eop			: out std_logic;													
		ast_sink_data			: out std_logic_vector(31 downto 0);
		ast_sink_channel		: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end component in_adapt;

constant CLK_PERIOD_125MHZ 		: time := 8 ns;
constant CHANNEL_WIDTH			   : integer 	:= 6;

signal clk   				 	: std_logic;
signal enb   				 	: std_logic;
signal reset 				 	: std_logic;

signal din    					: std_logic_vector(31 DOWNTO 0);

signal ast_sink_valid		: std_logic;													 												
signal ast_sink_sop			: std_logic;													 
signal ast_sink_eop			: std_logic;													
signal ast_sink_data			: std_logic_vector(31 downto 0);
signal ast_sink_channel		: std_logic_vector(CHANNEL_WIDTH-1 downto 0)	;


begin

	signal_clk: process
	Begin
		clk  <= '1' ; 
		wait for CLK_PERIOD_125MHZ/2 ;
		clk  <= '0'  ;
		wait for CLK_PERIOD_125MHZ/2 ;
	End Process;
	
	rst_enb: process
	begin 	
		reset 	<= '0';
		enb 		<= '0';
		din		<= (others => '0');
		wait for 8ns;
		reset 	<= '1';
		wait for 16ns;
		enb 	<= '1';
		wait;
	end process;
	
	data : process(clk)
	begin
		din 	<= din + 3;
	end process;

end testbench;
		