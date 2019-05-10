-------------------------------------------------------------------------------
-- system_testing_xsg_core_config_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_testing_xsg_core_config_wrapper is
  port (
    clk : in std_logic;
    testing_1narrow_data_out : in std_logic_vector(31 downto 0);
    testing_1narrow_addr : out std_logic_vector(9 downto 0);
    testing_1narrow_data_in : out std_logic_vector(31 downto 0);
    testing_1narrow_we : out std_logic;
    testing_3narrow_data_out : in std_logic_vector(31 downto 0);
    testing_3narrow_addr : out std_logic_vector(9 downto 0);
    testing_3narrow_data_in : out std_logic_vector(31 downto 0);
    testing_3narrow_we : out std_logic;
    testing_4narrow_data_out : in std_logic_vector(31 downto 0);
    testing_4narrow_addr : out std_logic_vector(9 downto 0);
    testing_4narrow_data_in : out std_logic_vector(31 downto 0);
    testing_4narrow_we : out std_logic;
    testing_4wide_data_out : in std_logic_vector(31 downto 0);
    testing_4wide_addr : out std_logic_vector(9 downto 0);
    testing_4wide_data_in : out std_logic_vector(31 downto 0);
    testing_4wide_we : out std_logic;
    testing_adc0_delay_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap0_bram_data_out : in std_logic_vector(127 downto 0);
    testing_adcsnap0_bram_addr : out std_logic_vector(9 downto 0);
    testing_adcsnap0_bram_data_in : out std_logic_vector(127 downto 0);
    testing_adcsnap0_bram_we : out std_logic;
    testing_adcsnap0_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap0_status_user_data_in : out std_logic_vector(31 downto 0);
    testing_adcsnap0_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap1_bram_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap1_bram_addr : out std_logic_vector(9 downto 0);
    testing_adcsnap1_bram_data_in : out std_logic_vector(31 downto 0);
    testing_adcsnap1_bram_we : out std_logic;
    testing_adcsnap1_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap1_status_user_data_in : out std_logic_vector(31 downto 0);
    testing_adcsnap1_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap2_bram_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap2_bram_addr : out std_logic_vector(9 downto 0);
    testing_adcsnap2_bram_data_in : out std_logic_vector(31 downto 0);
    testing_adcsnap2_bram_we : out std_logic;
    testing_adcsnap2_ctrl_user_data_out : in std_logic_vector(31 downto 0);
    testing_adcsnap2_status_user_data_in : out std_logic_vector(31 downto 0);
    testing_adcsnap2_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
    testing_asiaa_adc5g0_sync : in std_logic;
    testing_asiaa_adc5g0_user_data_i0 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i1 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i2 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i3 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i4 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i5 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i6 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_i7 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q0 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q1 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q2 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q3 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q4 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q5 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q6 : in std_logic_vector(7 downto 0);
    testing_asiaa_adc5g0_user_data_q7 : in std_logic_vector(7 downto 0);
    testing_cnt_rst_user_data_out : in std_logic_vector(31 downto 0);
    testing_get_data_user_data_out : in std_logic_vector(31 downto 0);
    testing_snap_trig_user_data_out : in std_logic_vector(31 downto 0);
    testing_sync_gen_sync_user_data_out : in std_logic_vector(31 downto 0);
    testing_sync_gen_sync_period_sel_user_data_out : in std_logic_vector(31 downto 0);
    testing_sync_gen_sync_period_var_user_data_out : in std_logic_vector(31 downto 0)
  );
end system_testing_xsg_core_config_wrapper;

