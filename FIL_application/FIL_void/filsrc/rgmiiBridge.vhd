
-- ----------------------------------------------
-- File Name: rgmiiBridge.vhd
-- Created:   13-Janv-2023 13:52:35
-- Copyright  2023 MathWorks, Inc.
-- ----------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY rgmiiBridge IS
  PORT(
       rxclk         : IN std_logic ;              
       txclk         : IN std_logic ;     
       reset         : IN std_logic ;  

       rgmii_rxd     : IN std_logic_vector(7 downto 0) ;  
       rgmii_rxctrl  : IN std_logic_vector(1 downto 0) ;    

       rgmii_txd     : OUT std_logic_vector(7 downto 0) ;     
       rgmii_txctrl  : OUT std_logic_vector(1 downto 0) ;   
        
       gmii_txd      : IN std_logic_vector(7 downto 0) ;   
       gmii_tx_en    : IN std_logic;     
       gmii_tx_er    : IN std_logic;  
       gmii_rxd      : OUT std_logic_vector(7 downto 0);
       gmii_rx_dv    : OUT std_logic;   
       gmii_rx_er    : OUT std_logic;
       gmii_col      : OUT std_logic;
       gmii_crs      : OUT std_logic);

END rgmiiBridge;

ARCHITECTURE rtl OF rgmiiBridge IS

signal rgmii_rxd_i : std_logic_vector(7 downto 0);
signal rgmii_rxdv_i: std_logic;
signal rgmii_rxer_i: std_logic;
signal rgmii_rxdv_r: std_logic;
 
BEGIN
 
rgmii_rxd_i(7 downto 4)  <= rgmii_rxd(7 downto 4);
process(rxclk)
begin
  if rxclk'event and rxclk = '1' then
    rgmii_rxd_i(3 downto 0) <= rgmii_rxd(3 downto 0);
    rgmii_rxdv_i <= rgmii_rxctrl(0);
    rgmii_rxdv_r <= rgmii_rxdv_i;
   end if;
end process;
rgmii_rxer_i <= rgmii_rxdv_i XOR rgmii_rxctrl(1); 

process(rxclk, reset)
begin
  if reset = '1' then
     gmii_rx_er <= '0';
     gmii_rx_dv <= '0';
     gmii_crs   <= '0';
  elsif rxclk'event and rxclk = '1' then 
     gmii_rx_er <= rgmii_rxdv_i and rgmii_rxer_i;
     gmii_rxd   <= rgmii_rxd_i;
     gmii_rx_dv <= rgmii_rxdv_i;
     if rgmii_rxdv_r = '1' then
        gmii_crs <= '1';
     elsif rgmii_rxer_i = '1' and (rgmii_rxd_i = "11111111") then
        gmii_crs <= '1';
     elsif rgmii_rxer_i = '1' and (rgmii_rxd_i = "00001111") then -- Carrier extend
        gmii_crs <= '1';
     elsif rgmii_rxer_i = '1' and (rgmii_rxd_i = "00011111") then -- Carrier extend error
        gmii_crs <= '1';
     elsif rgmii_rxer_i = '1' and (rgmii_rxd_i = "00001110") then -- False carrier
        gmii_crs <= '1';
     else
        gmii_crs <= '0';
     end if;   
  end if;
end process;

-- FIX ME:col stuck at 0?
gmii_col <= '0';
rgmii_txd  <= gmii_txd;
rgmii_txctrl(0) <= gmii_tx_en;
rgmii_txctrl(1) <= gmii_tx_en xor gmii_tx_er;

END rtl;