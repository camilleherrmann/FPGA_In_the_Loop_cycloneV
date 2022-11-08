library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

entity tb_btn_memory is 
end entity tb_btn_memory;

architecture bev of tb_btn_memory is 

	component test_btn_memory is
		port (rst 		: in std_logic;
			clk 		: in std_logic;
			btn		: in std_logic;
			led		: out std_logic
			);
	end component;
	
	signal rst_s, clk_s, ld_s,btn_s : std_logic;
	
	begin
	
	uut: test_btn_memory port map (rst => rst_s, clk => clk_s,btn => btn_s, led => ld_s);
	
	clock: process
	begin
		clk_s <= '0';
		wait for 10 ns;
		loop
			clk_s <= not (clk_s);
			wait for 10ns;
		end loop;
	end process clock;
	
	led: process
	begin
		rst_s <= '0';
		wait for 50 ns;
		btn_s <= '1';
		wait for 50 ns;
		btn_s <= '0';
		wait for 60 ns;
	end process led;
	
end bev;