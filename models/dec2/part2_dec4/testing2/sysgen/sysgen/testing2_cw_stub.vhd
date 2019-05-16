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

entity testing2_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 7.4074 ns (135.000135000135 Mhz)
      testing2_4narrow_data_out: in std_logic_vector(31 downto 0); 
      testing2_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
      testing2_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_asiaa_adc5g0_sync: in std_logic; 
      testing2_asiaa_adc5g0_user_data_i0: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i1: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i2: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i3: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i4: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i5: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i6: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i7: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q0: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q1: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q2: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q3: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q4: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q5: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q6: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q7: in std_logic_vector(7 downto 0); 
      testing2_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_fft_out1_data_out: in std_logic_vector(31 downto 0); 
      testing2_fft_out_data_out: in std_logic_vector(31 downto 0); 
      testing2_get_data_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_pfb_out_data_out: in std_logic_vector(63 downto 0); 
      testing2_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_4narrow_addr: out std_logic_vector(9 downto 0); 
      testing2_4narrow_data_in: out std_logic_vector(31 downto 0); 
      testing2_4narrow_we: out std_logic; 
      testing2_adcsnap0_bram_addr: out std_logic_vector(9 downto 0); 
      testing2_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
      testing2_adcsnap0_bram_we: out std_logic; 
      testing2_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out1_addr: out std_logic_vector(9 downto 0); 
      testing2_fft_out1_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out1_we: out std_logic; 
      testing2_fft_out_addr: out std_logic_vector(9 downto 0); 
      testing2_fft_out_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out_we: out std_logic; 
      testing2_pfb_out_addr: out std_logic_vector(9 downto 0); 
      testing2_pfb_out_data_in: out std_logic_vector(63 downto 0); 
      testing2_pfb_out_we: out std_logic
    );
end testing2_cw_stub;

architecture Behavioral of testing2_cw_stub is

  component testing2_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 7.4074 ns (135.000135000135 Mhz)
      testing2_4narrow_data_out: in std_logic_vector(31 downto 0); 
      testing2_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
      testing2_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_asiaa_adc5g0_sync: in std_logic; 
      testing2_asiaa_adc5g0_user_data_i0: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i1: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i2: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i3: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i4: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i5: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i6: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_i7: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q0: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q1: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q2: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q3: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q4: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q5: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q6: in std_logic_vector(7 downto 0); 
      testing2_asiaa_adc5g0_user_data_q7: in std_logic_vector(7 downto 0); 
      testing2_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_fft_out1_data_out: in std_logic_vector(31 downto 0); 
      testing2_fft_out_data_out: in std_logic_vector(31 downto 0); 
      testing2_get_data_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_pfb_out_data_out: in std_logic_vector(63 downto 0); 
      testing2_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
      testing2_4narrow_addr: out std_logic_vector(9 downto 0); 
      testing2_4narrow_data_in: out std_logic_vector(31 downto 0); 
      testing2_4narrow_we: out std_logic; 
      testing2_adcsnap0_bram_addr: out std_logic_vector(9 downto 0); 
      testing2_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
      testing2_adcsnap0_bram_we: out std_logic; 
      testing2_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out1_addr: out std_logic_vector(9 downto 0); 
      testing2_fft_out1_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out1_we: out std_logic; 
      testing2_fft_out_addr: out std_logic_vector(9 downto 0); 
      testing2_fft_out_data_in: out std_logic_vector(31 downto 0); 
      testing2_fft_out_we: out std_logic; 
      testing2_pfb_out_addr: out std_logic_vector(9 downto 0); 
      testing2_pfb_out_data_in: out std_logic_vector(63 downto 0); 
      testing2_pfb_out_we: out std_logic
    );
  end component;
begin

