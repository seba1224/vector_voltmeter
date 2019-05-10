% testing/XSG_core_config
testing_XSG_core_config_type         = 'xps_xsg';
testing_XSG_core_config_param        = '';

% testing/1narrow
testing_1narrow_type         = 'xps_bram';
testing_1narrow_param        = '1024';
testing_1narrow_ip_name      = 'bram_if';
testing_1narrow_addr_start   = hex2dec('01000000');
testing_1narrow_addr_end     = hex2dec('01000FFF');

% testing/3narrow
testing_3narrow_type         = 'xps_bram';
testing_3narrow_param        = '1024';
testing_3narrow_ip_name      = 'bram_if';
testing_3narrow_addr_start   = hex2dec('01001000');
testing_3narrow_addr_end     = hex2dec('01001FFF');

% testing/4narrow
testing_4narrow_type         = 'xps_bram';
testing_4narrow_param        = '1024';
testing_4narrow_ip_name      = 'bram_if';
testing_4narrow_addr_start   = hex2dec('01002000');
testing_4narrow_addr_end     = hex2dec('01002FFF');

% testing/4wide
testing_4wide_type         = 'xps_bram';
testing_4wide_param        = '1024';
testing_4wide_ip_name      = 'bram_if';
testing_4wide_addr_start   = hex2dec('01003000');
testing_4wide_addr_end     = hex2dec('01003FFF');

% testing/adc0_delay
testing_adc0_delay_type         = 'xps_sw_reg';
testing_adc0_delay_param        = 'in';
testing_adc0_delay_ip_name      = 'opb_register_ppc2simulink';
testing_adc0_delay_addr_start   = hex2dec('01004000');
testing_adc0_delay_addr_end     = hex2dec('010040FF');

% testing/adcsnap0/bram
testing_adcsnap0_bram_type         = 'xps_bram';
testing_adcsnap0_bram_param        = '4096';
testing_adcsnap0_bram_ip_name      = 'bram_if';
testing_adcsnap0_bram_addr_start   = hex2dec('01008000');
testing_adcsnap0_bram_addr_end     = hex2dec('0100BFFF');

% testing/adcsnap0/ctrl
testing_adcsnap0_ctrl_type         = 'xps_sw_reg';
testing_adcsnap0_ctrl_param        = 'in';
testing_adcsnap0_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap0_ctrl_addr_start   = hex2dec('0100C000');
testing_adcsnap0_ctrl_addr_end     = hex2dec('0100C0FF');

% testing/adcsnap0/status
testing_adcsnap0_status_type         = 'xps_sw_reg';
testing_adcsnap0_status_param        = 'out';
testing_adcsnap0_status_ip_name      = 'opb_register_simulink2ppc';
testing_adcsnap0_status_addr_start   = hex2dec('0100C100');
testing_adcsnap0_status_addr_end     = hex2dec('0100C1FF');

% testing/adcsnap0/trig_offset
testing_adcsnap0_trig_offset_type         = 'xps_sw_reg';
testing_adcsnap0_trig_offset_param        = 'in';
testing_adcsnap0_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap0_trig_offset_addr_start   = hex2dec('0100C200');
testing_adcsnap0_trig_offset_addr_end     = hex2dec('0100C2FF');

% testing/adcsnap1/bram
testing_adcsnap1_bram_type         = 'xps_bram';
testing_adcsnap1_bram_param        = '1024';
testing_adcsnap1_bram_ip_name      = 'bram_if';
testing_adcsnap1_bram_addr_start   = hex2dec('0100D000');
testing_adcsnap1_bram_addr_end     = hex2dec('0100DFFF');

% testing/adcsnap1/ctrl
testing_adcsnap1_ctrl_type         = 'xps_sw_reg';
testing_adcsnap1_ctrl_param        = 'in';
testing_adcsnap1_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap1_ctrl_addr_start   = hex2dec('0100E000');
testing_adcsnap1_ctrl_addr_end     = hex2dec('0100E0FF');

% testing/adcsnap1/status
testing_adcsnap1_status_type         = 'xps_sw_reg';
testing_adcsnap1_status_param        = 'out';
testing_adcsnap1_status_ip_name      = 'opb_register_simulink2ppc';
testing_adcsnap1_status_addr_start   = hex2dec('0100E100');
testing_adcsnap1_status_addr_end     = hex2dec('0100E1FF');

