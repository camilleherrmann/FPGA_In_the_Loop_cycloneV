
-- ----------------------------------------------
-- File Name: test_btn_memory_wrapper.vhd
-- Created:   20-Oct-2022 13:15:39
-- Copyright  2022 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY test_btn_memory_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      dout                            : OUT std_logic_vector(7 DOWNTO 0)
);
END test_btn_memory_wrapper;

ARCHITECTURE rtl of test_btn_memory_wrapper IS

COMPONENT test_btn_memory IS 
PORT (
      btn                             : IN  std_logic;
      clk                             : IN  std_logic;
      rst                             : IN  std_logic;
      led                             : OUT std_logic
);
END COMPONENT;

  SIGNAL dutclk                           : std_logic; -- boolean
  SIGNAL btn                              : std_logic; -- boolean
  SIGNAL btn_tmp                          : std_logic; -- boolean
  SIGNAL led                              : std_logic; -- boolean
  SIGNAL led_tmp                          : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(7 DOWNTO 0); -- std8

BEGIN

u_test_btn_memory: test_btn_memory 
PORT MAP(
        led                  => led,
        btn                  => btn,
        clk                  => dutclk,
        rst                  => reset
);

dutclk <=  NOT enb;
btn <= btn_tmp;

btn_tmp <= din(0);
led_tmp <= led;

led_tmp <= led;

zero0 <= (others => '0');
dout <= zero0 & led_tmp;

END;
