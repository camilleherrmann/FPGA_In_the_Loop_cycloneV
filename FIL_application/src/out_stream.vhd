library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use ieee.std_Logic_unsigned.all;

entity out_stream is
port(
	clk_a    					 : IN  std_logic;
	enb    						 : IN  std_logic;
	reset  						 : IN  std_logic;
	
	--to matlab
	dout							: OUT std_logic_vector(31 downto 0);
	
	--from fifo
	rdreq							: OUT STD_LOGIC ;
	q								: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
	wrfull						: IN STD_LOGIC;
	rdempty						: IN STD_LOGIC
	);
end entity out_stream;

architecture behav of out_stream is

type 	 states								is (state0, state1, state2, state3);
signal state								: states;
signal s_data 								: std_logic_vector (31 downto 0);
signal s_read								: std_logic;

begin

MEF_out : process(reset,clk_a)
	begin
	if (reset = '1') then
		state 				<= state0;
		s_data				<= (others => 'X');
		s_read				<= '0';
			
		elsif (clk_a'event and clk_a='1') then
		if (enb = '1' and rdempty /= '1') then
			s_read				<= '1';
			s_data				<= q;
		else 
			s_read				<= '0';
			s_data				<= (others => '0');
		end if;
	end if;
end process;
				
rdreq				<= s_read;
dout				<= s_data;

end behav;
				