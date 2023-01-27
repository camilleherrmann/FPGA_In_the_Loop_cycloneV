library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use ieee.std_Logic_unsigned.all;

entity in_storing is 
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
end entity in_storing;

architecture behav of in_storing is

signal s_data								: STD_LOGIC_VECTOR (31 DOWNTO 0):=(others => '0');
signal s_wren								: std_logic;


begin 
	

	
	MEF_in_storing : process (reset, clk_a)
begin

	if (reset = '1') then
		s_data 					<= (others => 'X');
		s_wren					<= '0';
		
	elsif (clk_a'event and clk_a = '1') then
		if (enb = '1') then
			s_wren				<= '1';
			s_data				<= din;
		else 
			s_wren				<= '0';
			s_data				<= (others => '0');
		end if;
	end if;
end process;
	
wrreq				<= s_wren;
data 				<= s_data;
	
end behav;
