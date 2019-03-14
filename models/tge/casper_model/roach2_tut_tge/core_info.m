% roach2_tut_tge/XSG_core_config
roach2_tut_tge_XSG_core_config_type         = 'xps_xsg';
roach2_tut_tge_XSG_core_config_param        = '';

% roach2_tut_tge/dest_ip
roach2_tut_tge_dest_ip_type         = 'xps_sw_reg';
roach2_tut_tge_dest_ip_param        = 'in';
roach2_tut_tge_dest_ip_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_dest_ip_addr_start   = hex2dec('01000000');
roach2_tut_tge_dest_ip_addr_end     = hex2dec('010000FF');

% roach2_tut_tge/dest_port
roach2_tut_tge_dest_port_type         = 'xps_sw_reg';
roach2_tut_tge_dest_port_param        = 'in';
roach2_tut_tge_dest_port_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_dest_port_addr_start   = hex2dec('01000100');
roach2_tut_tge_dest_port_addr_end     = hex2dec('010001FF');

% roach2_tut_tge/gbe0
roach2_tut_tge_gbe0_type         = 'xps_tengbe_v2';
roach2_tut_tge_gbe0_param        = '';
roach2_tut_tge_gbe0_ip_name      = 'kat_ten_gb_eth';
roach2_tut_tge_gbe0_addr_start   = hex2dec('01004000');
roach2_tut_tge_gbe0_addr_end     = hex2dec('01007FFF');

% roach2_tut_tge/gbe0/rxbadctr
roach2_tut_tge_gbe0_rxbadctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxbadctr_param        = 'out';
roach2_tut_tge_gbe0_rxbadctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxbadctr_addr_start   = hex2dec('01008000');
roach2_tut_tge_gbe0_rxbadctr_addr_end     = hex2dec('010080FF');

% roach2_tut_tge/gbe0/rxctr
roach2_tut_tge_gbe0_rxctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxctr_param        = 'out';
roach2_tut_tge_gbe0_rxctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxctr_addr_start   = hex2dec('01008100');
roach2_tut_tge_gbe0_rxctr_addr_end     = hex2dec('010081FF');

% roach2_tut_tge/gbe0/rxeofctr
roach2_tut_tge_gbe0_rxeofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxeofctr_param        = 'out';
roach2_tut_tge_gbe0_rxeofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxeofctr_addr_start   = hex2dec('01008200');
roach2_tut_tge_gbe0_rxeofctr_addr_end     = hex2dec('010082FF');

% roach2_tut_tge/gbe0/rxofctr
roach2_tut_tge_gbe0_rxofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxofctr_param        = 'out';
roach2_tut_tge_gbe0_rxofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxofctr_addr_start   = hex2dec('01008300');
roach2_tut_tge_gbe0_rxofctr_addr_end     = hex2dec('010083FF');

% roach2_tut_tge/gbe0/rxs/ss/bram
roach2_tut_tge_gbe0_rxs_ss_bram_type         = 'xps_bram';
roach2_tut_tge_gbe0_rxs_ss_bram_param        = '32768';
roach2_tut_tge_gbe0_rxs_ss_bram_ip_name      = 'bram_if';
roach2_tut_tge_gbe0_rxs_ss_bram_addr_start   = hex2dec('01020000');
roach2_tut_tge_gbe0_rxs_ss_bram_addr_end     = hex2dec('0103FFFF');

% roach2_tut_tge/gbe0/rxs/ss/ctrl
roach2_tut_tge_gbe0_rxs_ss_ctrl_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxs_ss_ctrl_param        = 'in';
roach2_tut_tge_gbe0_rxs_ss_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_gbe0_rxs_ss_ctrl_addr_start   = hex2dec('01040000');
roach2_tut_tge_gbe0_rxs_ss_ctrl_addr_end     = hex2dec('010400FF');

% roach2_tut_tge/gbe0/rxs/ss/status
roach2_tut_tge_gbe0_rxs_ss_status_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxs_ss_status_param        = 'out';
roach2_tut_tge_gbe0_rxs_ss_status_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxs_ss_status_addr_start   = hex2dec('01040100');
roach2_tut_tge_gbe0_rxs_ss_status_addr_end     = hex2dec('010401FF');

