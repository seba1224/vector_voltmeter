-------------------------------------------------------------------------------
-- system.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system is
  port (
    sys_clk_n : in std_logic;
    sys_clk_p : in std_logic;
    aux_clk_n : in std_logic;
    aux_clk_p : in std_logic;
    epb_clk_in : in std_logic;
    epb_data : inout std_logic_vector(0 to 31);
    epb_addr : in std_logic_vector(5 to 29);
    epb_cs_n : in std_logic;
    epb_be_n : in std_logic_vector(0 to 3);
    epb_r_w_n : in std_logic;
    epb_oe_n : in std_logic;
    epb_doe_n : out std_logic;
    epb_rdy : out std_logic;
    ppc_irq_n : out std_logic;
    xaui_refclk_n : in std_logic_vector(2 downto 0);
    xaui_refclk_p : in std_logic_vector(2 downto 0);
    mgt_rx_n : in std_logic_vector(8*4-1 downto 0);
    mgt_rx_p : in std_logic_vector(8*4-1 downto 0);
    mgt_tx_n : out std_logic_vector(8*4-1 downto 0);
    mgt_tx_p : out std_logic_vector(8*4-1 downto 0);
    mgt_gpio : inout std_logic_vector(11 downto 0);
    roach2_tut_tge_led0_gbe0_pulse_tx_ext : out std_logic_vector(0 to 0);
    roach2_tut_tge_led1_gbe0_up_ext : out std_logic_vector(0 to 0);
    roach2_tut_tge_led2_gbe1_pulse_rx_ext : out std_logic_vector(0 to 0);
    roach2_tut_tge_led3_gbe1_up_ext : out std_logic_vector(0 to 0)
  );
end system;

