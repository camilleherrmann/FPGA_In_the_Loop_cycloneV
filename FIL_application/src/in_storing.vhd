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

signal round 								: std_logic_vector(1 downto 0):="00";
signal curr_head 							: std_logic_vector(7 downto 0):=(others => '0');
signal addr									: std_logic_vector(9 downto 0);
signal s_wren								: std_logic;


begin 

	u_wren : process(clk_a,reset, round, curr_head)
		begin 
		
		if (reset = '0') then
			s_wren 					<= '0';
			
		elsif(clk_a'event and clk_a='1') then
			if (round = "11" and curr_head = (curr_head'range => '1')) then
				s_wren				<= '0';
			else s_wren 			<= '1';
			end if;
		end if;
	end process;
				

	u_data_addr : process(clk_a,reset,enb,s_wren)
		begin
		if (reset = '0') then
				addr		 			<= (others => '0');
				data_a 				<= (others => '0');
				round 					<= "00";
				curr_head 				<= (others => '0');
			
		elsif(clk_a'event and clk_a='1') then
			if (s_wren = '1' and enb ='1') then
				addr		 			<= round & curr_head;
				data_a 				<= curr_head & din;
				curr_head 			<= curr_head + 1;
				if (curr_head = (curr_head'range => '1')) then
					round 			<= round + 1;
				end if;
			end if;	
		end if;
	end process;
	
address_a 		<= addr;
wren_a			<= s_wren;
	
end behav;
