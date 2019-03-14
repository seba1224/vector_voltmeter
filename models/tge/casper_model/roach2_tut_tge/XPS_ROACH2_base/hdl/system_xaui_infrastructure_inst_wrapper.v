//-----------------------------------------------------------------------------
// system_xaui_infrastructure_inst_wrapper.v
//-----------------------------------------------------------------------------

module system_xaui_infrastructure_inst_wrapper
  (
    reset,
    xaui_refclk_n,
    xaui_refclk_p,
    mgt_rx_n,
    mgt_rx_p,
    mgt_tx_n,
    mgt_tx_p,
    xaui_clk,
    mgt_tx_rst0,
    mgt_rx_rst0,
    mgt_txdata0,
    mgt_txcharisk0,
    mgt_rxdata0,
    mgt_rxcharisk0,
    mgt_rxcodecomma0,
    mgt_rxencommaalign0,
    mgt_rxenchansync0,
    mgt_rxsyncok0,
    mgt_rxcodevalid0,
    mgt_rxbufferr0,
    mgt_rxlock0,
    mgt_txpostemphasis0,
    mgt_txpreemphasis0,
    mgt_txdiffctrl0,
    mgt_rxeqmix0,
    mgt_tx_rst1,
    mgt_rx_rst1,
    mgt_txdata1,
    mgt_txcharisk1,
    mgt_rxdata1,
    mgt_rxcharisk1,
    mgt_rxcodecomma1,
    mgt_rxencommaalign1,
    mgt_rxenchansync1,
    mgt_rxsyncok1,
    mgt_rxcodevalid1,
    mgt_rxbufferr1,
    mgt_rxlock1,
    mgt_txpostemphasis1,
    mgt_txpreemphasis1,
    mgt_txdiffctrl1,
    mgt_rxeqmix1,
    mgt_tx_rst2,
    mgt_rx_rst2,
    mgt_txdata2,
    mgt_txcharisk2,
    mgt_rxdata2,
    mgt_rxcharisk2,
    mgt_rxcodecomma2,
    mgt_rxencommaalign2,
    mgt_rxenchansync2,
    mgt_rxsyncok2,
    mgt_rxcodevalid2,
    mgt_rxbufferr2,
    mgt_rxlock2,
    mgt_txpostemphasis2,
    mgt_txpreemphasis2,
    mgt_txdiffctrl2,
    mgt_rxeqmix2,
    mgt_tx_rst3,
    mgt_rx_rst3,
    mgt_txdata3,
    mgt_txcharisk3,
    mgt_rxdata3,
    mgt_rxcharisk3,
    mgt_rxcodecomma3,
    mgt_rxencommaalign3,
    mgt_rxenchansync3,
    mgt_rxsyncok3,
    mgt_rxcodevalid3,
    mgt_rxbufferr3,
    mgt_rxlock3,
    mgt_txpostemphasis3,
    mgt_txpreemphasis3,
    mgt_txdiffctrl3,
    mgt_rxeqmix3,
    mgt_tx_rst4,
    mgt_rx_rst4,
    mgt_txdata4,
    mgt_txcharisk4,
    mgt_rxdata4,
    mgt_rxcharisk4,
    mgt_rxcodecomma4,
    mgt_rxencommaalign4,
    mgt_rxenchansync4,
    mgt_rxsyncok4,
    mgt_rxcodevalid4,
    mgt_rxbufferr4,
    mgt_rxlock4,
    mgt_txpostemphasis4,
    mgt_txpreemphasis4,
    mgt_txdiffctrl4,
    mgt_rxeqmix4,
    mgt_tx_rst5,
    mgt_rx_rst5,
    mgt_txdata5,
    mgt_txcharisk5,
    mgt_rxdata5,
    mgt_rxcharisk5,
    mgt_rxcodecomma5,
    mgt_rxencommaalign5,
    mgt_rxenchansync5,
    mgt_rxsyncok5,
    mgt_rxcodevalid5,
    mgt_rxbufferr5,
    mgt_rxlock5,
    mgt_txpostemphasis5,
    mgt_txpreemphasis5,
    mgt_txdiffctrl5,
    mgt_rxeqmix5,
    mgt_tx_rst6,
    mgt_rx_rst6,
    mgt_txdata6,
    mgt_txcharisk6,
    mgt_rxdata6,
    mgt_rxcharisk6,
    mgt_rxcodecomma6,
    mgt_rxencommaalign6,
    mgt_rxenchansync6,
    mgt_rxsyncok6,
    mgt_rxcodevalid6,
    mgt_rxbufferr6,
    mgt_rxlock6,
    mgt_txpostemphasis6,
    mgt_txpreemphasis6,
    mgt_txdiffctrl6,
    mgt_rxeqmix6,
    mgt_tx_rst7,
    mgt_rx_rst7,
    mgt_txdata7,
    mgt_txcharisk7,
    mgt_rxdata7,
    mgt_rxcharisk7,
    mgt_rxcodecomma7,
    mgt_rxencommaalign7,
    mgt_rxenchansync7,
    mgt_rxsyncok7,
    mgt_rxcodevalid7,
    mgt_rxbufferr7,
    mgt_rxlock7,
    mgt_txpostemphasis7,
    mgt_txpreemphasis7,
    mgt_txdiffctrl7,
    mgt_rxeqmix7
  );
  input reset;
  input [2:0] xaui_refclk_n;
  input [2:0] xaui_refclk_p;
  input [31:0] mgt_rx_n;
  input [31:0] mgt_rx_p;
  output [31:0] mgt_tx_n;
  output [31:0] mgt_tx_p;
  output xaui_clk;
  input [0:0] mgt_tx_rst0;
  input [0:0] mgt_rx_rst0;
  input [63:0] mgt_txdata0;
  input [7:0] mgt_txcharisk0;
  output [63:0] mgt_rxdata0;
  output [7:0] mgt_rxcharisk0;
  output [7:0] mgt_rxcodecomma0;
  input [3:0] mgt_rxencommaalign0;
  input [0:0] mgt_rxenchansync0;
  output [3:0] mgt_rxsyncok0;
  output [7:0] mgt_rxcodevalid0;
  output [3:0] mgt_rxbufferr0;
  output [3:0] mgt_rxlock0;
  input [4:0] mgt_txpostemphasis0;
  input [3:0] mgt_txpreemphasis0;
  input [3:0] mgt_txdiffctrl0;
  input [2:0] mgt_rxeqmix0;
  input [0:0] mgt_tx_rst1;
  input [0:0] mgt_rx_rst1;
  input [63:0] mgt_txdata1;
  input [7:0] mgt_txcharisk1;
  output [63:0] mgt_rxdata1;
  output [7:0] mgt_rxcharisk1;
  output [7:0] mgt_rxcodecomma1;
  input [3:0] mgt_rxencommaalign1;
  input [0:0] mgt_rxenchansync1;
  output [3:0] mgt_rxsyncok1;
  output [7:0] mgt_rxcodevalid1;
  output [3:0] mgt_rxbufferr1;
  output [3:0] mgt_rxlock1;
  input [4:0] mgt_txpostemphasis1;
  input [3:0] mgt_txpreemphasis1;
  input [3:0] mgt_txdiffctrl1;
  input [2:0] mgt_rxeqmix1;
  input [0:0] mgt_tx_rst2;
  input [0:0] mgt_rx_rst2;
  input [63:0] mgt_txdata2;
  input [7:0] mgt_txcharisk2;
  output [63:0] mgt_rxdata2;
  output [7:0] mgt_rxcharisk2;
  output [7:0] mgt_rxcodecomma2;
  input [3:0] mgt_rxencommaalign2;
  input [0:0] mgt_rxenchansync2;
  output [3:0] mgt_rxsyncok2;
  output [7:0] mgt_rxcodevalid2;
  output [3:0] mgt_rxbufferr2;
  output [3:0] mgt_rxlock2;
  input [4:0] mgt_txpostemphasis2;
  input [3:0] mgt_txpreemphasis2;
  input [3:0] mgt_txdiffctrl2;
  input [2:0] mgt_rxeqmix2;
  input [0:0] mgt_tx_rst3;
  input [0:0] mgt_rx_rst3;
  input [63:0] mgt_txdata3;
  input [7:0] mgt_txcharisk3;
  output [63:0] mgt_rxdata3;
  output [7:0] mgt_rxcharisk3;
  output [7:0] mgt_rxcodecomma3;
  input [3:0] mgt_rxencommaalign3;
  input [0:0] mgt_rxenchansync3;
  output [3:0] mgt_rxsyncok3;
  output [7:0] mgt_rxcodevalid3;
  output [3:0] mgt_rxbufferr3;
  output [3:0] mgt_rxlock3;
  input [4:0] mgt_txpostemphasis3;
  input [3:0] mgt_txpreemphasis3;
  input [3:0] mgt_txdiffctrl3;
  input [2:0] mgt_rxeqmix3;
  input [0:0] mgt_tx_rst4;
  input [0:0] mgt_rx_rst4;
  input [63:0] mgt_txdata4;
  input [7:0] mgt_txcharisk4;
  output [63:0] mgt_rxdata4;
  output [7:0] mgt_rxcharisk4;
  output [7:0] mgt_rxcodecomma4;
  input [3:0] mgt_rxencommaalign4;
  input [0:0] mgt_rxenchansync4;
  output [3:0] mgt_rxsyncok4;
  output [7:0] mgt_rxcodevalid4;
  output [3:0] mgt_rxbufferr4;
  output [3:0] mgt_rxlock4;
  input [4:0] mgt_txpostemphasis4;
  input [3:0] mgt_txpreemphasis4;
  input [3:0] mgt_txdiffctrl4;
  input [2:0] mgt_rxeqmix4;
  input [0:0] mgt_tx_rst5;
  input [0:0] mgt_rx_rst5;
  input [63:0] mgt_txdata5;
  input [7:0] mgt_txcharisk5;
  output [63:0] mgt_rxdata5;
  output [7:0] mgt_rxcharisk5;
  output [7:0] mgt_rxcodecomma5;
  input [3:0] mgt_rxencommaalign5;
  input [0:0] mgt_rxenchansync5;
  output [3:0] mgt_rxsyncok5;
  output [7:0] mgt_rxcodevalid5;
  output [3:0] mgt_rxbufferr5;
  output [3:0] mgt_rxlock5;
  input [4:0] mgt_txpostemphasis5;
  input [3:0] mgt_txpreemphasis5;
  input [3:0] mgt_txdiffctrl5;
  input [2:0] mgt_rxeqmix5;
  input [0:0] mgt_tx_rst6;
  input [0:0] mgt_rx_rst6;
  input [63:0] mgt_txdata6;
  input [7:0] mgt_txcharisk6;
  output [63:0] mgt_rxdata6;
  output [7:0] mgt_rxcharisk6;
  output [7:0] mgt_rxcodecomma6;
  input [3:0] mgt_rxencommaalign6;
  input [0:0] mgt_rxenchansync6;
  output [3:0] mgt_rxsyncok6;
  output [7:0] mgt_rxcodevalid6;
  output [3:0] mgt_rxbufferr6;
  output [3:0] mgt_rxlock6;
  input [4:0] mgt_txpostemphasis6;
  input [3:0] mgt_txpreemphasis6;
  input [3:0] mgt_txdiffctrl6;
  input [2:0] mgt_rxeqmix6;
  input [0:0] mgt_tx_rst7;
  input [0:0] mgt_rx_rst7;
  input [63:0] mgt_txdata7;
  input [7:0] mgt_txcharisk7;
  output [63:0] mgt_rxdata7;
  output [7:0] mgt_rxcharisk7;
  output [7:0] mgt_rxcodecomma7;
  input [3:0] mgt_rxencommaalign7;
  input [0:0] mgt_rxenchansync7;
  output [3:0] mgt_rxsyncok7;
  output [7:0] mgt_rxcodevalid7;
  output [3:0] mgt_rxbufferr7;
  output [3:0] mgt_rxlock7;
  input [4:0] mgt_txpostemphasis7;
  input [3:0] mgt_txpreemphasis7;
  input [3:0] mgt_txdiffctrl7;
  input [2:0] mgt_rxeqmix7;

  xaui_infrastructure
    #(
      .ENABLE0 ( 0 ),
      .ENABLE1 ( 0 ),
      .ENABLE2 ( 0 ),
      .ENABLE3 ( 0 ),
      .ENABLE4 ( 1 ),
      .ENABLE5 ( 1 ),
      .ENABLE6 ( 0 ),
      .ENABLE7 ( 0 ),
      .RX_LANE_STEER0 ( 1 ),
      .RX_LANE_STEER1 ( 1 ),
      .RX_LANE_STEER2 ( 1 ),
      .RX_LANE_STEER3 ( 1 ),
      .RX_LANE_STEER4 ( 1 ),
      .RX_LANE_STEER5 ( 1 ),
      .RX_LANE_STEER6 ( 1 ),
      .RX_LANE_STEER7 ( 1 ),
      .TX_LANE_STEER0 ( 0 ),
      .TX_LANE_STEER1 ( 0 ),
      .TX_LANE_STEER2 ( 0 ),
      .TX_LANE_STEER3 ( 0 ),
      .TX_LANE_STEER4 ( 1 ),
      .TX_LANE_STEER5 ( 1 ),
      .TX_LANE_STEER6 ( 0 ),
      .TX_LANE_STEER7 ( 0 ),
      .RX_INVERT0 ( 0 ),
      .RX_INVERT1 ( 0 ),
      .RX_INVERT2 ( 0 ),
      .RX_INVERT3 ( 0 ),
      .RX_INVERT4 ( 0 ),
      .RX_INVERT5 ( 0 ),
      .RX_INVERT6 ( 0 ),
      .RX_INVERT7 ( 0 )
    )
    xaui_infrastructure_inst (
      .reset ( reset ),
      .xaui_refclk_n ( xaui_refclk_n ),
      .xaui_refclk_p ( xaui_refclk_p ),
      .mgt_rx_n ( mgt_rx_n ),
      .mgt_rx_p ( mgt_rx_p ),
      .mgt_tx_n ( mgt_tx_n ),
      .mgt_tx_p ( mgt_tx_p ),
      .xaui_clk ( xaui_clk ),
      .mgt_tx_rst0 ( mgt_tx_rst0 ),
      .mgt_rx_rst0 ( mgt_rx_rst0 ),
      .mgt_txdata0 ( mgt_txdata0 ),
      .mgt_txcharisk0 ( mgt_txcharisk0 ),
      .mgt_rxdata0 ( mgt_rxdata0 ),
      .mgt_rxcharisk0 ( mgt_rxcharisk0 ),
      .mgt_rxcodecomma0 ( mgt_rxcodecomma0 ),
      .mgt_rxencommaalign0 ( mgt_rxencommaalign0 ),
      .mgt_rxenchansync0 ( mgt_rxenchansync0 ),
      .mgt_rxsyncok0 ( mgt_rxsyncok0 ),
      .mgt_rxcodevalid0 ( mgt_rxcodevalid0 ),
      .mgt_rxbufferr0 ( mgt_rxbufferr0 ),
      .mgt_rxlock0 ( mgt_rxlock0 ),
      .mgt_txpostemphasis0 ( mgt_txpostemphasis0 ),
      .mgt_txpreemphasis0 ( mgt_txpreemphasis0 ),
      .mgt_txdiffctrl0 ( mgt_txdiffctrl0 ),
      .mgt_rxeqmix0 ( mgt_rxeqmix0 ),
      .mgt_tx_rst1 ( mgt_tx_rst1 ),
      .mgt_rx_rst1 ( mgt_rx_rst1 ),
      .mgt_txdata1 ( mgt_txdata1 ),
      .mgt_txcharisk1 ( mgt_txcharisk1 ),
      .mgt_rxdata1 ( mgt_rxdata1 ),
      .mgt_rxcharisk1 ( mgt_rxcharisk1 ),
      .mgt_rxcodecomma1 ( mgt_rxcodecomma1 ),
      .mgt_rxencommaalign1 ( mgt_rxencommaalign1 ),
      .mgt_rxenchansync1 ( mgt_rxenchansync1 ),
      .mgt_rxsyncok1 ( mgt_rxsyncok1 ),
      .mgt_rxcodevalid1 ( mgt_rxcodevalid1 ),
      .mgt_rxbufferr1 ( mgt_rxbufferr1 ),
      .mgt_rxlock1 ( mgt_rxlock1 ),
      .mgt_txpostemphasis1 ( mgt_txpostemphasis1 ),
      .mgt_txpreemphasis1 ( mgt_txpreemphasis1 ),
      .mgt_txdiffctrl1 ( mgt_txdiffctrl1 ),
      .mgt_rxeqmix1 ( mgt_rxeqmix1 ),
      .mgt_tx_rst2 ( mgt_tx_rst2 ),
      .mgt_rx_rst2 ( mgt_rx_rst2 ),
      .mgt_txdata2 ( mgt_txdata2 ),
      .mgt_txcharisk2 ( mgt_txcharisk2 ),
      .mgt_rxdata2 ( mgt_rxdata2 ),
      .mgt_rxcharisk2 ( mgt_rxcharisk2 ),
      .mgt_rxcodecomma2 ( mgt_rxcodecomma2 ),
      .mgt_rxencommaalign2 ( mgt_rxencommaalign2 ),
      .mgt_rxenchansync2 ( mgt_rxenchansync2 ),
      .mgt_rxsyncok2 ( mgt_rxsyncok2 ),
      .mgt_rxcodevalid2 ( mgt_rxcodevalid2 ),
      .mgt_rxbufferr2 ( mgt_rxbufferr2 ),
      .mgt_rxlock2 ( mgt_rxlock2 ),
      .mgt_txpostemphasis2 ( mgt_txpostemphasis2 ),
      .mgt_txpreemphasis2 ( mgt_txpreemphasis2 ),
      .mgt_txdiffctrl2 ( mgt_txdiffctrl2 ),
      .mgt_rxeqmix2 ( mgt_rxeqmix2 ),
      .mgt_tx_rst3 ( mgt_tx_rst3 ),
      .mgt_rx_rst3 ( mgt_rx_rst3 ),
      .mgt_txdata3 ( mgt_txdata3 ),
      .mgt_txcharisk3 ( mgt_txcharisk3 ),
      .mgt_rxdata3 ( mgt_rxdata3 ),
      .mgt_rxcharisk3 ( mgt_rxcharisk3 ),
      .mgt_rxcodecomma3 ( mgt_rxcodecomma3 ),
      .mgt_rxencommaalign3 ( mgt_rxencommaalign3 ),
      .mgt_rxenchansync3 ( mgt_rxenchansync3 ),
      .mgt_rxsyncok3 ( mgt_rxsyncok3 ),
      .mgt_rxcodevalid3 ( mgt_rxcodevalid3 ),
      .mgt_rxbufferr3 ( mgt_rxbufferr3 ),
      .mgt_rxlock3 ( mgt_rxlock3 ),
      .mgt_txpostemphasis3 ( mgt_txpostemphasis3 ),
      .mgt_txpreemphasis3 ( mgt_txpreemphasis3 ),
      .mgt_txdiffctrl3 ( mgt_txdiffctrl3 ),
      .mgt_rxeqmix3 ( mgt_rxeqmix3 ),
      .mgt_tx_rst4 ( mgt_tx_rst4 ),
      .mgt_rx_rst4 ( mgt_rx_rst4 ),
      .mgt_txdata4 ( mgt_txdata4 ),
      .mgt_txcharisk4 ( mgt_txcharisk4 ),
      .mgt_rxdata4 ( mgt_rxdata4 ),
      .mgt_rxcharisk4 ( mgt_rxcharisk4 ),
      .mgt_rxcodecomma4 ( mgt_rxcodecomma4 ),
      .mgt_rxencommaalign4 ( mgt_rxencommaalign4 ),
      .mgt_rxenchansync4 ( mgt_rxenchansync4 ),
      .mgt_rxsyncok4 ( mgt_rxsyncok4 ),
      .mgt_rxcodevalid4 ( mgt_rxcodevalid4 ),
      .mgt_rxbufferr4 ( mgt_rxbufferr4 ),
      .mgt_rxlock4 ( mgt_rxlock4 ),
      .mgt_txpostemphasis4 ( mgt_txpostemphasis4 ),
      .mgt_txpreemphasis4 ( mgt_txpreemphasis4 ),
      .mgt_txdiffctrl4 ( mgt_txdiffctrl4 ),
      .mgt_rxeqmix4 ( mgt_rxeqmix4 ),
      .mgt_tx_rst5 ( mgt_tx_rst5 ),
      .mgt_rx_rst5 ( mgt_rx_rst5 ),
      .mgt_txdata5 ( mgt_txdata5 ),
      .mgt_txcharisk5 ( mgt_txcharisk5 ),
      .mgt_rxdata5 ( mgt_rxdata5 ),
      .mgt_rxcharisk5 ( mgt_rxcharisk5 ),
      .mgt_rxcodecomma5 ( mgt_rxcodecomma5 ),
      .mgt_rxencommaalign5 ( mgt_rxencommaalign5 ),
      .mgt_rxenchansync5 ( mgt_rxenchansync5 ),
      .mgt_rxsyncok5 ( mgt_rxsyncok5 ),
      .mgt_rxcodevalid5 ( mgt_rxcodevalid5 ),
      .mgt_rxbufferr5 ( mgt_rxbufferr5 ),
      .mgt_rxlock5 ( mgt_rxlock5 ),
      .mgt_txpostemphasis5 ( mgt_txpostemphasis5 ),
      .mgt_txpreemphasis5 ( mgt_txpreemphasis5 ),
      .mgt_txdiffctrl5 ( mgt_txdiffctrl5 ),
      .mgt_rxeqmix5 ( mgt_rxeqmix5 ),
      .mgt_tx_rst6 ( mgt_tx_rst6 ),
      .mgt_rx_rst6 ( mgt_rx_rst6 ),
      .mgt_txdata6 ( mgt_txdata6 ),
      .mgt_txcharisk6 ( mgt_txcharisk6 ),
      .mgt_rxdata6 ( mgt_rxdata6 ),
      .mgt_rxcharisk6 ( mgt_rxcharisk6 ),
      .mgt_rxcodecomma6 ( mgt_rxcodecomma6 ),
      .mgt_rxencommaalign6 ( mgt_rxencommaalign6 ),
      .mgt_rxenchansync6 ( mgt_rxenchansync6 ),
      .mgt_rxsyncok6 ( mgt_rxsyncok6 ),
      .mgt_rxcodevalid6 ( mgt_rxcodevalid6 ),
      .mgt_rxbufferr6 ( mgt_rxbufferr6 ),
      .mgt_rxlock6 ( mgt_rxlock6 ),
      .mgt_txpostemphasis6 ( mgt_txpostemphasis6 ),
      .mgt_txpreemphasis6 ( mgt_txpreemphasis6 ),
      .mgt_txdiffctrl6 ( mgt_txdiffctrl6 ),
      .mgt_rxeqmix6 ( mgt_rxeqmix6 ),
      .mgt_tx_rst7 ( mgt_tx_rst7 ),
      .mgt_rx_rst7 ( mgt_rx_rst7 ),
      .mgt_txdata7 ( mgt_txdata7 ),
      .mgt_txcharisk7 ( mgt_txcharisk7 ),
      .mgt_rxdata7 ( mgt_rxdata7 ),
      .mgt_rxcharisk7 ( mgt_rxcharisk7 ),
      .mgt_rxcodecomma7 ( mgt_rxcodecomma7 ),
      .mgt_rxencommaalign7 ( mgt_rxencommaalign7 ),
      .mgt_rxenchansync7 ( mgt_rxenchansync7 ),
      .mgt_rxsyncok7 ( mgt_rxsyncok7 ),
      .mgt_rxcodevalid7 ( mgt_rxcodevalid7 ),
      .mgt_rxbufferr7 ( mgt_rxbufferr7 ),
      .mgt_rxlock7 ( mgt_rxlock7 ),
      .mgt_txpostemphasis7 ( mgt_txpostemphasis7 ),
      .mgt_txpreemphasis7 ( mgt_txpreemphasis7 ),
      .mgt_txdiffctrl7 ( mgt_txdiffctrl7 ),
      .mgt_rxeqmix7 ( mgt_rxeqmix7 )
    );

endmodule