% roach2_tut_tge/gbe0/rxvldctr
roach2_tut_tge_gbe0_rxvldctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_rxvldctr_param        = 'out';
roach2_tut_tge_gbe0_rxvldctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_rxvldctr_addr_start   = hex2dec('01040200');
roach2_tut_tge_gbe0_rxvldctr_addr_end     = hex2dec('010402FF');

% roach2_tut_tge/gbe0/txctr
roach2_tut_tge_gbe0_txctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txctr_param        = 'out';
roach2_tut_tge_gbe0_txctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_txctr_addr_start   = hex2dec('01040300');
roach2_tut_tge_gbe0_txctr_addr_end     = hex2dec('010403FF');

% roach2_tut_tge/gbe0/txfullctr
roach2_tut_tge_gbe0_txfullctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txfullctr_param        = 'out';
roach2_tut_tge_gbe0_txfullctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_txfullctr_addr_start   = hex2dec('01040400');
roach2_tut_tge_gbe0_txfullctr_addr_end     = hex2dec('010404FF');

% roach2_tut_tge/gbe0/txofctr
roach2_tut_tge_gbe0_txofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txofctr_param        = 'out';
roach2_tut_tge_gbe0_txofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_txofctr_addr_start   = hex2dec('01040500');
roach2_tut_tge_gbe0_txofctr_addr_end     = hex2dec('010405FF');

% roach2_tut_tge/gbe0/txs/ss/bram
roach2_tut_tge_gbe0_txs_ss_bram_type         = 'xps_bram';
roach2_tut_tge_gbe0_txs_ss_bram_param        = '32768';
roach2_tut_tge_gbe0_txs_ss_bram_ip_name      = 'bram_if';
roach2_tut_tge_gbe0_txs_ss_bram_addr_start   = hex2dec('01060000');
roach2_tut_tge_gbe0_txs_ss_bram_addr_end     = hex2dec('0107FFFF');

% roach2_tut_tge/gbe0/txs/ss/ctrl
roach2_tut_tge_gbe0_txs_ss_ctrl_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txs_ss_ctrl_param        = 'in';
roach2_tut_tge_gbe0_txs_ss_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_gbe0_txs_ss_ctrl_addr_start   = hex2dec('01080000');
roach2_tut_tge_gbe0_txs_ss_ctrl_addr_end     = hex2dec('010800FF');

% roach2_tut_tge/gbe0/txs/ss/status
roach2_tut_tge_gbe0_txs_ss_status_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txs_ss_status_param        = 'out';
roach2_tut_tge_gbe0_txs_ss_status_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_txs_ss_status_addr_start   = hex2dec('01080100');
roach2_tut_tge_gbe0_txs_ss_status_addr_end     = hex2dec('010801FF');

% roach2_tut_tge/gbe0/txvldctr
roach2_tut_tge_gbe0_txvldctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_txvldctr_param        = 'out';
roach2_tut_tge_gbe0_txvldctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_txvldctr_addr_start   = hex2dec('01080200');
roach2_tut_tge_gbe0_txvldctr_addr_end     = hex2dec('010802FF');

% roach2_tut_tge/gbe0_linkup
roach2_tut_tge_gbe0_linkup_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_linkup_param        = 'out';
roach2_tut_tge_gbe0_linkup_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_linkup_addr_start   = hex2dec('01080300');
roach2_tut_tge_gbe0_linkup_addr_end     = hex2dec('010803FF');

% roach2_tut_tge/gbe0_tx_cnt
roach2_tut_tge_gbe0_tx_cnt_type         = 'xps_sw_reg';
roach2_tut_tge_gbe0_tx_cnt_param        = 'out';
roach2_tut_tge_gbe0_tx_cnt_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe0_tx_cnt_addr_start   = hex2dec('01080400');
roach2_tut_tge_gbe0_tx_cnt_addr_end     = hex2dec('010804FF');

