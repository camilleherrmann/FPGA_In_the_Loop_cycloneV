
-- ----------------------------------------------
-- File Name: MWMAC.vhd
-- Created:   13-Janv-2023 13:52:37
-- Copyright  2023 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY MWMAC IS 
GENERIC (
         MWMACADDR1: integer := 0;
         MWMACADDR2: integer := 10;
         MWMACADDR3: integer := 53;
         MWMACADDR4: integer := 2;
         MWMACADDR5: integer := 33;
         MWMACADDR6: integer := 138;
         MWIPADDR1: integer := 192;
         MWIPADDR2: integer := 168;
         MWIPADDR3: integer := 0;
         MWIPADDR4: integer := 2;
         ONEUDP: integer := 1;
         BUFFERADDRWIDTH: integer := 12
);

PORT (
      rxclk                           : IN  std_logic;
      rxclk_en                        : IN  std_logic;
      txclk                           : IN  std_logic;
      txclk_en                        : IN  std_logic;
      gmii_rxd                        : IN  std_logic_vector(7 DOWNTO 0);
      gmii_rx_dv                      : IN  std_logic;
      gmii_rx_er                      : IN  std_logic;
      gmii_col                        : IN  std_logic;
      gmii_crs                        : IN  std_logic;
      RxReset                         : IN  std_logic;
      TxData                          : IN  std_logic_vector(7 DOWNTO 0);
      TxDataValid                     : IN  std_logic;
      TxEOP                           : IN  std_logic;
      TxDataLength                    : IN  std_logic_vector(12 DOWNTO 0);
      TxSrcPort                       : IN  std_logic_vector(1 DOWNTO 0);
      TxReset                         : IN  std_logic;
      gmii_txd                        : OUT std_logic_vector(7 DOWNTO 0);
      gmii_tx_en                      : OUT std_logic;
      gmii_tx_er                      : OUT std_logic;
      RxData                          : OUT std_logic_vector(7 DOWNTO 0);
      RxDataValid                     : OUT std_logic;
      RxEOP                           : OUT std_logic;
      RxCRCOK                         : OUT std_logic;
      RxCRCBad                        : OUT std_logic;
      RxDstPort                       : OUT std_logic_vector(1 DOWNTO 0);
      TxReady                         : OUT std_logic
);
END MWMAC;

ARCHITECTURE rtl of MWMAC IS

