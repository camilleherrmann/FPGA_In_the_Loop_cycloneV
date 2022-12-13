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
			data_b							: OUT STD_LOGIC_VECTOR (39 DOWNTO 0):= (others => '0');
			rden_b							: OUT STD_LOGIC  := '1';
			wren_b							: OUT STD_LOGIC  := '0';
			q_b								: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
			
			--from AST interface  
			ast_source_ready				: in std_logic; 
			ast_source_channel			: in std_logic_vector(CHANNEL_WIDTH-1 downto 0);
	
			--to AST interface
			ast_sink_valid					: out std_logic;													 												
			ast_sink_sop					: out std_logic;													 
			ast_sink_eop					: out std_logic;	
			ast_sink_ready					: out std_logic; 
			ast_sink_data					: out std_logic_vector(31 downto 0);
			ast_sink_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end entity in_conv;

architecture behav of in_conv is

type 	 states								is (state1, state2);
signal state								: states;
signal s_channel 							: std_logic_vector(CHANNEL_WIDTH-1 downto 0);
signal s_sop, s_eop,s_valid, s_rden	: std_logic;
signal addr, buff_addr					: std_logic_vector(9 downto 0):= (others => '0');
signal out_ready 							: std_logic;
signal round1								: std_logic_vector(1 downto 0):="00";
-- signal round2 								: std_logic_vector(7 downto 0):=(others => '0');

begin

--	u_readenable : process(reset,enb)
--	begin
--		if (reset = '0') then
--			s_rden	  				<='0';		
--			elsif (enb = '1')  then
--				s_rden				<='1';
--		end if;
--	end process;
--	
	u_ast_valid : process (clk_b,reset,enb)
		begin
			if (reset = '0') then
			s_valid 					<= '0';	
			s_rden					<= '0';	
			elsif(clk_b'event and clk_b='1') then
				if (enb = '1' and addr = (addr'range => '0')) then 
					s_valid 			<='1';
					s_rden			<='1';
				end if;
				if (enb = '1' and addr = (addr'range => '1')) then
				 	s_valid		<= '0';
					s_rden		<= '0';
				end if;
			end if;
	end process;
			


	u_main_part : process(reset,clk_b)
	begin
		if (reset = '0') then
			state 				<= state1;
			s_channel			<= (others => '0');
			addr	  				<= (others => '0');
			out_ready			<= '0';
			s_sop 				<= '0';
			s_eop					<= '0';
		
		elsif (clk_b'event and clk_b='1') then

		case state is 
		
			when state1 =>
				out_ready 		<= '1';
				s_eop				<= '0';
				if (s_valid = '1' and ast_source_ready = '1') then
				   out_ready	<= '0';
					s_sop			<= '1';
					s_channel 	<= ast_source_channel;
					ast_sink_data	<= q_b(31 downto 0);
					addr 				<= addr + 1;	
					state			<= state2;
				end if;
			
			when state2 =>
				s_sop 			<= '0';
				if( q_b(39 downto 32) = addr(7 downto 0) ) then
					if(s_valid = '1' and ast_source_ready = '1') then 
					s_eop				<= '1';
					out_ready		<= '1';
					state				<= state1;
					end if;
				end if;
				
			when others =>
				out_ready		<= '1';
				state				<= state1;
		end case;	
		end if;	
	end process;
	
--	u_ast_addr : process(clk_b, reset, enb)
--	begin
--		if (reset = '0') then
--			addr	  				<= (others => '0');	
--			buff_addr	  		<= (others => '0');
--			round1				<= (others => '0');	
--			elsif(clk_b'event and clk_b='1') then
--				if (state = state1 and ) then 					-- CAMILLE REFLECHIS COMMENT NE PAS DEPASSER LE nIVEAU DE sRAM
--				addr 	<= addr + 1;
--				else		
--				next_addr 		<= addr + 1;
--				end if;
--				if (q_b(39 downto 32) = "11111111" ) then
--					round1 		<= round1 + 1;
--				end if;
--		end if;
--	end process;



ast_sink_channel		 <= s_channel;
ast_sink_sop			 <= s_sop;
ast_sink_eop			 <= s_eop;
ast_sink_valid			 <= s_valid;
rden_b 					 <= s_rden;
address_b 				 <= addr;
ast_sink_ready 		 <= out_ready;
	
end behav;		
			
			
			
			
			
			