% roach2_tut_tge/gbe1
roach2_tut_tge_gbe1_type         = 'xps_tengbe_v2';
roach2_tut_tge_gbe1_param        = '';
roach2_tut_tge_gbe1_ip_name      = 'kat_ten_gb_eth';
roach2_tut_tge_gbe1_addr_start   = hex2dec('01084000');
roach2_tut_tge_gbe1_addr_end     = hex2dec('01087FFF');

% roach2_tut_tge/gbe1/rxbadctr
roach2_tut_tge_gbe1_rxbadctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxbadctr_param        = 'out';
roach2_tut_tge_gbe1_rxbadctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxbadctr_addr_start   = hex2dec('01088000');
roach2_tut_tge_gbe1_rxbadctr_addr_end     = hex2dec('010880FF');

% roach2_tut_tge/gbe1/rxctr
roach2_tut_tge_gbe1_rxctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxctr_param        = 'out';
roach2_tut_tge_gbe1_rxctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxctr_addr_start   = hex2dec('01088100');
roach2_tut_tge_gbe1_rxctr_addr_end     = hex2dec('010881FF');

% roach2_tut_tge/gbe1/rxeofctr
roach2_tut_tge_gbe1_rxeofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxeofctr_param        = 'out';
roach2_tut_tge_gbe1_rxeofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxeofctr_addr_start   = hex2dec('01088200');
roach2_tut_tge_gbe1_rxeofctr_addr_end     = hex2dec('010882FF');

% roach2_tut_tge/gbe1/rxofctr
roach2_tut_tge_gbe1_rxofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxofctr_param        = 'out';
roach2_tut_tge_gbe1_rxofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxofctr_addr_start   = hex2dec('01088300');
roach2_tut_tge_gbe1_rxofctr_addr_end     = hex2dec('010883FF');

% roach2_tut_tge/gbe1/rxs/ss/bram
roach2_tut_tge_gbe1_rxs_ss_bram_type         = 'xps_bram';
roach2_tut_tge_gbe1_rxs_ss_bram_param        = '32768';
roach2_tut_tge_gbe1_rxs_ss_bram_ip_name      = 'bram_if';
roach2_tut_tge_gbe1_rxs_ss_bram_addr_start   = hex2dec('010A0000');
roach2_tut_tge_gbe1_rxs_ss_bram_addr_end     = hex2dec('010BFFFF');

% roach2_tut_tge/gbe1/rxs/ss/ctrl
roach2_tut_tge_gbe1_rxs_ss_ctrl_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxs_ss_ctrl_param        = 'in';
roach2_tut_tge_gbe1_rxs_ss_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_gbe1_rxs_ss_ctrl_addr_start   = hex2dec('010C0000');
roach2_tut_tge_gbe1_rxs_ss_ctrl_addr_end     = hex2dec('010C00FF');

% roach2_tut_tge/gbe1/rxs/ss/status
roach2_tut_tge_gbe1_rxs_ss_status_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxs_ss_status_param        = 'out';
roach2_tut_tge_gbe1_rxs_ss_status_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxs_ss_status_addr_start   = hex2dec('010C0100');
roach2_tut_tge_gbe1_rxs_ss_status_addr_end     = hex2dec('010C01FF');

% roach2_tut_tge/gbe1/rxvldctr
roach2_tut_tge_gbe1_rxvldctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rxvldctr_param        = 'out';
roach2_tut_tge_gbe1_rxvldctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rxvldctr_addr_start   = hex2dec('010C0200');
roach2_tut_tge_gbe1_rxvldctr_addr_end     = hex2dec('010C02FF');

% roach2_tut_tge/gbe1/txctr
roach2_tut_tge_gbe1_txctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txctr_param        = 'out';
roach2_tut_tge_gbe1_txctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_txctr_addr_start   = hex2dec('010C0300');
roach2_tut_tge_gbe1_txctr_addr_end     = hex2dec('010C03FF');

% roach2_tut_tge/gbe1/txfullctr
roach2_tut_tge_gbe1_txfullctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txfullctr_param        = 'out';
roach2_tut_tge_gbe1_txfullctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_txfullctr_addr_start   = hex2dec('010C0400');
roach2_tut_tge_gbe1_txfullctr_addr_end     = hex2dec('010C04FF');

