% testing2/XSG_core_config
testing2_XSG_core_config_type         = 'xps_xsg';
testing2_XSG_core_config_param        = '';

% testing2/4narrow
testing2_4narrow_type         = 'xps_bram';
testing2_4narrow_param        = '1024';
testing2_4narrow_ip_name      = 'bram_if';
testing2_4narrow_addr_start   = hex2dec('01000000');
testing2_4narrow_addr_end     = hex2dec('01000FFF');

% testing2/adc0_delay
testing2_adc0_delay_type         = 'xps_sw_reg';
testing2_adc0_delay_param        = 'in';
testing2_adc0_delay_ip_name      = 'opb_register_ppc2simulink';
testing2_adc0_delay_addr_start   = hex2dec('01001000');
testing2_adc0_delay_addr_end     = hex2dec('010010FF');

% testing2/adcsnap0/bram
testing2_adcsnap0_bram_type         = 'xps_bram';
testing2_adcsnap0_bram_param        = '4096';
testing2_adcsnap0_bram_ip_name      = 'bram_if';
testing2_adcsnap0_bram_addr_start   = hex2dec('01004000');
testing2_adcsnap0_bram_addr_end     = hex2dec('01007FFF');

% testing2/adcsnap0/ctrl
testing2_adcsnap0_ctrl_type         = 'xps_sw_reg';
testing2_adcsnap0_ctrl_param        = 'in';
testing2_adcsnap0_ctrl_ip_name      = 'opb_register_ppc2simulink';
testing2_adcsnap0_ctrl_addr_start   = hex2dec('01008000');
testing2_adcsnap0_ctrl_addr_end     = hex2dec('010080FF');

% testing2/adcsnap0/status
testing2_adcsnap0_status_type         = 'xps_sw_reg';
testing2_adcsnap0_status_param        = 'out';
testing2_adcsnap0_status_ip_name      = 'opb_register_simulink2ppc';
testing2_adcsnap0_status_addr_start   = hex2dec('01008100');
testing2_adcsnap0_status_addr_end     = hex2dec('010081FF');

% testing2/adcsnap0/trig_offset
testing2_adcsnap0_trig_offset_type         = 'xps_sw_reg';
testing2_adcsnap0_trig_offset_param        = 'in';
testing2_adcsnap0_trig_offset_ip_name      = 'opb_register_ppc2simulink';
testing2_adcsnap0_trig_offset_addr_start   = hex2dec('01008200');
testing2_adcsnap0_trig_offset_addr_end     = hex2dec('010082FF');

% testing2/asiaa_adc5g0
testing2_asiaa_adc5g0_type         = 'xps_adc5g';
testing2_asiaa_adc5g0_param        = '';
testing2_asiaa_adc5g0_ip_name      = 'adc5g_dmux1_interface';

% testing2/cnt_rst
testing2_cnt_rst_type         = 'xps_sw_reg';
testing2_cnt_rst_param        = 'in';
testing2_cnt_rst_ip_name      = 'opb_register_ppc2simulink';
testing2_cnt_rst_addr_start   = hex2dec('01008300');
testing2_cnt_rst_addr_end     = hex2dec('010083FF');

% testing2/fft_out
testing2_fft_out_type         = 'xps_bram';
testing2_fft_out_param        = '1024';
testing2_fft_out_ip_name      = 'bram_if';
testing2_fft_out_addr_start   = hex2dec('01009000');
testing2_fft_out_addr_end     = hex2dec('01009FFF');

% testing2/fft_out1
testing2_fft_out1_type         = 'xps_bram';
testing2_fft_out1_param        = '1024';
testing2_fft_out1_ip_name      = 'bram_if';
testing2_fft_out1_addr_start   = hex2dec('0100A000');
testing2_fft_out1_addr_end     = hex2dec('0100AFFF');

% testing2/get_data
testing2_get_data_type         = 'xps_sw_reg';
testing2_get_data_param        = 'in';
testing2_get_data_ip_name      = 'opb_register_ppc2simulink';
testing2_get_data_addr_start   = hex2dec('0100B000');
testing2_get_data_addr_end     = hex2dec('0100B0FF');

% testing2/pfb_out
testing2_pfb_out_type         = 'xps_bram';
testing2_pfb_out_param        = '2048';
testing2_pfb_out_ip_name      = 'bram_if';
testing2_pfb_out_addr_start   = hex2dec('0100C000');
testing2_pfb_out_addr_end     = hex2dec('0100DFFF');

% testing2/snap_trig
testing2_snap_trig_type         = 'xps_sw_reg';
testing2_snap_trig_param        = 'in';
testing2_snap_trig_ip_name      = 'opb_register_ppc2simulink';
testing2_snap_trig_addr_start   = hex2dec('0100E000');
testing2_snap_trig_addr_end     = hex2dec('0100E0FF');

% testing2/sync_gen/sync
testing2_sync_gen_sync_type         = 'xps_sw_reg';
testing2_sync_gen_sync_param        = 'in';
testing2_sync_gen_sync_ip_name      = 'opb_register_ppc2simulink';
testing2_sync_gen_sync_addr_start   = hex2dec('0100E100');
testing2_sync_gen_sync_addr_end     = hex2dec('0100E1FF');

% testing2/sync_gen/sync_period_sel
testing2_sync_gen_sync_period_sel_type         = 'xps_sw_reg';
testing2_sync_gen_sync_period_sel_param        = 'in';
testing2_sync_gen_sync_period_sel_ip_name      = 'opb_register_ppc2simulink';
testing2_sync_gen_sync_period_sel_addr_start   = hex2dec('0100E200');
testing2_sync_gen_sync_period_sel_addr_end     = hex2dec('0100E2FF');

% testing2/sync_gen/sync_period_var
testing2_sync_gen_sync_period_var_type         = 'xps_sw_reg';
testing2_sync_gen_sync_period_var_param        = 'in';
testing2_sync_gen_sync_period_var_ip_name      = 'opb_register_ppc2simulink';
testing2_sync_gen_sync_period_var_addr_start   = hex2dec('0100E300');
testing2_sync_gen_sync_period_var_addr_end     = hex2dec('0100E3FF');

