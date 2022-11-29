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
			address_b						: OUT STD_LOGIC_VECTOR (9 DOWNTO 0);
			data_b							: OUT STD_LOGIC_VECTOR (39 DOWNTO 0):= (others => '0');
			rden_b							: OUT STD_LOGIC  := '1';
			wren_b							: OUT STD_LOGIC  := '0';
			q_b								: IN STD_LOGIC_VECTOR (39 DOWNTO 0);
			
			--from AST interface  
			ast_source_ready				: out std_logic; 
			ast_source_channel			: in  std_logic_vector(CHANNEL_WIDTH-1 downto 0);
	
			--to AST interface
			ast_sink_valid					: out std_logic;													 												
			ast_sink_sop					: out std_logic;													 
			ast_sink_eop					: out std_logic;	
			ast_sink_ready					: in  std_logic; 
			ast_sink_data					: out std_logic_vector(31 downto 0);
			ast_sink_channel				: out std_logic_vector(CHANNEL_WIDTH-1 downto 0)	
		);
end entity in_conv;

architecture behav of in_conv is

signal s_channel : std_logic_vector(CHANNEL_WIDTH-1 downto 0);
signal s_sop, s_eop,s_valid, s_rden : std_logic;
signal addr 	: std_logic_vector(9 downto 0);
signal in_ready, out_ready : std_logic;

begin

	in_ready <= ast_sink_ready;
	ast_source_ready <= out_ready;

	u_ready : process(clk_b,reset, enb)
	begin
		if(reset='0')then
			out_ready	<= '0';
		elsif(clk_b'event and clk_b='1') then
			if (enb = '1' and in_ready ='1') then
				out_ready <= '1';	
			end if;
		end if;
	end process;
	

	u_channel : process(clk_b, reset)
	begin
		if (reset = '0') then
			s_channel 				<= (others => '0');
		elsif (clk_b'event and clk_b='1') then
			if (out_ready ='1' and s_valid ='1') then 
			s_channel				<= s_channel + 1;
			end if;
		end if;
	end process;

		
	u_ast_sop : process(clk_b, reset)
	begin
		if (reset = '0') then
			s_sop 					<= '0';
		elsif(clk_b'event and clk_b='0') then
			if (s_channel = (s_channel'range => '1')) then
				s_sop 				<= '1';
			else s_sop				<= '0';
			end if;
		end if;
	end process;	
		
	u_ast_eop : process(clk_b, reset)
	begin
		if (reset = '0') then
			s_eop 					<= '0';
		elsif(clk_b'event and clk_b='1') then
			if (s_channel = (s_channel'range => '0')) then
				s_eop 				<= '1';
			else s_eop				<= '0';
			end if;
		end if;
	end process;
	
	u_ast_valid : process (clk_b,reset,enb)
		begin
			if (reset = '0') then
			s_valid 				<= '0';		
			elsif(clk_b'event and clk_b='1' and enb = '1') then
					s_valid <='1';
					if (s_rden = '0') then 
						s_valid		<= '0';
					end if;
			end if;
	end process;
			
	u_ast_data : process(clk_b, reset, enb)
	begin
		if (reset = '0') then
			addr	  				<= (others => '0');		
			elsif(clk_b'event and clk_b='1') then
				if (enb = '1' and s_rden ='1' and s_valid ='1') then 
				ast_sink_data <= q_b(31 downto 0);
					if (addr = (addr'range => '1')) then
					s_rden					<= '0';
					else
					addr				<=addr + '1';
					end if;
				end if;
		end if;
	end process;

ast_sink_channel		 <= s_channel;
ast_sink_sop			 <= s_sop;
ast_sink_eop			 <= s_eop;
ast_sink_valid			 <= s_valid;
rden_b 					 <= s_rden;
address_b 				 <= addr;
	
end behav;		
			
			
			
			
			
			