% roach2_tut_tge/gbe1/txofctr
roach2_tut_tge_gbe1_txofctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txofctr_param        = 'out';
roach2_tut_tge_gbe1_txofctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_txofctr_addr_start   = hex2dec('010C0500');
roach2_tut_tge_gbe1_txofctr_addr_end     = hex2dec('010C05FF');

% roach2_tut_tge/gbe1/txs/ss/bram
roach2_tut_tge_gbe1_txs_ss_bram_type         = 'xps_bram';
roach2_tut_tge_gbe1_txs_ss_bram_param        = '32768';
roach2_tut_tge_gbe1_txs_ss_bram_ip_name      = 'bram_if';
roach2_tut_tge_gbe1_txs_ss_bram_addr_start   = hex2dec('010E0000');
roach2_tut_tge_gbe1_txs_ss_bram_addr_end     = hex2dec('010FFFFF');

% roach2_tut_tge/gbe1/txs/ss/ctrl
roach2_tut_tge_gbe1_txs_ss_ctrl_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txs_ss_ctrl_param        = 'in';
roach2_tut_tge_gbe1_txs_ss_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_gbe1_txs_ss_ctrl_addr_start   = hex2dec('01100000');
roach2_tut_tge_gbe1_txs_ss_ctrl_addr_end     = hex2dec('011000FF');

% roach2_tut_tge/gbe1/txs/ss/status
roach2_tut_tge_gbe1_txs_ss_status_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txs_ss_status_param        = 'out';
roach2_tut_tge_gbe1_txs_ss_status_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_txs_ss_status_addr_start   = hex2dec('01100100');
roach2_tut_tge_gbe1_txs_ss_status_addr_end     = hex2dec('011001FF');

% roach2_tut_tge/gbe1/txvldctr
roach2_tut_tge_gbe1_txvldctr_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_txvldctr_param        = 'out';
roach2_tut_tge_gbe1_txvldctr_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_txvldctr_addr_start   = hex2dec('01100200');
roach2_tut_tge_gbe1_txvldctr_addr_end     = hex2dec('011002FF');

% roach2_tut_tge/gbe1_linkup
roach2_tut_tge_gbe1_linkup_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_linkup_param        = 'out';
roach2_tut_tge_gbe1_linkup_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_linkup_addr_start   = hex2dec('01100300');
roach2_tut_tge_gbe1_linkup_addr_end     = hex2dec('011003FF');

% roach2_tut_tge/gbe1_rx_frame_cnt
roach2_tut_tge_gbe1_rx_frame_cnt_type         = 'xps_sw_reg';
roach2_tut_tge_gbe1_rx_frame_cnt_param        = 'out';
roach2_tut_tge_gbe1_rx_frame_cnt_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_gbe1_rx_frame_cnt_addr_start   = hex2dec('01100400');
roach2_tut_tge_gbe1_rx_frame_cnt_addr_end     = hex2dec('011004FF');

% roach2_tut_tge/led0_gbe0_pulse_tx
roach2_tut_tge_led0_gbe0_pulse_tx_type         = 'xps_gpio';
roach2_tut_tge_led0_gbe0_pulse_tx_param        = '';
roach2_tut_tge_led0_gbe0_pulse_tx_ip_name      = 'gpio_simulink2ext';

% roach2_tut_tge/led1_gbe0_up
roach2_tut_tge_led1_gbe0_up_type         = 'xps_gpio';
roach2_tut_tge_led1_gbe0_up_param        = '';
roach2_tut_tge_led1_gbe0_up_ip_name      = 'gpio_simulink2ext';

% roach2_tut_tge/led2_gbe1_pulse_rx
roach2_tut_tge_led2_gbe1_pulse_rx_type         = 'xps_gpio';
roach2_tut_tge_led2_gbe1_pulse_rx_param        = '';
roach2_tut_tge_led2_gbe1_pulse_rx_ip_name      = 'gpio_simulink2ext';

