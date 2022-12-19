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
			q_a							: IN STD_LOGIC_VECTOR (39 DOWNTO 0):= (others => '0');
			
			start							: out std_logic
			);
end entity in_storing;

architecture behav of in_storing is

type 	 states								is (state0, state1, state2, state3);
signal state								: states;
signal addr									: std_logic_vector(9 downto 0):=(others => '0');
signal s_data								: STD_LOGIC_VECTOR (39 DOWNTO 0):=(others => '0');
signal s_wren								: std_logic;


begin 
	

	
	MEF_in_storing : process (reset, clk_a)
begin

	if (reset = '0') then
		state 					<= state0;
		
	elsif (clk_a'event and clk_a = '1') then
		case state is 
		
		when state0 => 
			rden_a				<= '0';
			s_wren				<= '0';
			addr 					<= (others => '0');
			s_data				<= (others => 'X');
			state					<= state1;
			
		when state1 =>
			start					<= '1';
			s_wren				<= '1';
			s_data 				<= addr(7 downto 0) & din;
			state					<= state2;
			
		when state2 =>
			if (addr < (addr'range =>'1')) then 
				addr 				<= addr + 1;
				s_data 			<= (addr(7 downto 0)+1) & din;
				state				<= state2;
			else state			<= state3;
			end if;
		
		when state3 =>
			s_wren				<= '0';
			state					<= state3;
			
		when others =>
			state					<= state0;
		
		end case;
	end if;
end process;
	
address_a 		<= addr;
wren_a			<= s_wren;
data_a			<= s_data;
	
end behav;