architecture STRUCTURE of system is

  component system_xaui_infrastructure_inst_wrapper is
    port (
      reset : in std_logic;
      xaui_refclk_n : in std_logic_vector(2 downto 0);
      xaui_refclk_p : in std_logic_vector(2 downto 0);
      mgt_rx_n : in std_logic_vector(31 downto 0);
      mgt_rx_p : in std_logic_vector(31 downto 0);
      mgt_tx_n : out std_logic_vector(31 downto 0);
      mgt_tx_p : out std_logic_vector(31 downto 0);
      xaui_clk : out std_logic;
      mgt_tx_rst0 : in std_logic_vector(0 to 0);
      mgt_rx_rst0 : in std_logic_vector(0 to 0);
      mgt_txdata0 : in std_logic_vector(63 downto 0);
      mgt_txcharisk0 : in std_logic_vector(7 downto 0);
      mgt_rxdata0 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk0 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma0 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign0 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync0 : in std_logic_vector(0 to 0);
      mgt_rxsyncok0 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid0 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr0 : out std_logic_vector(3 downto 0);
      mgt_rxlock0 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis0 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis0 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl0 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix0 : in std_logic_vector(2 downto 0);
      mgt_tx_rst1 : in std_logic_vector(0 to 0);
      mgt_rx_rst1 : in std_logic_vector(0 to 0);
      mgt_txdata1 : in std_logic_vector(63 downto 0);
      mgt_txcharisk1 : in std_logic_vector(7 downto 0);
      mgt_rxdata1 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk1 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma1 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign1 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync1 : in std_logic_vector(0 to 0);
      mgt_rxsyncok1 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid1 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr1 : out std_logic_vector(3 downto 0);
      mgt_rxlock1 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis1 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis1 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl1 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix1 : in std_logic_vector(2 downto 0);
      mgt_tx_rst2 : in std_logic_vector(0 to 0);
      mgt_rx_rst2 : in std_logic_vector(0 to 0);
      mgt_txdata2 : in std_logic_vector(63 downto 0);
      mgt_txcharisk2 : in std_logic_vector(7 downto 0);
      mgt_rxdata2 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk2 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma2 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign2 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync2 : in std_logic_vector(0 to 0);
      mgt_rxsyncok2 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid2 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr2 : out std_logic_vector(3 downto 0);
      mgt_rxlock2 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis2 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis2 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl2 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix2 : in std_logic_vector(2 downto 0);
      mgt_tx_rst3 : in std_logic_vector(0 to 0);
      mgt_rx_rst3 : in std_logic_vector(0 to 0);
      mgt_txdata3 : in std_logic_vector(63 downto 0);
      mgt_txcharisk3 : in std_logic_vector(7 downto 0);
      mgt_rxdata3 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk3 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma3 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign3 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync3 : in std_logic_vector(0 to 0);
      mgt_rxsyncok3 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid3 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr3 : out std_logic_vector(3 downto 0);
      mgt_rxlock3 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis3 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis3 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl3 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix3 : in std_logic_vector(2 downto 0);
      mgt_tx_rst4 : in std_logic_vector(0 to 0);
      mgt_rx_rst4 : in std_logic_vector(0 to 0);
      mgt_txdata4 : in std_logic_vector(63 downto 0);
      mgt_txcharisk4 : in std_logic_vector(7 downto 0);
      mgt_rxdata4 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk4 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma4 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign4 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync4 : in std_logic_vector(0 to 0);
      mgt_rxsyncok4 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid4 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr4 : out std_logic_vector(3 downto 0);
      mgt_rxlock4 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis4 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis4 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl4 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix4 : in std_logic_vector(2 downto 0);
      mgt_tx_rst5 : in std_logic_vector(0 to 0);
      mgt_rx_rst5 : in std_logic_vector(0 to 0);
      mgt_txdata5 : in std_logic_vector(63 downto 0);
      mgt_txcharisk5 : in std_logic_vector(7 downto 0);
      mgt_rxdata5 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk5 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma5 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign5 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync5 : in std_logic_vector(0 to 0);
      mgt_rxsyncok5 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid5 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr5 : out std_logic_vector(3 downto 0);
      mgt_rxlock5 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis5 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis5 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl5 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix5 : in std_logic_vector(2 downto 0);
      mgt_tx_rst6 : in std_logic_vector(0 to 0);
      mgt_rx_rst6 : in std_logic_vector(0 to 0);
      mgt_txdata6 : in std_logic_vector(63 downto 0);
      mgt_txcharisk6 : in std_logic_vector(7 downto 0);
      mgt_rxdata6 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk6 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma6 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign6 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync6 : in std_logic_vector(0 to 0);
      mgt_rxsyncok6 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid6 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr6 : out std_logic_vector(3 downto 0);
      mgt_rxlock6 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis6 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis6 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl6 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix6 : in std_logic_vector(2 downto 0);
      mgt_tx_rst7 : in std_logic_vector(0 to 0);
      mgt_rx_rst7 : in std_logic_vector(0 to 0);
      mgt_txdata7 : in std_logic_vector(63 downto 0);
      mgt_txcharisk7 : in std_logic_vector(7 downto 0);
      mgt_rxdata7 : out std_logic_vector(63 downto 0);
      mgt_rxcharisk7 : out std_logic_vector(7 downto 0);
      mgt_rxcodecomma7 : out std_logic_vector(7 downto 0);
      mgt_rxencommaalign7 : in std_logic_vector(3 downto 0);
      mgt_rxenchansync7 : in std_logic_vector(0 to 0);
      mgt_rxsyncok7 : out std_logic_vector(3 downto 0);
      mgt_rxcodevalid7 : out std_logic_vector(7 downto 0);
      mgt_rxbufferr7 : out std_logic_vector(3 downto 0);
      mgt_rxlock7 : out std_logic_vector(3 downto 0);
      mgt_txpostemphasis7 : in std_logic_vector(4 downto 0);
      mgt_txpreemphasis7 : in std_logic_vector(3 downto 0);
      mgt_txdiffctrl7 : in std_logic_vector(3 downto 0);
      mgt_rxeqmix7 : in std_logic_vector(2 downto 0)
    );
  end component;

  component system_infrastructure_inst_wrapper is
    port (
      sys_clk_n : in std_logic;
      sys_clk_p : in std_logic;
      aux_clk_n : in std_logic;
      aux_clk_p : in std_logic;
      epb_clk_in : in std_logic;
      sys_clk : out std_logic;
      sys_clk90 : out std_logic;
      sys_clk180 : out std_logic;
      sys_clk270 : out std_logic;
      sys_clk_lock : out std_logic;
      sys_clk2x : out std_logic;
      sys_clk2x90 : out std_logic;
      sys_clk2x180 : out std_logic;
      sys_clk2x270 : out std_logic;
      aux_clk : out std_logic;
      aux_clk90 : out std_logic;
      aux_clk180 : out std_logic;
      aux_clk270 : out std_logic;
      aux_clk2x : out std_logic;
      aux_clk2x90 : out std_logic;
      aux_clk2x180 : out std_logic;
      aux_clk2x270 : out std_logic;
      epb_clk : out std_logic;
      idelay_rst : in std_logic;
      idelay_rdy : out std_logic;
      op_power_on_rst : out std_logic;
      clk_200 : out std_logic;
      clk_100 : out std_logic
    );
  end component;

  component system_reset_block_inst_wrapper is
    port (
      clk : in std_logic;
      ip_async_reset_i : in std_logic;
      ip_reset_i : in std_logic;
      op_reset_o : out std_logic
    );
  end component;

  component system_opb0_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 18);
      Sl_DBus : in std_logic_vector(0 to 607);
      Sl_DBusEn : in std_logic_vector(0 to 18);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 18);
      Sl_errAck : in std_logic_vector(0 to 18);
      Sl_dwAck : in std_logic_vector(0 to 18);
      Sl_fwAck : in std_logic_vector(0 to 18);
      Sl_hwAck : in std_logic_vector(0 to 18);
      Sl_retry : in std_logic_vector(0 to 18);
      Sl_toutSup : in std_logic_vector(0 to 18);
      Sl_xferAck : in std_logic_vector(0 to 18);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component system_epb_opb_bridge_inst_wrapper is
    port (
      epb_clk : in std_logic;
      epb_doe_n : out std_logic;
      epb_data_oe_n : out std_logic;
      epb_cs_n : in std_logic;
      epb_oe_n : in std_logic;
      epb_r_w_n : in std_logic;
      epb_be_n : in std_logic_vector(3 downto 0);
      epb_addr : in std_logic_vector(5 to 29);
      epb_data_i : in std_logic_vector(0 to 31);
      epb_data_o : out std_logic_vector(0 to 31);
      epb_rdy : out std_logic;
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      M_request : out std_logic;
      M_busLock : out std_logic;
      M_select : out std_logic;
      M_RNW : out std_logic;
      M_BE : out std_logic_vector(0 to 3);
      M_seqAddr : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_ABus : out std_logic_vector(0 to 31);
      OPB_MGrant : in std_logic;
      OPB_xferAck : in std_logic;
      OPB_errAck : in std_logic;
      OPB_retry : in std_logic;
      OPB_timeout : in std_logic;
      OPB_DBus : in std_logic_vector(0 to 31)
    );
  end component;

  component system_epb_infrastructure_inst_wrapper is
    port (
      epb_data_buf : inout std_logic_vector(31 downto 0);
      epb_data_oe_n_i : in std_logic;
      epb_data_out_i : in std_logic_vector(31 downto 0);
      epb_data_in_o : out std_logic_vector(31 downto 0)
    );
  end component;

  component system_sys_block_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      soft_reset : out std_logic;
      irq_n : out std_logic;
      app_irq : in std_logic_vector(15 downto 0);
      fab_clk : in std_logic
    );
  end component;

  component system_sfp_mdio_controller_inst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      mgt_gpio : inout std_logic_vector(11 downto 0)
    );
  end component;

  component system_roach2_tut_tge_xsg_core_config_wrapper is
    port (
      clk : in std_logic;
      roach2_tut_tge_dest_ip_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_dest_port_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_led_rx : in std_logic;
      roach2_tut_tge_gbe0_led_tx : in std_logic;
      roach2_tut_tge_gbe0_led_up : in std_logic;
      roach2_tut_tge_gbe0_rx_bad_frame : in std_logic;
      roach2_tut_tge_gbe0_rx_data : in std_logic_vector(63 downto 0);
      roach2_tut_tge_gbe0_rx_dest_ip : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rx_dest_port : in std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe0_rx_end_of_frame : in std_logic;
      roach2_tut_tge_gbe0_rx_overrun : in std_logic;
      roach2_tut_tge_gbe0_rx_source_ip : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rx_source_port : in std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe0_rx_valid : in std_logic;
      roach2_tut_tge_gbe0_tx_afull : in std_logic;
      roach2_tut_tge_gbe0_tx_overflow : in std_logic;
      roach2_tut_tge_gbe0_rst : out std_logic;
      roach2_tut_tge_gbe0_rx_ack : out std_logic;
      roach2_tut_tge_gbe0_rx_overrun_ack : out std_logic;
      roach2_tut_tge_gbe0_tx_data : out std_logic_vector(63 downto 0);
      roach2_tut_tge_gbe0_tx_dest_ip : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_tx_dest_port : out std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe0_tx_end_of_frame : out std_logic;
      roach2_tut_tge_gbe0_tx_valid : out std_logic;
      roach2_tut_tge_gbe0_rxbadctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxeofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxs_ss_bram_data_out : in std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe0_rxs_ss_bram_addr : out std_logic_vector(12 downto 0);
      roach2_tut_tge_gbe0_rxs_ss_bram_data_in : out std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe0_rxs_ss_bram_we : out std_logic;
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxs_ss_status_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_rxvldctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txfullctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txs_ss_bram_data_out : in std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe0_txs_ss_bram_addr : out std_logic_vector(12 downto 0);
      roach2_tut_tge_gbe0_txs_ss_bram_data_in : out std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe0_txs_ss_bram_we : out std_logic;
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txs_ss_status_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_txvldctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_linkup_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe0_tx_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_led_rx : in std_logic;
      roach2_tut_tge_gbe1_led_tx : in std_logic;
      roach2_tut_tge_gbe1_led_up : in std_logic;
      roach2_tut_tge_gbe1_rx_bad_frame : in std_logic;
      roach2_tut_tge_gbe1_rx_data : in std_logic_vector(63 downto 0);
      roach2_tut_tge_gbe1_rx_dest_ip : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rx_dest_port : in std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe1_rx_end_of_frame : in std_logic;
      roach2_tut_tge_gbe1_rx_overrun : in std_logic;
      roach2_tut_tge_gbe1_rx_source_ip : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rx_source_port : in std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe1_rx_valid : in std_logic;
      roach2_tut_tge_gbe1_tx_afull : in std_logic;
      roach2_tut_tge_gbe1_tx_overflow : in std_logic;
      roach2_tut_tge_gbe1_rst : out std_logic;
      roach2_tut_tge_gbe1_rx_ack : out std_logic;
      roach2_tut_tge_gbe1_rx_overrun_ack : out std_logic;
      roach2_tut_tge_gbe1_tx_data : out std_logic_vector(63 downto 0);
      roach2_tut_tge_gbe1_tx_dest_ip : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_tx_dest_port : out std_logic_vector(15 downto 0);
      roach2_tut_tge_gbe1_tx_end_of_frame : out std_logic;
      roach2_tut_tge_gbe1_tx_valid : out std_logic;
      roach2_tut_tge_gbe1_rxbadctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxeofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxs_ss_bram_data_out : in std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe1_rxs_ss_bram_addr : out std_logic_vector(12 downto 0);
      roach2_tut_tge_gbe1_rxs_ss_bram_data_in : out std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe1_rxs_ss_bram_we : out std_logic;
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxs_ss_status_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rxvldctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txfullctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txofctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txs_ss_bram_data_out : in std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe1_txs_ss_bram_addr : out std_logic_vector(12 downto 0);
      roach2_tut_tge_gbe1_txs_ss_bram_data_in : out std_logic_vector(127 downto 0);
      roach2_tut_tge_gbe1_txs_ss_bram_we : out std_logic;
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txs_ss_status_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_txvldctr_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_linkup_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in : out std_logic_vector(31 downto 0);
      roach2_tut_tge_led0_gbe0_pulse_tx_gateway : out std_logic;
      roach2_tut_tge_led1_gbe0_up_gateway : out std_logic;
      roach2_tut_tge_led2_gbe1_pulse_rx_gateway : out std_logic;
      roach2_tut_tge_led3_gbe1_up_gateway : out std_logic;
      roach2_tut_tge_pkt_sim_enable_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_pkt_sim_payload_len_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_pkt_sim_period_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_rst_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_tx_snapshot_ss_bram_data_out : in std_logic_vector(127 downto 0);
      roach2_tut_tge_tx_snapshot_ss_bram_addr : out std_logic_vector(11 downto 0);
      roach2_tut_tge_tx_snapshot_ss_bram_data_in : out std_logic_vector(127 downto 0);
      roach2_tut_tge_tx_snapshot_ss_bram_we : out std_logic;
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      roach2_tut_tge_tx_snapshot_ss_status_user_data_in : out std_logic_vector(31 downto 0)
    );
  end component;

  component system_roach2_tut_tge_dest_ip_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_dest_port_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_dest_ip : out std_logic_vector(31 downto 0);
      rx_dest_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      mgt_txpostemphasis : out std_logic_vector(4 downto 0);
      mgt_txpreemphasis : out std_logic_vector(3 downto 0);
      mgt_txdiffctrl : out std_logic_vector(3 downto 0);
      mgt_rxeqmix : out std_logic_vector(2 downto 0);
      xaui_status : in std_logic_vector(7 downto 0);
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic
    );
  end component;

  component system_xaui_phy_4_wrapper is
    port (
      reset : in std_logic;
      xaui_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_rx_reset : out std_logic;
      mgt_tx_reset : out std_logic;
      xaui_status : out std_logic_vector(7 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0)
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxbadctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxeofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_wrapper is
    port (
      clk : in std_logic;
      bram_we : in std_logic;
      bram_en_a : in std_logic;
      bram_addr : in std_logic_vector(12 downto 0);
      bram_rd_data : out std_logic_vector(127 downto 0);
      bram_wr_data : in std_logic_vector(127 downto 0);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxs_ss_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxs_ss_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxs_ss_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_rxvldctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txfullctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txs_ss_bram_ramblk_wrapper is
    port (
      clk : in std_logic;
      bram_we : in std_logic;
      bram_en_a : in std_logic;
      bram_addr : in std_logic_vector(12 downto 0);
      bram_rd_data : out std_logic_vector(127 downto 0);
      bram_wr_data : in std_logic_vector(127 downto 0);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe0_txs_ss_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe0_txs_ss_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txs_ss_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_txvldctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_linkup_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe0_tx_cnt_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_wrapper is
    port (
      clk : in std_logic;
      rst : in std_logic;
      tx_valid : in std_logic;
      tx_afull : out std_logic;
      tx_overflow : out std_logic;
      tx_end_of_frame : in std_logic;
      tx_data : in std_logic_vector(63 downto 0);
      tx_dest_ip : in std_logic_vector(31 downto 0);
      tx_dest_port : in std_logic_vector(15 downto 0);
      rx_valid : out std_logic;
      rx_end_of_frame : out std_logic;
      rx_data : out std_logic_vector(63 downto 0);
      rx_source_ip : out std_logic_vector(31 downto 0);
      rx_source_port : out std_logic_vector(15 downto 0);
      rx_dest_ip : out std_logic_vector(31 downto 0);
      rx_dest_port : out std_logic_vector(15 downto 0);
      rx_bad_frame : out std_logic;
      rx_overrun : out std_logic;
      rx_overrun_ack : in std_logic;
      rx_ack : in std_logic;
      led_up : out std_logic;
      led_rx : out std_logic;
      led_tx : out std_logic;
      xaui_clk : in std_logic;
      xgmii_txd : out std_logic_vector(63 downto 0);
      xgmii_txc : out std_logic_vector(7 downto 0);
      xgmii_rxd : in std_logic_vector(63 downto 0);
      xgmii_rxc : in std_logic_vector(7 downto 0);
      xaui_reset : in std_logic;
      mgt_txpostemphasis : out std_logic_vector(4 downto 0);
      mgt_txpreemphasis : out std_logic_vector(3 downto 0);
      mgt_txdiffctrl : out std_logic_vector(3 downto 0);
      mgt_rxeqmix : out std_logic_vector(2 downto 0);
      xaui_status : in std_logic_vector(7 downto 0);
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic
    );
  end component;

  component system_xaui_phy_5_wrapper is
    port (
      reset : in std_logic;
      xaui_clk : in std_logic;
      mgt_txdata : out std_logic_vector(63 downto 0);
      mgt_txcharisk : out std_logic_vector(7 downto 0);
      mgt_rxdata : in std_logic_vector(63 downto 0);
      mgt_rxcharisk : in std_logic_vector(7 downto 0);
      mgt_enable_align : out std_logic_vector(3 downto 0);
      mgt_code_valid : in std_logic_vector(7 downto 0);
      mgt_code_comma : in std_logic_vector(7 downto 0);
      mgt_rxlock : in std_logic_vector(3 downto 0);
      mgt_rxbufferr : in std_logic_vector(3 downto 0);
      mgt_syncok : in std_logic_vector(3 downto 0);
      mgt_en_chan_sync : out std_logic;
      mgt_rx_reset : out std_logic;
      mgt_tx_reset : out std_logic;
      xaui_status : out std_logic_vector(7 downto 0);
      xgmii_txd : in std_logic_vector(63 downto 0);
      xgmii_txc : in std_logic_vector(7 downto 0);
      xgmii_rxd : out std_logic_vector(63 downto 0);
      xgmii_rxc : out std_logic_vector(7 downto 0)
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxbadctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxeofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_wrapper is
    port (
      clk : in std_logic;
      bram_we : in std_logic;
      bram_en_a : in std_logic;
      bram_addr : in std_logic_vector(12 downto 0);
      bram_rd_data : out std_logic_vector(127 downto 0);
      bram_wr_data : in std_logic_vector(127 downto 0);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxs_ss_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxs_ss_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxs_ss_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rxvldctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txfullctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txofctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txs_ss_bram_ramblk_wrapper is
    port (
      clk : in std_logic;
      bram_we : in std_logic;
      bram_en_a : in std_logic;
      bram_addr : in std_logic_vector(12 downto 0);
      bram_rd_data : out std_logic_vector(127 downto 0);
      bram_wr_data : in std_logic_vector(127 downto 0);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe1_txs_ss_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_gbe1_txs_ss_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txs_ss_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_txvldctr_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_linkup_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_gbe1_rx_frame_cnt_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_led0_gbe0_pulse_tx_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_tge_led1_gbe0_up_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_tge_led2_gbe1_pulse_rx_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_tge_led3_gbe1_up_wrapper is
    port (
      gateway : in std_logic_vector(0 to 0);
      io_pad : out std_logic_vector(0 to 0);
      clk : in std_logic;
      clk90 : in std_logic
    );
  end component;

  component system_roach2_tut_tge_pkt_sim_enable_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_pkt_sim_payload_len_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_pkt_sim_period_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_rst_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_tx_snapshot_ss_bram_ramblk_wrapper is
    port (
      clk : in std_logic;
      bram_we : in std_logic;
      bram_en_a : in std_logic;
      bram_addr : in std_logic_vector(11 downto 0);
      bram_rd_data : out std_logic_vector(127 downto 0);
      bram_wr_data : in std_logic_vector(127 downto 0);
      BRAM_Rst_B : in std_logic;
      BRAM_Clk_B : in std_logic;
      BRAM_EN_B : in std_logic;
      BRAM_WEN_B : in std_logic_vector(0 to 3);
      BRAM_Addr_B : in std_logic_vector(0 to 31);
      BRAM_Din_B : out std_logic_vector(0 to 31);
      BRAM_Dout_B : in std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_tx_snapshot_ss_bram_wrapper is
    port (
      opb_clk : in std_logic;
      opb_rst : in std_logic;
      opb_abus : in std_logic_vector(0 to 31);
      opb_dbus : in std_logic_vector(0 to 31);
      sln_dbus : out std_logic_vector(0 to 31);
      opb_select : in std_logic;
      opb_rnw : in std_logic;
      opb_seqaddr : in std_logic;
      opb_be : in std_logic_vector(0 to 3);
      sln_xferack : out std_logic;
      sln_errack : out std_logic;
      sln_toutsup : out std_logic;
      sln_retry : out std_logic;
      bram_rst : out std_logic;
      bram_clk : out std_logic;
      bram_en : out std_logic;
      bram_wen : out std_logic_vector(0 to 3);
      bram_addr : out std_logic_vector(0 to 31);
      bram_din : in std_logic_vector(0 to 31);
      bram_dout : out std_logic_vector(0 to 31)
    );
  end component;

  component system_roach2_tut_tge_tx_snapshot_ss_ctrl_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_out : out std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_roach2_tut_tge_tx_snapshot_ss_status_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      OPB_ABus : in std_logic_vector(0 to 31);
      OPB_BE : in std_logic_vector(0 to 3);
      OPB_DBus : in std_logic_vector(0 to 31);
      OPB_RNW : in std_logic;
      OPB_select : in std_logic;
      OPB_seqAddr : in std_logic;
      user_data_in : in std_logic_vector(31 downto 0);
      user_clk : in std_logic
    );
  end component;

  component system_opb1_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 17);
      Sl_DBus : in std_logic_vector(0 to 575);
      Sl_DBusEn : in std_logic_vector(0 to 17);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 17);
      Sl_errAck : in std_logic_vector(0 to 17);
      Sl_dwAck : in std_logic_vector(0 to 17);
      Sl_fwAck : in std_logic_vector(0 to 17);
      Sl_hwAck : in std_logic_vector(0 to 17);
      Sl_retry : in std_logic_vector(0 to 17);
      Sl_toutSup : in std_logic_vector(0 to 17);
      Sl_xferAck : in std_logic_vector(0 to 17);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component system_opb2opb_bridge_opb1_wrapper is
    port (
      MOPB_Clk : in std_logic;
      SOPB_Clk : in std_logic;
      MOPB_Rst : in std_logic;
      SOPB_Rst : in std_logic;
      SOPB_ABus : in std_logic_vector(0 to 31);
      SOPB_BE : in std_logic_vector(0 to 3);
      SOPB_DBus : in std_logic_vector(0 to 31);
      SOPB_RNW : in std_logic;
      SOPB_select : in std_logic;
      SOPB_seqAddr : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      M_ABus : out std_logic_vector(0 to 31);
      M_BE : out std_logic_vector(0 to 3);
      M_busLock : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_request : out std_logic;
      M_RNW : out std_logic;
      M_select : out std_logic;
      M_seqAddr : out std_logic;
      MOPB_DBus : in std_logic_vector(0 to 31);
      MOPB_errAck : in std_logic;
      MOPB_MGrant : in std_logic;
      MOPB_retry : in std_logic;
      MOPB_timeout : in std_logic;
      MOPB_xferAck : in std_logic
    );
  end component;

  component system_opb2_wrapper is
    port (
      OPB_Clk : in std_logic;
      OPB_Rst : out std_logic;
      SYS_Rst : in std_logic;
      Debug_SYS_Rst : in std_logic;
      WDT_Rst : in std_logic;
      M_ABus : in std_logic_vector(0 to 31);
      M_BE : in std_logic_vector(0 to 3);
      M_beXfer : in std_logic_vector(0 to 0);
      M_busLock : in std_logic_vector(0 to 0);
      M_DBus : in std_logic_vector(0 to 31);
      M_DBusEn : in std_logic_vector(0 to 0);
      M_DBusEn32_63 : in std_logic_vector(0 to 0);
      M_dwXfer : in std_logic_vector(0 to 0);
      M_fwXfer : in std_logic_vector(0 to 0);
      M_hwXfer : in std_logic_vector(0 to 0);
      M_request : in std_logic_vector(0 to 0);
      M_RNW : in std_logic_vector(0 to 0);
      M_select : in std_logic_vector(0 to 0);
      M_seqAddr : in std_logic_vector(0 to 0);
      Sl_beAck : in std_logic_vector(0 to 11);
      Sl_DBus : in std_logic_vector(0 to 383);
      Sl_DBusEn : in std_logic_vector(0 to 11);
      Sl_DBusEn32_63 : in std_logic_vector(0 to 11);
      Sl_errAck : in std_logic_vector(0 to 11);
      Sl_dwAck : in std_logic_vector(0 to 11);
      Sl_fwAck : in std_logic_vector(0 to 11);
      Sl_hwAck : in std_logic_vector(0 to 11);
      Sl_retry : in std_logic_vector(0 to 11);
      Sl_toutSup : in std_logic_vector(0 to 11);
      Sl_xferAck : in std_logic_vector(0 to 11);
      OPB_MRequest : out std_logic_vector(0 to 0);
      OPB_ABus : out std_logic_vector(0 to 31);
      OPB_BE : out std_logic_vector(0 to 3);
      OPB_beXfer : out std_logic;
      OPB_beAck : out std_logic;
      OPB_busLock : out std_logic;
      OPB_rdDBus : out std_logic_vector(0 to 31);
      OPB_wrDBus : out std_logic_vector(0 to 31);
      OPB_DBus : out std_logic_vector(0 to 31);
      OPB_errAck : out std_logic;
      OPB_dwAck : out std_logic;
      OPB_dwXfer : out std_logic;
      OPB_fwAck : out std_logic;
      OPB_fwXfer : out std_logic;
      OPB_hwAck : out std_logic;
      OPB_hwXfer : out std_logic;
      OPB_MGrant : out std_logic_vector(0 to 0);
      OPB_pendReq : out std_logic_vector(0 to 0);
      OPB_retry : out std_logic;
      OPB_RNW : out std_logic;
      OPB_select : out std_logic;
      OPB_seqAddr : out std_logic;
      OPB_timeout : out std_logic;
      OPB_toutSup : out std_logic;
      OPB_xferAck : out std_logic
    );
  end component;

  component system_opb2opb_bridge_opb2_wrapper is
    port (
      MOPB_Clk : in std_logic;
      SOPB_Clk : in std_logic;
      MOPB_Rst : in std_logic;
      SOPB_Rst : in std_logic;
      SOPB_ABus : in std_logic_vector(0 to 31);
      SOPB_BE : in std_logic_vector(0 to 3);
      SOPB_DBus : in std_logic_vector(0 to 31);
      SOPB_RNW : in std_logic;
      SOPB_select : in std_logic;
      SOPB_seqAddr : in std_logic;
      Sl_DBus : out std_logic_vector(0 to 31);
      Sl_errAck : out std_logic;
      Sl_retry : out std_logic;
      Sl_toutSup : out std_logic;
      Sl_xferAck : out std_logic;
      M_ABus : out std_logic_vector(0 to 31);
      M_BE : out std_logic_vector(0 to 3);
      M_busLock : out std_logic;
      M_DBus : out std_logic_vector(0 to 31);
      M_request : out std_logic;
      M_RNW : out std_logic;
      M_select : out std_logic;
      M_seqAddr : out std_logic;
      MOPB_DBus : in std_logic_vector(0 to 31);
      MOPB_errAck : in std_logic;
      MOPB_MGrant : in std_logic;
      MOPB_retry : in std_logic;
      MOPB_timeout : in std_logic;
      MOPB_xferAck : in std_logic
    );
  end component;

  -- Internal signals

  signal epb_clk : std_logic;
  signal epb_data_i : std_logic_vector(0 to 31);
  signal epb_data_o : std_logic_vector(31 downto 0);
  signal epb_data_oe_n : std_logic;
  signal net_gnd0 : std_logic;
  signal net_gnd1 : std_logic_vector(0 to 0);
  signal net_gnd3 : std_logic_vector(2 downto 0);
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal net_gnd5 : std_logic_vector(4 downto 0);
  signal net_gnd8 : std_logic_vector(7 downto 0);
  signal net_gnd12 : std_logic_vector(0 to 11);
  signal net_gnd18 : std_logic_vector(0 to 17);
  signal net_gnd19 : std_logic_vector(0 to 18);
  signal net_gnd64 : std_logic_vector(63 downto 0);
  signal net_vcc1 : std_logic_vector(0 to 0);
  signal net_vcc12 : std_logic_vector(0 to 11);
  signal net_vcc18 : std_logic_vector(0 to 17);
  signal net_vcc19 : std_logic_vector(0 to 18);
  signal opb0_M_ABus : std_logic_vector(0 to 31);
  signal opb0_M_BE : std_logic_vector(0 to 3);
  signal opb0_M_DBus : std_logic_vector(0 to 31);
  signal opb0_M_RNW : std_logic_vector(0 to 0);
  signal opb0_M_busLock : std_logic_vector(0 to 0);
  signal opb0_M_request : std_logic_vector(0 to 0);
  signal opb0_M_select : std_logic_vector(0 to 0);
  signal opb0_M_seqAddr : std_logic_vector(0 to 0);
  signal opb0_OPB_ABus : std_logic_vector(0 to 31);
  signal opb0_OPB_BE : std_logic_vector(0 to 3);
  signal opb0_OPB_DBus : std_logic_vector(0 to 31);
  signal opb0_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb0_OPB_RNW : std_logic;
  signal opb0_OPB_Rst : std_logic;
  signal opb0_OPB_errAck : std_logic;
  signal opb0_OPB_retry : std_logic;
  signal opb0_OPB_select : std_logic;
  signal opb0_OPB_seqAddr : std_logic;
  signal opb0_OPB_timeout : std_logic;
  signal opb0_OPB_xferAck : std_logic;
  signal opb0_Sl_DBus : std_logic_vector(0 to 607);
  signal opb0_Sl_errAck : std_logic_vector(0 to 18);
  signal opb0_Sl_retry : std_logic_vector(0 to 18);
  signal opb0_Sl_toutSup : std_logic_vector(0 to 18);
  signal opb0_Sl_xferAck : std_logic_vector(0 to 18);
  signal opb1_M_ABus : std_logic_vector(0 to 31);
  signal opb1_M_BE : std_logic_vector(0 to 3);
  signal opb1_M_DBus : std_logic_vector(0 to 31);
  signal opb1_M_RNW : std_logic_vector(0 to 0);
  signal opb1_M_busLock : std_logic_vector(0 to 0);
  signal opb1_M_request : std_logic_vector(0 to 0);
  signal opb1_M_select : std_logic_vector(0 to 0);
  signal opb1_M_seqAddr : std_logic_vector(0 to 0);
  signal opb1_OPB_ABus : std_logic_vector(0 to 31);
  signal opb1_OPB_BE : std_logic_vector(0 to 3);
  signal opb1_OPB_DBus : std_logic_vector(0 to 31);
  signal opb1_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb1_OPB_RNW : std_logic;
  signal opb1_OPB_Rst : std_logic;
  signal opb1_OPB_errAck : std_logic;
  signal opb1_OPB_retry : std_logic;
  signal opb1_OPB_select : std_logic;
  signal opb1_OPB_seqAddr : std_logic;
  signal opb1_OPB_timeout : std_logic;
  signal opb1_OPB_xferAck : std_logic;
  signal opb1_Sl_DBus : std_logic_vector(0 to 575);
  signal opb1_Sl_errAck : std_logic_vector(0 to 17);
  signal opb1_Sl_retry : std_logic_vector(0 to 17);
  signal opb1_Sl_toutSup : std_logic_vector(0 to 17);
  signal opb1_Sl_xferAck : std_logic_vector(0 to 17);
  signal opb2_M_ABus : std_logic_vector(0 to 31);
  signal opb2_M_BE : std_logic_vector(0 to 3);
  signal opb2_M_DBus : std_logic_vector(0 to 31);
  signal opb2_M_RNW : std_logic_vector(0 to 0);
  signal opb2_M_busLock : std_logic_vector(0 to 0);
  signal opb2_M_request : std_logic_vector(0 to 0);
  signal opb2_M_select : std_logic_vector(0 to 0);
  signal opb2_M_seqAddr : std_logic_vector(0 to 0);
  signal opb2_OPB_ABus : std_logic_vector(0 to 31);
  signal opb2_OPB_BE : std_logic_vector(0 to 3);
  signal opb2_OPB_DBus : std_logic_vector(0 to 31);
  signal opb2_OPB_MGrant : std_logic_vector(0 to 0);
  signal opb2_OPB_RNW : std_logic;
  signal opb2_OPB_Rst : std_logic;
  signal opb2_OPB_errAck : std_logic;
  signal opb2_OPB_retry : std_logic;
  signal opb2_OPB_select : std_logic;
  signal opb2_OPB_seqAddr : std_logic;
  signal opb2_OPB_timeout : std_logic;
  signal opb2_OPB_xferAck : std_logic;
  signal opb2_Sl_DBus : std_logic_vector(0 to 383);
  signal opb2_Sl_errAck : std_logic_vector(0 to 11);
  signal opb2_Sl_retry : std_logic_vector(0 to 11);
  signal opb2_Sl_toutSup : std_logic_vector(0 to 11);
  signal opb2_Sl_xferAck : std_logic_vector(0 to 11);
  signal pgassign1 : std_logic_vector(15 downto 0);
  signal phy_conf4_mgt_rxeqmix : std_logic_vector(2 downto 0);
  signal phy_conf4_mgt_txdiffctrl : std_logic_vector(3 downto 0);
  signal phy_conf4_mgt_txpostemphasis : std_logic_vector(4 downto 0);
  signal phy_conf4_mgt_txpreemphasis : std_logic_vector(3 downto 0);
  signal phy_conf5_mgt_rxeqmix : std_logic_vector(2 downto 0);
  signal phy_conf5_mgt_txdiffctrl : std_logic_vector(3 downto 0);
  signal phy_conf5_mgt_txpostemphasis : std_logic_vector(4 downto 0);
  signal phy_conf5_mgt_txpreemphasis : std_logic_vector(3 downto 0);
  signal power_on_rst : std_logic;
  signal roach2_tut_tge_dest_ip_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_dest_port_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_led_rx : std_logic;
  signal roach2_tut_tge_gbe0_led_tx : std_logic;
  signal roach2_tut_tge_gbe0_led_up : std_logic;
  signal roach2_tut_tge_gbe0_linkup_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rst : std_logic;
  signal roach2_tut_tge_gbe0_rx_ack : std_logic;
  signal roach2_tut_tge_gbe0_rx_bad_frame : std_logic;
  signal roach2_tut_tge_gbe0_rx_data : std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_rx_dest_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_dest_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_rx_end_of_frame : std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun : std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun_ack : std_logic;
  signal roach2_tut_tge_gbe0_rx_source_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_source_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_rx_valid : std_logic;
  signal roach2_tut_tge_gbe0_rxbadctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxeofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_addr : std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_data_in : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_data_out : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Clk : std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_EN : std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Rst : std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_we : std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_status_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxvldctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_afull : std_logic;
  signal roach2_tut_tge_gbe0_tx_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_data : std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_dest_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_tx_end_of_frame : std_logic;
  signal roach2_tut_tge_gbe0_tx_overflow : std_logic;
  signal roach2_tut_tge_gbe0_tx_valid : std_logic;
  signal roach2_tut_tge_gbe0_txctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txfullctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_addr : std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_data_in : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_data_out : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Clk : std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_EN : std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Rst : std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roach2_tut_tge_gbe0_txs_ss_bram_we : std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_status_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txvldctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_led_rx : std_logic;
  signal roach2_tut_tge_gbe1_led_tx : std_logic;
  signal roach2_tut_tge_gbe1_led_up : std_logic;
  signal roach2_tut_tge_gbe1_linkup_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rst : std_logic;
  signal roach2_tut_tge_gbe1_rx_ack : std_logic;
  signal roach2_tut_tge_gbe1_rx_bad_frame : std_logic;
  signal roach2_tut_tge_gbe1_rx_data : std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_rx_dest_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_dest_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_rx_end_of_frame : std_logic;
  signal roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_overrun : std_logic;
  signal roach2_tut_tge_gbe1_rx_overrun_ack : std_logic;
  signal roach2_tut_tge_gbe1_rx_source_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_source_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_rx_valid : std_logic;
  signal roach2_tut_tge_gbe1_rxbadctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxeofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_addr : std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_data_in : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_data_out : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Clk : std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_EN : std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Rst : std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_we : std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_status_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxvldctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_tx_afull : std_logic;
  signal roach2_tut_tge_gbe1_tx_data : std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_tx_dest_ip : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_tx_dest_port : std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_tx_end_of_frame : std_logic;
  signal roach2_tut_tge_gbe1_tx_overflow : std_logic;
  signal roach2_tut_tge_gbe1_tx_valid : std_logic;
  signal roach2_tut_tge_gbe1_txctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txfullctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txofctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_addr : std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_data_in : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_data_out : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Clk : std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_EN : std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Rst : std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roach2_tut_tge_gbe1_txs_ss_bram_we : std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_status_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txvldctr_user_data_in : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_led0_gbe0_pulse_tx_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_tge_led1_gbe0_up_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_tge_led2_gbe1_pulse_rx_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_tge_led3_gbe1_up_gateway : std_logic_vector(0 to 0);
  signal roach2_tut_tge_pkt_sim_enable_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_payload_len_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_period_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_rst_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_addr : std_logic_vector(11 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_data_in : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_data_out : std_logic_vector(127 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Addr : std_logic_vector(0 to 31);
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Clk : std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Din : std_logic_vector(0 to 31);
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Dout : std_logic_vector(0 to 31);
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_EN : std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Rst : std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_WEN : std_logic_vector(0 to 3);
  signal roach2_tut_tge_tx_snapshot_ss_bram_we : std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out : std_logic_vector(31 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_status_user_data_in : std_logic_vector(31 downto 0);
  signal sys_clk : std_logic;
  signal sys_clk90 : std_logic;
  signal sys_reset : std_logic;
  signal xaui_clk : std_logic;
  signal xaui_conf4_xaui_status : std_logic_vector(7 downto 0);
  signal xaui_conf5_xaui_status : std_logic_vector(7 downto 0);
  signal xaui_sys4_mgt_enchansync : std_logic_vector(0 to 0);
  signal xaui_sys4_mgt_encommaalign : std_logic_vector(3 downto 0);
  signal xaui_sys4_mgt_rx_reset : std_logic_vector(0 to 0);
  signal xaui_sys4_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys4_mgt_rxcharisk : std_logic_vector(7 downto 0);
  signal xaui_sys4_mgt_rxcodecomma : std_logic_vector(7 downto 0);
  signal xaui_sys4_mgt_rxcodevalid : std_logic_vector(7 downto 0);
  signal xaui_sys4_mgt_rxdata : std_logic_vector(63 downto 0);
  signal xaui_sys4_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys4_mgt_rxsyncok : std_logic_vector(3 downto 0);
  signal xaui_sys4_mgt_tx_reset : std_logic_vector(0 to 0);
  signal xaui_sys4_mgt_txcharisk : std_logic_vector(7 downto 0);
  signal xaui_sys4_mgt_txdata : std_logic_vector(63 downto 0);
  signal xaui_sys5_mgt_enchansync : std_logic_vector(0 to 0);
  signal xaui_sys5_mgt_encommaalign : std_logic_vector(3 downto 0);
  signal xaui_sys5_mgt_rx_reset : std_logic_vector(0 to 0);
  signal xaui_sys5_mgt_rxbufferr : std_logic_vector(3 downto 0);
  signal xaui_sys5_mgt_rxcharisk : std_logic_vector(7 downto 0);
  signal xaui_sys5_mgt_rxcodecomma : std_logic_vector(7 downto 0);
  signal xaui_sys5_mgt_rxcodevalid : std_logic_vector(7 downto 0);
  signal xaui_sys5_mgt_rxdata : std_logic_vector(63 downto 0);
  signal xaui_sys5_mgt_rxlock : std_logic_vector(3 downto 0);
  signal xaui_sys5_mgt_rxsyncok : std_logic_vector(3 downto 0);
  signal xaui_sys5_mgt_tx_reset : std_logic_vector(0 to 0);
  signal xaui_sys5_mgt_txcharisk : std_logic_vector(7 downto 0);
  signal xaui_sys5_mgt_txdata : std_logic_vector(63 downto 0);
  signal xgmii4_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii4_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii4_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii4_xgmii_txd : std_logic_vector(63 downto 0);
  signal xgmii5_xgmii_rxc : std_logic_vector(7 downto 0);
  signal xgmii5_xgmii_rxd : std_logic_vector(63 downto 0);
  signal xgmii5_xgmii_txc : std_logic_vector(7 downto 0);
  signal xgmii5_xgmii_txd : std_logic_vector(63 downto 0);

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system_xaui_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_reset_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_opb_bridge_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_epb_infrastructure_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_sys_block_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_sfp_mdio_controller_inst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_xsg_core_config_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_dest_ip_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_dest_port_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_xaui_phy_4_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxbadctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxeofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxs_ss_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxs_ss_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxs_ss_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_rxvldctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txfullctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txs_ss_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txs_ss_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txs_ss_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txs_ss_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_txvldctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_linkup_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe0_tx_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_xaui_phy_5_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxbadctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxeofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxs_ss_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxs_ss_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxs_ss_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rxvldctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txfullctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txofctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txs_ss_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txs_ss_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txs_ss_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txs_ss_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_txvldctr_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_linkup_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_gbe1_rx_frame_cnt_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_led0_gbe0_pulse_tx_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_led1_gbe0_up_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_led2_gbe1_pulse_rx_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_led3_gbe1_up_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_pkt_sim_enable_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_pkt_sim_payload_len_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_pkt_sim_period_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_rst_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_tx_snapshot_ss_bram_ramblk_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_tx_snapshot_ss_bram_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_tx_snapshot_ss_ctrl_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_roach2_tut_tge_tx_snapshot_ss_status_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb2opb_bridge_opb1_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb2_wrapper : component is "user_black_box";
  attribute BOX_TYPE of system_opb2opb_bridge_opb2_wrapper : component is "user_black_box";

begin

  -- Internal assignments

  pgassign1(15 downto 0) <= X"0000";
  net_gnd0 <= '0';
  net_gnd1(0 to 0) <= B"0";
  net_gnd12(0 to 11) <= B"000000000000";
  net_gnd18(0 to 17) <= B"000000000000000000";
  net_gnd19(0 to 18) <= B"0000000000000000000";
  net_gnd3(2 downto 0) <= B"000";
  net_gnd4(3 downto 0) <= B"0000";
  net_gnd5(4 downto 0) <= B"00000";
  net_gnd64(63 downto 0) <= B"0000000000000000000000000000000000000000000000000000000000000000";
  net_gnd8(7 downto 0) <= B"00000000";
  net_vcc1(0 to 0) <= B"1";
  net_vcc12(0 to 11) <= B"111111111111";
  net_vcc18(0 to 17) <= B"111111111111111111";
  net_vcc19(0 to 18) <= B"1111111111111111111";

  xaui_infrastructure_inst : system_xaui_infrastructure_inst_wrapper
    port map (
      reset => sys_reset,
      xaui_refclk_n => xaui_refclk_n,
      xaui_refclk_p => xaui_refclk_p,
      mgt_rx_n => mgt_rx_n,
      mgt_rx_p => mgt_rx_p,
      mgt_tx_n => mgt_tx_n,
      mgt_tx_p => mgt_tx_p,
      xaui_clk => xaui_clk,
      mgt_tx_rst0 => net_gnd1(0 to 0),
      mgt_rx_rst0 => net_gnd1(0 to 0),
      mgt_txdata0 => net_gnd64,
      mgt_txcharisk0 => net_gnd8,
      mgt_rxdata0 => open,
      mgt_rxcharisk0 => open,
      mgt_rxcodecomma0 => open,
      mgt_rxencommaalign0 => net_gnd4,
      mgt_rxenchansync0 => net_gnd1(0 to 0),
      mgt_rxsyncok0 => open,
      mgt_rxcodevalid0 => open,
      mgt_rxbufferr0 => open,
      mgt_rxlock0 => open,
      mgt_txpostemphasis0 => net_gnd5,
      mgt_txpreemphasis0 => net_gnd4,
      mgt_txdiffctrl0 => net_gnd4,
      mgt_rxeqmix0 => net_gnd3,
      mgt_tx_rst1 => net_gnd1(0 to 0),
      mgt_rx_rst1 => net_gnd1(0 to 0),
      mgt_txdata1 => net_gnd64,
      mgt_txcharisk1 => net_gnd8,
      mgt_rxdata1 => open,
      mgt_rxcharisk1 => open,
      mgt_rxcodecomma1 => open,
      mgt_rxencommaalign1 => net_gnd4,
      mgt_rxenchansync1 => net_gnd1(0 to 0),
      mgt_rxsyncok1 => open,
      mgt_rxcodevalid1 => open,
      mgt_rxbufferr1 => open,
      mgt_rxlock1 => open,
      mgt_txpostemphasis1 => net_gnd5,
      mgt_txpreemphasis1 => net_gnd4,
      mgt_txdiffctrl1 => net_gnd4,
      mgt_rxeqmix1 => net_gnd3,
      mgt_tx_rst2 => net_gnd1(0 to 0),
      mgt_rx_rst2 => net_gnd1(0 to 0),
      mgt_txdata2 => net_gnd64,
      mgt_txcharisk2 => net_gnd8,
      mgt_rxdata2 => open,
      mgt_rxcharisk2 => open,
      mgt_rxcodecomma2 => open,
      mgt_rxencommaalign2 => net_gnd4,
      mgt_rxenchansync2 => net_gnd1(0 to 0),
      mgt_rxsyncok2 => open,
      mgt_rxcodevalid2 => open,
      mgt_rxbufferr2 => open,
      mgt_rxlock2 => open,
      mgt_txpostemphasis2 => net_gnd5,
      mgt_txpreemphasis2 => net_gnd4,
      mgt_txdiffctrl2 => net_gnd4,
      mgt_rxeqmix2 => net_gnd3,
      mgt_tx_rst3 => net_gnd1(0 to 0),
      mgt_rx_rst3 => net_gnd1(0 to 0),
      mgt_txdata3 => net_gnd64,
      mgt_txcharisk3 => net_gnd8,
      mgt_rxdata3 => open,
      mgt_rxcharisk3 => open,
      mgt_rxcodecomma3 => open,
      mgt_rxencommaalign3 => net_gnd4,
      mgt_rxenchansync3 => net_gnd1(0 to 0),
      mgt_rxsyncok3 => open,
      mgt_rxcodevalid3 => open,
      mgt_rxbufferr3 => open,
      mgt_rxlock3 => open,
      mgt_txpostemphasis3 => net_gnd5,
      mgt_txpreemphasis3 => net_gnd4,
      mgt_txdiffctrl3 => net_gnd4,
      mgt_rxeqmix3 => net_gnd3,
      mgt_tx_rst4 => xaui_sys4_mgt_tx_reset(0 to 0),
      mgt_rx_rst4 => xaui_sys4_mgt_rx_reset(0 to 0),
      mgt_txdata4 => xaui_sys4_mgt_txdata,
      mgt_txcharisk4 => xaui_sys4_mgt_txcharisk,
      mgt_rxdata4 => xaui_sys4_mgt_rxdata,
      mgt_rxcharisk4 => xaui_sys4_mgt_rxcharisk,
      mgt_rxcodecomma4 => xaui_sys4_mgt_rxcodecomma,
      mgt_rxencommaalign4 => xaui_sys4_mgt_encommaalign,
      mgt_rxenchansync4 => xaui_sys4_mgt_enchansync(0 to 0),
      mgt_rxsyncok4 => xaui_sys4_mgt_rxsyncok,
      mgt_rxcodevalid4 => xaui_sys4_mgt_rxcodevalid,
      mgt_rxbufferr4 => xaui_sys4_mgt_rxbufferr,
      mgt_rxlock4 => xaui_sys4_mgt_rxlock,
      mgt_txpostemphasis4 => phy_conf4_mgt_txpostemphasis,
      mgt_txpreemphasis4 => phy_conf4_mgt_txpreemphasis,
      mgt_txdiffctrl4 => phy_conf4_mgt_txdiffctrl,
      mgt_rxeqmix4 => phy_conf4_mgt_rxeqmix,
      mgt_tx_rst5 => xaui_sys5_mgt_tx_reset(0 to 0),
      mgt_rx_rst5 => xaui_sys5_mgt_rx_reset(0 to 0),
      mgt_txdata5 => xaui_sys5_mgt_txdata,
      mgt_txcharisk5 => xaui_sys5_mgt_txcharisk,
      mgt_rxdata5 => xaui_sys5_mgt_rxdata,
      mgt_rxcharisk5 => xaui_sys5_mgt_rxcharisk,
      mgt_rxcodecomma5 => xaui_sys5_mgt_rxcodecomma,
      mgt_rxencommaalign5 => xaui_sys5_mgt_encommaalign,
      mgt_rxenchansync5 => xaui_sys5_mgt_enchansync(0 to 0),
      mgt_rxsyncok5 => xaui_sys5_mgt_rxsyncok,
      mgt_rxcodevalid5 => xaui_sys5_mgt_rxcodevalid,
      mgt_rxbufferr5 => xaui_sys5_mgt_rxbufferr,
      mgt_rxlock5 => xaui_sys5_mgt_rxlock,
      mgt_txpostemphasis5 => phy_conf5_mgt_txpostemphasis,
      mgt_txpreemphasis5 => phy_conf5_mgt_txpreemphasis,
      mgt_txdiffctrl5 => phy_conf5_mgt_txdiffctrl,
      mgt_rxeqmix5 => phy_conf5_mgt_rxeqmix,
      mgt_tx_rst6 => net_gnd1(0 to 0),
      mgt_rx_rst6 => net_gnd1(0 to 0),
      mgt_txdata6 => net_gnd64,
      mgt_txcharisk6 => net_gnd8,
      mgt_rxdata6 => open,
      mgt_rxcharisk6 => open,
      mgt_rxcodecomma6 => open,
      mgt_rxencommaalign6 => net_gnd4,
      mgt_rxenchansync6 => net_gnd1(0 to 0),
      mgt_rxsyncok6 => open,
      mgt_rxcodevalid6 => open,
      mgt_rxbufferr6 => open,
      mgt_rxlock6 => open,
      mgt_txpostemphasis6 => net_gnd5,
      mgt_txpreemphasis6 => net_gnd4,
      mgt_txdiffctrl6 => net_gnd4,
      mgt_rxeqmix6 => net_gnd3,
      mgt_tx_rst7 => net_gnd1(0 to 0),
      mgt_rx_rst7 => net_gnd1(0 to 0),
      mgt_txdata7 => net_gnd64,
      mgt_txcharisk7 => net_gnd8,
      mgt_rxdata7 => open,
      mgt_rxcharisk7 => open,
      mgt_rxcodecomma7 => open,
      mgt_rxencommaalign7 => net_gnd4,
      mgt_rxenchansync7 => net_gnd1(0 to 0),
      mgt_rxsyncok7 => open,
      mgt_rxcodevalid7 => open,
      mgt_rxbufferr7 => open,
      mgt_rxlock7 => open,
      mgt_txpostemphasis7 => net_gnd5,
      mgt_txpreemphasis7 => net_gnd4,
      mgt_txdiffctrl7 => net_gnd4,
      mgt_rxeqmix7 => net_gnd3
    );

  infrastructure_inst : system_infrastructure_inst_wrapper
    port map (
      sys_clk_n => sys_clk_n,
      sys_clk_p => sys_clk_p,
      aux_clk_n => aux_clk_n,
      aux_clk_p => aux_clk_p,
      epb_clk_in => epb_clk_in,
      sys_clk => sys_clk,
      sys_clk90 => sys_clk90,
      sys_clk180 => open,
      sys_clk270 => open,
      sys_clk_lock => open,
      sys_clk2x => open,
      sys_clk2x90 => open,
      sys_clk2x180 => open,
      sys_clk2x270 => open,
      aux_clk => open,
      aux_clk90 => open,
      aux_clk180 => open,
      aux_clk270 => open,
      aux_clk2x => open,
      aux_clk2x90 => open,
      aux_clk2x180 => open,
      aux_clk2x270 => open,
      epb_clk => epb_clk,
      idelay_rst => power_on_rst,
      idelay_rdy => open,
      op_power_on_rst => power_on_rst,
      clk_200 => open,
      clk_100 => open
    );

  reset_block_inst : system_reset_block_inst_wrapper
    port map (
      clk => sys_clk,
      ip_async_reset_i => power_on_rst,
      ip_reset_i => power_on_rst,
      op_reset_o => sys_reset
    );

  opb0 : system_opb0_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      SYS_Rst => power_on_rst,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb0_M_ABus,
      M_BE => opb0_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb0_M_busLock(0 to 0),
      M_DBus => opb0_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb0_M_request(0 to 0),
      M_RNW => opb0_M_RNW(0 to 0),
      M_select => opb0_M_select(0 to 0),
      M_seqAddr => opb0_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd19,
      Sl_DBus => opb0_Sl_DBus,
      Sl_DBusEn => net_vcc19,
      Sl_DBusEn32_63 => net_vcc19,
      Sl_errAck => opb0_Sl_errAck,
      Sl_dwAck => net_gnd19,
      Sl_fwAck => net_gnd19,
      Sl_hwAck => net_gnd19,
      Sl_retry => opb0_Sl_retry,
      Sl_toutSup => opb0_Sl_toutSup,
      Sl_xferAck => opb0_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb0_OPB_DBus,
      OPB_errAck => opb0_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb0_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb0_OPB_retry,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      OPB_timeout => opb0_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb0_OPB_xferAck
    );

  epb_opb_bridge_inst : system_epb_opb_bridge_inst_wrapper
    port map (
      epb_clk => epb_clk,
      epb_doe_n => epb_doe_n,
      epb_data_oe_n => epb_data_oe_n,
      epb_cs_n => epb_cs_n,
      epb_oe_n => epb_oe_n,
      epb_r_w_n => epb_r_w_n,
      epb_be_n => epb_be_n(0 to 3),
      epb_addr => epb_addr,
      epb_data_i => epb_data_i,
      epb_data_o => epb_data_o(31 downto 0),
      epb_rdy => epb_rdy,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      M_request => opb0_M_request(0),
      M_busLock => opb0_M_busLock(0),
      M_select => opb0_M_select(0),
      M_RNW => opb0_M_RNW(0),
      M_BE => opb0_M_BE,
      M_seqAddr => opb0_M_seqAddr(0),
      M_DBus => opb0_M_DBus,
      M_ABus => opb0_M_ABus,
      OPB_MGrant => opb0_OPB_MGrant(0),
      OPB_xferAck => opb0_OPB_xferAck,
      OPB_errAck => opb0_OPB_errAck,
      OPB_retry => opb0_OPB_retry,
      OPB_timeout => opb0_OPB_timeout,
      OPB_DBus => opb0_OPB_DBus
    );

  epb_infrastructure_inst : system_epb_infrastructure_inst_wrapper
    port map (
      epb_data_buf => epb_data(0 to 31),
      epb_data_oe_n_i => epb_data_oe_n,
      epb_data_out_i => epb_data_o,
      epb_data_in_o => epb_data_i(0 to 31)
    );

  sys_block_inst : system_sys_block_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(0 to 31),
      Sl_errAck => opb0_Sl_errAck(0),
      Sl_retry => opb0_Sl_retry(0),
      Sl_toutSup => opb0_Sl_toutSup(0),
      Sl_xferAck => opb0_Sl_xferAck(0),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      soft_reset => open,
      irq_n => ppc_irq_n,
      app_irq => pgassign1,
      fab_clk => sys_clk
    );

  sfp_mdio_controller_inst : system_sfp_mdio_controller_inst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(32 to 63),
      Sl_errAck => opb0_Sl_errAck(1),
      Sl_retry => opb0_Sl_retry(1),
      Sl_toutSup => opb0_Sl_toutSup(1),
      Sl_xferAck => opb0_Sl_xferAck(1),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      mgt_gpio => mgt_gpio
    );

  roach2_tut_tge_XSG_core_config : system_roach2_tut_tge_xsg_core_config_wrapper
    port map (
      clk => sys_clk,
      roach2_tut_tge_dest_ip_user_data_out => roach2_tut_tge_dest_ip_user_data_out,
      roach2_tut_tge_dest_port_user_data_out => roach2_tut_tge_dest_port_user_data_out,
      roach2_tut_tge_gbe0_led_rx => roach2_tut_tge_gbe0_led_rx,
      roach2_tut_tge_gbe0_led_tx => roach2_tut_tge_gbe0_led_tx,
      roach2_tut_tge_gbe0_led_up => roach2_tut_tge_gbe0_led_up,
      roach2_tut_tge_gbe0_rx_bad_frame => roach2_tut_tge_gbe0_rx_bad_frame,
      roach2_tut_tge_gbe0_rx_data => roach2_tut_tge_gbe0_rx_data,
      roach2_tut_tge_gbe0_rx_dest_ip => roach2_tut_tge_gbe0_rx_dest_ip,
      roach2_tut_tge_gbe0_rx_dest_port => roach2_tut_tge_gbe0_rx_dest_port,
      roach2_tut_tge_gbe0_rx_end_of_frame => roach2_tut_tge_gbe0_rx_end_of_frame,
      roach2_tut_tge_gbe0_rx_overrun => roach2_tut_tge_gbe0_rx_overrun,
      roach2_tut_tge_gbe0_rx_source_ip => roach2_tut_tge_gbe0_rx_source_ip,
      roach2_tut_tge_gbe0_rx_source_port => roach2_tut_tge_gbe0_rx_source_port,
      roach2_tut_tge_gbe0_rx_valid => roach2_tut_tge_gbe0_rx_valid,
      roach2_tut_tge_gbe0_tx_afull => roach2_tut_tge_gbe0_tx_afull,
      roach2_tut_tge_gbe0_tx_overflow => roach2_tut_tge_gbe0_tx_overflow,
      roach2_tut_tge_gbe0_rst => roach2_tut_tge_gbe0_rst,
      roach2_tut_tge_gbe0_rx_ack => roach2_tut_tge_gbe0_rx_ack,
      roach2_tut_tge_gbe0_rx_overrun_ack => roach2_tut_tge_gbe0_rx_overrun_ack,
      roach2_tut_tge_gbe0_tx_data => roach2_tut_tge_gbe0_tx_data,
      roach2_tut_tge_gbe0_tx_dest_ip => roach2_tut_tge_gbe0_tx_dest_ip,
      roach2_tut_tge_gbe0_tx_dest_port => roach2_tut_tge_gbe0_tx_dest_port,
      roach2_tut_tge_gbe0_tx_end_of_frame => roach2_tut_tge_gbe0_tx_end_of_frame,
      roach2_tut_tge_gbe0_tx_valid => roach2_tut_tge_gbe0_tx_valid,
      roach2_tut_tge_gbe0_rxbadctr_user_data_in => roach2_tut_tge_gbe0_rxbadctr_user_data_in,
      roach2_tut_tge_gbe0_rxctr_user_data_in => roach2_tut_tge_gbe0_rxctr_user_data_in,
      roach2_tut_tge_gbe0_rxeofctr_user_data_in => roach2_tut_tge_gbe0_rxeofctr_user_data_in,
      roach2_tut_tge_gbe0_rxofctr_user_data_in => roach2_tut_tge_gbe0_rxofctr_user_data_in,
      roach2_tut_tge_gbe0_rxs_ss_bram_data_out => roach2_tut_tge_gbe0_rxs_ss_bram_data_out,
      roach2_tut_tge_gbe0_rxs_ss_bram_addr => roach2_tut_tge_gbe0_rxs_ss_bram_addr,
      roach2_tut_tge_gbe0_rxs_ss_bram_data_in => roach2_tut_tge_gbe0_rxs_ss_bram_data_in,
      roach2_tut_tge_gbe0_rxs_ss_bram_we => roach2_tut_tge_gbe0_rxs_ss_bram_we,
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out,
      roach2_tut_tge_gbe0_rxs_ss_status_user_data_in => roach2_tut_tge_gbe0_rxs_ss_status_user_data_in,
      roach2_tut_tge_gbe0_rxvldctr_user_data_in => roach2_tut_tge_gbe0_rxvldctr_user_data_in,
      roach2_tut_tge_gbe0_txctr_user_data_in => roach2_tut_tge_gbe0_txctr_user_data_in,
      roach2_tut_tge_gbe0_txfullctr_user_data_in => roach2_tut_tge_gbe0_txfullctr_user_data_in,
      roach2_tut_tge_gbe0_txofctr_user_data_in => roach2_tut_tge_gbe0_txofctr_user_data_in,
      roach2_tut_tge_gbe0_txs_ss_bram_data_out => roach2_tut_tge_gbe0_txs_ss_bram_data_out,
      roach2_tut_tge_gbe0_txs_ss_bram_addr => roach2_tut_tge_gbe0_txs_ss_bram_addr,
      roach2_tut_tge_gbe0_txs_ss_bram_data_in => roach2_tut_tge_gbe0_txs_ss_bram_data_in,
      roach2_tut_tge_gbe0_txs_ss_bram_we => roach2_tut_tge_gbe0_txs_ss_bram_we,
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out,
      roach2_tut_tge_gbe0_txs_ss_status_user_data_in => roach2_tut_tge_gbe0_txs_ss_status_user_data_in,
      roach2_tut_tge_gbe0_txvldctr_user_data_in => roach2_tut_tge_gbe0_txvldctr_user_data_in,
      roach2_tut_tge_gbe0_linkup_user_data_in => roach2_tut_tge_gbe0_linkup_user_data_in,
      roach2_tut_tge_gbe0_tx_cnt_user_data_in => roach2_tut_tge_gbe0_tx_cnt_user_data_in,
      roach2_tut_tge_gbe1_led_rx => roach2_tut_tge_gbe1_led_rx,
      roach2_tut_tge_gbe1_led_tx => roach2_tut_tge_gbe1_led_tx,
      roach2_tut_tge_gbe1_led_up => roach2_tut_tge_gbe1_led_up,
      roach2_tut_tge_gbe1_rx_bad_frame => roach2_tut_tge_gbe1_rx_bad_frame,
      roach2_tut_tge_gbe1_rx_data => roach2_tut_tge_gbe1_rx_data,
      roach2_tut_tge_gbe1_rx_dest_ip => roach2_tut_tge_gbe1_rx_dest_ip,
      roach2_tut_tge_gbe1_rx_dest_port => roach2_tut_tge_gbe1_rx_dest_port,
      roach2_tut_tge_gbe1_rx_end_of_frame => roach2_tut_tge_gbe1_rx_end_of_frame,
      roach2_tut_tge_gbe1_rx_overrun => roach2_tut_tge_gbe1_rx_overrun,
      roach2_tut_tge_gbe1_rx_source_ip => roach2_tut_tge_gbe1_rx_source_ip,
      roach2_tut_tge_gbe1_rx_source_port => roach2_tut_tge_gbe1_rx_source_port,
      roach2_tut_tge_gbe1_rx_valid => roach2_tut_tge_gbe1_rx_valid,
      roach2_tut_tge_gbe1_tx_afull => roach2_tut_tge_gbe1_tx_afull,
      roach2_tut_tge_gbe1_tx_overflow => roach2_tut_tge_gbe1_tx_overflow,
      roach2_tut_tge_gbe1_rst => roach2_tut_tge_gbe1_rst,
      roach2_tut_tge_gbe1_rx_ack => roach2_tut_tge_gbe1_rx_ack,
      roach2_tut_tge_gbe1_rx_overrun_ack => roach2_tut_tge_gbe1_rx_overrun_ack,
      roach2_tut_tge_gbe1_tx_data => roach2_tut_tge_gbe1_tx_data,
      roach2_tut_tge_gbe1_tx_dest_ip => roach2_tut_tge_gbe1_tx_dest_ip,
      roach2_tut_tge_gbe1_tx_dest_port => roach2_tut_tge_gbe1_tx_dest_port,
      roach2_tut_tge_gbe1_tx_end_of_frame => roach2_tut_tge_gbe1_tx_end_of_frame,
      roach2_tut_tge_gbe1_tx_valid => roach2_tut_tge_gbe1_tx_valid,
      roach2_tut_tge_gbe1_rxbadctr_user_data_in => roach2_tut_tge_gbe1_rxbadctr_user_data_in,
      roach2_tut_tge_gbe1_rxctr_user_data_in => roach2_tut_tge_gbe1_rxctr_user_data_in,
      roach2_tut_tge_gbe1_rxeofctr_user_data_in => roach2_tut_tge_gbe1_rxeofctr_user_data_in,
      roach2_tut_tge_gbe1_rxofctr_user_data_in => roach2_tut_tge_gbe1_rxofctr_user_data_in,
      roach2_tut_tge_gbe1_rxs_ss_bram_data_out => roach2_tut_tge_gbe1_rxs_ss_bram_data_out,
      roach2_tut_tge_gbe1_rxs_ss_bram_addr => roach2_tut_tge_gbe1_rxs_ss_bram_addr,
      roach2_tut_tge_gbe1_rxs_ss_bram_data_in => roach2_tut_tge_gbe1_rxs_ss_bram_data_in,
      roach2_tut_tge_gbe1_rxs_ss_bram_we => roach2_tut_tge_gbe1_rxs_ss_bram_we,
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out,
      roach2_tut_tge_gbe1_rxs_ss_status_user_data_in => roach2_tut_tge_gbe1_rxs_ss_status_user_data_in,
      roach2_tut_tge_gbe1_rxvldctr_user_data_in => roach2_tut_tge_gbe1_rxvldctr_user_data_in,
      roach2_tut_tge_gbe1_txctr_user_data_in => roach2_tut_tge_gbe1_txctr_user_data_in,
      roach2_tut_tge_gbe1_txfullctr_user_data_in => roach2_tut_tge_gbe1_txfullctr_user_data_in,
      roach2_tut_tge_gbe1_txofctr_user_data_in => roach2_tut_tge_gbe1_txofctr_user_data_in,
      roach2_tut_tge_gbe1_txs_ss_bram_data_out => roach2_tut_tge_gbe1_txs_ss_bram_data_out,
      roach2_tut_tge_gbe1_txs_ss_bram_addr => roach2_tut_tge_gbe1_txs_ss_bram_addr,
      roach2_tut_tge_gbe1_txs_ss_bram_data_in => roach2_tut_tge_gbe1_txs_ss_bram_data_in,
      roach2_tut_tge_gbe1_txs_ss_bram_we => roach2_tut_tge_gbe1_txs_ss_bram_we,
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out,
      roach2_tut_tge_gbe1_txs_ss_status_user_data_in => roach2_tut_tge_gbe1_txs_ss_status_user_data_in,
      roach2_tut_tge_gbe1_txvldctr_user_data_in => roach2_tut_tge_gbe1_txvldctr_user_data_in,
      roach2_tut_tge_gbe1_linkup_user_data_in => roach2_tut_tge_gbe1_linkup_user_data_in,
      roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in => roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in,
      roach2_tut_tge_led0_gbe0_pulse_tx_gateway => roach2_tut_tge_led0_gbe0_pulse_tx_gateway(0),
      roach2_tut_tge_led1_gbe0_up_gateway => roach2_tut_tge_led1_gbe0_up_gateway(0),
      roach2_tut_tge_led2_gbe1_pulse_rx_gateway => roach2_tut_tge_led2_gbe1_pulse_rx_gateway(0),
      roach2_tut_tge_led3_gbe1_up_gateway => roach2_tut_tge_led3_gbe1_up_gateway(0),
      roach2_tut_tge_pkt_sim_enable_user_data_out => roach2_tut_tge_pkt_sim_enable_user_data_out,
      roach2_tut_tge_pkt_sim_payload_len_user_data_out => roach2_tut_tge_pkt_sim_payload_len_user_data_out,
      roach2_tut_tge_pkt_sim_period_user_data_out => roach2_tut_tge_pkt_sim_period_user_data_out,
      roach2_tut_tge_rst_user_data_out => roach2_tut_tge_rst_user_data_out,
      roach2_tut_tge_tx_snapshot_ss_bram_data_out => roach2_tut_tge_tx_snapshot_ss_bram_data_out,
      roach2_tut_tge_tx_snapshot_ss_bram_addr => roach2_tut_tge_tx_snapshot_ss_bram_addr,
      roach2_tut_tge_tx_snapshot_ss_bram_data_in => roach2_tut_tge_tx_snapshot_ss_bram_data_in,
      roach2_tut_tge_tx_snapshot_ss_bram_we => roach2_tut_tge_tx_snapshot_ss_bram_we,
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out,
      roach2_tut_tge_tx_snapshot_ss_status_user_data_in => roach2_tut_tge_tx_snapshot_ss_status_user_data_in
    );

  roach2_tut_tge_dest_ip : system_roach2_tut_tge_dest_ip_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(64 to 95),
      Sl_errAck => opb0_Sl_errAck(2),
      Sl_retry => opb0_Sl_retry(2),
      Sl_toutSup => opb0_Sl_toutSup(2),
      Sl_xferAck => opb0_Sl_xferAck(2),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_tge_dest_ip_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_dest_port : system_roach2_tut_tge_dest_port_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(96 to 127),
      Sl_errAck => opb0_Sl_errAck(3),
      Sl_retry => opb0_Sl_retry(3),
      Sl_toutSup => opb0_Sl_toutSup(3),
      Sl_xferAck => opb0_Sl_xferAck(3),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_tge_dest_port_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0 : system_roach2_tut_tge_gbe0_wrapper
    port map (
      clk => sys_clk,
      rst => roach2_tut_tge_gbe0_rst,
      tx_valid => roach2_tut_tge_gbe0_tx_valid,
      tx_afull => roach2_tut_tge_gbe0_tx_afull,
      tx_overflow => roach2_tut_tge_gbe0_tx_overflow,
      tx_end_of_frame => roach2_tut_tge_gbe0_tx_end_of_frame,
      tx_data => roach2_tut_tge_gbe0_tx_data,
      tx_dest_ip => roach2_tut_tge_gbe0_tx_dest_ip,
      tx_dest_port => roach2_tut_tge_gbe0_tx_dest_port,
      rx_valid => roach2_tut_tge_gbe0_rx_valid,
      rx_end_of_frame => roach2_tut_tge_gbe0_rx_end_of_frame,
      rx_data => roach2_tut_tge_gbe0_rx_data,
      rx_source_ip => roach2_tut_tge_gbe0_rx_source_ip,
      rx_source_port => roach2_tut_tge_gbe0_rx_source_port,
      rx_dest_ip => roach2_tut_tge_gbe0_rx_dest_ip,
      rx_dest_port => roach2_tut_tge_gbe0_rx_dest_port,
      rx_bad_frame => roach2_tut_tge_gbe0_rx_bad_frame,
      rx_overrun => roach2_tut_tge_gbe0_rx_overrun,
      rx_overrun_ack => roach2_tut_tge_gbe0_rx_overrun_ack,
      rx_ack => roach2_tut_tge_gbe0_rx_ack,
      led_up => roach2_tut_tge_gbe0_led_up,
      led_rx => roach2_tut_tge_gbe0_led_rx,
      led_tx => roach2_tut_tge_gbe0_led_tx,
      xaui_clk => xaui_clk,
      xgmii_txd => xgmii4_xgmii_txd,
      xgmii_txc => xgmii4_xgmii_txc,
      xgmii_rxd => xgmii4_xgmii_rxd,
      xgmii_rxc => xgmii4_xgmii_rxc,
      xaui_reset => sys_reset,
      mgt_txpostemphasis => phy_conf4_mgt_txpostemphasis,
      mgt_txpreemphasis => phy_conf4_mgt_txpreemphasis,
      mgt_txdiffctrl => phy_conf4_mgt_txdiffctrl,
      mgt_rxeqmix => phy_conf4_mgt_rxeqmix,
      xaui_status => xaui_conf4_xaui_status,
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(128 to 159),
      Sl_errAck => opb0_Sl_errAck(4),
      Sl_retry => opb0_Sl_retry(4),
      Sl_toutSup => opb0_Sl_toutSup(4),
      Sl_xferAck => opb0_Sl_xferAck(4),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr
    );

  xaui_phy_4 : system_xaui_phy_4_wrapper
    port map (
      reset => sys_reset,
      xaui_clk => xaui_clk,
      mgt_txdata => xaui_sys4_mgt_txdata,
      mgt_txcharisk => xaui_sys4_mgt_txcharisk,
      mgt_rxdata => xaui_sys4_mgt_rxdata,
      mgt_rxcharisk => xaui_sys4_mgt_rxcharisk,
      mgt_enable_align => xaui_sys4_mgt_encommaalign,
      mgt_code_valid => xaui_sys4_mgt_rxcodevalid,
      mgt_code_comma => xaui_sys4_mgt_rxcodecomma,
      mgt_rxlock => xaui_sys4_mgt_rxlock,
      mgt_rxbufferr => xaui_sys4_mgt_rxbufferr,
      mgt_syncok => xaui_sys4_mgt_rxsyncok,
      mgt_en_chan_sync => xaui_sys4_mgt_enchansync(0),
      mgt_rx_reset => xaui_sys4_mgt_rx_reset(0),
      mgt_tx_reset => xaui_sys4_mgt_tx_reset(0),
      xaui_status => xaui_conf4_xaui_status,
      xgmii_txd => xgmii4_xgmii_txd,
      xgmii_txc => xgmii4_xgmii_txc,
      xgmii_rxd => xgmii4_xgmii_rxd,
      xgmii_rxc => xgmii4_xgmii_rxc
    );

  roach2_tut_tge_gbe0_rxbadctr : system_roach2_tut_tge_gbe0_rxbadctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(160 to 191),
      Sl_errAck => opb0_Sl_errAck(5),
      Sl_retry => opb0_Sl_retry(5),
      Sl_toutSup => opb0_Sl_toutSup(5),
      Sl_xferAck => opb0_Sl_xferAck(5),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxbadctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxctr : system_roach2_tut_tge_gbe0_rxctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(192 to 223),
      Sl_errAck => opb0_Sl_errAck(6),
      Sl_retry => opb0_Sl_retry(6),
      Sl_toutSup => opb0_Sl_toutSup(6),
      Sl_xferAck => opb0_Sl_xferAck(6),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxeofctr : system_roach2_tut_tge_gbe0_rxeofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(224 to 255),
      Sl_errAck => opb0_Sl_errAck(7),
      Sl_retry => opb0_Sl_retry(7),
      Sl_toutSup => opb0_Sl_toutSup(7),
      Sl_xferAck => opb0_Sl_xferAck(7),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxeofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxofctr : system_roach2_tut_tge_gbe0_rxofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(256 to 287),
      Sl_errAck => opb0_Sl_errAck(8),
      Sl_retry => opb0_Sl_retry(8),
      Sl_toutSup => opb0_Sl_toutSup(8),
      Sl_xferAck => opb0_Sl_xferAck(8),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxs_ss_bram_ramblk : system_roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_wrapper
    port map (
      clk => sys_clk,
      bram_we => roach2_tut_tge_gbe0_rxs_ss_bram_we,
      bram_en_a => net_gnd0,
      bram_addr => roach2_tut_tge_gbe0_rxs_ss_bram_addr,
      bram_rd_data => roach2_tut_tge_gbe0_rxs_ss_bram_data_out,
      bram_wr_data => roach2_tut_tge_gbe0_rxs_ss_bram_data_in,
      BRAM_Rst_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe0_rxs_ss_bram : system_roach2_tut_tge_gbe0_rxs_ss_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(288 to 319),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(9),
      sln_errack => opb0_Sl_errAck(9),
      sln_toutsup => opb0_Sl_toutSup(9),
      sln_retry => opb0_Sl_retry(9),
      bram_rst => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Rst,
      bram_clk => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Clk,
      bram_en => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_EN,
      bram_wen => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_WEN,
      bram_addr => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Addr,
      bram_din => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Din,
      bram_dout => roach2_tut_tge_gbe0_rxs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe0_rxs_ss_ctrl : system_roach2_tut_tge_gbe0_rxs_ss_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(320 to 351),
      Sl_errAck => opb0_Sl_errAck(10),
      Sl_retry => opb0_Sl_retry(10),
      Sl_toutSup => opb0_Sl_toutSup(10),
      Sl_xferAck => opb0_Sl_xferAck(10),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxs_ss_status : system_roach2_tut_tge_gbe0_rxs_ss_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(352 to 383),
      Sl_errAck => opb0_Sl_errAck(11),
      Sl_retry => opb0_Sl_retry(11),
      Sl_toutSup => opb0_Sl_toutSup(11),
      Sl_xferAck => opb0_Sl_xferAck(11),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxs_ss_status_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_rxvldctr : system_roach2_tut_tge_gbe0_rxvldctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(384 to 415),
      Sl_errAck => opb0_Sl_errAck(12),
      Sl_retry => opb0_Sl_retry(12),
      Sl_toutSup => opb0_Sl_toutSup(12),
      Sl_xferAck => opb0_Sl_xferAck(12),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_rxvldctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txctr : system_roach2_tut_tge_gbe0_txctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(416 to 447),
      Sl_errAck => opb0_Sl_errAck(13),
      Sl_retry => opb0_Sl_retry(13),
      Sl_toutSup => opb0_Sl_toutSup(13),
      Sl_xferAck => opb0_Sl_xferAck(13),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_txctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txfullctr : system_roach2_tut_tge_gbe0_txfullctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(448 to 479),
      Sl_errAck => opb0_Sl_errAck(14),
      Sl_retry => opb0_Sl_retry(14),
      Sl_toutSup => opb0_Sl_toutSup(14),
      Sl_xferAck => opb0_Sl_xferAck(14),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_txfullctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txofctr : system_roach2_tut_tge_gbe0_txofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb0_OPB_Rst,
      Sl_DBus => opb0_Sl_DBus(480 to 511),
      Sl_errAck => opb0_Sl_errAck(15),
      Sl_retry => opb0_Sl_retry(15),
      Sl_toutSup => opb0_Sl_toutSup(15),
      Sl_xferAck => opb0_Sl_xferAck(15),
      OPB_ABus => opb0_OPB_ABus,
      OPB_BE => opb0_OPB_BE,
      OPB_DBus => opb0_OPB_DBus,
      OPB_RNW => opb0_OPB_RNW,
      OPB_select => opb0_OPB_select,
      OPB_seqAddr => opb0_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_txofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txs_ss_bram_ramblk : system_roach2_tut_tge_gbe0_txs_ss_bram_ramblk_wrapper
    port map (
      clk => sys_clk,
      bram_we => roach2_tut_tge_gbe0_txs_ss_bram_we,
      bram_en_a => net_gnd0,
      bram_addr => roach2_tut_tge_gbe0_txs_ss_bram_addr,
      bram_rd_data => roach2_tut_tge_gbe0_txs_ss_bram_data_out,
      bram_wr_data => roach2_tut_tge_gbe0_txs_ss_bram_data_in,
      BRAM_Rst_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe0_txs_ss_bram : system_roach2_tut_tge_gbe0_txs_ss_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb0_OPB_Rst,
      opb_abus => opb0_OPB_ABus,
      opb_dbus => opb0_OPB_DBus,
      sln_dbus => opb0_Sl_DBus(512 to 543),
      opb_select => opb0_OPB_select,
      opb_rnw => opb0_OPB_RNW,
      opb_seqaddr => opb0_OPB_seqAddr,
      opb_be => opb0_OPB_BE,
      sln_xferack => opb0_Sl_xferAck(16),
      sln_errack => opb0_Sl_errAck(16),
      sln_toutsup => opb0_Sl_toutSup(16),
      sln_retry => opb0_Sl_retry(16),
      bram_rst => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Rst,
      bram_clk => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Clk,
      bram_en => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_EN,
      bram_wen => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_WEN,
      bram_addr => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Addr,
      bram_din => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Din,
      bram_dout => roach2_tut_tge_gbe0_txs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe0_txs_ss_ctrl : system_roach2_tut_tge_gbe0_txs_ss_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(0 to 31),
      Sl_errAck => opb1_Sl_errAck(0),
      Sl_retry => opb1_Sl_retry(0),
      Sl_toutSup => opb1_Sl_toutSup(0),
      Sl_xferAck => opb1_Sl_xferAck(0),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txs_ss_status : system_roach2_tut_tge_gbe0_txs_ss_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(32 to 63),
      Sl_errAck => opb1_Sl_errAck(1),
      Sl_retry => opb1_Sl_retry(1),
      Sl_toutSup => opb1_Sl_toutSup(1),
      Sl_xferAck => opb1_Sl_xferAck(1),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_txs_ss_status_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_txvldctr : system_roach2_tut_tge_gbe0_txvldctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(64 to 95),
      Sl_errAck => opb1_Sl_errAck(2),
      Sl_retry => opb1_Sl_retry(2),
      Sl_toutSup => opb1_Sl_toutSup(2),
      Sl_xferAck => opb1_Sl_xferAck(2),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_txvldctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_linkup : system_roach2_tut_tge_gbe0_linkup_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(96 to 127),
      Sl_errAck => opb1_Sl_errAck(3),
      Sl_retry => opb1_Sl_retry(3),
      Sl_toutSup => opb1_Sl_toutSup(3),
      Sl_xferAck => opb1_Sl_xferAck(3),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_linkup_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe0_tx_cnt : system_roach2_tut_tge_gbe0_tx_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(128 to 159),
      Sl_errAck => opb1_Sl_errAck(4),
      Sl_retry => opb1_Sl_retry(4),
      Sl_toutSup => opb1_Sl_toutSup(4),
      Sl_xferAck => opb1_Sl_xferAck(4),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe0_tx_cnt_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1 : system_roach2_tut_tge_gbe1_wrapper
    port map (
      clk => sys_clk,
      rst => roach2_tut_tge_gbe1_rst,
      tx_valid => roach2_tut_tge_gbe1_tx_valid,
      tx_afull => roach2_tut_tge_gbe1_tx_afull,
      tx_overflow => roach2_tut_tge_gbe1_tx_overflow,
      tx_end_of_frame => roach2_tut_tge_gbe1_tx_end_of_frame,
      tx_data => roach2_tut_tge_gbe1_tx_data,
      tx_dest_ip => roach2_tut_tge_gbe1_tx_dest_ip,
      tx_dest_port => roach2_tut_tge_gbe1_tx_dest_port,
      rx_valid => roach2_tut_tge_gbe1_rx_valid,
      rx_end_of_frame => roach2_tut_tge_gbe1_rx_end_of_frame,
      rx_data => roach2_tut_tge_gbe1_rx_data,
      rx_source_ip => roach2_tut_tge_gbe1_rx_source_ip,
      rx_source_port => roach2_tut_tge_gbe1_rx_source_port,
      rx_dest_ip => roach2_tut_tge_gbe1_rx_dest_ip,
      rx_dest_port => roach2_tut_tge_gbe1_rx_dest_port,
      rx_bad_frame => roach2_tut_tge_gbe1_rx_bad_frame,
      rx_overrun => roach2_tut_tge_gbe1_rx_overrun,
      rx_overrun_ack => roach2_tut_tge_gbe1_rx_overrun_ack,
      rx_ack => roach2_tut_tge_gbe1_rx_ack,
      led_up => roach2_tut_tge_gbe1_led_up,
      led_rx => roach2_tut_tge_gbe1_led_rx,
      led_tx => roach2_tut_tge_gbe1_led_tx,
      xaui_clk => xaui_clk,
      xgmii_txd => xgmii5_xgmii_txd,
      xgmii_txc => xgmii5_xgmii_txc,
      xgmii_rxd => xgmii5_xgmii_rxd,
      xgmii_rxc => xgmii5_xgmii_rxc,
      xaui_reset => sys_reset,
      mgt_txpostemphasis => phy_conf5_mgt_txpostemphasis,
      mgt_txpreemphasis => phy_conf5_mgt_txpreemphasis,
      mgt_txdiffctrl => phy_conf5_mgt_txdiffctrl,
      mgt_rxeqmix => phy_conf5_mgt_rxeqmix,
      xaui_status => xaui_conf5_xaui_status,
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(160 to 191),
      Sl_errAck => opb1_Sl_errAck(5),
      Sl_retry => opb1_Sl_retry(5),
      Sl_toutSup => opb1_Sl_toutSup(5),
      Sl_xferAck => opb1_Sl_xferAck(5),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr
    );

  xaui_phy_5 : system_xaui_phy_5_wrapper
    port map (
      reset => sys_reset,
      xaui_clk => xaui_clk,
      mgt_txdata => xaui_sys5_mgt_txdata,
      mgt_txcharisk => xaui_sys5_mgt_txcharisk,
      mgt_rxdata => xaui_sys5_mgt_rxdata,
      mgt_rxcharisk => xaui_sys5_mgt_rxcharisk,
      mgt_enable_align => xaui_sys5_mgt_encommaalign,
      mgt_code_valid => xaui_sys5_mgt_rxcodevalid,
      mgt_code_comma => xaui_sys5_mgt_rxcodecomma,
      mgt_rxlock => xaui_sys5_mgt_rxlock,
      mgt_rxbufferr => xaui_sys5_mgt_rxbufferr,
      mgt_syncok => xaui_sys5_mgt_rxsyncok,
      mgt_en_chan_sync => xaui_sys5_mgt_enchansync(0),
      mgt_rx_reset => xaui_sys5_mgt_rx_reset(0),
      mgt_tx_reset => xaui_sys5_mgt_tx_reset(0),
      xaui_status => xaui_conf5_xaui_status,
      xgmii_txd => xgmii5_xgmii_txd,
      xgmii_txc => xgmii5_xgmii_txc,
      xgmii_rxd => xgmii5_xgmii_rxd,
      xgmii_rxc => xgmii5_xgmii_rxc
    );

  roach2_tut_tge_gbe1_rxbadctr : system_roach2_tut_tge_gbe1_rxbadctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(192 to 223),
      Sl_errAck => opb1_Sl_errAck(6),
      Sl_retry => opb1_Sl_retry(6),
      Sl_toutSup => opb1_Sl_toutSup(6),
      Sl_xferAck => opb1_Sl_xferAck(6),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxbadctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxctr : system_roach2_tut_tge_gbe1_rxctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(224 to 255),
      Sl_errAck => opb1_Sl_errAck(7),
      Sl_retry => opb1_Sl_retry(7),
      Sl_toutSup => opb1_Sl_toutSup(7),
      Sl_xferAck => opb1_Sl_xferAck(7),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxeofctr : system_roach2_tut_tge_gbe1_rxeofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(256 to 287),
      Sl_errAck => opb1_Sl_errAck(8),
      Sl_retry => opb1_Sl_retry(8),
      Sl_toutSup => opb1_Sl_toutSup(8),
      Sl_xferAck => opb1_Sl_xferAck(8),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxeofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxofctr : system_roach2_tut_tge_gbe1_rxofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(288 to 319),
      Sl_errAck => opb1_Sl_errAck(9),
      Sl_retry => opb1_Sl_retry(9),
      Sl_toutSup => opb1_Sl_toutSup(9),
      Sl_xferAck => opb1_Sl_xferAck(9),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxs_ss_bram_ramblk : system_roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_wrapper
    port map (
      clk => sys_clk,
      bram_we => roach2_tut_tge_gbe1_rxs_ss_bram_we,
      bram_en_a => net_gnd0,
      bram_addr => roach2_tut_tge_gbe1_rxs_ss_bram_addr,
      bram_rd_data => roach2_tut_tge_gbe1_rxs_ss_bram_data_out,
      bram_wr_data => roach2_tut_tge_gbe1_rxs_ss_bram_data_in,
      BRAM_Rst_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe1_rxs_ss_bram : system_roach2_tut_tge_gbe1_rxs_ss_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(320 to 351),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(10),
      sln_errack => opb1_Sl_errAck(10),
      sln_toutsup => opb1_Sl_toutSup(10),
      sln_retry => opb1_Sl_retry(10),
      bram_rst => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Rst,
      bram_clk => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Clk,
      bram_en => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_EN,
      bram_wen => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_WEN,
      bram_addr => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Addr,
      bram_din => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Din,
      bram_dout => roach2_tut_tge_gbe1_rxs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe1_rxs_ss_ctrl : system_roach2_tut_tge_gbe1_rxs_ss_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(352 to 383),
      Sl_errAck => opb1_Sl_errAck(11),
      Sl_retry => opb1_Sl_retry(11),
      Sl_toutSup => opb1_Sl_toutSup(11),
      Sl_xferAck => opb1_Sl_xferAck(11),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxs_ss_status : system_roach2_tut_tge_gbe1_rxs_ss_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(384 to 415),
      Sl_errAck => opb1_Sl_errAck(12),
      Sl_retry => opb1_Sl_retry(12),
      Sl_toutSup => opb1_Sl_toutSup(12),
      Sl_xferAck => opb1_Sl_xferAck(12),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxs_ss_status_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rxvldctr : system_roach2_tut_tge_gbe1_rxvldctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(416 to 447),
      Sl_errAck => opb1_Sl_errAck(13),
      Sl_retry => opb1_Sl_retry(13),
      Sl_toutSup => opb1_Sl_toutSup(13),
      Sl_xferAck => opb1_Sl_xferAck(13),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rxvldctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txctr : system_roach2_tut_tge_gbe1_txctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(448 to 479),
      Sl_errAck => opb1_Sl_errAck(14),
      Sl_retry => opb1_Sl_retry(14),
      Sl_toutSup => opb1_Sl_toutSup(14),
      Sl_xferAck => opb1_Sl_xferAck(14),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_txctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txfullctr : system_roach2_tut_tge_gbe1_txfullctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(480 to 511),
      Sl_errAck => opb1_Sl_errAck(15),
      Sl_retry => opb1_Sl_retry(15),
      Sl_toutSup => opb1_Sl_toutSup(15),
      Sl_xferAck => opb1_Sl_xferAck(15),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_txfullctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txofctr : system_roach2_tut_tge_gbe1_txofctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      Sl_DBus => opb1_Sl_DBus(512 to 543),
      Sl_errAck => opb1_Sl_errAck(16),
      Sl_retry => opb1_Sl_retry(16),
      Sl_toutSup => opb1_Sl_toutSup(16),
      Sl_xferAck => opb1_Sl_xferAck(16),
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_DBus => opb1_OPB_DBus,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_txofctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txs_ss_bram_ramblk : system_roach2_tut_tge_gbe1_txs_ss_bram_ramblk_wrapper
    port map (
      clk => sys_clk,
      bram_we => roach2_tut_tge_gbe1_txs_ss_bram_we,
      bram_en_a => net_gnd0,
      bram_addr => roach2_tut_tge_gbe1_txs_ss_bram_addr,
      bram_rd_data => roach2_tut_tge_gbe1_txs_ss_bram_data_out,
      bram_wr_data => roach2_tut_tge_gbe1_txs_ss_bram_data_in,
      BRAM_Rst_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe1_txs_ss_bram : system_roach2_tut_tge_gbe1_txs_ss_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb1_OPB_Rst,
      opb_abus => opb1_OPB_ABus,
      opb_dbus => opb1_OPB_DBus,
      sln_dbus => opb1_Sl_DBus(544 to 575),
      opb_select => opb1_OPB_select,
      opb_rnw => opb1_OPB_RNW,
      opb_seqaddr => opb1_OPB_seqAddr,
      opb_be => opb1_OPB_BE,
      sln_xferack => opb1_Sl_xferAck(17),
      sln_errack => opb1_Sl_errAck(17),
      sln_toutsup => opb1_Sl_toutSup(17),
      sln_retry => opb1_Sl_retry(17),
      bram_rst => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Rst,
      bram_clk => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Clk,
      bram_en => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_EN,
      bram_wen => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_WEN,
      bram_addr => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Addr,
      bram_din => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Din,
      bram_dout => roach2_tut_tge_gbe1_txs_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_gbe1_txs_ss_ctrl : system_roach2_tut_tge_gbe1_txs_ss_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(0 to 31),
      Sl_errAck => opb2_Sl_errAck(0),
      Sl_retry => opb2_Sl_retry(0),
      Sl_toutSup => opb2_Sl_toutSup(0),
      Sl_xferAck => opb2_Sl_xferAck(0),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txs_ss_status : system_roach2_tut_tge_gbe1_txs_ss_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(32 to 63),
      Sl_errAck => opb2_Sl_errAck(1),
      Sl_retry => opb2_Sl_retry(1),
      Sl_toutSup => opb2_Sl_toutSup(1),
      Sl_xferAck => opb2_Sl_xferAck(1),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_txs_ss_status_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_txvldctr : system_roach2_tut_tge_gbe1_txvldctr_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(64 to 95),
      Sl_errAck => opb2_Sl_errAck(2),
      Sl_retry => opb2_Sl_retry(2),
      Sl_toutSup => opb2_Sl_toutSup(2),
      Sl_xferAck => opb2_Sl_xferAck(2),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_txvldctr_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_linkup : system_roach2_tut_tge_gbe1_linkup_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(96 to 127),
      Sl_errAck => opb2_Sl_errAck(3),
      Sl_retry => opb2_Sl_retry(3),
      Sl_toutSup => opb2_Sl_toutSup(3),
      Sl_xferAck => opb2_Sl_xferAck(3),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_linkup_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_gbe1_rx_frame_cnt : system_roach2_tut_tge_gbe1_rx_frame_cnt_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(128 to 159),
      Sl_errAck => opb2_Sl_errAck(4),
      Sl_retry => opb2_Sl_retry(4),
      Sl_toutSup => opb2_Sl_toutSup(4),
      Sl_xferAck => opb2_Sl_xferAck(4),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_in => roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in,
      user_clk => sys_clk
    );

  roach2_tut_tge_led0_gbe0_pulse_tx : system_roach2_tut_tge_led0_gbe0_pulse_tx_wrapper
    port map (
      gateway => roach2_tut_tge_led0_gbe0_pulse_tx_gateway(0 to 0),
      io_pad => roach2_tut_tge_led0_gbe0_pulse_tx_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_tge_led1_gbe0_up : system_roach2_tut_tge_led1_gbe0_up_wrapper
    port map (
      gateway => roach2_tut_tge_led1_gbe0_up_gateway(0 to 0),
      io_pad => roach2_tut_tge_led1_gbe0_up_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_tge_led2_gbe1_pulse_rx : system_roach2_tut_tge_led2_gbe1_pulse_rx_wrapper
    port map (
      gateway => roach2_tut_tge_led2_gbe1_pulse_rx_gateway(0 to 0),
      io_pad => roach2_tut_tge_led2_gbe1_pulse_rx_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_tge_led3_gbe1_up : system_roach2_tut_tge_led3_gbe1_up_wrapper
    port map (
      gateway => roach2_tut_tge_led3_gbe1_up_gateway(0 to 0),
      io_pad => roach2_tut_tge_led3_gbe1_up_ext(0 to 0),
      clk => sys_clk,
      clk90 => sys_clk90
    );

  roach2_tut_tge_pkt_sim_enable : system_roach2_tut_tge_pkt_sim_enable_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(160 to 191),
      Sl_errAck => opb2_Sl_errAck(5),
      Sl_retry => opb2_Sl_retry(5),
      Sl_toutSup => opb2_Sl_toutSup(5),
      Sl_xferAck => opb2_Sl_xferAck(5),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_pkt_sim_enable_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_pkt_sim_payload_len : system_roach2_tut_tge_pkt_sim_payload_len_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(192 to 223),
      Sl_errAck => opb2_Sl_errAck(6),
      Sl_retry => opb2_Sl_retry(6),
      Sl_toutSup => opb2_Sl_toutSup(6),
      Sl_xferAck => opb2_Sl_xferAck(6),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_pkt_sim_payload_len_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_pkt_sim_period : system_roach2_tut_tge_pkt_sim_period_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(224 to 255),
      Sl_errAck => opb2_Sl_errAck(7),
      Sl_retry => opb2_Sl_retry(7),
      Sl_toutSup => opb2_Sl_toutSup(7),
      Sl_xferAck => opb2_Sl_xferAck(7),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_pkt_sim_period_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_rst : system_roach2_tut_tge_rst_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(256 to 287),
      Sl_errAck => opb2_Sl_errAck(8),
      Sl_retry => opb2_Sl_retry(8),
      Sl_toutSup => opb2_Sl_toutSup(8),
      Sl_xferAck => opb2_Sl_xferAck(8),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_rst_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_tx_snapshot_ss_bram_ramblk : system_roach2_tut_tge_tx_snapshot_ss_bram_ramblk_wrapper
    port map (
      clk => sys_clk,
      bram_we => roach2_tut_tge_tx_snapshot_ss_bram_we,
      bram_en_a => net_gnd0,
      bram_addr => roach2_tut_tge_tx_snapshot_ss_bram_addr,
      bram_rd_data => roach2_tut_tge_tx_snapshot_ss_bram_data_out,
      bram_wr_data => roach2_tut_tge_tx_snapshot_ss_bram_data_in,
      BRAM_Rst_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Rst,
      BRAM_Clk_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Clk,
      BRAM_EN_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_EN,
      BRAM_WEN_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_WEN,
      BRAM_Addr_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Addr,
      BRAM_Din_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Din,
      BRAM_Dout_B => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_tx_snapshot_ss_bram : system_roach2_tut_tge_tx_snapshot_ss_bram_wrapper
    port map (
      opb_clk => epb_clk,
      opb_rst => opb2_OPB_Rst,
      opb_abus => opb2_OPB_ABus,
      opb_dbus => opb2_OPB_DBus,
      sln_dbus => opb2_Sl_DBus(288 to 319),
      opb_select => opb2_OPB_select,
      opb_rnw => opb2_OPB_RNW,
      opb_seqaddr => opb2_OPB_seqAddr,
      opb_be => opb2_OPB_BE,
      sln_xferack => opb2_Sl_xferAck(9),
      sln_errack => opb2_Sl_errAck(9),
      sln_toutsup => opb2_Sl_toutSup(9),
      sln_retry => opb2_Sl_retry(9),
      bram_rst => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Rst,
      bram_clk => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Clk,
      bram_en => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_EN,
      bram_wen => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_WEN,
      bram_addr => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Addr,
      bram_din => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Din,
      bram_dout => roach2_tut_tge_tx_snapshot_ss_bram_ramblk_portb_BRAM_Dout
    );

  roach2_tut_tge_tx_snapshot_ss_ctrl : system_roach2_tut_tge_tx_snapshot_ss_ctrl_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(320 to 351),
      Sl_errAck => opb2_Sl_errAck(10),
      Sl_retry => opb2_Sl_retry(10),
      Sl_toutSup => opb2_Sl_toutSup(10),
      Sl_xferAck => opb2_Sl_xferAck(10),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out,
      user_clk => sys_clk
    );

  roach2_tut_tge_tx_snapshot_ss_status : system_roach2_tut_tge_tx_snapshot_ss_status_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      Sl_DBus => opb2_Sl_DBus(352 to 383),
      Sl_errAck => opb2_Sl_errAck(11),
      Sl_retry => opb2_Sl_retry(11),
      Sl_toutSup => opb2_Sl_toutSup(11),
      Sl_xferAck => opb2_Sl_xferAck(11),
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_DBus => opb2_OPB_DBus,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      user_data_in => roach2_tut_tge_tx_snapshot_ss_status_user_data_in,
      user_clk => sys_clk
    );

  opb1 : system_opb1_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb1_OPB_Rst,
      SYS_Rst => sys_reset,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb1_M_busLock(0 to 0),
      M_DBus => opb1_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb1_M_request(0 to 0),
      M_RNW => opb1_M_RNW(0 to 0),
      M_select => opb1_M_select(0 to 0),
      M_seqAddr => opb1_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd18,
      Sl_DBus => opb1_Sl_DBus,
      Sl_DBusEn => net_vcc18,
      Sl_DBusEn32_63 => net_vcc18,
      Sl_errAck => opb1_Sl_errAck,
      Sl_dwAck => net_gnd18,
      Sl_fwAck => net_gnd18,
      Sl_hwAck => net_gnd18,
      Sl_retry => opb1_Sl_retry,
      Sl_toutSup => opb1_Sl_toutSup,
      Sl_xferAck => opb1_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb1_OPB_ABus,
      OPB_BE => opb1_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb1_OPB_DBus,
      OPB_errAck => opb1_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb1_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb1_OPB_retry,
      OPB_RNW => opb1_OPB_RNW,
      OPB_select => opb1_OPB_select,
      OPB_seqAddr => opb1_OPB_seqAddr,
      OPB_timeout => opb1_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb1_OPB_xferAck
    );

  opb2opb_bridge_opb1 : system_opb2opb_bridge_opb1_wrapper
    port map (
      MOPB_Clk => epb_clk,
      SOPB_Clk => epb_clk,
      MOPB_Rst => opb1_OPB_Rst,
      SOPB_Rst => opb0_OPB_Rst,
      SOPB_ABus => opb0_OPB_ABus,
      SOPB_BE => opb0_OPB_BE,
      SOPB_DBus => opb0_OPB_DBus,
      SOPB_RNW => opb0_OPB_RNW,
      SOPB_select => opb0_OPB_select,
      SOPB_seqAddr => opb0_OPB_seqAddr,
      Sl_DBus => opb0_Sl_DBus(544 to 575),
      Sl_errAck => opb0_Sl_errAck(17),
      Sl_retry => opb0_Sl_retry(17),
      Sl_toutSup => opb0_Sl_toutSup(17),
      Sl_xferAck => opb0_Sl_xferAck(17),
      M_ABus => opb1_M_ABus,
      M_BE => opb1_M_BE,
      M_busLock => opb1_M_busLock(0),
      M_DBus => opb1_M_DBus,
      M_request => opb1_M_request(0),
      M_RNW => opb1_M_RNW(0),
      M_select => opb1_M_select(0),
      M_seqAddr => opb1_M_seqAddr(0),
      MOPB_DBus => opb1_OPB_DBus,
      MOPB_errAck => opb1_OPB_errAck,
      MOPB_MGrant => opb1_OPB_MGrant(0),
      MOPB_retry => opb1_OPB_retry,
      MOPB_timeout => opb1_OPB_timeout,
      MOPB_xferAck => opb1_OPB_xferAck
    );

  opb2 : system_opb2_wrapper
    port map (
      OPB_Clk => epb_clk,
      OPB_Rst => opb2_OPB_Rst,
      SYS_Rst => sys_reset,
      Debug_SYS_Rst => net_gnd0,
      WDT_Rst => net_gnd0,
      M_ABus => opb2_M_ABus,
      M_BE => opb2_M_BE,
      M_beXfer => net_gnd1(0 to 0),
      M_busLock => opb2_M_busLock(0 to 0),
      M_DBus => opb2_M_DBus,
      M_DBusEn => net_gnd1(0 to 0),
      M_DBusEn32_63 => net_vcc1(0 to 0),
      M_dwXfer => net_gnd1(0 to 0),
      M_fwXfer => net_gnd1(0 to 0),
      M_hwXfer => net_gnd1(0 to 0),
      M_request => opb2_M_request(0 to 0),
      M_RNW => opb2_M_RNW(0 to 0),
      M_select => opb2_M_select(0 to 0),
      M_seqAddr => opb2_M_seqAddr(0 to 0),
      Sl_beAck => net_gnd12,
      Sl_DBus => opb2_Sl_DBus,
      Sl_DBusEn => net_vcc12,
      Sl_DBusEn32_63 => net_vcc12,
      Sl_errAck => opb2_Sl_errAck,
      Sl_dwAck => net_gnd12,
      Sl_fwAck => net_gnd12,
      Sl_hwAck => net_gnd12,
      Sl_retry => opb2_Sl_retry,
      Sl_toutSup => opb2_Sl_toutSup,
      Sl_xferAck => opb2_Sl_xferAck,
      OPB_MRequest => open,
      OPB_ABus => opb2_OPB_ABus,
      OPB_BE => opb2_OPB_BE,
      OPB_beXfer => open,
      OPB_beAck => open,
      OPB_busLock => open,
      OPB_rdDBus => open,
      OPB_wrDBus => open,
      OPB_DBus => opb2_OPB_DBus,
      OPB_errAck => opb2_OPB_errAck,
      OPB_dwAck => open,
      OPB_dwXfer => open,
      OPB_fwAck => open,
      OPB_fwXfer => open,
      OPB_hwAck => open,
      OPB_hwXfer => open,
      OPB_MGrant => opb2_OPB_MGrant(0 to 0),
      OPB_pendReq => open,
      OPB_retry => opb2_OPB_retry,
      OPB_RNW => opb2_OPB_RNW,
      OPB_select => opb2_OPB_select,
      OPB_seqAddr => opb2_OPB_seqAddr,
      OPB_timeout => opb2_OPB_timeout,
      OPB_toutSup => open,
      OPB_xferAck => opb2_OPB_xferAck
    );

  opb2opb_bridge_opb2 : system_opb2opb_bridge_opb2_wrapper
    port map (
      MOPB_Clk => epb_clk,
      SOPB_Clk => epb_clk,
      MOPB_Rst => opb2_OPB_Rst,
      SOPB_Rst => opb0_OPB_Rst,
      SOPB_ABus => opb0_OPB_ABus,
      SOPB_BE => opb0_OPB_BE,
      SOPB_DBus => opb0_OPB_DBus,
      SOPB_RNW => opb0_OPB_RNW,
      SOPB_select => opb0_OPB_select,
      SOPB_seqAddr => opb0_OPB_seqAddr,
      Sl_DBus => opb0_Sl_DBus(576 to 607),
      Sl_errAck => opb0_Sl_errAck(18),
      Sl_retry => opb0_Sl_retry(18),
      Sl_toutSup => opb0_Sl_toutSup(18),
      Sl_xferAck => opb0_Sl_xferAck(18),
      M_ABus => opb2_M_ABus,
      M_BE => opb2_M_BE,
      M_busLock => opb2_M_busLock(0),
      M_DBus => opb2_M_DBus,
      M_request => opb2_M_request(0),
      M_RNW => opb2_M_RNW(0),
      M_select => opb2_M_select(0),
      M_seqAddr => opb2_M_seqAddr(0),
      MOPB_DBus => opb2_OPB_DBus,
      MOPB_errAck => opb2_OPB_errAck,
      MOPB_MGrant => opb2_OPB_MGrant(0),
      MOPB_retry => opb2_OPB_retry,
      MOPB_timeout => opb2_OPB_timeout,
      MOPB_xferAck => opb2_OPB_xferAck
    );

end architecture STRUCTURE;