% roach2_tut_tge/led3_gbe1_up
roach2_tut_tge_led3_gbe1_up_type         = 'xps_gpio';
roach2_tut_tge_led3_gbe1_up_param        = '';
roach2_tut_tge_led3_gbe1_up_ip_name      = 'gpio_simulink2ext';

% roach2_tut_tge/pkt_sim/enable
roach2_tut_tge_pkt_sim_enable_type         = 'xps_sw_reg';
roach2_tut_tge_pkt_sim_enable_param        = 'in';
roach2_tut_tge_pkt_sim_enable_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_pkt_sim_enable_addr_start   = hex2dec('01100500');
roach2_tut_tge_pkt_sim_enable_addr_end     = hex2dec('011005FF');

% roach2_tut_tge/pkt_sim/payload_len
roach2_tut_tge_pkt_sim_payload_len_type         = 'xps_sw_reg';
roach2_tut_tge_pkt_sim_payload_len_param        = 'in';
roach2_tut_tge_pkt_sim_payload_len_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_pkt_sim_payload_len_addr_start   = hex2dec('01100600');
roach2_tut_tge_pkt_sim_payload_len_addr_end     = hex2dec('011006FF');

% roach2_tut_tge/pkt_sim/period
roach2_tut_tge_pkt_sim_period_type         = 'xps_sw_reg';
roach2_tut_tge_pkt_sim_period_param        = 'in';
roach2_tut_tge_pkt_sim_period_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_pkt_sim_period_addr_start   = hex2dec('01100700');
roach2_tut_tge_pkt_sim_period_addr_end     = hex2dec('011007FF');

% roach2_tut_tge/rst
roach2_tut_tge_rst_type         = 'xps_sw_reg';
roach2_tut_tge_rst_param        = 'in';
roach2_tut_tge_rst_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_rst_addr_start   = hex2dec('01100800');
roach2_tut_tge_rst_addr_end     = hex2dec('011008FF');

% roach2_tut_tge/tx_snapshot/ss/bram
roach2_tut_tge_tx_snapshot_ss_bram_type         = 'xps_bram';
roach2_tut_tge_tx_snapshot_ss_bram_param        = '16384';
roach2_tut_tge_tx_snapshot_ss_bram_ip_name      = 'bram_if';
roach2_tut_tge_tx_snapshot_ss_bram_addr_start   = hex2dec('01110000');
roach2_tut_tge_tx_snapshot_ss_bram_addr_end     = hex2dec('0111FFFF');

% roach2_tut_tge/tx_snapshot/ss/ctrl
roach2_tut_tge_tx_snapshot_ss_ctrl_type         = 'xps_sw_reg';
roach2_tut_tge_tx_snapshot_ss_ctrl_param        = 'in';
roach2_tut_tge_tx_snapshot_ss_ctrl_ip_name      = 'opb_register_ppc2simulink';
roach2_tut_tge_tx_snapshot_ss_ctrl_addr_start   = hex2dec('01120000');
roach2_tut_tge_tx_snapshot_ss_ctrl_addr_end     = hex2dec('011200FF');

% roach2_tut_tge/tx_snapshot/ss/status
roach2_tut_tge_tx_snapshot_ss_status_type         = 'xps_sw_reg';
roach2_tut_tge_tx_snapshot_ss_status_param        = 'out';
roach2_tut_tge_tx_snapshot_ss_status_ip_name      = 'opb_register_simulink2ppc';
roach2_tut_tge_tx_snapshot_ss_status_addr_start   = hex2dec('01120100');
roach2_tut_tge_tx_snapshot_ss_status_addr_end     = hex2dec('011201FF');

% OPB to OPB bridge added at 0x1080000
OPB_to_OPB_bridge_added_at_0x1080000_type         = 'xps_opb2opb';
OPB_to_OPB_bridge_added_at_0x1080000_param        = '';

% OPB to OPB bridge added at 0x1100000
OPB_to_OPB_bridge_added_at_0x1100000_type         = 'xps_opb2opb';
OPB_to_OPB_bridge_added_at_0x1100000_param        = '';

