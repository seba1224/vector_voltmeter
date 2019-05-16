% testing3/XSG_core_config
testing3_XSG_core_config_type         = 'xps_xsg';
testing3_XSG_core_config_param        = '';

% testing3/4narrow
testing3_4narrow_type         = 'xps_bram';
testing3_4narrow_param        = '1024';
testing3_4narrow_ip_name      = 'bram_if';
testing3_4narrow_addr_start   = hex2dec('01000000');
testing3_4narrow_addr_end     = hex2dec('01000FFF');

% testing3/adc0_delay
testing3_adc0_delay_type         = 'xps_sw_reg';
testing3_adc0_delay_param        = 'in';
testing3_adc0_delay_ip_name      = 'opb_register_ppc2simulink';
testing3_adc0_delay_addr_start   = hex2dec('01001000');
testing3_adc0_delay_addr_end     = hex2dec('010010FF');

% testing3/adcsnap0/bram
testing3_adcsnap0_bram_type         = 'xps_bram';
testing3_adcsnap0_bram_param        = '4096';
testing3_adcsnap0_bram_ip_name      = 'bram_if';
testing3_adcsnap0_bram_addr_start   = hex2dec('01004000');
testing3_adcsnap0_bram_addr_end     = hex2dec('01007FFF');

% testing3/adcsnap0/ctrl
testing3_adcsnap0_ctrl_type         = 'xps_sw_reg';
testing3_adcsnap0_ctrl_param        = 'in';
testing3_adcsnap0_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing3_adcsnap0_ctrl_addr_start   = hex2dec('01008000');
testing3_adcsnap0_ctrl_addr_end     = hex2dec('010080FF');

% testing3/adcsnap0/status
testing3_adcsnap0_status_type         = 'xps_sw_reg';
testing3_adcsnap0_status_param        = 'out';
testing3_adcsnap0_status_ip_name      = 'opb_register_simulink2ppc';
testing3_adcsnap0_status_addr_start   = hex2dec('01008100');
testing3_adcsnap0_status_addr_end     = hex2dec('010081FF');

% testing3/adcsnap0/trig_offset
testing3_adcsnap0_trig_offset_type         = 'xps_sw_reg';
testing3_adcsnap0_trig_offset_param        = 'in';
testing3_adcsnap0_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing3_adcsnap0_trig_offset_addr_start   = hex2dec('01008200');
testing3_adcsnap0_trig_offset_addr_end     = hex2dec('010082FF');

% testing3/asiaa_adc5g0
testing3_asiaa_adc5g0_type         = 'xps_adc5g';
testing3_asiaa_adc5g0_param        = '';
testing3_asiaa_adc5g0_ip_name      = 'adc5g_dmux1_interface';

% testing3/cnt_rst
testing3_cnt_rst_type         = 'xps_sw_reg';
testing3_cnt_rst_param        = 'in';
testing3_cnt_rst_ip_name      = 'opb_register_ppc2simulink';
testing3_cnt_rst_addr_start   = hex2dec('01008300');
testing3_cnt_rst_addr_end     = hex2dec('010083FF');

% testing3/get_data
testing3_get_data_type         = 'xps_sw_reg';
testing3_get_data_param        = 'in';
testing3_get_data_ip_name      = 'opb_register_ppc2simulink';
testing3_get_data_addr_start   = hex2dec('01008400');
testing3_get_data_addr_end     = hex2dec('010084FF');

% testing3/pfb_out
testing3_pfb_out_type         = 'xps_bram';
testing3_pfb_out_param        = '2048';
testing3_pfb_out_ip_name      = 'bram_if';
testing3_pfb_out_addr_start   = hex2dec('0100A000');
testing3_pfb_out_addr_end     = hex2dec('0100BFFF');

% testing3/pfb_out1
testing3_pfb_out1_type         = 'xps_bram';
testing3_pfb_out1_param        = '2048';
testing3_pfb_out1_ip_name      = 'bram_if';
testing3_pfb_out1_addr_start   = hex2dec('0100C000');
testing3_pfb_out1_addr_end     = hex2dec('0100DFFF');

% testing3/snap_trig
testing3_snap_trig_type         = 'xps_sw_reg';
testing3_snap_trig_param        = 'in';
testing3_snap_trig_ip_name      = 'opb_register_ppc2simulink';
testing3_snap_trig_addr_start   = hex2dec('0100E000');
testing3_snap_trig_addr_end     = hex2dec('0100E0FF');

% testing3/software_register
testing3_software_register_type         = 'xps_sw_reg';
testing3_software_register_param        = 'out';
testing3_software_register_ip_name      = 'opb_register_simulink2ppc';
testing3_software_register_addr_start   = hex2dec('0100E100');
testing3_software_register_addr_end     = hex2dec('0100E1FF');

% testing3/sync_gen/sync
testing3_sync_gen_sync_type         = 'xps_sw_reg';
testing3_sync_gen_sync_param        = 'in';
testing3_sync_gen_sync_ip_name      = 'opb_register_ppc2simulink';
testing3_sync_gen_sync_addr_start   = hex2dec('0100E200');
testing3_sync_gen_sync_addr_end     = hex2dec('0100E2FF');

% testing3/sync_gen/sync_period_sel
testing3_sync_gen_sync_period_sel_type         = 'xps_sw_reg';
testing3_sync_gen_sync_period_sel_param        = 'in';
testing3_sync_gen_sync_period_sel_ip_name      = 'opb_register_ppc2simulink';
testing3_sync_gen_sync_period_sel_addr_start   = hex2dec('0100E300');
testing3_sync_gen_sync_period_sel_addr_end     = hex2dec('0100E3FF');

% testing3/sync_gen/sync_period_var
testing3_sync_gen_sync_period_var_type         = 'xps_sw_reg';
testing3_sync_gen_sync_period_var_param        = 'in';
testing3_sync_gen_sync_period_var_ip_name      = 'opb_register_ppc2simulink';
testing3_sync_gen_sync_period_var_addr_start   = hex2dec('0100E400');
testing3_sync_gen_sync_period_var_addr_end     = hex2dec('0100E4FF');

