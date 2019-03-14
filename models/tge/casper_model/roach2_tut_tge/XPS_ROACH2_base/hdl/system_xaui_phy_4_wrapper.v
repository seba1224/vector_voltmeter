//-----------------------------------------------------------------------------
// system_xaui_phy_4_wrapper.v
//-----------------------------------------------------------------------------

module system_xaui_phy_4_wrapper
  (
    reset,
    xaui_clk,
    mgt_txdata,
    mgt_txcharisk,
    mgt_rxdata,
    mgt_rxcharisk,
    mgt_enable_align,
    mgt_code_valid,
    mgt_code_comma,
    mgt_rxlock,
    mgt_rxbufferr,
    mgt_syncok,
    mgt_en_chan_sync,
    mgt_rx_reset,
    mgt_tx_reset,
    xaui_status,
    xgmii_txd,
    xgmii_txc,
    xgmii_rxd,
    xgmii_rxc
  );
  input reset;
  input xaui_clk;
  output [63:0] mgt_txdata;
  output [7:0] mgt_txcharisk;
  input [63:0] mgt_rxdata;
  input [7:0] mgt_rxcharisk;
  output [3:0] mgt_enable_align;
  input [7:0] mgt_code_valid;
  input [7:0] mgt_code_comma;
  input [3:0] mgt_rxlock;
  input [3:0] mgt_rxbufferr;
  input [3:0] mgt_syncok;
  output mgt_en_chan_sync;
  output mgt_rx_reset;
  output mgt_tx_reset;
  output [7:0] xaui_status;
  input [63:0] xgmii_txd;
  input [7:0] xgmii_txc;
  output [63:0] xgmii_rxd;
  output [7:0] xgmii_rxc;

  xaui_phy
    xaui_phy_4 (
      .reset ( reset ),
      .xaui_clk ( xaui_clk ),
      .mgt_txdata ( mgt_txdata ),
      .mgt_txcharisk ( mgt_txcharisk ),
      .mgt_rxdata ( mgt_rxdata ),
      .mgt_rxcharisk ( mgt_rxcharisk ),
      .mgt_enable_align ( mgt_enable_align ),
      .mgt_code_valid ( mgt_code_valid ),
      .mgt_code_comma ( mgt_code_comma ),
      .mgt_rxlock ( mgt_rxlock ),
      .mgt_rxbufferr ( mgt_rxbufferr ),
      .mgt_syncok ( mgt_syncok ),
      .mgt_en_chan_sync ( mgt_en_chan_sync ),
      .mgt_rx_reset ( mgt_rx_reset ),
      .mgt_tx_reset ( mgt_tx_reset ),
      .xaui_status ( xaui_status ),
      .xgmii_txd ( xgmii_txd ),
      .xgmii_txc ( xgmii_txc ),
      .xgmii_rxd ( xgmii_rxd ),
      .xgmii_rxc ( xgmii_rxc )
    );

endmodule

