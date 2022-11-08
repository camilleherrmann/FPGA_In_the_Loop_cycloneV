
-- ----------------------------------------------
-- File Name: Controller_wrapper.vhd
-- Created:   07-Nov-2022 15:04:50
-- Copyright  2022 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY Controller_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(31 DOWNTO 0);
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END Controller_wrapper;

ARCHITECTURE rtl of Controller_wrapper IS

COMPONENT Controller IS 
PORT (
      error_d                         : IN  std_logic_vector(31 DOWNTO 0);
      clk                             : IN  std_logic;
      clk_enable                      : IN  std_logic;
      reset                           : IN  std_logic;
      control_signal                  : OUT std_logic_vector(31 DOWNTO 0)
);
END COMPONENT;

  SIGNAL error_d                          : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL error_d_tmp                      : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL control_signal                   : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL control_signal_tmp               : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL tmpconcat                        : std_logic_vector(31 DOWNTO 0); -- std32

BEGIN

u_Controller: Controller 
PORT MAP(
        error_d              => error_d,
        clk                  => clk,
        clk_enable           => enb,
        control_signal       => control_signal,
        reset                => reset
);

error_d <= error_d_tmp;
error_d_tmp <= din(31 DOWNTO 0);
control_signal_tmp <= control_signal;
control_signal_tmp <= control_signal;
dout <= control_signal_tmp;

END;
