library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity btn_led is 
	port (rst 		: in std_logic;
			clk 		: in std_logic;
			btn		: in std_logic;
			led		: out std_logic;
			addr		: out natural range 0 to 255;
			data		: out std_logic_vector(14 downto 0)
			);
end entity btn_led;
	

architecture archi of btn_led is 

	signal s_led		:std_logic := '0';
	signal s_oldbtn	:std_logic := '1';
	signal count_s		:std_logic_vector(10 downto 0) := (others => '0');
	signal tmp_ns_s	:std_logic_vector(14 downto 0):= (others => '0');
	signal addr_s		:natural range 0 to 255 := 0;

	begin

	process(clk,rst,btn)

		begin
		
		if (rst='1') then 
			s_led				<='0';
			s_oldbtn			<='1';
			count_s			<= (others => '0');
			tmp_ns_s			<= (others => '0');
			
		elsif (clk'event and clk ='1') then 
			count_s 			<= count_s + 1;
			tmp_ns_s 		<= (count_s & "0000") + ("00" & count_s & "00");
			-- count est le nombre de cycle, pour avoir le temps on multiplie par 20 donc 16+4
			-- pas de prise en compte fin des compteurs 
			if (btn ='0' and s_oldbtn='1') then
				addr			<= addr_s;
				addr_s		<= addr_s + 1;
				data			<= tmp_ns_s;
				s_led 		<= not(s_led);
				s_oldbtn 	<= '0';
				
			elsif( btn = '1') then
				s_oldbtn 	<= '1';
			
			end if;		
		end if;
		
	end process;

	led 		<= s_led;

end archi;
		
				