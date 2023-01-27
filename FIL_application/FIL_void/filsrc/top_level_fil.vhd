
-- ----------------------------------------------
-- File Name: top_level_fil.vhd
-- Created:   13-Janv-2023 13:52:40
-- Copyright  2023 MathWorks, Inc.
-- ----------------------------------------------

 LIBRARY altera_mf;
 USE altera_mf.altera_mf_components.all;
 USE altera_mf.all;



LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY top_level_fil IS 
PORT (
      ETH_RX_CTL                      : IN  std_logic;
      sysclk_n                        : IN  std_logic;
      ETH_RXD                         : IN  std_logic_vector(3 DOWNTO 0);
      sysclk_p                        : IN  std_logic;
      ETH_RXCLK                       : IN  std_logic;
      ETH_TX_CTL                      : OUT std_logic;
      ETH_MDC                         : OUT std_logic;
      ETH_TXD                         : OUT std_logic_vector(3 DOWNTO 0);
      ETH_RESET_n                     : OUT std_logic;
      ETH_TXCLK                       : OUT std_logic;
      ETH_MDIO                        : INOUT std_logic
);
END top_level_fil;

ARCHITECTURE rtl of top_level_fil IS

COMPONENT cyclonev_io_ibuf IS 
GENERIC (bus_hold: string := "FALSE";
differential_mode: string := "TRUE"
);
PORT (
      I                               : IN  std_logic;
      IBAR                            : IN  std_logic;
      O                               : OUT std_logic
);
END COMPONENT;

COMPONENT MWClkMgr IS 
PORT (
      CLK_IN                          : IN  std_logic;
      RXCLK_IN                        : IN  std_logic;
      RESET_IN                        : IN  std_logic;
      DUTCLK                          : OUT std_logic;
      MACRXCLK                        : OUT std_logic;
      TXCLK                           : OUT std_logic;
      RESET_OUT                       : OUT std_logic;
      MACTXCLK                        : OUT std_logic
);
END COMPONENT;

COMPONENT RGMIIBridge IS 
PORT (
      rxclk                           : IN  std_logic;
      txclk                           : IN  std_logic;
      reset                           : IN  std_logic;
      rgmii_rxd                       : IN  std_logic_vector(7 DOWNTO 0);
      rgmii_rxctrl                    : IN  std_logic_vector(1 DOWNTO 0);
      gmii_txd                        : IN  std_logic_vector(7 DOWNTO 0);
      gmii_tx_en                      : IN  std_logic;
      gmii_tx_er                      : IN  std_logic;
      rgmii_txd                       : OUT std_logic_vector(7 DOWNTO 0);
      rgmii_txctrl                    : OUT std_logic_vector(1 DOWNTO 0);
      gmii_rxd                        : OUT std_logic_vector(7 DOWNTO 0);
      gmii_rx_dv                      : OUT std_logic;
      gmii_rx_er                      : OUT std_logic;
      gmii_col                        : OUT std_logic;
      gmii_crs                        : OUT std_logic
);
END COMPONENT;

COMPONENT FILCore IS 
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      txclk_en                        : IN  std_logic;
      rxclk_en                        : IN  std_logic;
      gmii_crs                        : IN  std_logic;
      gmii_col                        : IN  std_logic;
      gmii_rx_clk                     : IN  std_logic;
      gmii_rx_dv                      : IN  std_logic;
      gmii_rxd                        : IN  std_logic_vector(7 DOWNTO 0);
      gmii_rx_er                      : IN  std_logic;
      gmii_tx_clk                     : IN  std_logic;
      gmii_tx_en                      : OUT std_logic;
      gmii_txd                        : OUT std_logic_vector(7 DOWNTO 0);
      gmii_tx_er                      : OUT std_logic
);
END COMPONENT;

COMPONENT MWMdioAdv IS 
GENERIC (DownSampleFactor: integer := 50;
data0: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data1: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data2: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data3: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data4: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data5: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data6: std_logic_vector(15 DOWNTO 0) := "0000000000000000";
data7: std_logic_vector(15 DOWNTO 0) := "0000000000000000"
);
PORT (
      CLK                             : IN  std_logic;
      RESET                           : IN  std_logic;
      ETH_RESET_n                     : OUT std_logic;
      ETH_MDC                         : OUT std_logic;
      ETH_MDIO                        : INOUT std_logic
);
END COMPONENT;

  SIGNAL dutClk                           : std_logic; -- boolean
  SIGNAL rst                              : std_logic; -- boolean
  SIGNAL ClkIn                            : std_logic; -- boolean
  SIGNAL rxclk                            : std_logic; -- boolean
  SIGNAL txclk                            : std_logic; -- boolean
  SIGNAL rxd                              : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL txd                              : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL txclk_en                         : std_logic; -- boolean
  SIGNAL rxclk_en                         : std_logic; -- boolean
  SIGNAL dcm_reset                        : std_logic; -- boolean
  SIGNAL BitZero                          : std_logic; -- boolean
  SIGNAL rxd_l                            : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL rxd_h                            : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL rxctrl_l                         : std_logic; -- boolean
  SIGNAL rxctrl_h                         : std_logic; -- boolean
  SIGNAL txctrl_l                         : std_logic; -- boolean
  SIGNAL txctrl_h                         : std_logic; -- boolean
  SIGNAL txd_l                            : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL txd_h                            : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL rxd_i                            : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL rxdvld_i                         : std_logic; -- boolean
  SIGNAL rxerror_i                        : std_logic; -- boolean
  SIGNAL txd_i                            : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL txen_i                           : std_logic; -- boolean
  SIGNAL txerror_i                        : std_logic; -- boolean
  SIGNAL col_i                            : std_logic; -- boolean
  SIGNAL crs_i                            : std_logic; -- boolean
  SIGNAL rxctrl                           : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL txctrl                           : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL rgmii_ctrl_i                     : std_logic; -- boolean
  SIGNAL rgmii_txd_i                      : std_logic_vector(3 DOWNTO 0); -- std4
  SIGNAL rgmii_rx_composite               : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL rx_composite_h                   : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL rx_composite_l                   : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL rgmii_tx_composite               : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL tx_composite_h                   : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL tx_composite_l                   : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL rst_n                            : std_logic; -- boolean
  SIGNAL clk5                             : std_logic_vector(4 DOWNTO 0); -- std5
  SIGNAL clk1                             : std_logic; -- boolean
  SIGNAL clk2                             : std_logic; -- boolean
  SIGNAL clk3                             : std_logic; -- boolean
  SIGNAL LOCKED                           : std_logic; -- boolean
  SIGNAL notLocked                        : std_logic; -- boolean
  SIGNAL clkin_vector                     : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL clkin_tmp                        : std_logic; -- boolean
  SIGNAL zero                             : std_logic; -- boolean
  SIGNAL rxClk_internal                   : std_logic; -- boolean
  SIGNAL dut_rst                          : std_logic; -- boolean
  SIGNAL dut_din                          : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL dut_dinvld                       : std_logic; -- boolean
  SIGNAL dut_dinrdy                       : std_logic; -- boolean
  SIGNAL simcycle                         : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL dut_dout                         : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL dut_doutvld                      : std_logic; -- boolean
  SIGNAL dut_doutrdy                      : std_logic; -- boolean

