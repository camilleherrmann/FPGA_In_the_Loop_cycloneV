library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity out_storing is 
	generic (	
		NUM_CHANNEL 		: integer 	:= 40;
		CHANNEL_WIDTH		: integer 	:= 6  
	);
	port (
			clk_b	   						: IN  std_logic;
			enb    							: IN  std_logic;
			reset  							: IN  std_logic;
			
			-- to FIFO
			data								: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			wrreq								: OUT STD_LOGIC ;
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
end entity out_storing;

architecture bev of out_storing is 

type 	 states								is (state0, state1, state2, state3, state4);
signal state								: states;
signal s_data 								: std_logic_vector (31 downto 0);
signal s_write, s_ready					: std_logic;
							

begin 

MEF_storing : process (clk_b, reset)
	begin
	
	if (reset = '0') then
		state 					<= state0;
		
	elsif (clk_b'event and clk_b = '1') then
		case state is 
		
		when state0 => 
			s_data 				<= (others => '0');
			s_write				<= '0';
			s_ready				<= '0';
			state					<= state1;
			
		when state1 =>
			s_ready 				<= '1';
			if (ast_sink_sop = '1') then
				state 			<= state2;
			end if;
			
		when state2 =>
			if (ast_sink_valid ='1') then
				s_data 			<= ast_sink_data;
				s_write			<= '1';
				s_ready			<= '0';
				state				<= state3;
			end if;
		
		when state3 =>
			s_write			<= '0';
			if (ast_sink_eop = '1' or wrfull = '1') then 
				state					<= state4;
			else s_ready			<= '1';
				  state				<= state2;
			end if;
			
		when state4 =>
			s_write				<= '0';
			s_ready				<= '0';
				
		when others =>
			state						<= state0;
			
		end case;
	end if;
end process;

	
data					<= s_data;				
wrreq					<= s_write;			

ast_sink_ready		<= s_ready;

end bev;