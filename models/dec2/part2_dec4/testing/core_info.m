% testing/XSG_core_config
testing_XSG_core_config_type         = 'xps_xsg';
testing_XSG_core_config_param        = '';

% testing/4narrow
testing_4narrow_type         = 'xps_bram';
testing_4narrow_param        = '1024';
testing_4narrow_ip_name      = 'bram_if';
testing_4narrow_addr_start   = hex2dec('01000000');
testing_4narrow_addr_end     = hex2dec('01000FFF');

% testing/adc0_delay
testing_adc0_delay_type         = 'xps_sw_reg';
testing_adc0_delay_param        = 'in';
testing_adc0_delay_ip_name      = 'opb_register_ppc2simulink';
testing_adc0_delay_addr_start   = hex2dec('01001000');
testing_adc0_delay_addr_end     = hex2dec('010010FF');

% testing/adcsnap0/bram
testing_adcsnap0_bram_type         = 'xps_bram';
testing_adcsnap0_bram_param        = '4096';
testing_adcsnap0_bram_ip_name      = 'bram_if';
testing_adcsnap0_bram_addr_start   = hex2dec('01004000');
testing_adcsnap0_bram_addr_end     = hex2dec('01007FFF');

% testing/adcsnap0/ctrl
testing_adcsnap0_ctrl_type         = 'xps_sw_reg';
testing_adcsnap0_ctrl_param        = 'in';
testing_adcsnap0_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap0_ctrl_addr_start   = hex2dec('01008000');
testing_adcsnap0_ctrl_addr_end     = hex2dec('010080FF');

% testing/adcsnap0/status
testing_adcsnap0_status_type         = 'xps_sw_reg';
testing_adcsnap0_status_param        = 'out';
testing_adcsnap0_status_ip_name      = 'opb_register_simulink2ppc';
testing_adcsnap0_status_addr_start   = hex2dec('01008100');
testing_adcsnap0_status_addr_end     = hex2dec('010081FF');

% testing/adcsnap0/trig_offset
testing_adcsnap0_trig_offset_type         = 'xps_sw_reg';
testing_adcsnap0_trig_offset_param        = 'in';
testing_adcsnap0_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing_adcsnap0_trig_offset_addr_start   = hex2dec('01008200');
testing_adcsnap0_trig_offset_addr_end     = hex2dec('010082FF');

% testing/asiaa_adc5g0
testing_asiaa_adc5g0_type         = 'xps_adc5g';
testing_asiaa_adc5g0_param        = '';
testing_asiaa_adc5g0_ip_name      = 'adc5g_dmux1_interface';

% testing/cnt_rst
testing_cnt_rst_type         = 'xps_sw_reg';
testing_cnt_rst_param        = 'in';
testing_cnt_rst_ip_name      = 'opb_register_ppc2simulink';
testing_cnt_rst_addr_start   = hex2dec('01008300');
testing_cnt_rst_addr_end     = hex2dec('010083FF');

% testing/get_data
testing_get_data_type         = 'xps_sw_reg';
testing_get_data_param        = 'in';
testing_get_data_ip_name      = 'opb_register_ppc2simulink';
testing_get_data_addr_start   = hex2dec('01008400');
testing_get_data_addr_end     = hex2dec('010084FF');

% testing/pfb_out
testing_pfb_out_type         = 'xps_bram';
testing_pfb_out_param        = '2048';
testing_pfb_out_ip_name      = 'bram_if';
testing_pfb_out_addr_start   = hex2dec('0100A000');
testing_pfb_out_addr_end     = hex2dec('0100BFFF');

% testing/pfb_out1
testing_pfb_out1_type         = 'xps_bram';
testing_pfb_out1_param        = '2048';
testing_pfb_out1_ip_name      = 'bram_if';
testing_pfb_out1_addr_start   = hex2dec('0100C000');
testing_pfb_out1_addr_end     = hex2dec('0100DFFF');

% testing/snap_trig
testing_snap_trig_type         = 'xps_sw_reg';
testing_snap_trig_param        = 'in';
testing_snap_trig_ip_name      = 'opb_register_ppc2simulink';
testing_snap_trig_addr_start   = hex2dec('0100E000');
testing_snap_trig_addr_end     = hex2dec('0100E0FF');

% testing/software_register
testing_software_register_type         = 'xps_sw_reg';
testing_software_register_param        = 'out';
testing_software_register_ip_name      = 'opb_register_simulink2ppc';
testing_software_register_addr_start   = hex2dec('0100E100');
testing_software_register_addr_end     = hex2dec('0100E1FF');

% testing/sync_gen/sync
testing_sync_gen_sync_type         = 'xps_sw_reg';
testing_sync_gen_sync_param        = 'in';
testing_sync_gen_sync_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_addr_start   = hex2dec('0100E200');
testing_sync_gen_sync_addr_end     = hex2dec('0100E2FF');

% testing/sync_gen/sync_period_sel
testing_sync_gen_sync_period_sel_type         = 'xps_sw_reg';
testing_sync_gen_sync_period_sel_param        = 'in';
testing_sync_gen_sync_period_sel_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_period_sel_addr_start   = hex2dec('0100E300');
testing_sync_gen_sync_period_sel_addr_end     = hex2dec('0100E3FF');

% testing/sync_gen/sync_period_var
testing_sync_gen_sync_period_var_type         = 'xps_sw_reg';
testing_sync_gen_sync_period_var_param        = 'in';
testing_sync_gen_sync_period_var_ip_name      = 'opb_register_ppc2simulink';
testing_sync_gen_sync_period_var_addr_start   = hex2dec('0100E400');
testing_sync_gen_sync_period_var_addr_end     = hex2dec('0100E4FF');