COMPONENT mwrxmac IS 
GENERIC (MWMACADDR1: integer := 0;
MWMACADDR2: integer := 10;
MWMACADDR3: integer := 53;
MWMACADDR4: integer := 2;
MWMACADDR5: integer := 33;
MWMACADDR6: integer := 138;
MWIPADDR1: integer := 192;
MWIPADDR2: integer := 168;
MWIPADDR3: integer := 0;
MWIPADDR4: integer := 2;
ONEUDP: integer := 1
);
PORT (
      rxclk                           : IN  std_logic;
      gmii_rx_dv                      : IN  std_logic;
      gmii_rxd                        : IN  std_logic_vector(7 DOWNTO 0);
      gmii_rx_er                      : IN  std_logic;
      rxreset                         : IN  std_logic;
      rxclk_en                        : IN  std_logic;
      pingwrdata                      : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport3_2                   : OUT std_logic_vector(7 DOWNTO 0);
      hostipaddr4                     : OUT std_logic_vector(7 DOWNTO 0);
      rxcrcbad                        : OUT std_logic;
      rxdata                          : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport3_1                   : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr6                    : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport1_1                   : OUT std_logic_vector(7 DOWNTO 0);
      rxeop                           : OUT std_logic;
      rxdatavalid                     : OUT std_logic;
      udpsrcport2_1                   : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr5                    : OUT std_logic_vector(7 DOWNTO 0);
      rxaddrvalid                     : OUT std_logic;
      udpsrcport1_2                   : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport0_2                   : OUT std_logic_vector(7 DOWNTO 0);
      udpsrcport3_1                   : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport1_2                   : OUT std_logic_vector(7 DOWNTO 0);
      hostipaddr1                     : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr3                    : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr1                    : OUT std_logic_vector(7 DOWNTO 0);
      pingwraddr                      : OUT std_logic_vector(8 DOWNTO 0);
      udpsrcport1_1                   : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport0_1                   : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr4                    : OUT std_logic_vector(7 DOWNTO 0);
      udpsrcport2_2                   : OUT std_logic_vector(7 DOWNTO 0);
      replyarp                        : OUT std_logic;
      udpdstport2_2                   : OUT std_logic_vector(7 DOWNTO 0);
      hostmacaddr2                    : OUT std_logic_vector(7 DOWNTO 0);
      udpdstport2_1                   : OUT std_logic_vector(7 DOWNTO 0);
      udpsrcport0_1                   : OUT std_logic_vector(7 DOWNTO 0);
      pingwren                        : OUT std_logic;
      hostipaddr3                     : OUT std_logic_vector(7 DOWNTO 0);
      rxdstport                       : OUT std_logic_vector(1 DOWNTO 0);
      rxcrcok                         : OUT std_logic;
      replyping                       : OUT std_logic;
      udpsrcport0_2                   : OUT std_logic_vector(7 DOWNTO 0);
      hostipaddr2                     : OUT std_logic_vector(7 DOWNTO 0);
      udpsrcport3_2                   : OUT std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;

COMPONENT mwtxmac IS 
GENERIC (MWMACADDR1: integer := 0;
MWMACADDR2: integer := 10;
MWMACADDR3: integer := 53;
MWMACADDR4: integer := 2;
MWMACADDR5: integer := 33;
MWMACADDR6: integer := 138;
MWIPADDR1: integer := 192;
MWIPADDR2: integer := 168;
MWIPADDR3: integer := 0;
MWIPADDR4: integer := 2;
ONEUDP: integer := 1;
BUFFERADDRWIDTH: integer := 12
);
PORT (
      udpdstport3_2                   : IN  std_logic_vector(7 DOWNTO 0);
      hostipaddr4                     : IN  std_logic_vector(7 DOWNTO 0);
      udpdstport3_1                   : IN  std_logic_vector(7 DOWNTO 0);
      hostmacaddr6                    : IN  std_logic_vector(7 DOWNTO 0);
      gmii_crs                        : IN  std_logic;
      udpdstport1_1                   : IN  std_logic_vector(7 DOWNTO 0);
      udpsrcport2_1                   : IN  std_logic_vector(7 DOWNTO 0);
      hostmacaddr5                    : IN  std_logic_vector(7 DOWNTO 0);
      gmii_col                        : IN  std_logic;
      rxaddrvalid                     : IN  std_logic;
      udpsrcport1_2                   : IN  std_logic_vector(7 DOWNTO 0);
      udpdstport0_2                   : IN  std_logic_vector(7 DOWNTO 0);
      txclk                           : IN  std_logic;
      udpsrcport3_1                   : IN  std_logic_vector(7 DOWNTO 0);
      udpdstport1_2                   : IN  std_logic_vector(7 DOWNTO 0);
      hostipaddr1                     : IN  std_logic_vector(7 DOWNTO 0);
      txdatavalid                     : IN  std_logic;
      hostmacaddr3                    : IN  std_logic_vector(7 DOWNTO 0);
      hostmacaddr1                    : IN  std_logic_vector(7 DOWNTO 0);
      txsrcport                       : IN  std_logic_vector(1 DOWNTO 0);
      udpsrcport1_1                   : IN  std_logic_vector(7 DOWNTO 0);
      udpdstport0_1                   : IN  std_logic_vector(7 DOWNTO 0);
      hostmacaddr4                    : IN  std_logic_vector(7 DOWNTO 0);
      txclk_en                        : IN  std_logic;
      udpsrcport2_2                   : IN  std_logic_vector(7 DOWNTO 0);
      replyarp                        : IN  std_logic;
      udpdstport2_2                   : IN  std_logic_vector(7 DOWNTO 0);
      hostmacaddr2                    : IN  std_logic_vector(7 DOWNTO 0);
      txreset                         : IN  std_logic;
      udpdstport2_1                   : IN  std_logic_vector(7 DOWNTO 0);
      udpsrcport0_1                   : IN  std_logic_vector(7 DOWNTO 0);
      hostipaddr3                     : IN  std_logic_vector(7 DOWNTO 0);
      txdatalength                    : IN  std_logic_vector(12 DOWNTO 0);
      txeop                           : IN  std_logic;
      pingrddata                      : IN  std_logic_vector(7 DOWNTO 0);
      txdata                          : IN  std_logic_vector(7 DOWNTO 0);
      replyping                       : IN  std_logic;
      udpsrcport0_2                   : IN  std_logic_vector(7 DOWNTO 0);
      hostipaddr2                     : IN  std_logic_vector(7 DOWNTO 0);
      udpsrcport3_2                   : IN  std_logic_vector(7 DOWNTO 0);
      txready                         : OUT std_logic;
      gmii_tx_en                      : OUT std_logic;
      gmii_txd                        : OUT std_logic_vector(7 DOWNTO 0);
      pingrdaddr                      : OUT std_logic_vector(8 DOWNTO 0);
      gmii_tx_er                      : OUT std_logic
);
END COMPONENT;

COMPONENT mwpingram IS 
PORT (
      pingwrdata                      : IN  std_logic_vector(7 DOWNTO 0);
      rxclk                           : IN  std_logic;
      txclk                           : IN  std_logic;
      pingrdaddr                      : IN  std_logic_vector(8 DOWNTO 0);
      pingwraddr                      : IN  std_logic_vector(8 DOWNTO 0);
      txclk_en                        : IN  std_logic;
      pingwren                        : IN  std_logic;
      pingrddata                      : OUT std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;

  SIGNAL hostmacaddr1                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostmacaddr2                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostmacaddr3                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostmacaddr4                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostmacaddr5                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostmacaddr6                     : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostipaddr1                      : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostipaddr2                      : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostipaddr3                      : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL hostipaddr4                      : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport0_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport0_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport0_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport0_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport1_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport1_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport1_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport1_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport2_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport2_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport2_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport2_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport3_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpsrcport3_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport3_1                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL udpdstport3_2                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL rxaddrvalid                      : std_logic; -- boolean
  SIGNAL replyping                        : std_logic; -- boolean
  SIGNAL replyarp                         : std_logic; -- boolean
  SIGNAL pingrdaddr                       : std_logic_vector(8 DOWNTO 0); -- std9
  SIGNAL pingrddata                       : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL pingwraddr                       : std_logic_vector(8 DOWNTO 0); -- std9
  SIGNAL pingwrdata                       : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL pingwren                         : std_logic; -- boolean

BEGIN

u_mwrxmac: mwrxmac 
GENERIC MAP (MWMACADDR1 => MWMACADDR1,
MWMACADDR2 => MWMACADDR2,
MWMACADDR3 => MWMACADDR3,
MWMACADDR4 => MWMACADDR4,
MWMACADDR5 => MWMACADDR5,
MWMACADDR6 => MWMACADDR6,
MWIPADDR1 => MWIPADDR1,
MWIPADDR2 => MWIPADDR2,
MWIPADDR3 => MWIPADDR3,
MWIPADDR4 => MWIPADDR4,
ONEUDP => ONEUDP
)
PORT MAP(
        pingwrdata           => pingwrdata,
        udpdstport3_2        => udpdstport3_2,
        hostipaddr4          => hostipaddr4,
        rxcrcbad             => RxCRCBad,
        rxdata               => RxData,
        udpdstport3_1        => udpdstport3_1,
        hostmacaddr6         => hostmacaddr6,
        rxclk                => rxclk,
        udpdstport1_1        => udpdstport1_1,
        rxeop                => RxEOP,
        rxdatavalid          => RxDataValid,
        udpsrcport2_1        => udpsrcport2_1,
        hostmacaddr5         => hostmacaddr5,
        rxaddrvalid          => rxaddrvalid,
        udpsrcport1_2        => udpsrcport1_2,
        udpdstport0_2        => udpdstport0_2,
        udpsrcport3_1        => udpsrcport3_1,
        udpdstport1_2        => udpdstport1_2,
        hostipaddr1          => hostipaddr1,
        hostmacaddr3         => hostmacaddr3,
        hostmacaddr1         => hostmacaddr1,
        gmii_rx_dv           => gmii_rx_dv,
        pingwraddr           => pingwraddr,
        udpsrcport1_1        => udpsrcport1_1,
        udpdstport0_1        => udpdstport0_1,
        hostmacaddr4         => hostmacaddr4,
        gmii_rxd             => gmii_rxd,
        udpsrcport2_2        => udpsrcport2_2,
        gmii_rx_er           => gmii_rx_er,
        replyarp             => replyarp,
        udpdstport2_2        => udpdstport2_2,
        hostmacaddr2         => hostmacaddr2,
        rxreset              => RxReset,
        udpdstport2_1        => udpdstport2_1,
        udpsrcport0_1        => udpsrcport0_1,
        pingwren             => pingwren,
        hostipaddr3          => hostipaddr3,
        rxdstport            => RxDstPort,
        rxcrcok              => RxCRCOK,
        replyping            => replyping,
        udpsrcport0_2        => udpsrcport0_2,
        hostipaddr2          => hostipaddr2,
        udpsrcport3_2        => udpsrcport3_2,
        rxclk_en             => rxclk_en
);

u_mwtxmac: mwtxmac 
GENERIC MAP (MWMACADDR1 => MWMACADDR1,
MWMACADDR2 => MWMACADDR2,
MWMACADDR3 => MWMACADDR3,
MWMACADDR4 => MWMACADDR4,
MWMACADDR5 => MWMACADDR5,
MWMACADDR6 => MWMACADDR6,
MWIPADDR1 => MWIPADDR1,
MWIPADDR2 => MWIPADDR2,
MWIPADDR3 => MWIPADDR3,
MWIPADDR4 => MWIPADDR4,
ONEUDP => ONEUDP,
BUFFERADDRWIDTH => BUFFERADDRWIDTH
)
PORT MAP(
        udpdstport3_2        => udpdstport3_2,
        hostipaddr4          => hostipaddr4,
        udpdstport3_1        => udpdstport3_1,
        hostmacaddr6         => hostmacaddr6,
        gmii_crs             => gmii_crs,
        udpdstport1_1        => udpdstport1_1,
        txready              => TxReady,
        gmii_tx_en           => gmii_tx_en,
        udpsrcport2_1        => udpsrcport2_1,
        hostmacaddr5         => hostmacaddr5,
        gmii_col             => gmii_col,
        rxaddrvalid          => rxaddrvalid,
        udpsrcport1_2        => udpsrcport1_2,
        udpdstport0_2        => udpdstport0_2,
        txclk                => txclk,
        gmii_txd             => gmii_txd,
        pingrdaddr           => pingrdaddr,
        udpsrcport3_1        => udpsrcport3_1,
        udpdstport1_2        => udpdstport1_2,
        hostipaddr1          => hostipaddr1,
        txdatavalid          => TxDataValid,
        hostmacaddr3         => hostmacaddr3,
        hostmacaddr1         => hostmacaddr1,
        txsrcport            => TxSrcPort,
        udpsrcport1_1        => udpsrcport1_1,
        udpdstport0_1        => udpdstport0_1,
        hostmacaddr4         => hostmacaddr4,
        txclk_en             => txclk_en,
        udpsrcport2_2        => udpsrcport2_2,
        replyarp             => replyarp,
        udpdstport2_2        => udpdstport2_2,
        hostmacaddr2         => hostmacaddr2,
        txreset              => TxReset,
        udpdstport2_1        => udpdstport2_1,
        udpsrcport0_1        => udpsrcport0_1,
        hostipaddr3          => hostipaddr3,
        txdatalength         => TxDataLength,
        txeop                => TxEOP,
        pingrddata           => pingrddata,
        gmii_tx_er           => gmii_tx_er,
        txdata               => TxData,
        replyping            => replyping,
        udpsrcport0_2        => udpsrcport0_2,
        hostipaddr2          => hostipaddr2,
        udpsrcport3_2        => udpsrcport3_2
);

u_mwpingram: mwpingram 
PORT MAP(
        pingwrdata           => pingwrdata,
        rxclk                => rxclk,
        txclk                => txclk,
        pingrdaddr           => pingrdaddr,
        pingwraddr           => pingwraddr,
        txclk_en             => txclk_en,
        pingwren             => pingwren,
        pingrddata           => pingrddata
);


END;