testing2_cw_i : testing2_cw
  port map (
    ce => ce,
    clk => clk,
    testing2_4narrow_data_out => testing2_4narrow_data_out,
    testing2_adc0_delay_user_data_out => testing2_adc0_delay_user_data_out,
    testing2_adcsnap0_bram_data_out => testing2_adcsnap0_bram_data_out,
    testing2_adcsnap0_ctrl_user_data_out => testing2_adcsnap0_ctrl_user_data_out,
    testing2_adcsnap0_trig_offset_user_data_out => testing2_adcsnap0_trig_offset_user_data_out,
    testing2_asiaa_adc5g0_sync => testing2_asiaa_adc5g0_sync,
    testing2_asiaa_adc5g0_user_data_i0 => testing2_asiaa_adc5g0_user_data_i0,
    testing2_asiaa_adc5g0_user_data_i1 => testing2_asiaa_adc5g0_user_data_i1,
    testing2_asiaa_adc5g0_user_data_i2 => testing2_asiaa_adc5g0_user_data_i2,
    testing2_asiaa_adc5g0_user_data_i3 => testing2_asiaa_adc5g0_user_data_i3,
    testing2_asiaa_adc5g0_user_data_i4 => testing2_asiaa_adc5g0_user_data_i4,
    testing2_asiaa_adc5g0_user_data_i5 => testing2_asiaa_adc5g0_user_data_i5,
    testing2_asiaa_adc5g0_user_data_i6 => testing2_asiaa_adc5g0_user_data_i6,
    testing2_asiaa_adc5g0_user_data_i7 => testing2_asiaa_adc5g0_user_data_i7,
    testing2_asiaa_adc5g0_user_data_q0 => testing2_asiaa_adc5g0_user_data_q0,
    testing2_asiaa_adc5g0_user_data_q1 => testing2_asiaa_adc5g0_user_data_q1,
    testing2_asiaa_adc5g0_user_data_q2 => testing2_asiaa_adc5g0_user_data_q2,
    testing2_asiaa_adc5g0_user_data_q3 => testing2_asiaa_adc5g0_user_data_q3,
    testing2_asiaa_adc5g0_user_data_q4 => testing2_asiaa_adc5g0_user_data_q4,
    testing2_asiaa_adc5g0_user_data_q5 => testing2_asiaa_adc5g0_user_data_q5,
    testing2_asiaa_adc5g0_user_data_q6 => testing2_asiaa_adc5g0_user_data_q6,
    testing2_asiaa_adc5g0_user_data_q7 => testing2_asiaa_adc5g0_user_data_q7,
    testing2_cnt_rst_user_data_out => testing2_cnt_rst_user_data_out,
    testing2_fft_out1_data_out => testing2_fft_out1_data_out,
    testing2_fft_out_data_out => testing2_fft_out_data_out,
    testing2_get_data_user_data_out => testing2_get_data_user_data_out,
    testing2_pfb_out_data_out => testing2_pfb_out_data_out,
    testing2_snap_trig_user_data_out => testing2_snap_trig_user_data_out,
    testing2_sync_gen_sync_period_sel_user_data_out => testing2_sync_gen_sync_period_sel_user_data_out,
    testing2_sync_gen_sync_period_var_user_data_out => testing2_sync_gen_sync_period_var_user_data_out,
    testing2_sync_gen_sync_user_data_out => testing2_sync_gen_sync_user_data_out,
    testing2_4narrow_addr => testing2_4narrow_addr,
    testing2_4narrow_data_in => testing2_4narrow_data_in,
    testing2_4narrow_we => testing2_4narrow_we,
    testing2_adcsnap0_bram_addr => testing2_adcsnap0_bram_addr,
    testing2_adcsnap0_bram_data_in => testing2_adcsnap0_bram_data_in,
    testing2_adcsnap0_bram_we => testing2_adcsnap0_bram_we,
    testing2_adcsnap0_status_user_data_in => testing2_adcsnap0_status_user_data_in,
    testing2_fft_out1_addr => testing2_fft_out1_addr,
    testing2_fft_out1_data_in => testing2_fft_out1_data_in,
    testing2_fft_out1_we => testing2_fft_out1_we,
    testing2_fft_out_addr => testing2_fft_out_addr,
    testing2_fft_out_data_in => testing2_fft_out_data_in,
    testing2_fft_out_we => testing2_fft_out_we,
    testing2_pfb_out_addr => testing2_pfb_out_addr,
    testing2_pfb_out_data_in => testing2_pfb_out_data_in,
    testing2_pfb_out_we => testing2_pfb_out_we);
end Behavioral;

