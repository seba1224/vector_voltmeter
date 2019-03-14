
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component roach2_tut_tge_cw  port (
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
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : roach2_tut_tge_cw
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
-- INST_TAG_END ------ End INSTANTIATION Template ------------
