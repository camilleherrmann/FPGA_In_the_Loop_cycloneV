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
			clk_b    						: IN  std_logic;
			enb    							: IN  std_logic;
			reset  							: IN  std_logic;
			
			-- from SRAM B
			address_b						: OUT STD_LOGIC_VECTOR (9 DOWNTO 0) := (others => '0');
			data_b							: OUT STD_LOGIC_VECTOR (39 DOWNTO 0);
			rden_b							: OUT STD_LOGIC  := '1';
			wren_b							: OUT STD_LOGIC;
			q_b								: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
			
			--from AST sink  	
			ast_source_ready						: in std_logic; 
	
			--to AST sink
			ast_source_valid					: out std_logic;													 												
			ast_source_sop						: out std_logic;													 
			ast_source_eop						: out std_logic;	
			ast_source_data					: out std_logic_vector(31 downto 0);
			ast_source_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0);
		
			start									: in std_logic
		);
end entity in_conv;

architecture behav of in_conv is

type 	 states								is (state0, state1, state2, state3);
signal state								: states;
signal s_channel 							: std_logic_vector(CHANNEL_WIDTH-1 downto 0):= (others => '0');
signal s_sop, s_eop, s_rden, s_valid: std_logic;
signal addr									: std_logic_vector(9 downto 0):= (others => '0');
signal s_data								: std_logic_vector(31 downto 0);

begin

	u_ast_pck : process (clk_b, reset)
	begin
	if (reset = '0') then
			s_sop				<= '0';	
			s_eop				<= '0';
	elsif(clk_b'event and clk_b='1') then
		if (ast_source_ready = '1' and addr = (addr'range => '0')) then 
			s_sop 			<= '1';
			else s_sop 		<= '0';
		end if;
		if (ast_source_ready= '1' and addr = (addr'range => '1')) then 
			s_eop 			<= '1';
			else s_eop 		<= '0';
		end if;
	end if;
	end process; 
	

MEF_out : process(reset,clk_b)
	begin
		if (reset = '0') then
			state 						<= state0;
			
		elsif (clk_b'event and clk_b='1') then
		case state is 
		
			when state0 =>
				s_rden					<= '0';
				addr						<= (others => '0');
				s_valid					<= '0';		
			   s_data					<= (others => 'X');
				s_channel				<= (others => '0');
				if (start = '1') then
					state					<= state1;
				end if; 
				
			when state1 =>
				s_rden					<= '1';
				state						<= state2;
			
			when state2 =>	
				if( ast_source_ready = '1' and q_b(39 downto 32) = addr(7 downto 0) ) then
				s_channel 				<= s_channel + 1;
				s_data					<= q_b(31 downto 0);	
				s_valid					<= '1';
				state						<= state3;
				else state				<= state2;
				end if;
			
			when state3 =>
				if (addr < (addr'range => '1')) then 
					addr					<= addr + 1;
					s_valid					<= '0';
					state					<= state1;
				else 
					s_rden				<= '0';
					s_valid				<= '0';
					state					<= state3;
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
rden_b 					 <= s_rden;
ast_source_valid		 <= s_valid;
address_b 				 <= addr;

data_b 					 <= (others=> 'X');
wren_b					 <= '0';
	
end behav;		
			
			
			
			
			
			