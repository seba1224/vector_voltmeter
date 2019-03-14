----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity roach2_tut_tge_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
      roach2_tut_tge_dest_ip_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_dest_port_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_led_rx: in std_logic; 
      roach2_tut_tge_gbe0_led_tx: in std_logic; 
      roach2_tut_tge_gbe0_led_up: in std_logic; 
      roach2_tut_tge_gbe0_rx_bad_frame: in std_logic; 
      roach2_tut_tge_gbe0_rx_data: in std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe0_rx_dest_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rx_dest_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_rx_end_of_frame: in std_logic; 
      roach2_tut_tge_gbe0_rx_overrun: in std_logic; 
      roach2_tut_tge_gbe0_rx_source_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rx_source_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_rx_valid: in std_logic; 
      roach2_tut_tge_gbe0_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_afull: in std_logic; 
      roach2_tut_tge_gbe0_tx_overflow: in std_logic; 
      roach2_tut_tge_gbe0_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_led_rx: in std_logic; 
      roach2_tut_tge_gbe1_led_tx: in std_logic; 
      roach2_tut_tge_gbe1_led_up: in std_logic; 
      roach2_tut_tge_gbe1_rx_bad_frame: in std_logic; 
      roach2_tut_tge_gbe1_rx_data: in std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe1_rx_dest_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_dest_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_rx_end_of_frame: in std_logic; 
      roach2_tut_tge_gbe1_rx_overrun: in std_logic; 
      roach2_tut_tge_gbe1_rx_source_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_source_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_rx_valid: in std_logic; 
      roach2_tut_tge_gbe1_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_afull: in std_logic; 
      roach2_tut_tge_gbe1_tx_overflow: in std_logic; 
      roach2_tut_tge_gbe1_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_enable_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_payload_len_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_period_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_rst_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_linkup_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rst: out std_logic; 
      roach2_tut_tge_gbe0_rx_ack: out std_logic; 
      roach2_tut_tge_gbe0_rx_overrun_ack: out std_logic; 
      roach2_tut_tge_gbe0_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe0_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_cnt_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_data: out std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe0_tx_dest_ip: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_dest_port: out std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_tx_end_of_frame: out std_logic; 
      roach2_tut_tge_gbe0_tx_valid: out std_logic; 
      roach2_tut_tge_gbe0_txctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe0_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_linkup_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rst: out std_logic; 
      roach2_tut_tge_gbe1_rx_ack: out std_logic; 
      roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_overrun_ack: out std_logic; 
      roach2_tut_tge_gbe1_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe1_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_data: out std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe1_tx_dest_ip: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_dest_port: out std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_tx_end_of_frame: out std_logic; 
      roach2_tut_tge_gbe1_tx_valid: out std_logic; 
      roach2_tut_tge_gbe1_txctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe1_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_led0_gbe0_pulse_tx_gateway: out std_logic; 
      roach2_tut_tge_led1_gbe0_up_gateway: out std_logic; 
      roach2_tut_tge_led2_gbe1_pulse_rx_gateway: out std_logic; 
      roach2_tut_tge_led3_gbe1_up_gateway: out std_logic; 
      roach2_tut_tge_tx_snapshot_ss_bram_addr: out std_logic_vector(11 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_we: out std_logic; 
      roach2_tut_tge_tx_snapshot_ss_status_user_data_in: out std_logic_vector(31 downto 0)
    );
end roach2_tut_tge_cw_stub;