architecture STRUCTURE of system_testing_xsg_core_config_wrapper is

  component testing is
    port (
      clk : in std_logic;
      testing_1narrow_data_out : in std_logic_vector(31 downto 0);
      testing_1narrow_addr : out std_logic_vector(9 downto 0);
      testing_1narrow_data_in : out std_logic_vector(31 downto 0);
      testing_1narrow_we : out std_logic;
      testing_3narrow_data_out : in std_logic_vector(31 downto 0);
      testing_3narrow_addr : out std_logic_vector(9 downto 0);
      testing_3narrow_data_in : out std_logic_vector(31 downto 0);
      testing_3narrow_we : out std_logic;
      testing_4narrow_data_out : in std_logic_vector(31 downto 0);
      testing_4narrow_addr : out std_logic_vector(9 downto 0);
      testing_4narrow_data_in : out std_logic_vector(31 downto 0);
      testing_4narrow_we : out std_logic;
      testing_4wide_data_out : in std_logic_vector(31 downto 0);
      testing_4wide_addr : out std_logic_vector(9 downto 0);
      testing_4wide_data_in : out std_logic_vector(31 downto 0);
      testing_4wide_we : out std_logic;
      testing_adc0_delay_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap0_bram_data_out : in std_logic_vector(127 downto 0);
      testing_adcsnap0_bram_addr : out std_logic_vector(9 downto 0);
      testing_adcsnap0_bram_data_in : out std_logic_vector(127 downto 0);
      testing_adcsnap0_bram_we : out std_logic;
      testing_adcsnap0_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap0_status_user_data_in : out std_logic_vector(31 downto 0);
      testing_adcsnap0_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap1_bram_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap1_bram_addr : out std_logic_vector(9 downto 0);
      testing_adcsnap1_bram_data_in : out std_logic_vector(31 downto 0);
      testing_adcsnap1_bram_we : out std_logic;
      testing_adcsnap1_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap1_status_user_data_in : out std_logic_vector(31 downto 0);
      testing_adcsnap1_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap2_bram_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap2_bram_addr : out std_logic_vector(9 downto 0);
      testing_adcsnap2_bram_data_in : out std_logic_vector(31 downto 0);
      testing_adcsnap2_bram_we : out std_logic;
      testing_adcsnap2_ctrl_user_data_out : in std_logic_vector(31 downto 0);
      testing_adcsnap2_status_user_data_in : out std_logic_vector(31 downto 0);
      testing_adcsnap2_trig_offset_user_data_out : in std_logic_vector(31 downto 0);
      testing_asiaa_adc5g0_sync : in std_logic;
      testing_asiaa_adc5g0_user_data_i0 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i1 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i2 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i3 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i4 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i5 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i6 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_i7 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q0 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q1 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q2 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q3 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q4 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q5 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q6 : in std_logic_vector(7 downto 0);
      testing_asiaa_adc5g0_user_data_q7 : in std_logic_vector(7 downto 0);
      testing_cnt_rst_user_data_out : in std_logic_vector(31 downto 0);
      testing_get_data_user_data_out : in std_logic_vector(31 downto 0);
      testing_snap_trig_user_data_out : in std_logic_vector(31 downto 0);
      testing_sync_gen_sync_user_data_out : in std_logic_vector(31 downto 0);
      testing_sync_gen_sync_period_sel_user_data_out : in std_logic_vector(31 downto 0);
      testing_sync_gen_sync_period_var_user_data_out : in std_logic_vector(31 downto 0)
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of testing : component is "user_black_box";

begin

  testing_XSG_core_config : testing
    port map (
      clk => clk,
      testing_1narrow_data_out => testing_1narrow_data_out,
      testing_1narrow_addr => testing_1narrow_addr,
      testing_1narrow_data_in => testing_1narrow_data_in,
      testing_1narrow_we => testing_1narrow_we,
      testing_3narrow_data_out => testing_3narrow_data_out,
      testing_3narrow_addr => testing_3narrow_addr,
      testing_3narrow_data_in => testing_3narrow_data_in,
      testing_3narrow_we => testing_3narrow_we,
      testing_4narrow_data_out => testing_4narrow_data_out,
      testing_4narrow_addr => testing_4narrow_addr,
      testing_4narrow_data_in => testing_4narrow_data_in,
      testing_4narrow_we => testing_4narrow_we,
      testing_4wide_data_out => testing_4wide_data_out,
      testing_4wide_addr => testing_4wide_addr,
      testing_4wide_data_in => testing_4wide_data_in,
      testing_4wide_we => testing_4wide_we,
      testing_adc0_delay_user_data_out => testing_adc0_delay_user_data_out,
      testing_adcsnap0_bram_data_out => testing_adcsnap0_bram_data_out,
      testing_adcsnap0_bram_addr => testing_adcsnap0_bram_addr,
      testing_adcsnap0_bram_data_in => testing_adcsnap0_bram_data_in,
      testing_adcsnap0_bram_we => testing_adcsnap0_bram_we,
      testing_adcsnap0_ctrl_user_data_out => testing_adcsnap0_ctrl_user_data_out,
      testing_adcsnap0_status_user_data_in => testing_adcsnap0_status_user_data_in,
      testing_adcsnap0_trig_offset_user_data_out => testing_adcsnap0_trig_offset_user_data_out,
      testing_adcsnap1_bram_data_out => testing_adcsnap1_bram_data_out,
      testing_adcsnap1_bram_addr => testing_adcsnap1_bram_addr,
      testing_adcsnap1_bram_data_in => testing_adcsnap1_bram_data_in,
      testing_adcsnap1_bram_we => testing_adcsnap1_bram_we,
      testing_adcsnap1_ctrl_user_data_out => testing_adcsnap1_ctrl_user_data_out,
      testing_adcsnap1_status_user_data_in => testing_adcsnap1_status_user_data_in,
      testing_adcsnap1_trig_offset_user_data_out => testing_adcsnap1_trig_offset_user_data_out,
      testing_adcsnap2_bram_data_out => testing_adcsnap2_bram_data_out,
      testing_adcsnap2_bram_addr => testing_adcsnap2_bram_addr,
      testing_adcsnap2_bram_data_in => testing_adcsnap2_bram_data_in,
      testing_adcsnap2_bram_we => testing_adcsnap2_bram_we,
      testing_adcsnap2_ctrl_user_data_out => testing_adcsnap2_ctrl_user_data_out,
      testing_adcsnap2_status_user_data_in => testing_adcsnap2_status_user_data_in,
      testing_adcsnap2_trig_offset_user_data_out => testing_adcsnap2_trig_offset_user_data_out,
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
      testing_snap_trig_user_data_out => testing_snap_trig_user_data_out,
      testing_sync_gen_sync_user_data_out => testing_sync_gen_sync_user_data_out,
      testing_sync_gen_sync_period_sel_user_data_out => testing_sync_gen_sync_period_sel_user_data_out,
      testing_sync_gen_sync_period_var_user_data_out => testing_sync_gen_sync_period_var_user_data_out
    );

end architecture STRUCTURE;