BEGIN

u_ibufa: cyclonev_io_ibuf 
GENERIC MAP (bus_hold => "FALSE",
differential_mode => "TRUE"
)
PORT MAP(
        O                    => ClkIn,
        I                    => sysclk_p,
        IBAR                 => sysclk_n
);

u_ClockManager: MWClkMgr 
PORT MAP(
        DUTCLK               => dutClk,
        CLK_IN               => ClkIn,
        MACRXCLK             => rxclk,
        TXCLK                => ETH_TXCLK,
        RXCLK_IN             => ETH_RXCLK,
        RESET_OUT            => rst,
        MACTXCLK             => txclk,
        RESET_IN             => dcm_reset
);

u_ALTDDIO_IN: ALTDDIO_IN 
GENERIC MAP (width => 5
)
PORT MAP(
        inclock              => rxclk,
        datain               => rgmii_rx_composite,
        dataout_h            => rx_composite_h,
        dataout_l            => rx_composite_l
);

u_ALTDDIO_OUT: ALTDDIO_OUT 
GENERIC MAP (width => 5
)
PORT MAP(
        dataout              => rgmii_tx_composite,
        datain_l             => tx_composite_l,
        outclock             => txclk,
        datain_h             => tx_composite_h,
        aclr                 => rst
);

u_RGMIIBridge: RGMIIBridge 
PORT MAP(
        rxclk                => rxclk,
        txclk                => txclk,
        reset                => rst,
        rgmii_rxd            => rxd,
        rgmii_rxctrl         => rxctrl,
        rgmii_txd            => txd,
        rgmii_txctrl         => txctrl,
        gmii_rxd             => rxd_i,
        gmii_rx_dv           => rxdvld_i,
        gmii_rx_er           => rxerror_i,
        gmii_txd             => txd_i,
        gmii_tx_en           => txen_i,
        gmii_tx_er           => txerror_i,
        gmii_col             => col_i,
        gmii_crs             => crs_i
);

u_FILCore: FILCore 
PORT MAP(
        clk                  => ETH_RXCLK,
        reset                => rst,
        txclk_en             => txclk_en,
        rxclk_en             => rxclk_en,
        gmii_crs             => crs_i,
        gmii_tx_en           => txen_i,
        gmii_col             => col_i,
        gmii_rx_clk          => rxclk,
        gmii_txd             => txd_i,
        gmii_rx_dv           => rxdvld_i,
        gmii_rxd             => rxd_i,
        gmii_rx_er           => rxerror_i,
        gmii_tx_clk          => txclk,
        gmii_tx_er           => txerror_i
);

u_MWMdioAdv: MWMdioAdv 
GENERIC MAP (DownSampleFactor => 50,
data0 => "0000010000010100",
data1 => "0000110011101010",
data2 => "0000010000001001",
data3 => "0000111100000000",
data4 => "0000010000011011",
data5 => "1000000010001011",
data6 => "0000010000000000",
data7 => "1001000000000000"
)
PORT MAP(
        CLK                  => dutClk,
        ETH_RESET_n          => ETH_RESET_n,
        RESET                => rst,
        ETH_MDIO             => ETH_MDIO,
        ETH_MDC              => ETH_MDC
);

rxd <= rxd_l & rxd_h;
txclk_en <= '1';
rxclk_en <= '1';
dcm_reset <= BitZero;

BitZero <= '0';
rxd_l <= rx_composite_l(4 DOWNTO 1);
rxd_h <= rx_composite_h(4 DOWNTO 1);
rxctrl_l <= rx_composite_l(0);
rxctrl_h <= rx_composite_h(0);
txctrl_l <= txctrl(0);
txctrl_h <= txctrl(1);
txd_l <= txd(7 DOWNTO 4);
txd_h <= txd(3 DOWNTO 0);
rxctrl <= rxctrl_l & rxctrl_h;
ETH_TX_CTL <= rgmii_tx_composite(0);
ETH_TXD <= rgmii_tx_composite(4 DOWNTO 1);
rgmii_rx_composite <= ETH_RXD & ETH_RX_CTL;
tx_composite_h <= txd_h & txctrl_h;
tx_composite_l <= txd_l & txctrl_l;

END;
