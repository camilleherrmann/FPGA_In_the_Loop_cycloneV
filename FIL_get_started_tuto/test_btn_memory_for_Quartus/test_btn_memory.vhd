library ieee;
use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;


entity test_btn_memory is
	port (rst 		: in std_logic;
			clk 		: in std_logic;
			btn		: in std_logic;
			led		: out std_logic
			);
end entity test_btn_memory;

architecture archi of test_btn_memory is

	constant DATA_WIDTH : natural := 15;
	constant ADDR_WIDTH : natural := 8;

	component btn_led is 
		port(rst 		: in std_logic;
			clk 		: in std_logic;
			btn		: in std_logic;
			led		: out std_logic;
			addr		: out natural range 0 to 255;
			data		: out std_logic_vector(14 downto 0)
			);
	end component;

--	component pll is
--		port (
--			refclk   : in  std_logic := '0'; --  refclk.clk
--			rst      : in  std_logic := '0'; --   reset.reset
--			outclk_0 : out std_logic;        -- outclk0.clk
--			locked   : out std_logic         --  locked.export
--		);
--	end component pll;
	
	component single_port_ram is
	port 
	(
		clk	: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);
	end component;

	-- signal clk50M 		:std_logic;
	signal rst_soft	:std_logic := '0';
	signal lck			:std_logic;
	signal addr_s		:natural range 0 to 255 := 0;
	signal datatime	:std_logic_vector(14 downto 0);
	signal dout			:std_logic_vector(14 downto 0);

	begin 	
		

		
--		u_pll : pll
--			port map(
--				refclk   => clk,
--				rst      => "not"(rst_soft),
--				outclk_0 => clk50M,
--				locked   => lck
--			);
			
			
		u_btn : btn_led 
			port map(
				rst 		=> rst_soft,
				clk 		=> clk,
				btn		=> btn,
				led		=> led,
				addr		=> addr_s,
				data 	=> datatime
			);
			
		u_RAM : single_port_ram 
			port map
			(
				clk		=> clk,
				addr		=> addr_s,
				data		=> datatime,
				we			=> '1',
				q			=> dout
			);
			
		
end archi;
		
		
