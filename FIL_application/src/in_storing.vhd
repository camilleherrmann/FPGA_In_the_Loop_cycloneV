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
			
			
			-- to the SRAM a ports
			address_a					: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			data_a						: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
			rden_a						: OUT STD_LOGIC := '0' ;
			wren_a						: OUT STD_LOGIC;
			q_a							: IN STD_LOGIC_VECTOR (39 DOWNTO 0):= (others => '0')
			);
end entity in_storing;

architecture behav of in_storing is

signal curr_head 							: std_logic_vector(9 downto 0):=(others => '0');
signal addr									: std_logic_vector(9 downto 0):=(others => '0');
signal s_data								: STD_LOGIC_VECTOR (39 DOWNTO 0):=(others => '0');
signal s_wren								: std_logic;


begin 

	u_wren : process(clk_a,reset)
		begin 
		
		if (reset = '0') then
			s_wren 					<= '0';
			
		elsif(clk_a'event and clk_a='1') then
			if (addr = (addr'range => '0')) then
				s_wren				<= '1';
			end if;
			if (addr = (addr'range => '1')-1) then
				s_wren				<= '0';
			end if;
		end if;
	end process;
				

	u_data_addr : process(clk_a,reset,enb)
		begin
		if (reset = '0') then
				addr		 			<= (others => '0');
				s_data 				<= (others => '0');
				curr_head 			<= (others => '0');
			
		elsif(clk_a'event and clk_a='1') then
			if (s_wren = '1' and enb ='1') then
				addr		 		<= curr_head;
				s_data			<= curr_head(7 downto 0) & din;
				curr_head 		<= curr_head + 1;
			end if;	
		end if;
	end process;
	
address_a 		<= addr;
wren_a			<= s_wren;
data_a			<= s_data;
	
end behav;
