
-- ----------------------------------------------
-- File Name: top_level_wrapper.vhd
-- Created:   13-Janv-2023 13:52:39
-- Copyright  2023 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY top_level_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(31 DOWNTO 0);
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END top_level_wrapper;

ARCHITECTURE rtl of top_level_wrapper IS

COMPONENT top_level IS 
PORT (
      din                             : IN  std_logic_vector(31 DOWNTO 0);
      clk125                          : IN  std_logic;
		enb                         	  : IN  std_logic;
      reset                           : IN  std_logic;
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dutclk                           : std_logic; -- boolean
  SIGNAL din_1                            : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL din_tmp                          : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL dout_1                           : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL dout_tmp                         : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL tmpconcat                        : std_logic_vector(31 DOWNTO 0); -- std32

BEGIN

u_top_level: top_level 
PORT MAP(
        dout                 => dout_1,
        din                  => din_1,
		  enb						  => enb,
        clk125               => clk,
        reset                => reset
);

dutclk <=  NOT enb;
din_1 <= din_tmp;
din_tmp <= din(31 DOWNTO 0);
dout_tmp <= dout_1;
dout_tmp <= dout_1;
dout <= dout_tmp;

END;
