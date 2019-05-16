
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
component testing_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 7.4074 ns (135.000135000135 Mhz)
    testing_4narrow_data_out: in std_logic_vector(31 downto 0); 
    testing_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
    testing_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    testing_asiaa_adc5g0_sync: in std_logic; 
    testing_asiaa_adc5g0_user_data_i0: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i1: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i2: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i3: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i4: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i5: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i6: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_i7: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q0: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q1: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q2: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q3: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q4: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q5: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q6: in std_logic_vector(7 downto 0); 
    testing_asiaa_adc5g0_user_data_q7: in std_logic_vector(7 downto 0); 
    testing_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
    testing_get_data_user_data_out: in std_logic_vector(31 downto 0); 
    testing_pfb_out1_data_out: in std_logic_vector(63 downto 0); 
    testing_pfb_out_data_out: in std_logic_vector(63 downto 0); 
    testing_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    testing_4narrow_addr: out std_logic_vector(9 downto 0); 
    testing_4narrow_data_in: out std_logic_vector(31 downto 0); 
    testing_4narrow_we: out std_logic; 
    testing_adcsnap0_bram_addr: out std_logic_vector(9 downto 0); 
    testing_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
    testing_adcsnap0_bram_we: out std_logic; 
    testing_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
    testing_pfb_out1_addr: out std_logic_vector(9 downto 0); 
    testing_pfb_out1_data_in: out std_logic_vector(63 downto 0); 
    testing_pfb_out1_we: out std_logic; 
    testing_pfb_out_addr: out std_logic_vector(9 downto 0); 
    testing_pfb_out_data_in: out std_logic_vector(63 downto 0); 
    testing_pfb_out_we: out std_logic; 
    testing_software_register_user_data_in: out std_logic_vector(31 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : testing_cw
  port map (
    ce => ce,
    clk => clk,
    testing_4narrow_data_out => testing_4narrow_data_out,
    testing_adc0_delay_user_data_out => testing_adc0_delay_user_data_out,
    testing_adcsnap0_bram_data_out => testing_adcsnap0_bram_data_out,
    testing_adcsnap0_ctrl_user_data_out => testing_adcsnap0_ctrl_user_data_out,
    testing_adcsnap0_trig_offset_user_data_out => testing_adcsnap0_trig_offset_user_data_out,
    testing_asiaa_adc5g0_sync => testing_asiaa_adc5g0_sync,
    testing_asiaa_adc5g0_user_data_i0 => testing_asiaa_adc5g0_user_data_i0,
    testing_asiaa_adc5g0_user_data_i1 => testing_asiaa_adc5g0_user_data_i1,
    testing_asiaa_adc5g0_user_data_i2 => testing_asiaa_adc5g0_user_data_i2,
    testing_asiaa_adc5g0_user_data_i3 => testing_asiaa_adc5g0_user_data_i3,
    testing_asiaa_adc5g0_user_data_i4 => testing_asiaa_adc5g0_user_data_i4,
    testing_asiaa_adc5g0_user_data_i5 => testing_asiaa_adc5g0_user_data_i5,
    testing_asiaa_adc5g0_user_data_i6 => testing_asiaa_adc5g0_user_data_i6,
    testing_asiaa_adc5g0_user_data_i7 => testing_asiaa_adc5g0_user_data_i7,
    testing_asiaa_adc5g0_user_data_q0 => testing_asiaa_adc5g0_user_data_q0,
    testing_asiaa_adc5g0_user_data_q1 => testing_asiaa_adc5g0_user_data_q1,
    testing_asiaa_adc5g0_user_data_q2 => testing_asiaa_adc5g0_user_data_q2,
    testing_asiaa_adc5g0_user_data_q3 => testing_asiaa_adc5g0_user_data_q3,
    testing_asiaa_adc5g0_user_data_q4 => testing_asiaa_adc5g0_user_data_q4,
    testing_asiaa_adc5g0_user_data_q5 => testing_asiaa_adc5g0_user_data_q5,
    testing_asiaa_adc5g0_user_data_q6 => testing_asiaa_adc5g0_user_data_q6,
    testing_asiaa_adc5g0_user_data_q7 => testing_asiaa_adc5g0_user_data_q7,
    testing_cnt_rst_user_data_out => testing_cnt_rst_user_data_out,
    testing_get_data_user_data_out => testing_get_data_user_data_out,
    testing_pfb_out1_data_out => testing_pfb_out1_data_out,
    testing_pfb_out_data_out => testing_pfb_out_data_out,
    testing_snap_trig_user_data_out => testing_snap_trig_user_data_out,
    testing_sync_gen_sync_period_sel_user_data_out => testing_sync_gen_sync_period_sel_user_data_out,
    testing_sync_gen_sync_period_var_user_data_out => testing_sync_gen_sync_period_var_user_data_out,
    testing_sync_gen_sync_user_data_out => testing_sync_gen_sync_user_data_out,
    testing_4narrow_addr => testing_4narrow_addr,
    testing_4narrow_data_in => testing_4narrow_data_in,
    testing_4narrow_we => testing_4narrow_we,
    testing_adcsnap0_bram_addr => testing_adcsnap0_bram_addr,
    testing_adcsnap0_bram_data_in => testing_adcsnap0_bram_data_in,
    testing_adcsnap0_bram_we => testing_adcsnap0_bram_we,
    testing_adcsnap0_status_user_data_in => testing_adcsnap0_status_user_data_in,
    testing_pfb_out1_addr => testing_pfb_out1_addr,
    testing_pfb_out1_data_in => testing_pfb_out1_data_in,
    testing_pfb_out1_we => testing_pfb_out1_we,
    testing_pfb_out_addr => testing_pfb_out_addr,
    testing_pfb_out_data_in => testing_pfb_out_data_in,
    testing_pfb_out_we => testing_pfb_out_we,
    testing_software_register_user_data_in => testing_software_register_user_data_in);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