architecture Behavioral of roach2_tut_tge_cw_stub is

  component roach2_tut_tge_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
      roach2_tut_tge_dest_ip_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_dest_port_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_led_rx: in std_logic; 
      roach2_tut_tge_gbe0_led_tx: in std_logic; 
      roach2_tut_tge_gbe0_led_up: in std_logic; 
      roach2_tut_tge_gbe0_rx_bad_frame: in std_logic; 
      roach2_tut_tge_gbe0_rx_data: in std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe0_rx_dest_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rx_dest_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_rx_end_of_frame: in std_logic; 
      roach2_tut_tge_gbe0_rx_overrun: in std_logic; 
      roach2_tut_tge_gbe0_rx_source_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rx_source_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_rx_valid: in std_logic; 
      roach2_tut_tge_gbe0_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_afull: in std_logic; 
      roach2_tut_tge_gbe0_tx_overflow: in std_logic; 
      roach2_tut_tge_gbe0_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_led_rx: in std_logic; 
      roach2_tut_tge_gbe1_led_tx: in std_logic; 
      roach2_tut_tge_gbe1_led_up: in std_logic; 
      roach2_tut_tge_gbe1_rx_bad_frame: in std_logic; 
      roach2_tut_tge_gbe1_rx_data: in std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe1_rx_dest_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_dest_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_rx_end_of_frame: in std_logic; 
      roach2_tut_tge_gbe1_rx_overrun: in std_logic; 
      roach2_tut_tge_gbe1_rx_source_ip: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_source_port: in std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_rx_valid: in std_logic; 
      roach2_tut_tge_gbe1_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_afull: in std_logic; 
      roach2_tut_tge_gbe1_tx_overflow: in std_logic; 
      roach2_tut_tge_gbe1_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_enable_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_payload_len_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_pkt_sim_period_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_rst_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_data_out: in std_logic_vector(127 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_linkup_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rst: out std_logic; 
      roach2_tut_tge_gbe0_rx_ack: out std_logic; 
      roach2_tut_tge_gbe0_rx_overrun_ack: out std_logic; 
      roach2_tut_tge_gbe0_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_rxs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe0_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_cnt_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_data: out std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe0_tx_dest_ip: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_tx_dest_port: out std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe0_tx_end_of_frame: out std_logic; 
      roach2_tut_tge_gbe0_tx_valid: out std_logic; 
      roach2_tut_tge_gbe0_txctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe0_txs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe0_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe0_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_linkup_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rst: out std_logic; 
      roach2_tut_tge_gbe1_rx_ack: out std_logic; 
      roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rx_overrun_ack: out std_logic; 
      roach2_tut_tge_gbe1_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_rxs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe1_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_data: out std_logic_vector(63 downto 0); 
      roach2_tut_tge_gbe1_tx_dest_ip: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_tx_dest_port: out std_logic_vector(15 downto 0); 
      roach2_tut_tge_gbe1_tx_end_of_frame: out std_logic; 
      roach2_tut_tge_gbe1_tx_valid: out std_logic; 
      roach2_tut_tge_gbe1_txctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_gbe1_txs_ss_bram_we: out std_logic; 
      roach2_tut_tge_gbe1_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_gbe1_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
      roach2_tut_tge_led0_gbe0_pulse_tx_gateway: out std_logic; 
      roach2_tut_tge_led1_gbe0_up_gateway: out std_logic; 
      roach2_tut_tge_led2_gbe1_pulse_rx_gateway: out std_logic; 
      roach2_tut_tge_led3_gbe1_up_gateway: out std_logic; 
      roach2_tut_tge_tx_snapshot_ss_bram_addr: out std_logic_vector(11 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_data_in: out std_logic_vector(127 downto 0); 
      roach2_tut_tge_tx_snapshot_ss_bram_we: out std_logic; 
      roach2_tut_tge_tx_snapshot_ss_status_user_data_in: out std_logic_vector(31 downto 0)
    );
  end component;
begin

roach2_tut_tge_cw_i : roach2_tut_tge_cw
  port map (
    ce => ce,
    clk => clk,
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
    roach2_tut_tge_gbe0_rxs_ss_bram_data_out => roach2_tut_tge_gbe0_rxs_ss_bram_data_out,
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out,
    roach2_tut_tge_gbe0_tx_afull => roach2_tut_tge_gbe0_tx_afull,
    roach2_tut_tge_gbe0_tx_overflow => roach2_tut_tge_gbe0_tx_overflow,
    roach2_tut_tge_gbe0_txs_ss_bram_data_out => roach2_tut_tge_gbe0_txs_ss_bram_data_out,
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out,
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
    roach2_tut_tge_gbe1_rxs_ss_bram_data_out => roach2_tut_tge_gbe1_rxs_ss_bram_data_out,
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out,
    roach2_tut_tge_gbe1_tx_afull => roach2_tut_tge_gbe1_tx_afull,
    roach2_tut_tge_gbe1_tx_overflow => roach2_tut_tge_gbe1_tx_overflow,
    roach2_tut_tge_gbe1_txs_ss_bram_data_out => roach2_tut_tge_gbe1_txs_ss_bram_data_out,
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out,
    roach2_tut_tge_pkt_sim_enable_user_data_out => roach2_tut_tge_pkt_sim_enable_user_data_out,
    roach2_tut_tge_pkt_sim_payload_len_user_data_out => roach2_tut_tge_pkt_sim_payload_len_user_data_out,
    roach2_tut_tge_pkt_sim_period_user_data_out => roach2_tut_tge_pkt_sim_period_user_data_out,
    roach2_tut_tge_rst_user_data_out => roach2_tut_tge_rst_user_data_out,
    roach2_tut_tge_tx_snapshot_ss_bram_data_out => roach2_tut_tge_tx_snapshot_ss_bram_data_out,
    roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out,
    roach2_tut_tge_gbe0_linkup_user_data_in => roach2_tut_tge_gbe0_linkup_user_data_in,
    roach2_tut_tge_gbe0_rst => roach2_tut_tge_gbe0_rst,
    roach2_tut_tge_gbe0_rx_ack => roach2_tut_tge_gbe0_rx_ack,
    roach2_tut_tge_gbe0_rx_overrun_ack => roach2_tut_tge_gbe0_rx_overrun_ack,
    roach2_tut_tge_gbe0_rxbadctr_user_data_in => roach2_tut_tge_gbe0_rxbadctr_user_data_in,
    roach2_tut_tge_gbe0_rxctr_user_data_in => roach2_tut_tge_gbe0_rxctr_user_data_in,
    roach2_tut_tge_gbe0_rxeofctr_user_data_in => roach2_tut_tge_gbe0_rxeofctr_user_data_in,
    roach2_tut_tge_gbe0_rxofctr_user_data_in => roach2_tut_tge_gbe0_rxofctr_user_data_in,
    roach2_tut_tge_gbe0_rxs_ss_bram_addr => roach2_tut_tge_gbe0_rxs_ss_bram_addr,
    roach2_tut_tge_gbe0_rxs_ss_bram_data_in => roach2_tut_tge_gbe0_rxs_ss_bram_data_in,
    roach2_tut_tge_gbe0_rxs_ss_bram_we => roach2_tut_tge_gbe0_rxs_ss_bram_we,
    roach2_tut_tge_gbe0_rxs_ss_status_user_data_in => roach2_tut_tge_gbe0_rxs_ss_status_user_data_in,
    roach2_tut_tge_gbe0_rxvldctr_user_data_in => roach2_tut_tge_gbe0_rxvldctr_user_data_in,
    roach2_tut_tge_gbe0_tx_cnt_user_data_in => roach2_tut_tge_gbe0_tx_cnt_user_data_in,
    roach2_tut_tge_gbe0_tx_data => roach2_tut_tge_gbe0_tx_data,
    roach2_tut_tge_gbe0_tx_dest_ip => roach2_tut_tge_gbe0_tx_dest_ip,
    roach2_tut_tge_gbe0_tx_dest_port => roach2_tut_tge_gbe0_tx_dest_port,
    roach2_tut_tge_gbe0_tx_end_of_frame => roach2_tut_tge_gbe0_tx_end_of_frame,
    roach2_tut_tge_gbe0_tx_valid => roach2_tut_tge_gbe0_tx_valid,
    roach2_tut_tge_gbe0_txctr_user_data_in => roach2_tut_tge_gbe0_txctr_user_data_in,
    roach2_tut_tge_gbe0_txfullctr_user_data_in => roach2_tut_tge_gbe0_txfullctr_user_data_in,
    roach2_tut_tge_gbe0_txofctr_user_data_in => roach2_tut_tge_gbe0_txofctr_user_data_in,
    roach2_tut_tge_gbe0_txs_ss_bram_addr => roach2_tut_tge_gbe0_txs_ss_bram_addr,
    roach2_tut_tge_gbe0_txs_ss_bram_data_in => roach2_tut_tge_gbe0_txs_ss_bram_data_in,
    roach2_tut_tge_gbe0_txs_ss_bram_we => roach2_tut_tge_gbe0_txs_ss_bram_we,
    roach2_tut_tge_gbe0_txs_ss_status_user_data_in => roach2_tut_tge_gbe0_txs_ss_status_user_data_in,
    roach2_tut_tge_gbe0_txvldctr_user_data_in => roach2_tut_tge_gbe0_txvldctr_user_data_in,
    roach2_tut_tge_gbe1_linkup_user_data_in => roach2_tut_tge_gbe1_linkup_user_data_in,
    roach2_tut_tge_gbe1_rst => roach2_tut_tge_gbe1_rst,
    roach2_tut_tge_gbe1_rx_ack => roach2_tut_tge_gbe1_rx_ack,
    roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in => roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in,
    roach2_tut_tge_gbe1_rx_overrun_ack => roach2_tut_tge_gbe1_rx_overrun_ack,
    roach2_tut_tge_gbe1_rxbadctr_user_data_in => roach2_tut_tge_gbe1_rxbadctr_user_data_in,
    roach2_tut_tge_gbe1_rxctr_user_data_in => roach2_tut_tge_gbe1_rxctr_user_data_in,
    roach2_tut_tge_gbe1_rxeofctr_user_data_in => roach2_tut_tge_gbe1_rxeofctr_user_data_in,
    roach2_tut_tge_gbe1_rxofctr_user_data_in => roach2_tut_tge_gbe1_rxofctr_user_data_in,
    roach2_tut_tge_gbe1_rxs_ss_bram_addr => roach2_tut_tge_gbe1_rxs_ss_bram_addr,
    roach2_tut_tge_gbe1_rxs_ss_bram_data_in => roach2_tut_tge_gbe1_rxs_ss_bram_data_in,
    roach2_tut_tge_gbe1_rxs_ss_bram_we => roach2_tut_tge_gbe1_rxs_ss_bram_we,
    roach2_tut_tge_gbe1_rxs_ss_status_user_data_in => roach2_tut_tge_gbe1_rxs_ss_status_user_data_in,
    roach2_tut_tge_gbe1_rxvldctr_user_data_in => roach2_tut_tge_gbe1_rxvldctr_user_data_in,
    roach2_tut_tge_gbe1_tx_data => roach2_tut_tge_gbe1_tx_data,
    roach2_tut_tge_gbe1_tx_dest_ip => roach2_tut_tge_gbe1_tx_dest_ip,
    roach2_tut_tge_gbe1_tx_dest_port => roach2_tut_tge_gbe1_tx_dest_port,
    roach2_tut_tge_gbe1_tx_end_of_frame => roach2_tut_tge_gbe1_tx_end_of_frame,
    roach2_tut_tge_gbe1_tx_valid => roach2_tut_tge_gbe1_tx_valid,
    roach2_tut_tge_gbe1_txctr_user_data_in => roach2_tut_tge_gbe1_txctr_user_data_in,
    roach2_tut_tge_gbe1_txfullctr_user_data_in => roach2_tut_tge_gbe1_txfullctr_user_data_in,
    roach2_tut_tge_gbe1_txofctr_user_data_in => roach2_tut_tge_gbe1_txofctr_user_data_in,
    roach2_tut_tge_gbe1_txs_ss_bram_addr => roach2_tut_tge_gbe1_txs_ss_bram_addr,
    roach2_tut_tge_gbe1_txs_ss_bram_data_in => roach2_tut_tge_gbe1_txs_ss_bram_data_in,
    roach2_tut_tge_gbe1_txs_ss_bram_we => roach2_tut_tge_gbe1_txs_ss_bram_we,
    roach2_tut_tge_gbe1_txs_ss_status_user_data_in => roach2_tut_tge_gbe1_txs_ss_status_user_data_in,
    roach2_tut_tge_gbe1_txvldctr_user_data_in => roach2_tut_tge_gbe1_txvldctr_user_data_in,
    roach2_tut_tge_led0_gbe0_pulse_tx_gateway => roach2_tut_tge_led0_gbe0_pulse_tx_gateway,
    roach2_tut_tge_led1_gbe0_up_gateway => roach2_tut_tge_led1_gbe0_up_gateway,
    roach2_tut_tge_led2_gbe1_pulse_rx_gateway => roach2_tut_tge_led2_gbe1_pulse_rx_gateway,
    roach2_tut_tge_led3_gbe1_up_gateway => roach2_tut_tge_led3_gbe1_up_gateway,
    roach2_tut_tge_tx_snapshot_ss_bram_addr => roach2_tut_tge_tx_snapshot_ss_bram_addr,
    roach2_tut_tge_tx_snapshot_ss_bram_data_in => roach2_tut_tge_tx_snapshot_ss_bram_data_in,
    roach2_tut_tge_tx_snapshot_ss_bram_we => roach2_tut_tge_tx_snapshot_ss_bram_we,
    roach2_tut_tge_tx_snapshot_ss_status_user_data_in => roach2_tut_tge_tx_snapshot_ss_status_user_data_in);
end Behavioral;

