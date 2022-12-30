library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use IEEE.Std_Logic_unsigned.all;

entity tb is 
end entity tb;

architecture testbench of tb is

component  top_level is 
	port (
		clk   				 				: IN  std_logic;
		enb   				 				: IN  std_logic;
		reset 				 				: IN  std_logic;

		-- from the simunlink wrapper
		din     								: IN  std_logic_vector(31 DOWNTO 0);
		
		-- to the simunlink wrapper
		dout    								: OUT  std_logic_vector(31 DOWNTO 0)
		
		);
end component top_level;

constant CLK_PERIOD_125MHZ 		: time := 8 ns;
constant CLK_PERIOD_20MHZ 		: time := 50 ns;

signal s_clk   				 	: std_logic;
signal s_enb   				 	: std_logic;
signal s_reset 				 	: std_logic;

signal s_din    				: std_logic_vector(31 DOWNTO 0) := (others => '0');

signal s_dout					: std_logic_vector(31 DOWNTO 0);


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
		s_enb 					<= '1';
		wait for 4 ns;
		s_reset 					<= '1';
		wait;
	end process;
	
	data : process
	begin
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din + 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
		s_din	<=  s_din - 1;
		wait for CLK_PERIOD_20MHZ;
	end process;
	
	
	
	uut : top_level
	
		port map(
		clk   				 => s_clk,
		enb   				 => s_enb,
		reset 				 => s_reset,
 
		din     				=> s_din,

		dout    				=> s_dout
		);

end testbench;
		