% testing/adcsnap1/trig_offset
testing_adcsnap1_trig_offset_type         = 'xps_sw_reg';
testing_adcsnap1_trig_offset_param        = 'in';
testing_adcsnap1_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap1_trig_offset_addr_start   = hex2dec('0100E200');
testing_adcsnap1_trig_offset_addr_end     = hex2dec('0100E2FF');

% testing/adcsnap2/bram
testing_adcsnap2_bram_type         = 'xps_bram';
testing_adcsnap2_bram_param        = '1024';
testing_adcsnap2_bram_ip_name      = 'bram_if';
testing_adcsnap2_bram_addr_start   = hex2dec('0100F000');
testing_adcsnap2_bram_addr_end     = hex2dec('0100FFFF');

% testing/adcsnap2/ctrl
testing_adcsnap2_ctrl_type         = 'xps_sw_reg';
testing_adcsnap2_ctrl_param        = 'in';
testing_adcsnap2_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap2_ctrl_addr_start   = hex2dec('01010000');
testing_adcsnap2_ctrl_addr_end     = hex2dec('010100FF');

% testing/adcsnap2/status
testing_adcsnap2_status_type         = 'xps_sw_reg';
testing_adcsnap2_status_param        = 'out';
testing_adcsnap2_status_ip_name      = 'opb_register_simulink2ppc';
testing_adcsnap2_status_addr_start   = hex2dec('01010100');
testing_adcsnap2_status_addr_end     = hex2dec('010101FF');

% testing/adcsnap2/trig_offset
testing_adcsnap2_trig_offset_type         = 'xps_sw_reg';
testing_adcsnap2_trig_offset_param        = 'in';
testing_adcsnap2_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap2_trig_offset_addr_start   = hex2dec('01010200');
testing_adcsnap2_trig_offset_addr_end     = hex2dec('010102FF');

% testing/asiaa_adc5g0
testing_asiaa_adc5g0_type         = 'xps_adc5g';
testing_asiaa_adc5g0_param        = '';
testing_asiaa_adc5g0_ip_name      = 'adc5g_dmux1_interface';

% testing/cnt_rst
testing_cnt_rst_type         = 'xps_sw_reg';
testing_cnt_rst_param        = 'in';
testing_cnt_rst_ip_name      = 'opb_register_ppc2simulink';
testing_cnt_rst_addr_start   = hex2dec('01010300');
testing_cnt_rst_addr_end     = hex2dec('010103FF');

% testing/get_data
testing_get_data_type         = 'xps_sw_reg';
testing_get_data_param        = 'in';
testing_get_data_ip_name      = 'opb_register_ppc2simulink';
testing_get_data_addr_start   = hex2dec('01010400');
testing_get_data_addr_end     = hex2dec('010104FF');

% testing/snap_trig
testing_snap_trig_type         = 'xps_sw_reg';
testing_snap_trig_param        = 'in';
testing_snap_trig_ip_name      = 'opb_register_ppc2simulink';
testing_snap_trig_addr_start   = hex2dec('01010500');
testing_snap_trig_addr_end     = hex2dec('010105FF');

% testing/sync_gen/sync
testing_sync_gen_sync_type         = 'xps_sw_reg';
testing_sync_gen_sync_param        = 'in';
testing_sync_gen_sync_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_addr_start   = hex2dec('01010600');
testing_sync_gen_sync_addr_end     = hex2dec('010106FF');

% testing/sync_gen/sync_period_sel
testing_sync_gen_sync_period_sel_type         = 'xps_sw_reg';
testing_sync_gen_sync_period_sel_param        = 'in';
testing_sync_gen_sync_period_sel_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_period_sel_addr_start   = hex2dec('01010700');
testing_sync_gen_sync_period_sel_addr_end     = hex2dec('010107FF');

% testing/sync_gen/sync_period_var
testing_sync_gen_sync_period_var_type         = 'xps_sw_reg';
testing_sync_gen_sync_period_var_param        = 'in';
testing_sync_gen_sync_period_var_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_period_var_addr_start   = hex2dec('01010800');
testing_sync_gen_sync_period_var_addr_end     = hex2dec('010108FF');

