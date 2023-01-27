library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use ieee.std_Logic_unsigned.all;

entity in_conv is 
generic(	
		NUM_CHANNEL 		: integer 	:= 40;
		CHANNEL_WIDTH		: integer 	:= 6  
	);
	port (
			clk_b    				: IN  std_logic;
			enb    					: IN  std_logic;
			reset  					: IN  std_logic;
			
			-- from fifo
			rdreq						: OUT STD_LOGIC ;
			q							: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			rdempty					: IN STD_LOGIC ;
			wrfull					: IN STD_LOGIC ;
			
			--from AST sink  	
			ast_source_ready		: in std_logic; 
	
			--to AST sink
			ast_source_valid		: out std_logic;													 												
			ast_source_sop			: out std_logic;													 
			ast_source_eop			: out std_logic;	
			ast_source_data		: out std_logic_vector(31 downto 0);
			ast_source_channel	: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)
		
		);
end entity in_conv;

architecture behav of in_conv is

type 	 states								is (state0, state1, state2);
signal state								: states;
signal s_channel 							: std_logic_vector(CHANNEL_WIDTH-1 downto 0):= (others => '0');
signal s_sop, s_eop, s_rden, s_valid: std_logic;
signal s_data								: std_logic_vector(31 downto 0);

begin

MEF_out : process(reset,clk_b)
	begin
		if (reset = '1') then
			state 					<= state0;
			s_rden					<= '0';
			s_valid					<= '0';
			s_data					<= (others => 'X');
			s_channel				<= (others => '0');			
			
		elsif (clk_b'event and clk_b='1') then
		case state is 
					
			when state0 =>
				if (rdempty /= '1') then
				state						<= state1;
				s_rden					<= '1';
				end if; 
				
			when state1 =>
				s_data					<= q;
				s_rden					<= '0';
				s_valid					<= '1';
				state					<= state2;
				
			when state2 =>
				if(ast_source_ready='1') then
					s_valid					<= '0';
					state					<= state0;
				end if;
				
			when others =>
				state 					<= state0;
					
		end case;	
		end if;	
	end process;
	

ast_source_data		 <= s_data;
ast_source_channel	 <= s_channel;
ast_source_sop			 <= s_sop;
ast_source_eop			 <= s_eop;
rdreq 					 <= s_rden;
ast_source_valid		 <= s_valid;

end behav;		
			
			
			
			
			
			