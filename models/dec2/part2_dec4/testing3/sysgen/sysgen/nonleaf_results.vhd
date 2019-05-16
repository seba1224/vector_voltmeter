library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/4narrow/calc_add"

entity calc_add_entity_1ef7896aaf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(9 downto 0); 
    out_x0: out std_logic_vector(9 downto 0)
  );
end calc_add_entity_1ef7896aaf;

architecture structural of calc_add_entity_1ef7896aaf is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal concat_y_net: std_logic_vector(9 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(9 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  slice2_y_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_1d98d96b58
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => slice2_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 9,
      x_width => 10,
      y_width => 9
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_4fe5face7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/4narrow/munge_in"

entity munge_in_entity_700d96d85b is
  port (
    din: in std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(31 downto 0)
  );
end munge_in_entity_700d96d85b;

architecture structural of munge_in_entity_700d96d85b is
  signal reinterpret6_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(31 downto 0);

begin
  reinterpret6_output_port_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  reinterpret_out: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret6_output_port_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/4narrow"

entity x4narrow_entity_57f0cfb062 is
  port (
    addr: in std_logic_vector(9 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(31 downto 0); 
    convert_we_x0: out std_logic
  );
end x4narrow_entity_57f0cfb062;

architecture structural of x4narrow_entity_57f0cfb062 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret6_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x1: std_logic_vector(9 downto 0);

begin
  slice2_y_net_x1 <= addr;
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  reinterpret6_output_port_net_x1 <= data_in;
  delay2_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_1ef7896aaf: entity work.calc_add_entity_1ef7896aaf
    port map (
      ce_1 => ce_1_sg_x1,
      clk_1 => clk_1_sg_x1,
      in_x0 => slice2_y_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => delay2_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_700d96d85b: entity work.munge_in_entity_700d96d85b
    port map (
      din => reinterpret6_output_port_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/4zone_narrow"

entity x4zone_narrow_entity_0ca64769d2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    rst: in std_logic; 
    sync: in std_logic; 
    dout_x0: out std_logic_vector(41 downto 0); 
    sync_out: out std_logic; 
    valid_x0: out std_logic
  );
end x4zone_narrow_entity_0ca64769d2;

architecture structural of x4zone_narrow_entity_0ca64769d2 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal convert_dout_net_x0: std_logic_vector(19 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net_x1: std_logic;
  signal delay_q_net_x2: std_logic;
  signal dout: std_logic_vector(41 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal rdy: std_logic;
  signal re_gister_q_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal rfd: std_logic;
  signal slice1_y_net_x0: std_logic;
  signal valid: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  convert_dout_net_x0 <= din;
  slice1_y_net_x0 <= rst;
  delay_q_net_x1 <= sync;
  dout_x0 <= reinterpret_output_port_net_x0;
  sync_out <= delay_q_net_x2;
  valid_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 71,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x2
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => delay_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  fir_compiler_5_0: entity work.xlfir_compiler_7af4c9db30a2b72459860f2765c257d2
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      din => convert_dout_net_x0,
      nd => re_gister_q_net,
      rst => slice1_y_net_x0,
      src_ce => ce_1_sg_x2,
      src_clk => clk_1_sg_x2,
      data_valid => valid,
      dout => dout,
      rdy => rdy,
      rfd => rfd
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => rdy,
      d1(0) => valid,
      y(0) => logical_y_net_x0
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay1_q_net,
      d1(0) => rfd,
      y(0) => logical1_y_net
    );

  re_gister: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => delay_q_net_x1,
      en(0) => delay_q_net_x1,
      rst(0) => slice1_y_net_x0,
      q(0) => re_gister_q_net
    );

  reinterpret: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => dout,
      output_port => reinterpret_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adc0_delay"

entity adc0_delay_entity_c4a610e0e4 is
  port (
    testing3_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end adc0_delay_entity_c4a610e0e4;

architecture structural of adc0_delay_entity_c4a610e0e4 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_adc0_delay_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_adc0_delay_user_data_out_net_x0 <= testing3_adc0_delay_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_adc0_delay_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/add_gen/edge_detect"

entity edge_detect_entity_12e423b330 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_12e423b330;

architecture structural of edge_detect_entity_12e423b330 is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  slice3_y_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => slice3_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_f6397bdee1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip(0) => slice3_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/add_gen"

entity add_gen_entity_24b9dd1d32 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cont: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    we: in std_logic; 
    add: out std_logic_vector(9 downto 0); 
    dout: out std_logic_vector(127 downto 0); 
    status: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end add_gen_entity_24b9dd1d32;

architecture structural of add_gen_entity_24b9dd1d32 is
  signal add_gen_op_net: std_logic_vector(14 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(16 downto 0);
  signal delay10_q_net_x0: std_logic;
  signal delay16_q_net_x0: std_logic;
  signal delay1_q_net: std_logic_vector(13 downto 0);
  signal delay3_q_net: std_logic;
  signal delay3_q_net_x1: std_logic;
  signal delay4_q_net: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay9_q_net_x0: std_logic_vector(127 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal register5_q_net: std_logic;
  signal register_q_net_x0: std_logic;
  signal shift_op_net: std_logic_vector(16 downto 0);
  signal slice1_y_net: std_logic_vector(13 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  delay10_q_net_x0 <= cont;
  delay9_q_net_x0 <= din;
  register_q_net_x0 <= go;
  delay3_q_net_x1 <= init;
  delay16_q_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_testing3
    generic map (
      core_name0 => "cntr_11_0_e45fdd6bbd8931af",
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en(0) => logical6_y_net_x0,
      rst(0) => delay4_q_net,
      op => add_gen_op_net
    );

  concat: entity work.concat_350c391ba7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => shift_op_net,
      in1(0) => inverter_op_net,
      in2 => delay1_q_net,
      y => concat_y_net_x0
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 17,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d(0) => delay10_q_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d(0) => delay3_q_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d => delay9_q_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_12e423b330: entity work.edge_detect_entity_12e423b330
    port map (
      ce_1 => ce_1_sg_x4,
      clk_1 => clk_1_sg_x4,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      d0(0) => delay16_q_net_x0,
      d1(0) => register_q_net_x0,
      y(0) => logical1_y_net
    );

  logical4: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay3_q_net,
      d1(0) => inverter1_op_net,
      y(0) => logical4_y_net
    );

  logical6: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register5_q_net,
      d1(0) => logical4_y_net,
      d2(0) => logical1_y_net,
      y(0) => logical6_y_net_x0
    );

  register5: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"1"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_df05fba441
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip => convert_dout_net,
      op => shift_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 13,
      x_width => 15,
      y_width => 14
    )
    port map (
      x => add_gen_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 13,
      x_width => 15,
      y_width => 10
    )
    port map (
      x => add_gen_op_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 14,
      new_msb => 14,
      x_width => 15,
      y_width => 1
    )
    port map (
      x => add_gen_op_net,
      y(0) => slice3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/basic_ctrl/dram_munge"

entity dram_munge_entity_f1bbd21bd6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    init: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    we_o: out std_logic
  );
end dram_munge_entity_f1bbd21bd6;

architecture structural of dram_munge_entity_f1bbd21bd6 is
  signal cast_dout_net_x0: std_logic_vector(127 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal con0_op_net: std_logic_vector(1 downto 0);
  signal con1_op_net: std_logic_vector(1 downto 0);
  signal con2_op_net: std_logic_vector(1 downto 0);
  signal con3_op_net: std_logic_vector(1 downto 0);
  signal concat1_y_net: std_logic_vector(271 downto 0);
  signal concat_y_net: std_logic_vector(271 downto 0);
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal data_choice_y_net_x0: std_logic_vector(127 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal dout_count_op_net: std_logic;
  signal dram_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal input_count_op_net: std_logic_vector(1 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x0: std_logic_vector(271 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal register1_q_net: std_logic_vector(127 downto 0);
  signal register2_q_net: std_logic_vector(127 downto 0);
  signal register3_q_net: std_logic_vector(127 downto 0);
  signal register_q_net: std_logic_vector(127 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x0: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  cast_dout_net_x0 <= din;
  edge_op_y_net_x0 <= init;
  mux1_y_net_x1 <= we;
  dout <= data_choice_y_net_x0;
  we_o <= we_choice_y_net_x0;

  con0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con0_op_net
    );

  con1: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con1_op_net
    );

  con2: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con2_op_net
    );

  con3: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => con3_op_net
    );

  concat: entity work.concat_fd1ce36c4a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => register_q_net,
      in2 => constant_op_net,
      in3 => register1_q_net,
      y => concat_y_net
    );

  concat1: entity work.concat_fd1ce36c4a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => register2_q_net,
      in2 => constant_op_net,
      in3 => register3_q_net,
      y => concat1_y_net
    );

  constant_x0: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  data_choice: entity work.mux_5441ad2d93
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => cast_dout_net_x0,
      d1 => mux1_y_net_x0,
      sel(0) => dram_op_net,
      y => data_choice_y_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => logical_y_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  dout_count: entity work.counter_caa2b01eef
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en(0) => logical1_y_net,
      rst(0) => edge_op_y_net_x0,
      op(0) => dout_count_op_net
    );

  dram: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => dram_op_net
    );

  input_count: entity work.xlcounter_free_testing3
    generic map (
      core_name0 => "cntr_11_0_541f86689cddfa59",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en(0) => mux1_y_net_x1,
      rst(0) => edge_op_y_net_x0,
      op => input_count_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      d0(0) => relational3_op_net,
      d1(0) => mux1_y_net_x1,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net,
      d1(0) => delay_q_net,
      y(0) => logical1_y_net
    );

  mux1: entity work.mux_ddf27bda35
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      d0 => concat_y_net,
      d1 => concat1_y_net,
      sel(0) => dout_count_op_net,
      y => mux1_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => cast_dout_net_x0,
      en(0) => relational1_op_net,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => cast_dout_net_x0,
      en(0) => relational2_op_net,
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => cast_dout_net_x0,
      en(0) => relational3_op_net,
      rst => "0",
      q => register3_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => cast_dout_net_x0,
      en(0) => relational_op_net,
      rst => "0",
      q => register_q_net
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con0_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_5f1eb17108
    port map (
      a => input_count_op_net,
      b => con3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  we_choice: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux1_y_net_x1,
      d1(0) => delay1_q_net,
      sel(0) => dram_op_net,
      y(0) => we_choice_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/basic_ctrl/edge_detect"

entity edge_detect_entity_ce1f18bad6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_ce1f18bad6;

architecture structural of edge_detect_entity_ce1f18bad6 is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal inverter_op_net: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  delay1_q_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x1;

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      d(0) => delay1_q_net_x0,
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => edge_op_y_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => delay1_q_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/basic_ctrl"

entity basic_ctrl_entity_cd810f150f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ctrl: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(127 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    go: out std_logic; 
    init: out std_logic; 
    we_o: out std_logic
  );
end basic_ctrl_entity_cd810f150f;

architecture structural of basic_ctrl_entity_cd810f150f is
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant8_op_net_x0: std_logic;
  signal constant_op_net: std_logic;
  signal data_choice_y_net_x1: std_logic_vector(127 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal enable_y_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net: std_logic;
  signal register1_q_net: std_logic;
  signal register6_q_net_x0: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_y_net_x0: std_logic;
  signal trig_src_y_net: std_logic;
  signal valid_src_y_net: std_logic;
  signal we_choice_y_net_x1: std_logic;

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  reint1_output_port_net_x0 <= ctrl;
  cast_dout_net_x1 <= din;
  slice_y_net_x0 <= trig;
  constant8_op_net_x0 <= we;
  dout <= data_choice_y_net_x1;
  go <= register6_q_net_x0;
  init <= edge_op_y_net_x2;
  we_o <= we_choice_y_net_x1;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => enable_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => trig_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => valid_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  dram_munge_f1bbd21bd6: entity work.dram_munge_entity_f1bbd21bd6
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      din => cast_dout_net_x1,
      init => edge_op_y_net_x2,
      we => mux1_y_net_x1,
      dout => data_choice_y_net_x1,
      we_o => we_choice_y_net_x1
    );

  edge_detect_ce1f18bad6: entity work.edge_detect_entity_ce1f18bad6
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in_x0 => delay1_q_net_x0,
      out_x0 => edge_op_y_net_x2
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => enable_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => edge_op_y_net_x2,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux2_y_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  mux1: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant8_op_net_x0,
      d1(0) => constant2_op_net,
      sel(0) => delay3_q_net,
      y(0) => mux1_y_net_x1
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net_x0,
      d1(0) => constant1_op_net,
      sel(0) => delay2_q_net,
      y(0) => mux2_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => constant_op_net,
      en(0) => edge_op_y_net_x2,
      rst(0) => logical_y_net,
      q(0) => register1_q_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => mux2_y_net,
      en(0) => register1_q_net,
      rst(0) => edge_op_y_net_x2,
      q(0) => register6_q_net_x0
    );

  trig_src: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => trig_src_y_net
    );

  valid_src: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => valid_src_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/bram/munge_in/join"

entity join_entity_19f1f3ddf2 is
  port (
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    in3: in std_logic_vector(31 downto 0); 
    in4: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(127 downto 0)
  );
end join_entity_19f1f3ddf2;

architecture structural of join_entity_19f1f3ddf2 is
  signal concatenate_y_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x1: std_logic_vector(31 downto 0);

begin
  reinterpret1_output_port_net_x1 <= in1;
  reinterpret2_output_port_net_x1 <= in2;
  reinterpret3_output_port_net_x1 <= in3;
  reinterpret4_output_port_net_x1 <= in4;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_b11ec1c0d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret1_output_port_net_x1,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret2_output_port_net_x1,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret3_output_port_net_x1,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret4_output_port_net_x1,
      output_port => reinterpret4_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/bram/munge_in/split"

entity split_entity_6534cdbe94 is
  port (
    bus_in: in std_logic_vector(127 downto 0); 
    lsb_out1: out std_logic_vector(31 downto 0); 
    msb_out4: out std_logic_vector(31 downto 0); 
    out2: out std_logic_vector(31 downto 0); 
    out3: out std_logic_vector(31 downto 0)
  );
end split_entity_6534cdbe94;

architecture structural of split_entity_6534cdbe94 is
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(127 downto 0);
  signal slice1_y_net: std_logic_vector(31 downto 0);
  signal slice2_y_net: std_logic_vector(31 downto 0);
  signal slice3_y_net: std_logic_vector(31 downto 0);
  signal slice4_y_net: std_logic_vector(31 downto 0);

begin
  reinterpret_output_port_net_x0 <= bus_in;
  lsb_out1 <= reinterpret1_output_port_net_x2;
  msb_out4 <= reinterpret4_output_port_net_x2;
  out2 <= reinterpret2_output_port_net_x2;
  out3 <= reinterpret3_output_port_net_x2;

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret1_output_port_net_x2
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_y_net,
      output_port => reinterpret2_output_port_net_x2
    );

  reinterpret3: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice3_y_net,
      output_port => reinterpret3_output_port_net_x2
    );

  reinterpret4: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice4_y_net,
      output_port => reinterpret4_output_port_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 64,
      new_msb => 95,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 96,
      new_msb => 127,
      x_width => 128,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/bram/munge_in"

entity munge_in_entity_d8600055f2 is
  port (
    din: in std_logic_vector(127 downto 0); 
    dout: out std_logic_vector(127 downto 0)
  );
end munge_in_entity_d8600055f2;

architecture structural of munge_in_entity_d8600055f2 is
  signal concatenate_y_net_x0: std_logic_vector(127 downto 0);
  signal dat_del_q_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret3_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret4_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(127 downto 0);

begin
  dat_del_q_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  join_19f1f3ddf2: entity work.join_entity_19f1f3ddf2
    port map (
      in1 => reinterpret1_output_port_net_x2,
      in2 => reinterpret2_output_port_net_x2,
      in3 => reinterpret3_output_port_net_x2,
      in4 => reinterpret4_output_port_net_x2,
      bus_out => concatenate_y_net_x0
    );

  reinterpret: entity work.reinterpret_28b9ecc6fc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => dat_del_q_net_x0,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret_out: entity work.reinterpret_28b9ecc6fc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concatenate_y_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

  split_6534cdbe94: entity work.split_entity_6534cdbe94
    port map (
      bus_in => reinterpret_output_port_net_x0,
      lsb_out1 => reinterpret1_output_port_net_x2,
      msb_out4 => reinterpret4_output_port_net_x2,
      out2 => reinterpret2_output_port_net_x2,
      out3 => reinterpret3_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/bram"

entity bram_entity_f08b8a3836 is
  port (
    addr: in std_logic_vector(9 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(127 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(127 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_entity_f08b8a3836;

architecture structural of bram_entity_f08b8a3836 is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal we_del_q_net_x0: std_logic;

begin
  add_del_q_net_x1 <= addr;
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  dat_del_q_net_x1 <= data_in;
  we_del_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_0233fee657: entity work.calc_add_entity_1ef7896aaf
    port map (
      ce_1 => ce_1_sg_x9,
      clk_1 => clk_1_sg_x9,
      in_x0 => add_del_q_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 128,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      din(0) => we_del_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_d8600055f2: entity work.munge_in_entity_d8600055f2
    port map (
      din => dat_del_q_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/ctrl"

entity ctrl_entity_0c8afad479 is
  port (
    testing3_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_0c8afad479;

architecture structural of ctrl_entity_0c8afad479 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_adcsnap0_ctrl_user_data_out_net_x0 <= testing3_adcsnap0_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_adcsnap0_ctrl_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/delay"

entity delay_entity_9a6e69e386 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    stopi: in std_logic; 
    we: in std_logic; 
    del_go: out std_logic; 
    del_init: out std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    stop: out std_logic; 
    we_o: out std_logic
  );
end delay_entity_9a6e69e386;

architecture structural of delay_entity_9a6e69e386 is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic_vector(31 downto 0);
  signal delay7_q_net: std_logic_vector(31 downto 0);
  signal delay8_q_net: std_logic;
  signal delay9_q_net_x1: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical5_y_net: std_logic;
  signal never_op_net_x0: std_logic;
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x2: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  reint1_output_port_net_x0 <= delay;
  data_choice_y_net_x2 <= din;
  register6_q_net_x1 <= go;
  edge_op_y_net_x3 <= init;
  never_op_net_x0 <= stopi;
  we_choice_y_net_x2 <= we;
  del_go <= register_q_net_x1;
  del_init <= delay3_q_net_x2;
  dout <= delay9_q_net_x1;
  stop <= delay10_q_net_x1;
  we_o <= delay16_q_net_x1;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  counter: entity work.xlcounter_free_testing3
    generic map (
      core_name0 => "cntr_11_0_878d64cddecff8f4",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => delay4_q_net,
      op => counter_op_net
    );

  delay10: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay10_q_net_x1
    );

  delay16: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => we_choice_y_net_x2,
      q(0) => delay16_q_net_x1
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay5_q_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay2_q_net,
      q(0) => delay3_q_net_x2
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => edge_op_y_net_x3,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay8_q_net,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d => counter_op_net,
      q => delay6_q_net
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d => reint1_output_port_net_x0,
      q => delay7_q_net
    );

  delay8: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay8_q_net
    );

  delay9: entity work.delay_6fcf35ba77
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d => data_choice_y_net_x2,
      q => delay9_q_net_x1
    );

  logical5: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      d0(0) => register6_q_net_x1,
      d1(0) => we_choice_y_net_x2,
      y(0) => logical5_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => constant_op_net,
      en(0) => relational_op_net,
      rst(0) => delay2_q_net,
      q(0) => register_q_net_x1
    );

  relational: entity work.relational_34fc311f5b
    port map (
      a => delay6_q_net,
      b => delay7_q_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/status"

entity status_entity_1b62310822 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end status_entity_1b62310822;

architecture structural of status_entity_1b62310822 is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  concat_y_net_x1 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => concat_y_net_x1,
      dout => assert_reg_dout_net
    );

  cast_gw: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => reint1_output_port_net,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_reg_dout_net,
      output_port => reint1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0/trig_offset"

entity trig_offset_entity_6c3e6f09a5 is
  port (
    testing3_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end trig_offset_entity_6c3e6f09a5;

architecture structural of trig_offset_entity_6c3e6f09a5 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_trig_offset_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_adcsnap0_trig_offset_user_data_out_net_x0 <= testing3_adcsnap0_trig_offset_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_adcsnap0_trig_offset_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/adcsnap0"

entity adcsnap0_entity_d1dca95e37 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    testing3_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(9 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end adcsnap0_entity_d1dca95e37;

architecture structural of adcsnap0_entity_d1dca95e37 is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant8_op_net_x1: std_logic;
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay9_q_net_x1: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register2_q_net_x0: std_logic_vector(127 downto 0);
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(127 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);
  signal slice_y_net_x1: std_logic;
  signal testing3_adcsnap0_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_trig_offset_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  register2_q_net_x0 <= din;
  testing3_adcsnap0_ctrl_user_data_out_net_x1 <= testing3_adcsnap0_ctrl_user_data_out;
  testing3_adcsnap0_trig_offset_user_data_out_net_x1 <= testing3_adcsnap0_trig_offset_user_data_out;
  slice_y_net_x1 <= trig;
  constant8_op_net_x1 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_24b9dd1d32: entity work.add_gen_entity_24b9dd1d32
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      cont => delay10_q_net_x1,
      din => delay9_q_net_x1,
      go => register_q_net_x1,
      init => delay3_q_net_x2,
      we => delay16_q_net_x1,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_cd810f150f: entity work.basic_ctrl_entity_cd810f150f
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => slice_y_net_x1,
      we => constant8_op_net_x1,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      we_o => we_choice_y_net_x2
    );

  bram_f08b8a3836: entity work.bram_entity_f08b8a3836
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      data_in => dat_del_q_net_x1,
      we => we_del_q_net_x0,
      convert_addr_x0 => convert_addr_dout_net_x1,
      convert_din1_x0 => convert_din1_dout_net_x1,
      convert_we_x0 => convert_we_dout_net_x1
    );

  cast: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 128,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_0c8afad479: entity work.ctrl_entity_0c8afad479
    port map (
      testing3_adcsnap0_ctrl_user_data_out => testing3_adcsnap0_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  delay_9a6e69e386: entity work.delay_entity_9a6e69e386
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      delay => reint1_output_port_net_x2,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      stopi => never_op_net_x0,
      we => we_choice_y_net_x2,
      del_go => register_q_net_x1,
      del_init => delay3_q_net_x2,
      dout => delay9_q_net_x1,
      stop => delay10_q_net_x1,
      we_o => delay16_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_28b9ecc6fc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register2_q_net_x0,
      output_port => ri_output_port_net
    );

  status_1b62310822: entity work.status_entity_1b62310822
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  trig_offset_6c3e6f09a5: entity work.trig_offset_entity_6c3e6f09a5
    port map (
      testing3_adcsnap0_trig_offset_user_data_out => testing3_adcsnap0_trig_offset_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/bus_create"

entity bus_create_entity_4dc4985e4c is
  port (
    in1: in std_logic_vector(7 downto 0); 
    in10: in std_logic_vector(7 downto 0); 
    in11: in std_logic_vector(7 downto 0); 
    in12: in std_logic_vector(7 downto 0); 
    in13: in std_logic_vector(7 downto 0); 
    in14: in std_logic_vector(7 downto 0); 
    in15: in std_logic_vector(7 downto 0); 
    in16: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    in5: in std_logic_vector(7 downto 0); 
    in6: in std_logic_vector(7 downto 0); 
    in7: in std_logic_vector(7 downto 0); 
    in8: in std_logic_vector(7 downto 0); 
    in9: in std_logic_vector(7 downto 0); 
    bus_out: out std_logic_vector(127 downto 0)
  );
end bus_create_entity_4dc4985e4c;

architecture structural of bus_create_entity_4dc4985e4c is
  signal concatenate_y_net_x0: std_logic_vector(127 downto 0);
  signal mux104_y_net_x0: std_logic_vector(7 downto 0);
  signal mux114_y_net_x0: std_logic_vector(7 downto 0);
  signal mux124_y_net_x0: std_logic_vector(7 downto 0);
  signal mux134_y_net_x0: std_logic_vector(7 downto 0);
  signal mux144_y_net_x0: std_logic_vector(7 downto 0);
  signal mux14_y_net_x0: std_logic_vector(7 downto 0);
  signal mux154_y_net_x0: std_logic_vector(7 downto 0);
  signal mux164_y_net_x0: std_logic_vector(7 downto 0);
  signal mux24_y_net_x0: std_logic_vector(7 downto 0);
  signal mux34_y_net_x0: std_logic_vector(7 downto 0);
  signal mux44_y_net_x0: std_logic_vector(7 downto 0);
  signal mux54_y_net_x0: std_logic_vector(7 downto 0);
  signal mux64_y_net_x0: std_logic_vector(7 downto 0);
  signal mux74_y_net_x0: std_logic_vector(7 downto 0);
  signal mux84_y_net_x0: std_logic_vector(7 downto 0);
  signal mux94_y_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret10_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret11_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret12_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret13_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret14_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret15_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret16_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret5_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret6_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret7_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret8_output_port_net: std_logic_vector(7 downto 0);
  signal reinterpret9_output_port_net: std_logic_vector(7 downto 0);

begin
  mux164_y_net_x0 <= in1;
  mux74_y_net_x0 <= in10;
  mux64_y_net_x0 <= in11;
  mux54_y_net_x0 <= in12;
  mux44_y_net_x0 <= in13;
  mux34_y_net_x0 <= in14;
  mux24_y_net_x0 <= in15;
  mux14_y_net_x0 <= in16;
  mux154_y_net_x0 <= in2;
  mux144_y_net_x0 <= in3;
  mux134_y_net_x0 <= in4;
  mux124_y_net_x0 <= in5;
  mux114_y_net_x0 <= in6;
  mux104_y_net_x0 <= in7;
  mux94_y_net_x0 <= in8;
  mux84_y_net_x0 <= in9;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_96b2f1cb93
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in10 => reinterpret11_output_port_net,
      in11 => reinterpret12_output_port_net,
      in12 => reinterpret13_output_port_net,
      in13 => reinterpret14_output_port_net,
      in14 => reinterpret15_output_port_net,
      in15 => reinterpret16_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      in4 => reinterpret5_output_port_net,
      in5 => reinterpret6_output_port_net,
      in6 => reinterpret7_output_port_net,
      in7 => reinterpret8_output_port_net,
      in8 => reinterpret9_output_port_net,
      in9 => reinterpret10_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux164_y_net_x0,
      output_port => reinterpret1_output_port_net
    );

  reinterpret10: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux74_y_net_x0,
      output_port => reinterpret10_output_port_net
    );

  reinterpret11: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux64_y_net_x0,
      output_port => reinterpret11_output_port_net
    );

  reinterpret12: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux54_y_net_x0,
      output_port => reinterpret12_output_port_net
    );

  reinterpret13: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux44_y_net_x0,
      output_port => reinterpret13_output_port_net
    );

  reinterpret14: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux34_y_net_x0,
      output_port => reinterpret14_output_port_net
    );

  reinterpret15: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux24_y_net_x0,
      output_port => reinterpret15_output_port_net
    );

  reinterpret16: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux14_y_net_x0,
      output_port => reinterpret16_output_port_net
    );

  reinterpret2: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux154_y_net_x0,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux144_y_net_x0,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux134_y_net_x0,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux124_y_net_x0,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux114_y_net_x0,
      output_port => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux104_y_net_x0,
      output_port => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux94_y_net_x0,
      output_port => reinterpret8_output_port_net
    );

  reinterpret9: entity work.reinterpret_d51df7ac30
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux84_y_net_x0,
      output_port => reinterpret9_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/c_to_ri"

entity c_to_ri_entity_f1cbb7ea9b is
  port (
    c: in std_logic_vector(59 downto 0); 
    re: out std_logic_vector(29 downto 0)
  );
end c_to_ri_entity_f1cbb7ea9b;

architecture structural of c_to_ri_entity_f1cbb7ea9b is
  signal concat_y_net_x0: std_logic_vector(59 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(29 downto 0);
  signal slice_re_y_net: std_logic_vector(29 downto 0);

begin
  concat_y_net_x0 <= c;
  re <= force_re_output_port_net_x0;

  force_re: entity work.reinterpret_eb03bc3377
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_re_y_net,
      output_port => force_re_output_port_net_x0
    );

  slice_re: entity work.xlslice
    generic map (
      new_lsb => 30,
      new_msb => 59,
      x_width => 60,
      y_width => 30
    )
    port map (
      x => concat_y_net_x0,
      y => slice_re_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/cnt_rst"

entity cnt_rst_entity_c29e142226 is
  port (
    testing3_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic
  );
end cnt_rst_entity_c29e142226;

architecture structural of cnt_rst_entity_c29e142226 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal slice_reg_y_net_x0: std_logic;
  signal testing3_cnt_rst_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_cnt_rst_user_data_out_net_x0 <= testing3_cnt_rst_user_data_out;
  in_reg <= slice_reg_y_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_cnt_rst_user_data_out_net_x0,
      q => io_delay_q_net
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => io_delay_q_net,
      y(0) => slice_reg_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/conv_bus0/conv_ob0"

entity conv_ob0_entity_b2243eb7c0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    i: in std_logic_vector(7 downto 0); 
    q: out std_logic_vector(7 downto 0)
  );
end conv_ob0_entity_b2243eb7c0;

architecture structural of conv_ob0_entity_b2243eb7c0 is
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal concat_y_net: std_logic_vector(7 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(6 downto 0);
  signal slice_y_net: std_logic;
  signal testing3_asiaa_adc5g0_user_data_i0_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  testing3_asiaa_adc5g0_user_data_i0_net_x0 <= i;
  q <= reinterpret_output_port_net_x0;

  concat: entity work.concat_83e473517e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => inverter_op_net,
      in1 => slice1_y_net,
      y => concat_y_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => slice_y_net,
      op(0) => inverter_op_net
    );

  reinterpret: entity work.reinterpret_4389dc89bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concat_y_net,
      output_port => reinterpret_output_port_net_x0
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 7,
      new_msb => 7,
      x_width => 8,
      y_width => 1
    )
    port map (
      x => testing3_asiaa_adc5g0_user_data_i0_net_x0,
      y(0) => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 6,
      x_width => 8,
      y_width => 7
    )
    port map (
      x => testing3_asiaa_adc5g0_user_data_i0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/conv_bus0"

entity conv_bus0_entity_e4846a5851 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    i0: in std_logic_vector(7 downto 0); 
    i1: in std_logic_vector(7 downto 0); 
    i10: in std_logic_vector(7 downto 0); 
    i11: in std_logic_vector(7 downto 0); 
    i12: in std_logic_vector(7 downto 0); 
    i13: in std_logic_vector(7 downto 0); 
    i14: in std_logic_vector(7 downto 0); 
    i15: in std_logic_vector(7 downto 0); 
    i2: in std_logic_vector(7 downto 0); 
    i3: in std_logic_vector(7 downto 0); 
    i4: in std_logic_vector(7 downto 0); 
    i5: in std_logic_vector(7 downto 0); 
    i6: in std_logic_vector(7 downto 0); 
    i7: in std_logic_vector(7 downto 0); 
    i8: in std_logic_vector(7 downto 0); 
    i9: in std_logic_vector(7 downto 0); 
    q0: out std_logic_vector(7 downto 0); 
    q1: out std_logic_vector(7 downto 0); 
    q10: out std_logic_vector(7 downto 0); 
    q11: out std_logic_vector(7 downto 0); 
    q12: out std_logic_vector(7 downto 0); 
    q13: out std_logic_vector(7 downto 0); 
    q14: out std_logic_vector(7 downto 0); 
    q15: out std_logic_vector(7 downto 0); 
    q2: out std_logic_vector(7 downto 0); 
    q3: out std_logic_vector(7 downto 0); 
    q4: out std_logic_vector(7 downto 0); 
    q5: out std_logic_vector(7 downto 0); 
    q6: out std_logic_vector(7 downto 0); 
    q7: out std_logic_vector(7 downto 0); 
    q8: out std_logic_vector(7 downto 0); 
    q9: out std_logic_vector(7 downto 0)
  );
end conv_bus0_entity_e4846a5851;

architecture structural of conv_bus0_entity_e4846a5851 is
  signal ce_1_sg_x29: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal reinterpret_output_port_net_x16: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x19: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x20: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x21: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x22: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x23: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x24: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x25: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x26: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x27: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x28: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x29: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x30: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x31: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i0_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i1_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i2_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i3_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i4_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i5_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i6_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i7_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q0_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q1_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q2_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q3_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q4_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q5_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q6_net_x1: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q7_net_x1: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x29 <= ce_1;
  clk_1_sg_x29 <= clk_1;
  testing3_asiaa_adc5g0_user_data_i0_net_x1 <= i0;
  testing3_asiaa_adc5g0_user_data_i1_net_x1 <= i1;
  testing3_asiaa_adc5g0_user_data_q2_net_x1 <= i10;
  testing3_asiaa_adc5g0_user_data_q3_net_x1 <= i11;
  testing3_asiaa_adc5g0_user_data_q4_net_x1 <= i12;
  testing3_asiaa_adc5g0_user_data_q5_net_x1 <= i13;
  testing3_asiaa_adc5g0_user_data_q6_net_x1 <= i14;
  testing3_asiaa_adc5g0_user_data_q7_net_x1 <= i15;
  testing3_asiaa_adc5g0_user_data_i2_net_x1 <= i2;
  testing3_asiaa_adc5g0_user_data_i3_net_x1 <= i3;
  testing3_asiaa_adc5g0_user_data_i4_net_x1 <= i4;
  testing3_asiaa_adc5g0_user_data_i5_net_x1 <= i5;
  testing3_asiaa_adc5g0_user_data_i6_net_x1 <= i6;
  testing3_asiaa_adc5g0_user_data_i7_net_x1 <= i7;
  testing3_asiaa_adc5g0_user_data_q0_net_x1 <= i8;
  testing3_asiaa_adc5g0_user_data_q1_net_x1 <= i9;
  q0 <= reinterpret_output_port_net_x16;
  q1 <= reinterpret_output_port_net_x17;
  q10 <= reinterpret_output_port_net_x18;
  q11 <= reinterpret_output_port_net_x19;
  q12 <= reinterpret_output_port_net_x20;
  q13 <= reinterpret_output_port_net_x21;
  q14 <= reinterpret_output_port_net_x22;
  q15 <= reinterpret_output_port_net_x23;
  q2 <= reinterpret_output_port_net_x24;
  q3 <= reinterpret_output_port_net_x25;
  q4 <= reinterpret_output_port_net_x26;
  q5 <= reinterpret_output_port_net_x27;
  q6 <= reinterpret_output_port_net_x28;
  q7 <= reinterpret_output_port_net_x29;
  q8 <= reinterpret_output_port_net_x30;
  q9 <= reinterpret_output_port_net_x31;

  conv_ob0_b2243eb7c0: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i0_net_x1,
      q => reinterpret_output_port_net_x16
    );

  conv_ob10_2048b74fab: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q2_net_x1,
      q => reinterpret_output_port_net_x18
    );

  conv_ob11_3c7ca33fb4: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q3_net_x1,
      q => reinterpret_output_port_net_x19
    );

  conv_ob12_48390a05c4: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q4_net_x1,
      q => reinterpret_output_port_net_x20
    );

  conv_ob13_f1124332d3: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q5_net_x1,
      q => reinterpret_output_port_net_x21
    );

  conv_ob14_19e15f1a75: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q6_net_x1,
      q => reinterpret_output_port_net_x22
    );

  conv_ob15_dbf6f280b2: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q7_net_x1,
      q => reinterpret_output_port_net_x23
    );

  conv_ob1_460dbfdaf9: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i1_net_x1,
      q => reinterpret_output_port_net_x17
    );

  conv_ob2_f3113cda03: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i2_net_x1,
      q => reinterpret_output_port_net_x24
    );

  conv_ob3_ad192cec8c: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i3_net_x1,
      q => reinterpret_output_port_net_x25
    );

  conv_ob4_e287ee7cac: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i4_net_x1,
      q => reinterpret_output_port_net_x26
    );

  conv_ob5_16fd5861d2: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i5_net_x1,
      q => reinterpret_output_port_net_x27
    );

  conv_ob6_72b4897e0e: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i6_net_x1,
      q => reinterpret_output_port_net_x28
    );

  conv_ob7_6e55c41653: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_i7_net_x1,
      q => reinterpret_output_port_net_x29
    );

  conv_ob8_978e69e4c7: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q0_net_x1,
      q => reinterpret_output_port_net_x30
    );

  conv_ob9_ee256045b6: entity work.conv_ob0_entity_b2243eb7c0
    port map (
      ce_1 => ce_1_sg_x29,
      clk_1 => clk_1_sg_x29,
      i => testing3_asiaa_adc5g0_user_data_q1_net_x1,
      q => reinterpret_output_port_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/adder_tree1"

entity adder_tree1_entity_13895861c8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(32 downto 0); 
    din10: in std_logic_vector(32 downto 0); 
    din11: in std_logic_vector(32 downto 0); 
    din12: in std_logic_vector(32 downto 0); 
    din13: in std_logic_vector(32 downto 0); 
    din14: in std_logic_vector(32 downto 0); 
    din15: in std_logic_vector(32 downto 0); 
    din16: in std_logic_vector(32 downto 0); 
    din2: in std_logic_vector(32 downto 0); 
    din3: in std_logic_vector(32 downto 0); 
    din4: in std_logic_vector(32 downto 0); 
    din5: in std_logic_vector(32 downto 0); 
    din6: in std_logic_vector(32 downto 0); 
    din7: in std_logic_vector(32 downto 0); 
    din8: in std_logic_vector(32 downto 0); 
    din9: in std_logic_vector(32 downto 0); 
    dout: out std_logic_vector(36 downto 0)
  );
end adder_tree1_entity_13895861c8;

architecture structural of adder_tree1_entity_13895861c8 is
  signal addr10_s_net: std_logic_vector(34 downto 0);
  signal addr11_s_net: std_logic_vector(34 downto 0);
  signal addr12_s_net: std_logic_vector(34 downto 0);
  signal addr13_s_net: std_logic_vector(35 downto 0);
  signal addr14_s_net: std_logic_vector(35 downto 0);
  signal addr15_s_net_x0: std_logic_vector(36 downto 0);
  signal addr1_s_net: std_logic_vector(33 downto 0);
  signal addr2_s_net: std_logic_vector(33 downto 0);
  signal addr3_s_net: std_logic_vector(33 downto 0);
  signal addr4_s_net: std_logic_vector(33 downto 0);
  signal addr5_s_net: std_logic_vector(33 downto 0);
  signal addr6_s_net: std_logic_vector(33 downto 0);
  signal addr7_s_net: std_logic_vector(33 downto 0);
  signal addr8_s_net: std_logic_vector(33 downto 0);
  signal addr9_s_net: std_logic_vector(34 downto 0);
  signal ce_1_sg_x30: std_logic;
  signal clk_1_sg_x30: std_logic;
  signal mult0_p_net_x15: std_logic_vector(32 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);

begin
  ce_1_sg_x30 <= ce_1;
  clk_1_sg_x30 <= clk_1;
  mult0_p_net_x15 <= din1;
  mult0_p_net_x16 <= din10;
  mult0_p_net_x17 <= din11;
  mult0_p_net_x18 <= din12;
  mult0_p_net_x19 <= din13;
  mult0_p_net_x20 <= din14;
  mult0_p_net_x21 <= din15;
  mult0_p_net_x22 <= din16;
  mult0_p_net_x23 <= din2;
  mult0_p_net_x24 <= din3;
  mult0_p_net_x25 <= din4;
  mult0_p_net_x26 <= din5;
  mult0_p_net_x27 <= din6;
  mult0_p_net_x28 <= din7;
  mult0_p_net_x29 <= din8;
  mult0_p_net_x30 <= din9;
  dout <= addr15_s_net_x0;

  addr1: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x15,
      b => mult0_p_net_x23,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr1_s_net
    );

  addr10: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 34,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 34,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 35,
      core_name0 => "addsb_11_0_26f49e58a7187211",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 35,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 35
    )
    port map (
      a => addr3_s_net,
      b => addr4_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr10_s_net
    );

  addr11: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 34,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 34,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 35,
      core_name0 => "addsb_11_0_26f49e58a7187211",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 35,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 35
    )
    port map (
      a => addr5_s_net,
      b => addr6_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr11_s_net
    );

  addr12: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 34,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 34,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 35,
      core_name0 => "addsb_11_0_26f49e58a7187211",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 35,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 35
    )
    port map (
      a => addr7_s_net,
      b => addr8_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr12_s_net
    );

  addr13: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 35,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 35,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 36,
      core_name0 => "addsb_11_0_057e085f9fa7824e",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 36,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 36
    )
    port map (
      a => addr9_s_net,
      b => addr10_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr13_s_net
    );

  addr14: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 35,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 35,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 36,
      core_name0 => "addsb_11_0_057e085f9fa7824e",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 36,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 36
    )
    port map (
      a => addr11_s_net,
      b => addr12_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr14_s_net
    );

  addr15: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 36,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 36,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 37,
      core_name0 => "addsb_11_0_f52883bb4806fc24",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 37,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 37
    )
    port map (
      a => addr13_s_net,
      b => addr14_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr15_s_net_x0
    );

  addr2: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x24,
      b => mult0_p_net_x25,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr2_s_net
    );

  addr3: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x26,
      b => mult0_p_net_x27,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr3_s_net
    );

  addr4: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x28,
      b => mult0_p_net_x29,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr4_s_net
    );

  addr5: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x30,
      b => mult0_p_net_x16,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr5_s_net
    );

  addr6: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x17,
      b => mult0_p_net_x18,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr6_s_net
    );

  addr7: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x19,
      b => mult0_p_net_x20,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr7_s_net
    );

  addr8: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x21,
      b => mult0_p_net_x22,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      s => addr8_s_net
    );

  addr9: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 34,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 34,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 35,
      core_name0 => "addsb_11_0_26f49e58a7187211",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 35,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 35
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x30,
      clk => clk_1_sg_x30,
      clr => '0',
      en => "1",
      s => addr9_s_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap1"

entity fir_tap1_entity_f2c7878094 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_f2c7878094;

architecture structural of fir_tap1_entity_f2c7878094 is
  signal ce_1_sg_x32: std_logic;
  signal clk_1_sg_x32: std_logic;
  signal constant4_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant4_op_net_x0 <= b;
  ce_1_sg_x32 <= ce_1;
  clk_1_sg_x32 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x16;
  real_x0 <= mult0_p_net_x16;

  constant_x0: entity work.constant_e114d910e6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant4_op_net_x0,
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => constant4_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap10"

entity fir_tap10_entity_c384b95c5f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_c384b95c5f;

architecture structural of fir_tap10_entity_c384b95c5f is
  signal ce_1_sg_x33: std_logic;
  signal clk_1_sg_x33: std_logic;
  signal constant15_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant15_op_net_x0 <= b;
  ce_1_sg_x33 <= ce_1;
  clk_1_sg_x33 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x17;
  real_x0 <= mult0_p_net_x17;

  constant_x0: entity work.constant_355a464687
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant15_op_net_x0,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d => constant15_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap11"

entity fir_tap11_entity_e6124f719f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_e6124f719f;

architecture structural of fir_tap11_entity_e6124f719f is
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal constant16_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant16_op_net_x0 <= b;
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x18;
  real_x0 <= mult0_p_net_x18;

  constant_x0: entity work.constant_8f7b5cfe83
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant16_op_net_x0,
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      d => constant16_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap12"

entity fir_tap12_entity_93d4216eec is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_93d4216eec;

architecture structural of fir_tap12_entity_93d4216eec is
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;
  signal constant17_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant17_op_net_x0 <= b;
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x19;
  real_x0 <= mult0_p_net_x19;

  constant_x0: entity work.constant_cad6c9cf1d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant17_op_net_x0,
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x35,
      clk => clk_1_sg_x35,
      d => constant17_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap13"

entity fir_tap13_entity_02f0b2693f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_02f0b2693f;

architecture structural of fir_tap13_entity_02f0b2693f is
  signal ce_1_sg_x36: std_logic;
  signal clk_1_sg_x36: std_logic;
  signal constant18_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant18_op_net_x0 <= b;
  ce_1_sg_x36 <= ce_1;
  clk_1_sg_x36 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x20;
  real_x0 <= mult0_p_net_x20;

  constant_x0: entity work.constant_d29b044433
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant18_op_net_x0,
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x36,
      clk => clk_1_sg_x36,
      d => constant18_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap14"

entity fir_tap14_entity_4221f3d981 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_4221f3d981;

architecture structural of fir_tap14_entity_4221f3d981 is
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal constant19_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant19_op_net_x0 <= b;
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x21;
  real_x0 <= mult0_p_net_x21;

  constant_x0: entity work.constant_8360ce05bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant19_op_net_x0,
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      d => constant19_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap15"

entity fir_tap15_entity_f792e47b23 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_f792e47b23;

architecture structural of fir_tap15_entity_f792e47b23 is
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal constant20_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant20_op_net_x0 <= b;
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x22;
  real_x0 <= mult0_p_net_x22;

  constant_x0: entity work.constant_0a9404d2ee
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant20_op_net_x0,
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
      d => constant20_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap16"

entity fir_tap16_entity_356681773d is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap16_entity_356681773d;

architecture structural of fir_tap16_entity_356681773d is
  signal ce_1_sg_x39: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal constant21_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant21_op_net_x0 <= b;
  ce_1_sg_x39 <= ce_1;
  clk_1_sg_x39 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x23;
  real_x0 <= mult0_p_net_x23;

  constant_x0: entity work.constant_64302bcbfa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant21_op_net_x0,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      d => constant21_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap2"

entity fir_tap2_entity_0d6f3a423e is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap2_entity_0d6f3a423e;

architecture structural of fir_tap2_entity_0d6f3a423e is
  signal ce_1_sg_x40: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal constant7_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant7_op_net_x0 <= b;
  ce_1_sg_x40 <= ce_1;
  clk_1_sg_x40 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x24;
  real_x0 <= mult0_p_net_x24;

  constant_x0: entity work.constant_b6b583c9df
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant7_op_net_x0,
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => constant7_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap3"

entity fir_tap3_entity_2d0cd27653 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap3_entity_2d0cd27653;

architecture structural of fir_tap3_entity_2d0cd27653 is
  signal ce_1_sg_x41: std_logic;
  signal clk_1_sg_x41: std_logic;
  signal constant9_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant9_op_net_x0 <= b;
  ce_1_sg_x41 <= ce_1;
  clk_1_sg_x41 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x25;
  real_x0 <= mult0_p_net_x25;

  constant_x0: entity work.constant_f22eee6ce2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant9_op_net_x0,
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      d => constant9_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap4"

entity fir_tap4_entity_ff488077ab is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap4_entity_ff488077ab;

architecture structural of fir_tap4_entity_ff488077ab is
  signal ce_1_sg_x42: std_logic;
  signal clk_1_sg_x42: std_logic;
  signal constant22_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant22_op_net_x0 <= b;
  ce_1_sg_x42 <= ce_1;
  clk_1_sg_x42 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x26;
  real_x0 <= mult0_p_net_x26;

  constant_x0: entity work.constant_2539032405
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant22_op_net_x0,
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
      d => constant22_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap5"

entity fir_tap5_entity_136cb0ee89 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap5_entity_136cb0ee89;

architecture structural of fir_tap5_entity_136cb0ee89 is
  signal ce_1_sg_x43: std_logic;
  signal clk_1_sg_x43: std_logic;
  signal constant24_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant24_op_net_x0 <= b;
  ce_1_sg_x43 <= ce_1;
  clk_1_sg_x43 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x27;
  real_x0 <= mult0_p_net_x27;

  constant_x0: entity work.constant_7c38787388
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant24_op_net_x0,
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x43,
      clk => clk_1_sg_x43,
      d => constant24_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap6"

entity fir_tap6_entity_edb415ed48 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap6_entity_edb415ed48;

architecture structural of fir_tap6_entity_edb415ed48 is
  signal ce_1_sg_x44: std_logic;
  signal clk_1_sg_x44: std_logic;
  signal constant10_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant10_op_net_x0 <= b;
  ce_1_sg_x44 <= ce_1;
  clk_1_sg_x44 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x28;
  real_x0 <= mult0_p_net_x28;

  constant_x0: entity work.constant_946344552b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant10_op_net_x0,
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x44,
      clk => clk_1_sg_x44,
      d => constant10_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap7"

entity fir_tap7_entity_09f520eac8 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap7_entity_09f520eac8;

architecture structural of fir_tap7_entity_09f520eac8 is
  signal ce_1_sg_x45: std_logic;
  signal clk_1_sg_x45: std_logic;
  signal constant11_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant11_op_net_x0 <= b;
  ce_1_sg_x45 <= ce_1;
  clk_1_sg_x45 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x29;
  real_x0 <= mult0_p_net_x29;

  constant_x0: entity work.constant_be49aac425
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant11_op_net_x0,
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x45,
      clk => clk_1_sg_x45,
      d => constant11_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap8"

entity fir_tap8_entity_48454ecdae is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_48454ecdae;

architecture structural of fir_tap8_entity_48454ecdae is
  signal ce_1_sg_x46: std_logic;
  signal clk_1_sg_x46: std_logic;
  signal constant12_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant12_op_net_x0 <= b;
  ce_1_sg_x46 <= ce_1;
  clk_1_sg_x46 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x30;
  real_x0 <= mult0_p_net_x30;

  constant_x0: entity work.constant_8ee545e7c0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant12_op_net_x0,
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x46,
      clk => clk_1_sg_x46,
      d => constant12_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1/fir_tap9"

entity fir_tap9_entity_1dff3f560c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap9_entity_1dff3f560c;

architecture structural of fir_tap9_entity_1dff3f560c is
  signal ce_1_sg_x47: std_logic;
  signal clk_1_sg_x47: std_logic;
  signal constant14_op_net_x0: std_logic_vector(7 downto 0);
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic_vector(7 downto 0);

begin
  register2_q_net_x0 <= a;
  constant14_op_net_x0 <= b;
  ce_1_sg_x47 <= ce_1;
  clk_1_sg_x47 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x31;
  real_x0 <= mult0_p_net_x31;

  constant_x0: entity work.constant_0f4b24ad35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register2_q_net_x0,
      ce => ce_1_sg_x47,
      clk => clk_1_sg_x47,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant14_op_net_x0,
      ce => ce_1_sg_x47,
      clk => clk_1_sg_x47,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x47,
      clk => clk_1_sg_x47,
      d => register2_q_net_x0,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x47,
      clk => clk_1_sg_x47,
      d => constant14_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col1"

entity fir_col1_entity_6707f31ecc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col1_entity_6707f31ecc;

architecture structural of fir_col1_entity_6707f31ecc is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x48: std_logic;
  signal clk_1_sg_x48: std_logic;
  signal constant10_op_net_x1: std_logic_vector(7 downto 0);
  signal constant11_op_net_x1: std_logic_vector(7 downto 0);
  signal constant12_op_net_x1: std_logic_vector(7 downto 0);
  signal constant14_op_net_x1: std_logic_vector(7 downto 0);
  signal constant15_op_net_x1: std_logic_vector(7 downto 0);
  signal constant16_op_net_x1: std_logic_vector(7 downto 0);
  signal constant17_op_net_x1: std_logic_vector(7 downto 0);
  signal constant18_op_net_x1: std_logic_vector(7 downto 0);
  signal constant19_op_net_x1: std_logic_vector(7 downto 0);
  signal constant20_op_net_x1: std_logic_vector(7 downto 0);
  signal constant21_op_net_x1: std_logic_vector(7 downto 0);
  signal constant22_op_net_x1: std_logic_vector(7 downto 0);
  signal constant24_op_net_x1: std_logic_vector(7 downto 0);
  signal constant4_op_net_x1: std_logic_vector(7 downto 0);
  signal constant7_op_net_x1: std_logic_vector(7 downto 0);
  signal constant9_op_net_x1: std_logic_vector(7 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x16: std_logic_vector(7 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register0_q_net_x25: std_logic_vector(7 downto 0);
  signal register0_q_net_x26: std_logic_vector(7 downto 0);
  signal register0_q_net_x27: std_logic_vector(7 downto 0);
  signal register0_q_net_x28: std_logic_vector(7 downto 0);
  signal register0_q_net_x29: std_logic_vector(7 downto 0);
  signal register0_q_net_x30: std_logic_vector(7 downto 0);
  signal register0_q_net_x31: std_logic_vector(7 downto 0);
  signal register1_q_net_x16: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x25: std_logic_vector(7 downto 0);
  signal register1_q_net_x26: std_logic_vector(7 downto 0);
  signal register1_q_net_x27: std_logic_vector(7 downto 0);
  signal register1_q_net_x28: std_logic_vector(7 downto 0);
  signal register1_q_net_x29: std_logic_vector(7 downto 0);
  signal register1_q_net_x30: std_logic_vector(7 downto 0);
  signal register1_q_net_x31: std_logic_vector(7 downto 0);
  signal register2_q_net_x16: std_logic_vector(7 downto 0);
  signal register2_q_net_x17: std_logic_vector(7 downto 0);
  signal register2_q_net_x18: std_logic_vector(7 downto 0);
  signal register2_q_net_x19: std_logic_vector(7 downto 0);
  signal register2_q_net_x20: std_logic_vector(7 downto 0);
  signal register2_q_net_x21: std_logic_vector(7 downto 0);
  signal register2_q_net_x22: std_logic_vector(7 downto 0);
  signal register2_q_net_x23: std_logic_vector(7 downto 0);
  signal register2_q_net_x24: std_logic_vector(7 downto 0);
  signal register2_q_net_x25: std_logic_vector(7 downto 0);
  signal register2_q_net_x26: std_logic_vector(7 downto 0);
  signal register2_q_net_x27: std_logic_vector(7 downto 0);
  signal register2_q_net_x28: std_logic_vector(7 downto 0);
  signal register2_q_net_x29: std_logic_vector(7 downto 0);
  signal register2_q_net_x30: std_logic_vector(7 downto 0);
  signal register2_q_net_x31: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x48 <= ce_1;
  clk_1_sg_x48 <= clk_1;
  constant4_op_net_x1 <= imag1;
  constant15_op_net_x1 <= imag10;
  constant16_op_net_x1 <= imag11;
  constant17_op_net_x1 <= imag12;
  constant18_op_net_x1 <= imag13;
  constant19_op_net_x1 <= imag14;
  constant20_op_net_x1 <= imag15;
  constant21_op_net_x1 <= imag16;
  constant7_op_net_x1 <= imag2;
  constant9_op_net_x1 <= imag3;
  constant22_op_net_x1 <= imag4;
  constant24_op_net_x1 <= imag5;
  constant10_op_net_x1 <= imag6;
  constant11_op_net_x1 <= imag7;
  constant12_op_net_x1 <= imag8;
  constant14_op_net_x1 <= imag9;
  register2_q_net_x16 <= real1;
  register2_q_net_x25 <= real10;
  register2_q_net_x26 <= real11;
  register2_q_net_x27 <= real12;
  register2_q_net_x28 <= real13;
  register2_q_net_x29 <= real14;
  register2_q_net_x30 <= real15;
  register2_q_net_x31 <= real16;
  register2_q_net_x17 <= real2;
  register2_q_net_x18 <= real3;
  register2_q_net_x19 <= real4;
  register2_q_net_x20 <= real5;
  register2_q_net_x21 <= real6;
  register2_q_net_x22 <= real7;
  register2_q_net_x23 <= real8;
  register2_q_net_x24 <= real9;
  imag_out1 <= register1_q_net_x16;
  imag_out10 <= register1_q_net_x17;
  imag_out11 <= register1_q_net_x18;
  imag_out12 <= register1_q_net_x19;
  imag_out13 <= register1_q_net_x20;
  imag_out14 <= register1_q_net_x21;
  imag_out15 <= register1_q_net_x22;
  imag_out16 <= register1_q_net_x23;
  imag_out2 <= register1_q_net_x24;
  imag_out3 <= register1_q_net_x25;
  imag_out4 <= register1_q_net_x26;
  imag_out5 <= register1_q_net_x27;
  imag_out6 <= register1_q_net_x28;
  imag_out7 <= register1_q_net_x29;
  imag_out8 <= register1_q_net_x30;
  imag_out9 <= register1_q_net_x31;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x16;
  real_out10 <= register0_q_net_x17;
  real_out11 <= register0_q_net_x18;
  real_out12 <= register0_q_net_x19;
  real_out13 <= register0_q_net_x20;
  real_out14 <= register0_q_net_x21;
  real_out15 <= register0_q_net_x22;
  real_out16 <= register0_q_net_x23;
  real_out2 <= register0_q_net_x24;
  real_out3 <= register0_q_net_x25;
  real_out4 <= register0_q_net_x26;
  real_out5 <= register0_q_net_x27;
  real_out6 <= register0_q_net_x28;
  real_out7 <= register0_q_net_x29;
  real_out8 <= register0_q_net_x30;
  real_out9 <= register0_q_net_x31;
  real_sum <= addr15_s_net_x2;

  adder_tree1_13895861c8: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_bc9157fef2: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_c384b95c5f: entity work.fir_tap10_entity_c384b95c5f
    port map (
      a => register2_q_net_x25,
      b => constant15_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_e6124f719f: entity work.fir_tap11_entity_e6124f719f
    port map (
      a => register2_q_net_x26,
      b => constant16_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_93d4216eec: entity work.fir_tap12_entity_93d4216eec
    port map (
      a => register2_q_net_x27,
      b => constant17_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x19,
      b_out => register1_q_net_x19,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_02f0b2693f: entity work.fir_tap13_entity_02f0b2693f
    port map (
      a => register2_q_net_x28,
      b => constant18_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x20,
      b_out => register1_q_net_x20,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_4221f3d981: entity work.fir_tap14_entity_4221f3d981
    port map (
      a => register2_q_net_x29,
      b => constant19_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x21,
      b_out => register1_q_net_x21,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_f792e47b23: entity work.fir_tap15_entity_f792e47b23
    port map (
      a => register2_q_net_x30,
      b => constant20_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x22,
      b_out => register1_q_net_x22,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_356681773d: entity work.fir_tap16_entity_356681773d
    port map (
      a => register2_q_net_x31,
      b => constant21_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_f2c7878094: entity work.fir_tap1_entity_f2c7878094
    port map (
      a => register2_q_net_x16,
      b => constant4_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_0d6f3a423e: entity work.fir_tap2_entity_0d6f3a423e
    port map (
      a => register2_q_net_x17,
      b => constant7_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_2d0cd27653: entity work.fir_tap3_entity_2d0cd27653
    port map (
      a => register2_q_net_x18,
      b => constant9_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x25,
      b_out => register1_q_net_x25,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_ff488077ab: entity work.fir_tap4_entity_ff488077ab
    port map (
      a => register2_q_net_x19,
      b => constant22_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x26,
      b_out => register1_q_net_x26,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_136cb0ee89: entity work.fir_tap5_entity_136cb0ee89
    port map (
      a => register2_q_net_x20,
      b => constant24_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x27,
      b_out => register1_q_net_x27,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_edb415ed48: entity work.fir_tap6_entity_edb415ed48
    port map (
      a => register2_q_net_x21,
      b => constant10_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x28,
      b_out => register1_q_net_x28,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_09f520eac8: entity work.fir_tap7_entity_09f520eac8
    port map (
      a => register2_q_net_x22,
      b => constant11_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x29,
      b_out => register1_q_net_x29,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_48454ecdae: entity work.fir_tap8_entity_48454ecdae
    port map (
      a => register2_q_net_x23,
      b => constant12_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x30,
      b_out => register1_q_net_x30,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_1dff3f560c: entity work.fir_tap9_entity_1dff3f560c
    port map (
      a => register2_q_net_x24,
      b => constant14_op_net_x1,
      ce_1 => ce_1_sg_x48,
      clk_1 => clk_1_sg_x48,
      a_out => register0_q_net_x31,
      b_out => register1_q_net_x31,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap1"

entity fir_tap1_entity_63c1df1fa1 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_63c1df1fa1;

architecture structural of fir_tap1_entity_63c1df1fa1 is
  signal ce_1_sg_x51: std_logic;
  signal clk_1_sg_x51: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);

begin
  register0_q_net_x17 <= a;
  register1_q_net_x17 <= b;
  ce_1_sg_x51 <= ce_1;
  clk_1_sg_x51 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x16;
  real_x0 <= mult0_p_net_x16;

  constant_x0: entity work.constant_9b4f569def
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x17,
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      d => register0_q_net_x17,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x51,
      clk => clk_1_sg_x51,
      d => register1_q_net_x17,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap10"

entity fir_tap10_entity_ce608d0ad2 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_ce608d0ad2;

architecture structural of fir_tap10_entity_ce608d0ad2 is
  signal ce_1_sg_x52: std_logic;
  signal clk_1_sg_x52: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);

begin
  register0_q_net_x18 <= a;
  register1_q_net_x18 <= b;
  ce_1_sg_x52 <= ce_1;
  clk_1_sg_x52 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x17;
  real_x0 <= mult0_p_net_x17;

  constant_x0: entity work.constant_97f9df5f3b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x18,
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      d => register0_q_net_x18,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x52,
      clk => clk_1_sg_x52,
      d => register1_q_net_x18,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap11"

entity fir_tap11_entity_7274fd26b7 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_7274fd26b7;

architecture structural of fir_tap11_entity_7274fd26b7 is
  signal ce_1_sg_x53: std_logic;
  signal clk_1_sg_x53: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);

begin
  register0_q_net_x19 <= a;
  register1_q_net_x19 <= b;
  ce_1_sg_x53 <= ce_1;
  clk_1_sg_x53 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x18;
  real_x0 <= mult0_p_net_x18;

  constant_x0: entity work.constant_6994be872a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x19,
      ce => ce_1_sg_x53,
      clk => clk_1_sg_x53,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x53,
      clk => clk_1_sg_x53,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x53,
      clk => clk_1_sg_x53,
      d => register0_q_net_x19,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x53,
      clk => clk_1_sg_x53,
      d => register1_q_net_x19,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap12"

entity fir_tap12_entity_5f2503f0fc is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_5f2503f0fc;

architecture structural of fir_tap12_entity_5f2503f0fc is
  signal ce_1_sg_x54: std_logic;
  signal clk_1_sg_x54: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);

begin
  register0_q_net_x20 <= a;
  register1_q_net_x20 <= b;
  ce_1_sg_x54 <= ce_1;
  clk_1_sg_x54 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x19;
  real_x0 <= mult0_p_net_x19;

  constant_x0: entity work.constant_916558e6f4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x20,
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x20,
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      d => register0_q_net_x20,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      d => register1_q_net_x20,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap13"

entity fir_tap13_entity_6b00bb1219 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_6b00bb1219;

architecture structural of fir_tap13_entity_6b00bb1219 is
  signal ce_1_sg_x55: std_logic;
  signal clk_1_sg_x55: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);

begin
  register0_q_net_x21 <= a;
  register1_q_net_x21 <= b;
  ce_1_sg_x55 <= ce_1;
  clk_1_sg_x55 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x20;
  real_x0 <= mult0_p_net_x20;

  constant_x0: entity work.constant_cfef190528
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x21,
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x21,
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => register0_q_net_x21,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x55,
      clk => clk_1_sg_x55,
      d => register1_q_net_x21,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap14"

entity fir_tap14_entity_347e6fa43b is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_347e6fa43b;

architecture structural of fir_tap14_entity_347e6fa43b is
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);

begin
  register0_q_net_x22 <= a;
  register1_q_net_x22 <= b;
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x21;
  real_x0 <= mult0_p_net_x21;

  constant_x0: entity work.constant_a356878fa5
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x22,
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x22,
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      d => register0_q_net_x22,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x56,
      clk => clk_1_sg_x56,
      d => register1_q_net_x22,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap15"

entity fir_tap15_entity_65e5cae13e is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_65e5cae13e;

architecture structural of fir_tap15_entity_65e5cae13e is
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);

begin
  register0_q_net_x23 <= a;
  register1_q_net_x23 <= b;
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x22;
  real_x0 <= mult0_p_net_x22;

  constant_x0: entity work.constant_c9bf17358d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x23,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x23,
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d => register0_q_net_x23,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x57,
      clk => clk_1_sg_x57,
      d => register1_q_net_x23,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap16"

entity fir_tap16_entity_acfb7c41fb is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap16_entity_acfb7c41fb;

architecture structural of fir_tap16_entity_acfb7c41fb is
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);

begin
  register0_q_net_x24 <= a;
  register1_q_net_x24 <= b;
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x23;
  real_x0 <= mult0_p_net_x23;

  constant_x0: entity work.constant_5704abaa9e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x24,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x24,
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      d => register0_q_net_x24,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x58,
      clk => clk_1_sg_x58,
      d => register1_q_net_x24,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap2"

entity fir_tap2_entity_5b1d6f0f5c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap2_entity_5b1d6f0f5c;

architecture structural of fir_tap2_entity_5b1d6f0f5c is
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x25: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x25: std_logic_vector(7 downto 0);

begin
  register0_q_net_x25 <= a;
  register1_q_net_x25 <= b;
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x24;
  real_x0 <= mult0_p_net_x24;

  constant_x0: entity work.constant_13ab4e5615
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x25,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x25,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      d => register0_q_net_x25,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      d => register1_q_net_x25,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap3"

entity fir_tap3_entity_e8a4739b14 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap3_entity_e8a4739b14;

architecture structural of fir_tap3_entity_e8a4739b14 is
  signal ce_1_sg_x60: std_logic;
  signal clk_1_sg_x60: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x26: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x26: std_logic_vector(7 downto 0);

begin
  register0_q_net_x26 <= a;
  register1_q_net_x26 <= b;
  ce_1_sg_x60 <= ce_1;
  clk_1_sg_x60 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x25;
  real_x0 <= mult0_p_net_x25;

  constant_x0: entity work.constant_a1d18e4f4d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x26,
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x26,
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      d => register0_q_net_x26,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x60,
      clk => clk_1_sg_x60,
      d => register1_q_net_x26,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap4"

entity fir_tap4_entity_6d088bf2de is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap4_entity_6d088bf2de;

architecture structural of fir_tap4_entity_6d088bf2de is
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x27: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x27: std_logic_vector(7 downto 0);

begin
  register0_q_net_x27 <= a;
  register1_q_net_x27 <= b;
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x26;
  real_x0 <= mult0_p_net_x26;

  constant_x0: entity work.constant_4cbcb95b2e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x27,
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x27,
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      d => register0_q_net_x27,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      d => register1_q_net_x27,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap5"

entity fir_tap5_entity_7dc5597497 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap5_entity_7dc5597497;

architecture structural of fir_tap5_entity_7dc5597497 is
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x28: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x28: std_logic_vector(7 downto 0);

begin
  register0_q_net_x28 <= a;
  register1_q_net_x28 <= b;
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x27;
  real_x0 <= mult0_p_net_x27;

  constant_x0: entity work.constant_e5bdebc6b0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x28,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x28,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d => register0_q_net_x28,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d => register1_q_net_x28,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap6"

entity fir_tap6_entity_9501ec5ab1 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap6_entity_9501ec5ab1;

architecture structural of fir_tap6_entity_9501ec5ab1 is
  signal ce_1_sg_x63: std_logic;
  signal clk_1_sg_x63: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x29: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x29: std_logic_vector(7 downto 0);

begin
  register0_q_net_x29 <= a;
  register1_q_net_x29 <= b;
  ce_1_sg_x63 <= ce_1;
  clk_1_sg_x63 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x28;
  real_x0 <= mult0_p_net_x28;

  constant_x0: entity work.constant_e544d93ed8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x29,
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x29,
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      d => register0_q_net_x29,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      d => register1_q_net_x29,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap7"

entity fir_tap7_entity_6bb41ed1ea is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap7_entity_6bb41ed1ea;

architecture structural of fir_tap7_entity_6bb41ed1ea is
  signal ce_1_sg_x64: std_logic;
  signal clk_1_sg_x64: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x30: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x30: std_logic_vector(7 downto 0);

begin
  register0_q_net_x30 <= a;
  register1_q_net_x30 <= b;
  ce_1_sg_x64 <= ce_1;
  clk_1_sg_x64 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x29;
  real_x0 <= mult0_p_net_x29;

  constant_x0: entity work.constant_5a7a372c8f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x30,
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x30,
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      d => register0_q_net_x30,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      d => register1_q_net_x30,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap8"

entity fir_tap8_entity_25e08b5504 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_25e08b5504;

architecture structural of fir_tap8_entity_25e08b5504 is
  signal ce_1_sg_x65: std_logic;
  signal clk_1_sg_x65: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x31: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x31: std_logic_vector(7 downto 0);

begin
  register0_q_net_x31 <= a;
  register1_q_net_x31 <= b;
  ce_1_sg_x65 <= ce_1;
  clk_1_sg_x65 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x30;
  real_x0 <= mult0_p_net_x30;

  constant_x0: entity work.constant_e738368fbd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x31,
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x31,
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      d => register0_q_net_x31,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      d => register1_q_net_x31,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2/fir_tap9"

entity fir_tap9_entity_4fc065f93f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap9_entity_4fc065f93f;

architecture structural of fir_tap9_entity_4fc065f93f is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x32: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x32: std_logic_vector(7 downto 0);

begin
  register0_q_net_x32 <= a;
  register1_q_net_x32 <= b;
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x31;
  real_x0 <= mult0_p_net_x31;

  constant_x0: entity work.constant_02d1537ab6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x32,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x32,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      d => register0_q_net_x32,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      d => register1_q_net_x32,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col2"

entity fir_col2_entity_7064a1433d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col2_entity_7064a1433d;

architecture structural of fir_col2_entity_7064a1433d is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x67: std_logic;
  signal clk_1_sg_x67: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x48: std_logic_vector(7 downto 0);
  signal register0_q_net_x49: std_logic_vector(7 downto 0);
  signal register0_q_net_x50: std_logic_vector(7 downto 0);
  signal register0_q_net_x51: std_logic_vector(7 downto 0);
  signal register0_q_net_x52: std_logic_vector(7 downto 0);
  signal register0_q_net_x53: std_logic_vector(7 downto 0);
  signal register0_q_net_x54: std_logic_vector(7 downto 0);
  signal register0_q_net_x55: std_logic_vector(7 downto 0);
  signal register0_q_net_x56: std_logic_vector(7 downto 0);
  signal register0_q_net_x57: std_logic_vector(7 downto 0);
  signal register0_q_net_x58: std_logic_vector(7 downto 0);
  signal register0_q_net_x59: std_logic_vector(7 downto 0);
  signal register0_q_net_x60: std_logic_vector(7 downto 0);
  signal register0_q_net_x61: std_logic_vector(7 downto 0);
  signal register0_q_net_x62: std_logic_vector(7 downto 0);
  signal register0_q_net_x63: std_logic_vector(7 downto 0);
  signal register0_q_net_x64: std_logic_vector(7 downto 0);
  signal register0_q_net_x65: std_logic_vector(7 downto 0);
  signal register0_q_net_x66: std_logic_vector(7 downto 0);
  signal register0_q_net_x67: std_logic_vector(7 downto 0);
  signal register0_q_net_x68: std_logic_vector(7 downto 0);
  signal register0_q_net_x69: std_logic_vector(7 downto 0);
  signal register0_q_net_x70: std_logic_vector(7 downto 0);
  signal register0_q_net_x71: std_logic_vector(7 downto 0);
  signal register0_q_net_x72: std_logic_vector(7 downto 0);
  signal register0_q_net_x73: std_logic_vector(7 downto 0);
  signal register0_q_net_x74: std_logic_vector(7 downto 0);
  signal register0_q_net_x75: std_logic_vector(7 downto 0);
  signal register0_q_net_x76: std_logic_vector(7 downto 0);
  signal register0_q_net_x77: std_logic_vector(7 downto 0);
  signal register0_q_net_x78: std_logic_vector(7 downto 0);
  signal register0_q_net_x79: std_logic_vector(7 downto 0);
  signal register1_q_net_x48: std_logic_vector(7 downto 0);
  signal register1_q_net_x49: std_logic_vector(7 downto 0);
  signal register1_q_net_x50: std_logic_vector(7 downto 0);
  signal register1_q_net_x51: std_logic_vector(7 downto 0);
  signal register1_q_net_x52: std_logic_vector(7 downto 0);
  signal register1_q_net_x53: std_logic_vector(7 downto 0);
  signal register1_q_net_x54: std_logic_vector(7 downto 0);
  signal register1_q_net_x55: std_logic_vector(7 downto 0);
  signal register1_q_net_x56: std_logic_vector(7 downto 0);
  signal register1_q_net_x57: std_logic_vector(7 downto 0);
  signal register1_q_net_x58: std_logic_vector(7 downto 0);
  signal register1_q_net_x59: std_logic_vector(7 downto 0);
  signal register1_q_net_x60: std_logic_vector(7 downto 0);
  signal register1_q_net_x61: std_logic_vector(7 downto 0);
  signal register1_q_net_x62: std_logic_vector(7 downto 0);
  signal register1_q_net_x63: std_logic_vector(7 downto 0);
  signal register1_q_net_x64: std_logic_vector(7 downto 0);
  signal register1_q_net_x65: std_logic_vector(7 downto 0);
  signal register1_q_net_x66: std_logic_vector(7 downto 0);
  signal register1_q_net_x67: std_logic_vector(7 downto 0);
  signal register1_q_net_x68: std_logic_vector(7 downto 0);
  signal register1_q_net_x69: std_logic_vector(7 downto 0);
  signal register1_q_net_x70: std_logic_vector(7 downto 0);
  signal register1_q_net_x71: std_logic_vector(7 downto 0);
  signal register1_q_net_x72: std_logic_vector(7 downto 0);
  signal register1_q_net_x73: std_logic_vector(7 downto 0);
  signal register1_q_net_x74: std_logic_vector(7 downto 0);
  signal register1_q_net_x75: std_logic_vector(7 downto 0);
  signal register1_q_net_x76: std_logic_vector(7 downto 0);
  signal register1_q_net_x77: std_logic_vector(7 downto 0);
  signal register1_q_net_x78: std_logic_vector(7 downto 0);
  signal register1_q_net_x79: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x67 <= ce_1;
  clk_1_sg_x67 <= clk_1;
  register1_q_net_x48 <= imag1;
  register1_q_net_x49 <= imag10;
  register1_q_net_x50 <= imag11;
  register1_q_net_x51 <= imag12;
  register1_q_net_x52 <= imag13;
  register1_q_net_x53 <= imag14;
  register1_q_net_x54 <= imag15;
  register1_q_net_x55 <= imag16;
  register1_q_net_x56 <= imag2;
  register1_q_net_x57 <= imag3;
  register1_q_net_x58 <= imag4;
  register1_q_net_x59 <= imag5;
  register1_q_net_x60 <= imag6;
  register1_q_net_x61 <= imag7;
  register1_q_net_x62 <= imag8;
  register1_q_net_x63 <= imag9;
  register0_q_net_x48 <= real1;
  register0_q_net_x49 <= real10;
  register0_q_net_x50 <= real11;
  register0_q_net_x51 <= real12;
  register0_q_net_x52 <= real13;
  register0_q_net_x53 <= real14;
  register0_q_net_x54 <= real15;
  register0_q_net_x55 <= real16;
  register0_q_net_x56 <= real2;
  register0_q_net_x57 <= real3;
  register0_q_net_x58 <= real4;
  register0_q_net_x59 <= real5;
  register0_q_net_x60 <= real6;
  register0_q_net_x61 <= real7;
  register0_q_net_x62 <= real8;
  register0_q_net_x63 <= real9;
  imag_out1 <= register1_q_net_x64;
  imag_out10 <= register1_q_net_x65;
  imag_out11 <= register1_q_net_x66;
  imag_out12 <= register1_q_net_x67;
  imag_out13 <= register1_q_net_x68;
  imag_out14 <= register1_q_net_x69;
  imag_out15 <= register1_q_net_x70;
  imag_out16 <= register1_q_net_x71;
  imag_out2 <= register1_q_net_x72;
  imag_out3 <= register1_q_net_x73;
  imag_out4 <= register1_q_net_x74;
  imag_out5 <= register1_q_net_x75;
  imag_out6 <= register1_q_net_x76;
  imag_out7 <= register1_q_net_x77;
  imag_out8 <= register1_q_net_x78;
  imag_out9 <= register1_q_net_x79;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x64;
  real_out10 <= register0_q_net_x65;
  real_out11 <= register0_q_net_x66;
  real_out12 <= register0_q_net_x67;
  real_out13 <= register0_q_net_x68;
  real_out14 <= register0_q_net_x69;
  real_out15 <= register0_q_net_x70;
  real_out16 <= register0_q_net_x71;
  real_out2 <= register0_q_net_x72;
  real_out3 <= register0_q_net_x73;
  real_out4 <= register0_q_net_x74;
  real_out5 <= register0_q_net_x75;
  real_out6 <= register0_q_net_x76;
  real_out7 <= register0_q_net_x77;
  real_out8 <= register0_q_net_x78;
  real_out9 <= register0_q_net_x79;
  real_sum <= addr15_s_net_x2;

  adder_tree1_0545690161: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_511610c91d: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_ce608d0ad2: entity work.fir_tap10_entity_ce608d0ad2
    port map (
      a => register0_q_net_x49,
      b => register1_q_net_x49,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x65,
      b_out => register1_q_net_x65,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_7274fd26b7: entity work.fir_tap11_entity_7274fd26b7
    port map (
      a => register0_q_net_x50,
      b => register1_q_net_x50,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x66,
      b_out => register1_q_net_x66,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_5f2503f0fc: entity work.fir_tap12_entity_5f2503f0fc
    port map (
      a => register0_q_net_x51,
      b => register1_q_net_x51,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x67,
      b_out => register1_q_net_x67,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_6b00bb1219: entity work.fir_tap13_entity_6b00bb1219
    port map (
      a => register0_q_net_x52,
      b => register1_q_net_x52,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x68,
      b_out => register1_q_net_x68,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_347e6fa43b: entity work.fir_tap14_entity_347e6fa43b
    port map (
      a => register0_q_net_x53,
      b => register1_q_net_x53,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x69,
      b_out => register1_q_net_x69,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_65e5cae13e: entity work.fir_tap15_entity_65e5cae13e
    port map (
      a => register0_q_net_x54,
      b => register1_q_net_x54,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x70,
      b_out => register1_q_net_x70,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_acfb7c41fb: entity work.fir_tap16_entity_acfb7c41fb
    port map (
      a => register0_q_net_x55,
      b => register1_q_net_x55,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x71,
      b_out => register1_q_net_x71,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_63c1df1fa1: entity work.fir_tap1_entity_63c1df1fa1
    port map (
      a => register0_q_net_x48,
      b => register1_q_net_x48,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x64,
      b_out => register1_q_net_x64,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_5b1d6f0f5c: entity work.fir_tap2_entity_5b1d6f0f5c
    port map (
      a => register0_q_net_x56,
      b => register1_q_net_x56,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x72,
      b_out => register1_q_net_x72,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_e8a4739b14: entity work.fir_tap3_entity_e8a4739b14
    port map (
      a => register0_q_net_x57,
      b => register1_q_net_x57,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x73,
      b_out => register1_q_net_x73,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_6d088bf2de: entity work.fir_tap4_entity_6d088bf2de
    port map (
      a => register0_q_net_x58,
      b => register1_q_net_x58,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x74,
      b_out => register1_q_net_x74,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_7dc5597497: entity work.fir_tap5_entity_7dc5597497
    port map (
      a => register0_q_net_x59,
      b => register1_q_net_x59,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x75,
      b_out => register1_q_net_x75,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_9501ec5ab1: entity work.fir_tap6_entity_9501ec5ab1
    port map (
      a => register0_q_net_x60,
      b => register1_q_net_x60,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x76,
      b_out => register1_q_net_x76,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_6bb41ed1ea: entity work.fir_tap7_entity_6bb41ed1ea
    port map (
      a => register0_q_net_x61,
      b => register1_q_net_x61,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x77,
      b_out => register1_q_net_x77,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_25e08b5504: entity work.fir_tap8_entity_25e08b5504
    port map (
      a => register0_q_net_x62,
      b => register1_q_net_x62,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x78,
      b_out => register1_q_net_x78,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_4fc065f93f: entity work.fir_tap9_entity_4fc065f93f
    port map (
      a => register0_q_net_x63,
      b => register1_q_net_x63,
      ce_1 => ce_1_sg_x67,
      clk_1 => clk_1_sg_x67,
      a_out => register0_q_net_x79,
      b_out => register1_q_net_x79,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap1"

entity fir_tap1_entity_6ad52a15cc is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_6ad52a15cc;

architecture structural of fir_tap1_entity_6ad52a15cc is
  signal ce_1_sg_x70: std_logic;
  signal clk_1_sg_x70: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x65: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x65: std_logic_vector(7 downto 0);

begin
  register0_q_net_x65 <= a;
  register1_q_net_x65 <= b;
  ce_1_sg_x70 <= ce_1;
  clk_1_sg_x70 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x16;
  real_x0 <= mult0_p_net_x16;

  constant_x0: entity work.constant_78d50178d9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x65,
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x65,
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      d => register0_q_net_x65,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      d => register1_q_net_x65,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap10"

entity fir_tap10_entity_8ee1801a3e is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_8ee1801a3e;

architecture structural of fir_tap10_entity_8ee1801a3e is
  signal ce_1_sg_x71: std_logic;
  signal clk_1_sg_x71: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x66: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x66: std_logic_vector(7 downto 0);

begin
  register0_q_net_x66 <= a;
  register1_q_net_x66 <= b;
  ce_1_sg_x71 <= ce_1;
  clk_1_sg_x71 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x17;
  real_x0 <= mult0_p_net_x17;

  constant_x0: entity work.constant_dd1380aa0f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x66,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x66,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      d => register0_q_net_x66,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      d => register1_q_net_x66,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap11"

entity fir_tap11_entity_4685e660ec is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_4685e660ec;

architecture structural of fir_tap11_entity_4685e660ec is
  signal ce_1_sg_x72: std_logic;
  signal clk_1_sg_x72: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x67: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x67: std_logic_vector(7 downto 0);

begin
  register0_q_net_x67 <= a;
  register1_q_net_x67 <= b;
  ce_1_sg_x72 <= ce_1;
  clk_1_sg_x72 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x18;
  real_x0 <= mult0_p_net_x18;

  constant_x0: entity work.constant_f98dbbfcc2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x67,
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x67,
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      d => register0_q_net_x67,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      d => register1_q_net_x67,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap12"

entity fir_tap12_entity_55243f1c20 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_55243f1c20;

architecture structural of fir_tap12_entity_55243f1c20 is
  signal ce_1_sg_x73: std_logic;
  signal clk_1_sg_x73: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x68: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x68: std_logic_vector(7 downto 0);

begin
  register0_q_net_x68 <= a;
  register1_q_net_x68 <= b;
  ce_1_sg_x73 <= ce_1;
  clk_1_sg_x73 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x19;
  real_x0 <= mult0_p_net_x19;

  constant_x0: entity work.constant_e625dfe409
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x68,
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x68,
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      d => register0_q_net_x68,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      d => register1_q_net_x68,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap13"

entity fir_tap13_entity_c3850dea53 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_c3850dea53;

architecture structural of fir_tap13_entity_c3850dea53 is
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x69: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x69: std_logic_vector(7 downto 0);

begin
  register0_q_net_x69 <= a;
  register1_q_net_x69 <= b;
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x20;
  real_x0 <= mult0_p_net_x20;

  constant_x0: entity work.constant_c69ce17d42
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x69,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x69,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      d => register0_q_net_x69,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      d => register1_q_net_x69,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap14"

entity fir_tap14_entity_8263e35725 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_8263e35725;

architecture structural of fir_tap14_entity_8263e35725 is
  signal ce_1_sg_x75: std_logic;
  signal clk_1_sg_x75: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x70: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x70: std_logic_vector(7 downto 0);

begin
  register0_q_net_x70 <= a;
  register1_q_net_x70 <= b;
  ce_1_sg_x75 <= ce_1;
  clk_1_sg_x75 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x21;
  real_x0 <= mult0_p_net_x21;

  constant_x0: entity work.constant_4970bb8d62
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x70,
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x70,
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      d => register0_q_net_x70,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      d => register1_q_net_x70,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap15"

entity fir_tap15_entity_ba162afa46 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_ba162afa46;

architecture structural of fir_tap15_entity_ba162afa46 is
  signal ce_1_sg_x76: std_logic;
  signal clk_1_sg_x76: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x71: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x71: std_logic_vector(7 downto 0);

begin
  register0_q_net_x71 <= a;
  register1_q_net_x71 <= b;
  ce_1_sg_x76 <= ce_1;
  clk_1_sg_x76 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x22;
  real_x0 <= mult0_p_net_x22;

  constant_x0: entity work.constant_db262cf869
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x71,
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x71,
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      d => register0_q_net_x71,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      d => register1_q_net_x71,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap16"

entity fir_tap16_entity_8955d18c96 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap16_entity_8955d18c96;

architecture structural of fir_tap16_entity_8955d18c96 is
  signal ce_1_sg_x77: std_logic;
  signal clk_1_sg_x77: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x72: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x72: std_logic_vector(7 downto 0);

begin
  register0_q_net_x72 <= a;
  register1_q_net_x72 <= b;
  ce_1_sg_x77 <= ce_1;
  clk_1_sg_x77 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x23;
  real_x0 <= mult0_p_net_x23;

  constant_x0: entity work.constant_c2649c8ff3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x72,
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x72,
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      d => register0_q_net_x72,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      d => register1_q_net_x72,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap2"

entity fir_tap2_entity_8d4fa59459 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap2_entity_8d4fa59459;

architecture structural of fir_tap2_entity_8d4fa59459 is
  signal ce_1_sg_x78: std_logic;
  signal clk_1_sg_x78: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x73: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x73: std_logic_vector(7 downto 0);

begin
  register0_q_net_x73 <= a;
  register1_q_net_x73 <= b;
  ce_1_sg_x78 <= ce_1;
  clk_1_sg_x78 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x24;
  real_x0 <= mult0_p_net_x24;

  constant_x0: entity work.constant_5df1d8d4a6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x73,
      ce => ce_1_sg_x78,
      clk => clk_1_sg_x78,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x73,
      ce => ce_1_sg_x78,
      clk => clk_1_sg_x78,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x78,
      clk => clk_1_sg_x78,
      d => register0_q_net_x73,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x78,
      clk => clk_1_sg_x78,
      d => register1_q_net_x73,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap3"

entity fir_tap3_entity_c6673fb8be is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap3_entity_c6673fb8be;

architecture structural of fir_tap3_entity_c6673fb8be is
  signal ce_1_sg_x79: std_logic;
  signal clk_1_sg_x79: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x74: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x74: std_logic_vector(7 downto 0);

begin
  register0_q_net_x74 <= a;
  register1_q_net_x74 <= b;
  ce_1_sg_x79 <= ce_1;
  clk_1_sg_x79 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x25;
  real_x0 <= mult0_p_net_x25;

  constant_x0: entity work.constant_68f4b11a38
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x74,
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x74,
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d => register0_q_net_x74,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x79,
      clk => clk_1_sg_x79,
      d => register1_q_net_x74,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap4"

entity fir_tap4_entity_5730b996ac is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap4_entity_5730b996ac;

architecture structural of fir_tap4_entity_5730b996ac is
  signal ce_1_sg_x80: std_logic;
  signal clk_1_sg_x80: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x75: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x75: std_logic_vector(7 downto 0);

begin
  register0_q_net_x75 <= a;
  register1_q_net_x75 <= b;
  ce_1_sg_x80 <= ce_1;
  clk_1_sg_x80 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x26;
  real_x0 <= mult0_p_net_x26;

  constant_x0: entity work.constant_973bade9a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x75,
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x75,
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      d => register0_q_net_x75,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      d => register1_q_net_x75,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap5"

entity fir_tap5_entity_fab65560dd is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap5_entity_fab65560dd;

architecture structural of fir_tap5_entity_fab65560dd is
  signal ce_1_sg_x81: std_logic;
  signal clk_1_sg_x81: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x76: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x76: std_logic_vector(7 downto 0);

begin
  register0_q_net_x76 <= a;
  register1_q_net_x76 <= b;
  ce_1_sg_x81 <= ce_1;
  clk_1_sg_x81 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x27;
  real_x0 <= mult0_p_net_x27;

  constant_x0: entity work.constant_3d4a42903b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x76,
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x76,
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      d => register0_q_net_x76,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      d => register1_q_net_x76,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap6"

entity fir_tap6_entity_71f241de22 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap6_entity_71f241de22;

architecture structural of fir_tap6_entity_71f241de22 is
  signal ce_1_sg_x82: std_logic;
  signal clk_1_sg_x82: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x77: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x77: std_logic_vector(7 downto 0);

begin
  register0_q_net_x77 <= a;
  register1_q_net_x77 <= b;
  ce_1_sg_x82 <= ce_1;
  clk_1_sg_x82 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x28;
  real_x0 <= mult0_p_net_x28;

  constant_x0: entity work.constant_a9a76bf5b9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x77,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x77,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => register0_q_net_x77,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => register1_q_net_x77,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap7"

entity fir_tap7_entity_f3a62473be is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap7_entity_f3a62473be;

architecture structural of fir_tap7_entity_f3a62473be is
  signal ce_1_sg_x83: std_logic;
  signal clk_1_sg_x83: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x78: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x78: std_logic_vector(7 downto 0);

begin
  register0_q_net_x78 <= a;
  register1_q_net_x78 <= b;
  ce_1_sg_x83 <= ce_1;
  clk_1_sg_x83 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x29;
  real_x0 <= mult0_p_net_x29;

  constant_x0: entity work.constant_cb28619f1e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x78,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x78,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d => register0_q_net_x78,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d => register1_q_net_x78,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap8"

entity fir_tap8_entity_efb809f36c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_efb809f36c;

architecture structural of fir_tap8_entity_efb809f36c is
  signal ce_1_sg_x84: std_logic;
  signal clk_1_sg_x84: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x79: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x79: std_logic_vector(7 downto 0);

begin
  register0_q_net_x79 <= a;
  register1_q_net_x79 <= b;
  ce_1_sg_x84 <= ce_1;
  clk_1_sg_x84 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x30;
  real_x0 <= mult0_p_net_x30;

  constant_x0: entity work.constant_0435bfa680
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x79,
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x79,
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      d => register0_q_net_x79,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      d => register1_q_net_x79,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3/fir_tap9"

entity fir_tap9_entity_44e2675cd4 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap9_entity_44e2675cd4;

architecture structural of fir_tap9_entity_44e2675cd4 is
  signal ce_1_sg_x85: std_logic;
  signal clk_1_sg_x85: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x80: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x80: std_logic_vector(7 downto 0);

begin
  register0_q_net_x80 <= a;
  register1_q_net_x80 <= b;
  ce_1_sg_x85 <= ce_1;
  clk_1_sg_x85 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x31;
  real_x0 <= mult0_p_net_x31;

  constant_x0: entity work.constant_81ee75d5ac
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x80,
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x80,
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      d => register0_q_net_x80,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      d => register1_q_net_x80,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col3"

entity fir_col3_entity_b0fc3dd9af is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col3_entity_b0fc3dd9af;

architecture structural of fir_col3_entity_b0fc3dd9af is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x86: std_logic;
  signal clk_1_sg_x86: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x100: std_logic_vector(7 downto 0);
  signal register0_q_net_x101: std_logic_vector(7 downto 0);
  signal register0_q_net_x102: std_logic_vector(7 downto 0);
  signal register0_q_net_x103: std_logic_vector(7 downto 0);
  signal register0_q_net_x104: std_logic_vector(7 downto 0);
  signal register0_q_net_x105: std_logic_vector(7 downto 0);
  signal register0_q_net_x106: std_logic_vector(7 downto 0);
  signal register0_q_net_x107: std_logic_vector(7 downto 0);
  signal register0_q_net_x108: std_logic_vector(7 downto 0);
  signal register0_q_net_x109: std_logic_vector(7 downto 0);
  signal register0_q_net_x16: std_logic_vector(7 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register0_q_net_x81: std_logic_vector(7 downto 0);
  signal register0_q_net_x82: std_logic_vector(7 downto 0);
  signal register0_q_net_x83: std_logic_vector(7 downto 0);
  signal register0_q_net_x84: std_logic_vector(7 downto 0);
  signal register0_q_net_x85: std_logic_vector(7 downto 0);
  signal register0_q_net_x86: std_logic_vector(7 downto 0);
  signal register0_q_net_x87: std_logic_vector(7 downto 0);
  signal register0_q_net_x88: std_logic_vector(7 downto 0);
  signal register0_q_net_x89: std_logic_vector(7 downto 0);
  signal register0_q_net_x90: std_logic_vector(7 downto 0);
  signal register0_q_net_x91: std_logic_vector(7 downto 0);
  signal register0_q_net_x92: std_logic_vector(7 downto 0);
  signal register0_q_net_x93: std_logic_vector(7 downto 0);
  signal register0_q_net_x94: std_logic_vector(7 downto 0);
  signal register0_q_net_x95: std_logic_vector(7 downto 0);
  signal register0_q_net_x96: std_logic_vector(7 downto 0);
  signal register0_q_net_x97: std_logic_vector(7 downto 0);
  signal register0_q_net_x98: std_logic_vector(7 downto 0);
  signal register0_q_net_x99: std_logic_vector(7 downto 0);
  signal register1_q_net_x100: std_logic_vector(7 downto 0);
  signal register1_q_net_x101: std_logic_vector(7 downto 0);
  signal register1_q_net_x102: std_logic_vector(7 downto 0);
  signal register1_q_net_x103: std_logic_vector(7 downto 0);
  signal register1_q_net_x104: std_logic_vector(7 downto 0);
  signal register1_q_net_x105: std_logic_vector(7 downto 0);
  signal register1_q_net_x106: std_logic_vector(7 downto 0);
  signal register1_q_net_x107: std_logic_vector(7 downto 0);
  signal register1_q_net_x108: std_logic_vector(7 downto 0);
  signal register1_q_net_x109: std_logic_vector(7 downto 0);
  signal register1_q_net_x16: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x81: std_logic_vector(7 downto 0);
  signal register1_q_net_x82: std_logic_vector(7 downto 0);
  signal register1_q_net_x83: std_logic_vector(7 downto 0);
  signal register1_q_net_x84: std_logic_vector(7 downto 0);
  signal register1_q_net_x85: std_logic_vector(7 downto 0);
  signal register1_q_net_x86: std_logic_vector(7 downto 0);
  signal register1_q_net_x87: std_logic_vector(7 downto 0);
  signal register1_q_net_x88: std_logic_vector(7 downto 0);
  signal register1_q_net_x89: std_logic_vector(7 downto 0);
  signal register1_q_net_x90: std_logic_vector(7 downto 0);
  signal register1_q_net_x91: std_logic_vector(7 downto 0);
  signal register1_q_net_x92: std_logic_vector(7 downto 0);
  signal register1_q_net_x93: std_logic_vector(7 downto 0);
  signal register1_q_net_x94: std_logic_vector(7 downto 0);
  signal register1_q_net_x95: std_logic_vector(7 downto 0);
  signal register1_q_net_x96: std_logic_vector(7 downto 0);
  signal register1_q_net_x97: std_logic_vector(7 downto 0);
  signal register1_q_net_x98: std_logic_vector(7 downto 0);
  signal register1_q_net_x99: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x86 <= ce_1;
  clk_1_sg_x86 <= clk_1;
  register1_q_net_x81 <= imag1;
  register1_q_net_x82 <= imag10;
  register1_q_net_x83 <= imag11;
  register1_q_net_x84 <= imag12;
  register1_q_net_x85 <= imag13;
  register1_q_net_x86 <= imag14;
  register1_q_net_x87 <= imag15;
  register1_q_net_x88 <= imag16;
  register1_q_net_x89 <= imag2;
  register1_q_net_x90 <= imag3;
  register1_q_net_x91 <= imag4;
  register1_q_net_x92 <= imag5;
  register1_q_net_x93 <= imag6;
  register1_q_net_x94 <= imag7;
  register1_q_net_x95 <= imag8;
  register1_q_net_x96 <= imag9;
  register0_q_net_x81 <= real1;
  register0_q_net_x82 <= real10;
  register0_q_net_x83 <= real11;
  register0_q_net_x84 <= real12;
  register0_q_net_x85 <= real13;
  register0_q_net_x86 <= real14;
  register0_q_net_x87 <= real15;
  register0_q_net_x88 <= real16;
  register0_q_net_x89 <= real2;
  register0_q_net_x90 <= real3;
  register0_q_net_x91 <= real4;
  register0_q_net_x92 <= real5;
  register0_q_net_x93 <= real6;
  register0_q_net_x94 <= real7;
  register0_q_net_x95 <= real8;
  register0_q_net_x96 <= real9;
  imag_out1 <= register1_q_net_x16;
  imag_out10 <= register1_q_net_x17;
  imag_out11 <= register1_q_net_x18;
  imag_out12 <= register1_q_net_x97;
  imag_out13 <= register1_q_net_x98;
  imag_out14 <= register1_q_net_x99;
  imag_out15 <= register1_q_net_x100;
  imag_out16 <= register1_q_net_x101;
  imag_out2 <= register1_q_net_x102;
  imag_out3 <= register1_q_net_x103;
  imag_out4 <= register1_q_net_x104;
  imag_out5 <= register1_q_net_x105;
  imag_out6 <= register1_q_net_x106;
  imag_out7 <= register1_q_net_x107;
  imag_out8 <= register1_q_net_x108;
  imag_out9 <= register1_q_net_x109;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x16;
  real_out10 <= register0_q_net_x17;
  real_out11 <= register0_q_net_x18;
  real_out12 <= register0_q_net_x97;
  real_out13 <= register0_q_net_x98;
  real_out14 <= register0_q_net_x99;
  real_out15 <= register0_q_net_x100;
  real_out16 <= register0_q_net_x101;
  real_out2 <= register0_q_net_x102;
  real_out3 <= register0_q_net_x103;
  real_out4 <= register0_q_net_x104;
  real_out5 <= register0_q_net_x105;
  real_out6 <= register0_q_net_x106;
  real_out7 <= register0_q_net_x107;
  real_out8 <= register0_q_net_x108;
  real_out9 <= register0_q_net_x109;
  real_sum <= addr15_s_net_x2;

  adder_tree1_ec678616e9: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_052bdc0f0f: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_8ee1801a3e: entity work.fir_tap10_entity_8ee1801a3e
    port map (
      a => register0_q_net_x82,
      b => register1_q_net_x82,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_4685e660ec: entity work.fir_tap11_entity_4685e660ec
    port map (
      a => register0_q_net_x83,
      b => register1_q_net_x83,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_55243f1c20: entity work.fir_tap12_entity_55243f1c20
    port map (
      a => register0_q_net_x84,
      b => register1_q_net_x84,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x97,
      b_out => register1_q_net_x97,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_c3850dea53: entity work.fir_tap13_entity_c3850dea53
    port map (
      a => register0_q_net_x85,
      b => register1_q_net_x85,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x98,
      b_out => register1_q_net_x98,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_8263e35725: entity work.fir_tap14_entity_8263e35725
    port map (
      a => register0_q_net_x86,
      b => register1_q_net_x86,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x99,
      b_out => register1_q_net_x99,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_ba162afa46: entity work.fir_tap15_entity_ba162afa46
    port map (
      a => register0_q_net_x87,
      b => register1_q_net_x87,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x100,
      b_out => register1_q_net_x100,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_8955d18c96: entity work.fir_tap16_entity_8955d18c96
    port map (
      a => register0_q_net_x88,
      b => register1_q_net_x88,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x101,
      b_out => register1_q_net_x101,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_6ad52a15cc: entity work.fir_tap1_entity_6ad52a15cc
    port map (
      a => register0_q_net_x81,
      b => register1_q_net_x81,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_8d4fa59459: entity work.fir_tap2_entity_8d4fa59459
    port map (
      a => register0_q_net_x89,
      b => register1_q_net_x89,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x102,
      b_out => register1_q_net_x102,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_c6673fb8be: entity work.fir_tap3_entity_c6673fb8be
    port map (
      a => register0_q_net_x90,
      b => register1_q_net_x90,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x103,
      b_out => register1_q_net_x103,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_5730b996ac: entity work.fir_tap4_entity_5730b996ac
    port map (
      a => register0_q_net_x91,
      b => register1_q_net_x91,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x104,
      b_out => register1_q_net_x104,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_fab65560dd: entity work.fir_tap5_entity_fab65560dd
    port map (
      a => register0_q_net_x92,
      b => register1_q_net_x92,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x105,
      b_out => register1_q_net_x105,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_71f241de22: entity work.fir_tap6_entity_71f241de22
    port map (
      a => register0_q_net_x93,
      b => register1_q_net_x93,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x106,
      b_out => register1_q_net_x106,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_f3a62473be: entity work.fir_tap7_entity_f3a62473be
    port map (
      a => register0_q_net_x94,
      b => register1_q_net_x94,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x107,
      b_out => register1_q_net_x107,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_efb809f36c: entity work.fir_tap8_entity_efb809f36c
    port map (
      a => register0_q_net_x95,
      b => register1_q_net_x95,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x108,
      b_out => register1_q_net_x108,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_44e2675cd4: entity work.fir_tap9_entity_44e2675cd4
    port map (
      a => register0_q_net_x96,
      b => register1_q_net_x96,
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      a_out => register0_q_net_x109,
      b_out => register1_q_net_x109,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap1"

entity fir_tap1_entity_a54dfbafe5 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_a54dfbafe5;

architecture structural of fir_tap1_entity_a54dfbafe5 is
  signal ce_1_sg_x89: std_logic;
  signal clk_1_sg_x89: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);

begin
  register0_q_net_x17 <= a;
  register1_q_net_x17 <= b;
  ce_1_sg_x89 <= ce_1;
  clk_1_sg_x89 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x16;
  real_x0 <= mult0_p_net_x16;

  constant_x0: entity work.constant_a7dda33bc0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x17,
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      d => register0_q_net_x17,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      d => register1_q_net_x17,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap10"

entity fir_tap10_entity_e5275f7917 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_e5275f7917;

architecture structural of fir_tap10_entity_e5275f7917 is
  signal ce_1_sg_x90: std_logic;
  signal clk_1_sg_x90: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);

begin
  register0_q_net_x18 <= a;
  register1_q_net_x18 <= b;
  ce_1_sg_x90 <= ce_1;
  clk_1_sg_x90 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x17;
  real_x0 <= mult0_p_net_x17;

  constant_x0: entity work.constant_92c6a13049
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x18,
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      d => register0_q_net_x18,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      d => register1_q_net_x18,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap11"

entity fir_tap11_entity_ab3db76e1b is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_ab3db76e1b;

architecture structural of fir_tap11_entity_ab3db76e1b is
  signal ce_1_sg_x91: std_logic;
  signal clk_1_sg_x91: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);

begin
  register0_q_net_x19 <= a;
  register1_q_net_x19 <= b;
  ce_1_sg_x91 <= ce_1;
  clk_1_sg_x91 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x18;
  real_x0 <= mult0_p_net_x18;

  constant_x0: entity work.constant_5c56548779
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x19,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      d => register0_q_net_x19,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      d => register1_q_net_x19,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap12"

entity fir_tap12_entity_1dde0f8f2c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_1dde0f8f2c;

architecture structural of fir_tap12_entity_1dde0f8f2c is
  signal ce_1_sg_x92: std_logic;
  signal clk_1_sg_x92: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x98: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x98: std_logic_vector(7 downto 0);

begin
  register0_q_net_x98 <= a;
  register1_q_net_x98 <= b;
  ce_1_sg_x92 <= ce_1;
  clk_1_sg_x92 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x19;
  real_x0 <= mult0_p_net_x19;

  constant_x0: entity work.constant_6b9646cf8a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x98,
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x98,
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      d => register0_q_net_x98,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      d => register1_q_net_x98,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap13"

entity fir_tap13_entity_e684529718 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_e684529718;

architecture structural of fir_tap13_entity_e684529718 is
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x99: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x99: std_logic_vector(7 downto 0);

begin
  register0_q_net_x99 <= a;
  register1_q_net_x99 <= b;
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x20;
  real_x0 <= mult0_p_net_x20;

  constant_x0: entity work.constant_3a71d705f4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x99,
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x99,
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      d => register0_q_net_x99,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      d => register1_q_net_x99,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap14"

entity fir_tap14_entity_f3edf9e948 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_f3edf9e948;

architecture structural of fir_tap14_entity_f3edf9e948 is
  signal ce_1_sg_x94: std_logic;
  signal clk_1_sg_x94: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x100: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x100: std_logic_vector(7 downto 0);

begin
  register0_q_net_x100 <= a;
  register1_q_net_x100 <= b;
  ce_1_sg_x94 <= ce_1;
  clk_1_sg_x94 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x21;
  real_x0 <= mult0_p_net_x21;

  constant_x0: entity work.constant_3f7f5064bb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x100,
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x100,
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      d => register0_q_net_x100,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      d => register1_q_net_x100,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap15"

entity fir_tap15_entity_e09aad32c7 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_e09aad32c7;

architecture structural of fir_tap15_entity_e09aad32c7 is
  signal ce_1_sg_x95: std_logic;
  signal clk_1_sg_x95: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x101: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x101: std_logic_vector(7 downto 0);

begin
  register0_q_net_x101 <= a;
  register1_q_net_x101 <= b;
  ce_1_sg_x95 <= ce_1;
  clk_1_sg_x95 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x22;
  real_x0 <= mult0_p_net_x22;

  constant_x0: entity work.constant_a125d716d6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x101,
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x101,
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      d => register0_q_net_x101,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      d => register1_q_net_x101,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4/fir_tap8"

entity fir_tap8_entity_b2946d299b is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    a_out: out std_logic_vector(7 downto 0); 
    b_out: out std_logic_vector(7 downto 0); 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_b2946d299b;

architecture structural of fir_tap8_entity_b2946d299b is
  signal ce_1_sg_x103: std_logic;
  signal clk_1_sg_x103: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x0: std_logic_vector(7 downto 0);
  signal register0_q_net_x109: std_logic_vector(7 downto 0);
  signal register1_q_net_x0: std_logic_vector(7 downto 0);
  signal register1_q_net_x109: std_logic_vector(7 downto 0);

begin
  register0_q_net_x109 <= a;
  register1_q_net_x109 <= b;
  ce_1_sg_x103 <= ce_1;
  clk_1_sg_x103 <= clk_1;
  a_out <= register0_q_net_x0;
  b_out <= register1_q_net_x0;
  imag <= mult1_p_net_x30;
  real_x0 <= mult0_p_net_x30;

  constant_x0: entity work.constant_a6c7b95d29
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x109,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x109,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      d => register0_q_net_x109,
      en => "1",
      rst => "0",
      q => register0_q_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      d => register1_q_net_x109,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col4"

entity fir_col4_entity_1135c530b9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col4_entity_1135c530b9;

architecture structural of fir_col4_entity_1135c530b9 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x105: std_logic;
  signal clk_1_sg_x105: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x111: std_logic_vector(7 downto 0);
  signal register0_q_net_x112: std_logic_vector(7 downto 0);
  signal register0_q_net_x113: std_logic_vector(7 downto 0);
  signal register0_q_net_x114: std_logic_vector(7 downto 0);
  signal register0_q_net_x115: std_logic_vector(7 downto 0);
  signal register0_q_net_x116: std_logic_vector(7 downto 0);
  signal register0_q_net_x117: std_logic_vector(7 downto 0);
  signal register0_q_net_x118: std_logic_vector(7 downto 0);
  signal register0_q_net_x119: std_logic_vector(7 downto 0);
  signal register0_q_net_x120: std_logic_vector(7 downto 0);
  signal register0_q_net_x121: std_logic_vector(7 downto 0);
  signal register0_q_net_x122: std_logic_vector(7 downto 0);
  signal register0_q_net_x123: std_logic_vector(7 downto 0);
  signal register0_q_net_x16: std_logic_vector(7 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register0_q_net_x25: std_logic_vector(7 downto 0);
  signal register0_q_net_x26: std_logic_vector(7 downto 0);
  signal register0_q_net_x27: std_logic_vector(7 downto 0);
  signal register0_q_net_x28: std_logic_vector(7 downto 0);
  signal register0_q_net_x29: std_logic_vector(7 downto 0);
  signal register0_q_net_x30: std_logic_vector(7 downto 0);
  signal register0_q_net_x31: std_logic_vector(7 downto 0);
  signal register0_q_net_x32: std_logic_vector(7 downto 0);
  signal register0_q_net_x33: std_logic_vector(7 downto 0);
  signal register0_q_net_x34: std_logic_vector(7 downto 0);
  signal register0_q_net_x35: std_logic_vector(7 downto 0);
  signal register0_q_net_x36: std_logic_vector(7 downto 0);
  signal register0_q_net_x37: std_logic_vector(7 downto 0);
  signal register1_q_net_x111: std_logic_vector(7 downto 0);
  signal register1_q_net_x112: std_logic_vector(7 downto 0);
  signal register1_q_net_x113: std_logic_vector(7 downto 0);
  signal register1_q_net_x114: std_logic_vector(7 downto 0);
  signal register1_q_net_x115: std_logic_vector(7 downto 0);
  signal register1_q_net_x116: std_logic_vector(7 downto 0);
  signal register1_q_net_x117: std_logic_vector(7 downto 0);
  signal register1_q_net_x118: std_logic_vector(7 downto 0);
  signal register1_q_net_x119: std_logic_vector(7 downto 0);
  signal register1_q_net_x120: std_logic_vector(7 downto 0);
  signal register1_q_net_x121: std_logic_vector(7 downto 0);
  signal register1_q_net_x122: std_logic_vector(7 downto 0);
  signal register1_q_net_x123: std_logic_vector(7 downto 0);
  signal register1_q_net_x16: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x25: std_logic_vector(7 downto 0);
  signal register1_q_net_x26: std_logic_vector(7 downto 0);
  signal register1_q_net_x27: std_logic_vector(7 downto 0);
  signal register1_q_net_x28: std_logic_vector(7 downto 0);
  signal register1_q_net_x29: std_logic_vector(7 downto 0);
  signal register1_q_net_x30: std_logic_vector(7 downto 0);
  signal register1_q_net_x31: std_logic_vector(7 downto 0);
  signal register1_q_net_x32: std_logic_vector(7 downto 0);
  signal register1_q_net_x33: std_logic_vector(7 downto 0);
  signal register1_q_net_x34: std_logic_vector(7 downto 0);
  signal register1_q_net_x35: std_logic_vector(7 downto 0);
  signal register1_q_net_x36: std_logic_vector(7 downto 0);
  signal register1_q_net_x37: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x105 <= ce_1;
  clk_1_sg_x105 <= clk_1;
  register1_q_net_x20 <= imag1;
  register1_q_net_x21 <= imag10;
  register1_q_net_x22 <= imag11;
  register1_q_net_x111 <= imag12;
  register1_q_net_x112 <= imag13;
  register1_q_net_x113 <= imag14;
  register1_q_net_x114 <= imag15;
  register1_q_net_x115 <= imag16;
  register1_q_net_x116 <= imag2;
  register1_q_net_x117 <= imag3;
  register1_q_net_x118 <= imag4;
  register1_q_net_x119 <= imag5;
  register1_q_net_x120 <= imag6;
  register1_q_net_x121 <= imag7;
  register1_q_net_x122 <= imag8;
  register1_q_net_x123 <= imag9;
  register0_q_net_x20 <= real1;
  register0_q_net_x21 <= real10;
  register0_q_net_x22 <= real11;
  register0_q_net_x111 <= real12;
  register0_q_net_x112 <= real13;
  register0_q_net_x113 <= real14;
  register0_q_net_x114 <= real15;
  register0_q_net_x115 <= real16;
  register0_q_net_x116 <= real2;
  register0_q_net_x117 <= real3;
  register0_q_net_x118 <= real4;
  register0_q_net_x119 <= real5;
  register0_q_net_x120 <= real6;
  register0_q_net_x121 <= real7;
  register0_q_net_x122 <= real8;
  register0_q_net_x123 <= real9;
  imag_out1 <= register1_q_net_x23;
  imag_out10 <= register1_q_net_x16;
  imag_out11 <= register1_q_net_x24;
  imag_out12 <= register1_q_net_x25;
  imag_out13 <= register1_q_net_x26;
  imag_out14 <= register1_q_net_x27;
  imag_out15 <= register1_q_net_x28;
  imag_out16 <= register1_q_net_x29;
  imag_out2 <= register1_q_net_x30;
  imag_out3 <= register1_q_net_x31;
  imag_out4 <= register1_q_net_x32;
  imag_out5 <= register1_q_net_x33;
  imag_out6 <= register1_q_net_x34;
  imag_out7 <= register1_q_net_x35;
  imag_out8 <= register1_q_net_x36;
  imag_out9 <= register1_q_net_x37;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x23;
  real_out10 <= register0_q_net_x16;
  real_out11 <= register0_q_net_x24;
  real_out12 <= register0_q_net_x25;
  real_out13 <= register0_q_net_x26;
  real_out14 <= register0_q_net_x27;
  real_out15 <= register0_q_net_x28;
  real_out16 <= register0_q_net_x29;
  real_out2 <= register0_q_net_x30;
  real_out3 <= register0_q_net_x31;
  real_out4 <= register0_q_net_x32;
  real_out5 <= register0_q_net_x33;
  real_out6 <= register0_q_net_x34;
  real_out7 <= register0_q_net_x35;
  real_out8 <= register0_q_net_x36;
  real_out9 <= register0_q_net_x37;
  real_sum <= addr15_s_net_x2;

  adder_tree1_f53e839bb6: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_2db0eca9c2: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_e5275f7917: entity work.fir_tap10_entity_e5275f7917
    port map (
      a => register0_q_net_x21,
      b => register1_q_net_x21,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_ab3db76e1b: entity work.fir_tap11_entity_ab3db76e1b
    port map (
      a => register0_q_net_x22,
      b => register1_q_net_x22,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_1dde0f8f2c: entity work.fir_tap12_entity_1dde0f8f2c
    port map (
      a => register0_q_net_x111,
      b => register1_q_net_x111,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x25,
      b_out => register1_q_net_x25,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_e684529718: entity work.fir_tap13_entity_e684529718
    port map (
      a => register0_q_net_x112,
      b => register1_q_net_x112,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x26,
      b_out => register1_q_net_x26,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_f3edf9e948: entity work.fir_tap14_entity_f3edf9e948
    port map (
      a => register0_q_net_x113,
      b => register1_q_net_x113,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x27,
      b_out => register1_q_net_x27,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_e09aad32c7: entity work.fir_tap15_entity_e09aad32c7
    port map (
      a => register0_q_net_x114,
      b => register1_q_net_x114,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x28,
      b_out => register1_q_net_x28,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_0ee0b0a88d: entity work.fir_tap1_entity_a54dfbafe5
    port map (
      a => register0_q_net_x115,
      b => register1_q_net_x115,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x29,
      b_out => register1_q_net_x29,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_a54dfbafe5: entity work.fir_tap1_entity_a54dfbafe5
    port map (
      a => register0_q_net_x20,
      b => register1_q_net_x20,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_f50fd5f4d4: entity work.fir_tap15_entity_e09aad32c7
    port map (
      a => register0_q_net_x116,
      b => register1_q_net_x116,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x30,
      b_out => register1_q_net_x30,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_6efb4a5267: entity work.fir_tap14_entity_f3edf9e948
    port map (
      a => register0_q_net_x117,
      b => register1_q_net_x117,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x31,
      b_out => register1_q_net_x31,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_8c5f694601: entity work.fir_tap13_entity_e684529718
    port map (
      a => register0_q_net_x118,
      b => register1_q_net_x118,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x32,
      b_out => register1_q_net_x32,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_6a5caca0fc: entity work.fir_tap12_entity_1dde0f8f2c
    port map (
      a => register0_q_net_x119,
      b => register1_q_net_x119,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x33,
      b_out => register1_q_net_x33,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_d0f20f6b24: entity work.fir_tap11_entity_ab3db76e1b
    port map (
      a => register0_q_net_x120,
      b => register1_q_net_x120,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x34,
      b_out => register1_q_net_x34,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_2e706fac7f: entity work.fir_tap10_entity_e5275f7917
    port map (
      a => register0_q_net_x121,
      b => register1_q_net_x121,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x35,
      b_out => register1_q_net_x35,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_b2946d299b: entity work.fir_tap8_entity_b2946d299b
    port map (
      a => register0_q_net_x122,
      b => register1_q_net_x122,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x36,
      b_out => register1_q_net_x36,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_bb7619ccf7: entity work.fir_tap8_entity_b2946d299b
    port map (
      a => register0_q_net_x123,
      b => register1_q_net_x123,
      ce_1 => ce_1_sg_x105,
      clk_1 => clk_1_sg_x105,
      a_out => register0_q_net_x37,
      b_out => register1_q_net_x37,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col5"

entity fir_col5_entity_c96624a65d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col5_entity_c96624a65d;

architecture structural of fir_col5_entity_c96624a65d is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x124: std_logic;
  signal clk_1_sg_x124: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x54: std_logic_vector(7 downto 0);
  signal register0_q_net_x55: std_logic_vector(7 downto 0);
  signal register0_q_net_x56: std_logic_vector(7 downto 0);
  signal register0_q_net_x57: std_logic_vector(7 downto 0);
  signal register0_q_net_x58: std_logic_vector(7 downto 0);
  signal register0_q_net_x59: std_logic_vector(7 downto 0);
  signal register0_q_net_x60: std_logic_vector(7 downto 0);
  signal register0_q_net_x61: std_logic_vector(7 downto 0);
  signal register0_q_net_x62: std_logic_vector(7 downto 0);
  signal register0_q_net_x63: std_logic_vector(7 downto 0);
  signal register0_q_net_x64: std_logic_vector(7 downto 0);
  signal register0_q_net_x65: std_logic_vector(7 downto 0);
  signal register0_q_net_x66: std_logic_vector(7 downto 0);
  signal register0_q_net_x67: std_logic_vector(7 downto 0);
  signal register0_q_net_x68: std_logic_vector(7 downto 0);
  signal register0_q_net_x69: std_logic_vector(7 downto 0);
  signal register0_q_net_x70: std_logic_vector(7 downto 0);
  signal register0_q_net_x71: std_logic_vector(7 downto 0);
  signal register0_q_net_x72: std_logic_vector(7 downto 0);
  signal register0_q_net_x73: std_logic_vector(7 downto 0);
  signal register0_q_net_x74: std_logic_vector(7 downto 0);
  signal register0_q_net_x75: std_logic_vector(7 downto 0);
  signal register0_q_net_x76: std_logic_vector(7 downto 0);
  signal register0_q_net_x77: std_logic_vector(7 downto 0);
  signal register0_q_net_x78: std_logic_vector(7 downto 0);
  signal register0_q_net_x79: std_logic_vector(7 downto 0);
  signal register0_q_net_x80: std_logic_vector(7 downto 0);
  signal register0_q_net_x81: std_logic_vector(7 downto 0);
  signal register0_q_net_x82: std_logic_vector(7 downto 0);
  signal register0_q_net_x83: std_logic_vector(7 downto 0);
  signal register0_q_net_x84: std_logic_vector(7 downto 0);
  signal register0_q_net_x85: std_logic_vector(7 downto 0);
  signal register1_q_net_x54: std_logic_vector(7 downto 0);
  signal register1_q_net_x55: std_logic_vector(7 downto 0);
  signal register1_q_net_x56: std_logic_vector(7 downto 0);
  signal register1_q_net_x57: std_logic_vector(7 downto 0);
  signal register1_q_net_x58: std_logic_vector(7 downto 0);
  signal register1_q_net_x59: std_logic_vector(7 downto 0);
  signal register1_q_net_x60: std_logic_vector(7 downto 0);
  signal register1_q_net_x61: std_logic_vector(7 downto 0);
  signal register1_q_net_x62: std_logic_vector(7 downto 0);
  signal register1_q_net_x63: std_logic_vector(7 downto 0);
  signal register1_q_net_x64: std_logic_vector(7 downto 0);
  signal register1_q_net_x65: std_logic_vector(7 downto 0);
  signal register1_q_net_x66: std_logic_vector(7 downto 0);
  signal register1_q_net_x67: std_logic_vector(7 downto 0);
  signal register1_q_net_x68: std_logic_vector(7 downto 0);
  signal register1_q_net_x69: std_logic_vector(7 downto 0);
  signal register1_q_net_x70: std_logic_vector(7 downto 0);
  signal register1_q_net_x71: std_logic_vector(7 downto 0);
  signal register1_q_net_x72: std_logic_vector(7 downto 0);
  signal register1_q_net_x73: std_logic_vector(7 downto 0);
  signal register1_q_net_x74: std_logic_vector(7 downto 0);
  signal register1_q_net_x75: std_logic_vector(7 downto 0);
  signal register1_q_net_x76: std_logic_vector(7 downto 0);
  signal register1_q_net_x77: std_logic_vector(7 downto 0);
  signal register1_q_net_x78: std_logic_vector(7 downto 0);
  signal register1_q_net_x79: std_logic_vector(7 downto 0);
  signal register1_q_net_x80: std_logic_vector(7 downto 0);
  signal register1_q_net_x81: std_logic_vector(7 downto 0);
  signal register1_q_net_x82: std_logic_vector(7 downto 0);
  signal register1_q_net_x83: std_logic_vector(7 downto 0);
  signal register1_q_net_x84: std_logic_vector(7 downto 0);
  signal register1_q_net_x85: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x124 <= ce_1;
  clk_1_sg_x124 <= clk_1;
  register1_q_net_x54 <= imag1;
  register1_q_net_x55 <= imag10;
  register1_q_net_x56 <= imag11;
  register1_q_net_x57 <= imag12;
  register1_q_net_x58 <= imag13;
  register1_q_net_x59 <= imag14;
  register1_q_net_x60 <= imag15;
  register1_q_net_x61 <= imag16;
  register1_q_net_x62 <= imag2;
  register1_q_net_x63 <= imag3;
  register1_q_net_x64 <= imag4;
  register1_q_net_x65 <= imag5;
  register1_q_net_x66 <= imag6;
  register1_q_net_x67 <= imag7;
  register1_q_net_x68 <= imag8;
  register1_q_net_x69 <= imag9;
  register0_q_net_x54 <= real1;
  register0_q_net_x55 <= real10;
  register0_q_net_x56 <= real11;
  register0_q_net_x57 <= real12;
  register0_q_net_x58 <= real13;
  register0_q_net_x59 <= real14;
  register0_q_net_x60 <= real15;
  register0_q_net_x61 <= real16;
  register0_q_net_x62 <= real2;
  register0_q_net_x63 <= real3;
  register0_q_net_x64 <= real4;
  register0_q_net_x65 <= real5;
  register0_q_net_x66 <= real6;
  register0_q_net_x67 <= real7;
  register0_q_net_x68 <= real8;
  register0_q_net_x69 <= real9;
  imag_out1 <= register1_q_net_x70;
  imag_out10 <= register1_q_net_x71;
  imag_out11 <= register1_q_net_x72;
  imag_out12 <= register1_q_net_x73;
  imag_out13 <= register1_q_net_x74;
  imag_out14 <= register1_q_net_x75;
  imag_out15 <= register1_q_net_x76;
  imag_out16 <= register1_q_net_x77;
  imag_out2 <= register1_q_net_x78;
  imag_out3 <= register1_q_net_x79;
  imag_out4 <= register1_q_net_x80;
  imag_out5 <= register1_q_net_x81;
  imag_out6 <= register1_q_net_x82;
  imag_out7 <= register1_q_net_x83;
  imag_out8 <= register1_q_net_x84;
  imag_out9 <= register1_q_net_x85;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x70;
  real_out10 <= register0_q_net_x71;
  real_out11 <= register0_q_net_x72;
  real_out12 <= register0_q_net_x73;
  real_out13 <= register0_q_net_x74;
  real_out14 <= register0_q_net_x75;
  real_out15 <= register0_q_net_x76;
  real_out16 <= register0_q_net_x77;
  real_out2 <= register0_q_net_x78;
  real_out3 <= register0_q_net_x79;
  real_out4 <= register0_q_net_x80;
  real_out5 <= register0_q_net_x81;
  real_out6 <= register0_q_net_x82;
  real_out7 <= register0_q_net_x83;
  real_out8 <= register0_q_net_x84;
  real_out9 <= register0_q_net_x85;
  real_sum <= addr15_s_net_x2;

  adder_tree1_c562d6d1c5: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_048387d8c5: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_371788a01e: entity work.fir_tap7_entity_f3a62473be
    port map (
      a => register0_q_net_x55,
      b => register1_q_net_x55,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x71,
      b_out => register1_q_net_x71,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_1ceb1b5e18: entity work.fir_tap6_entity_71f241de22
    port map (
      a => register0_q_net_x56,
      b => register1_q_net_x56,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x72,
      b_out => register1_q_net_x72,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_69c4a2dfc1: entity work.fir_tap5_entity_fab65560dd
    port map (
      a => register0_q_net_x57,
      b => register1_q_net_x57,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x73,
      b_out => register1_q_net_x73,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_06bb1194df: entity work.fir_tap4_entity_5730b996ac
    port map (
      a => register0_q_net_x58,
      b => register1_q_net_x58,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x74,
      b_out => register1_q_net_x74,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_da4970f3b3: entity work.fir_tap3_entity_c6673fb8be
    port map (
      a => register0_q_net_x59,
      b => register1_q_net_x59,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x75,
      b_out => register1_q_net_x75,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_0b8aa23f62: entity work.fir_tap2_entity_8d4fa59459
    port map (
      a => register0_q_net_x60,
      b => register1_q_net_x60,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x76,
      b_out => register1_q_net_x76,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_9e7ab42a09: entity work.fir_tap1_entity_6ad52a15cc
    port map (
      a => register0_q_net_x61,
      b => register1_q_net_x61,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x77,
      b_out => register1_q_net_x77,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_5b655a8f6d: entity work.fir_tap16_entity_8955d18c96
    port map (
      a => register0_q_net_x54,
      b => register1_q_net_x54,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x70,
      b_out => register1_q_net_x70,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_177cec3835: entity work.fir_tap15_entity_ba162afa46
    port map (
      a => register0_q_net_x62,
      b => register1_q_net_x62,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x78,
      b_out => register1_q_net_x78,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_20f1215c12: entity work.fir_tap14_entity_8263e35725
    port map (
      a => register0_q_net_x63,
      b => register1_q_net_x63,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x79,
      b_out => register1_q_net_x79,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_a285d275c3: entity work.fir_tap13_entity_c3850dea53
    port map (
      a => register0_q_net_x64,
      b => register1_q_net_x64,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x80,
      b_out => register1_q_net_x80,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_a83f827b39: entity work.fir_tap12_entity_55243f1c20
    port map (
      a => register0_q_net_x65,
      b => register1_q_net_x65,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x81,
      b_out => register1_q_net_x81,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_2e43d38e4b: entity work.fir_tap11_entity_4685e660ec
    port map (
      a => register0_q_net_x66,
      b => register1_q_net_x66,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x82,
      b_out => register1_q_net_x82,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_64004b81b1: entity work.fir_tap10_entity_8ee1801a3e
    port map (
      a => register0_q_net_x67,
      b => register1_q_net_x67,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x83,
      b_out => register1_q_net_x83,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_867e8f0279: entity work.fir_tap9_entity_44e2675cd4
    port map (
      a => register0_q_net_x68,
      b => register1_q_net_x68,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x84,
      b_out => register1_q_net_x84,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_c6ef701608: entity work.fir_tap8_entity_efb809f36c
    port map (
      a => register0_q_net_x69,
      b => register1_q_net_x69,
      ce_1 => ce_1_sg_x124,
      clk_1 => clk_1_sg_x124,
      a_out => register0_q_net_x85,
      b_out => register1_q_net_x85,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col6"

entity fir_col6_entity_0bd1e1bfbc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_out1: out std_logic_vector(7 downto 0); 
    imag_out10: out std_logic_vector(7 downto 0); 
    imag_out11: out std_logic_vector(7 downto 0); 
    imag_out12: out std_logic_vector(7 downto 0); 
    imag_out13: out std_logic_vector(7 downto 0); 
    imag_out14: out std_logic_vector(7 downto 0); 
    imag_out15: out std_logic_vector(7 downto 0); 
    imag_out16: out std_logic_vector(7 downto 0); 
    imag_out2: out std_logic_vector(7 downto 0); 
    imag_out3: out std_logic_vector(7 downto 0); 
    imag_out4: out std_logic_vector(7 downto 0); 
    imag_out5: out std_logic_vector(7 downto 0); 
    imag_out6: out std_logic_vector(7 downto 0); 
    imag_out7: out std_logic_vector(7 downto 0); 
    imag_out8: out std_logic_vector(7 downto 0); 
    imag_out9: out std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_out1: out std_logic_vector(7 downto 0); 
    real_out10: out std_logic_vector(7 downto 0); 
    real_out11: out std_logic_vector(7 downto 0); 
    real_out12: out std_logic_vector(7 downto 0); 
    real_out13: out std_logic_vector(7 downto 0); 
    real_out14: out std_logic_vector(7 downto 0); 
    real_out15: out std_logic_vector(7 downto 0); 
    real_out16: out std_logic_vector(7 downto 0); 
    real_out2: out std_logic_vector(7 downto 0); 
    real_out3: out std_logic_vector(7 downto 0); 
    real_out4: out std_logic_vector(7 downto 0); 
    real_out5: out std_logic_vector(7 downto 0); 
    real_out6: out std_logic_vector(7 downto 0); 
    real_out7: out std_logic_vector(7 downto 0); 
    real_out8: out std_logic_vector(7 downto 0); 
    real_out9: out std_logic_vector(7 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col6_entity_0bd1e1bfbc;

architecture structural of fir_col6_entity_0bd1e1bfbc is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x143: std_logic;
  signal clk_1_sg_x143: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x100: std_logic_vector(7 downto 0);
  signal register0_q_net_x101: std_logic_vector(7 downto 0);
  signal register0_q_net_x102: std_logic_vector(7 downto 0);
  signal register0_q_net_x103: std_logic_vector(7 downto 0);
  signal register0_q_net_x104: std_logic_vector(7 downto 0);
  signal register0_q_net_x105: std_logic_vector(7 downto 0);
  signal register0_q_net_x106: std_logic_vector(7 downto 0);
  signal register0_q_net_x107: std_logic_vector(7 downto 0);
  signal register0_q_net_x108: std_logic_vector(7 downto 0);
  signal register0_q_net_x109: std_logic_vector(7 downto 0);
  signal register0_q_net_x16: std_logic_vector(7 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register0_q_net_x87: std_logic_vector(7 downto 0);
  signal register0_q_net_x88: std_logic_vector(7 downto 0);
  signal register0_q_net_x89: std_logic_vector(7 downto 0);
  signal register0_q_net_x90: std_logic_vector(7 downto 0);
  signal register0_q_net_x91: std_logic_vector(7 downto 0);
  signal register0_q_net_x92: std_logic_vector(7 downto 0);
  signal register0_q_net_x93: std_logic_vector(7 downto 0);
  signal register0_q_net_x94: std_logic_vector(7 downto 0);
  signal register0_q_net_x95: std_logic_vector(7 downto 0);
  signal register0_q_net_x96: std_logic_vector(7 downto 0);
  signal register0_q_net_x97: std_logic_vector(7 downto 0);
  signal register0_q_net_x98: std_logic_vector(7 downto 0);
  signal register0_q_net_x99: std_logic_vector(7 downto 0);
  signal register1_q_net_x100: std_logic_vector(7 downto 0);
  signal register1_q_net_x101: std_logic_vector(7 downto 0);
  signal register1_q_net_x102: std_logic_vector(7 downto 0);
  signal register1_q_net_x103: std_logic_vector(7 downto 0);
  signal register1_q_net_x104: std_logic_vector(7 downto 0);
  signal register1_q_net_x105: std_logic_vector(7 downto 0);
  signal register1_q_net_x106: std_logic_vector(7 downto 0);
  signal register1_q_net_x107: std_logic_vector(7 downto 0);
  signal register1_q_net_x108: std_logic_vector(7 downto 0);
  signal register1_q_net_x109: std_logic_vector(7 downto 0);
  signal register1_q_net_x16: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x87: std_logic_vector(7 downto 0);
  signal register1_q_net_x88: std_logic_vector(7 downto 0);
  signal register1_q_net_x89: std_logic_vector(7 downto 0);
  signal register1_q_net_x90: std_logic_vector(7 downto 0);
  signal register1_q_net_x91: std_logic_vector(7 downto 0);
  signal register1_q_net_x92: std_logic_vector(7 downto 0);
  signal register1_q_net_x93: std_logic_vector(7 downto 0);
  signal register1_q_net_x94: std_logic_vector(7 downto 0);
  signal register1_q_net_x95: std_logic_vector(7 downto 0);
  signal register1_q_net_x96: std_logic_vector(7 downto 0);
  signal register1_q_net_x97: std_logic_vector(7 downto 0);
  signal register1_q_net_x98: std_logic_vector(7 downto 0);
  signal register1_q_net_x99: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x143 <= ce_1;
  clk_1_sg_x143 <= clk_1;
  register1_q_net_x87 <= imag1;
  register1_q_net_x88 <= imag10;
  register1_q_net_x89 <= imag11;
  register1_q_net_x90 <= imag12;
  register1_q_net_x91 <= imag13;
  register1_q_net_x92 <= imag14;
  register1_q_net_x93 <= imag15;
  register1_q_net_x94 <= imag16;
  register1_q_net_x95 <= imag2;
  register1_q_net_x96 <= imag3;
  register1_q_net_x97 <= imag4;
  register1_q_net_x98 <= imag5;
  register1_q_net_x99 <= imag6;
  register1_q_net_x100 <= imag7;
  register1_q_net_x101 <= imag8;
  register1_q_net_x102 <= imag9;
  register0_q_net_x87 <= real1;
  register0_q_net_x88 <= real10;
  register0_q_net_x89 <= real11;
  register0_q_net_x90 <= real12;
  register0_q_net_x91 <= real13;
  register0_q_net_x92 <= real14;
  register0_q_net_x93 <= real15;
  register0_q_net_x94 <= real16;
  register0_q_net_x95 <= real2;
  register0_q_net_x96 <= real3;
  register0_q_net_x97 <= real4;
  register0_q_net_x98 <= real5;
  register0_q_net_x99 <= real6;
  register0_q_net_x100 <= real7;
  register0_q_net_x101 <= real8;
  register0_q_net_x102 <= real9;
  imag_out1 <= register1_q_net_x16;
  imag_out10 <= register1_q_net_x17;
  imag_out11 <= register1_q_net_x18;
  imag_out12 <= register1_q_net_x19;
  imag_out13 <= register1_q_net_x20;
  imag_out14 <= register1_q_net_x21;
  imag_out15 <= register1_q_net_x22;
  imag_out16 <= register1_q_net_x23;
  imag_out2 <= register1_q_net_x24;
  imag_out3 <= register1_q_net_x103;
  imag_out4 <= register1_q_net_x104;
  imag_out5 <= register1_q_net_x105;
  imag_out6 <= register1_q_net_x106;
  imag_out7 <= register1_q_net_x107;
  imag_out8 <= register1_q_net_x108;
  imag_out9 <= register1_q_net_x109;
  imag_sum <= addr15_s_net_x3;
  real_out1 <= register0_q_net_x16;
  real_out10 <= register0_q_net_x17;
  real_out11 <= register0_q_net_x18;
  real_out12 <= register0_q_net_x19;
  real_out13 <= register0_q_net_x20;
  real_out14 <= register0_q_net_x21;
  real_out15 <= register0_q_net_x22;
  real_out16 <= register0_q_net_x23;
  real_out2 <= register0_q_net_x24;
  real_out3 <= register0_q_net_x103;
  real_out4 <= register0_q_net_x104;
  real_out5 <= register0_q_net_x105;
  real_out6 <= register0_q_net_x106;
  real_out7 <= register0_q_net_x107;
  real_out8 <= register0_q_net_x108;
  real_out9 <= register0_q_net_x109;
  real_sum <= addr15_s_net_x2;

  adder_tree1_12552957e4: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_a006571e51: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_67567e14b7: entity work.fir_tap7_entity_6bb41ed1ea
    port map (
      a => register0_q_net_x88,
      b => register1_q_net_x88,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_779146d633: entity work.fir_tap6_entity_9501ec5ab1
    port map (
      a => register0_q_net_x89,
      b => register1_q_net_x89,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_445dd311d6: entity work.fir_tap5_entity_7dc5597497
    port map (
      a => register0_q_net_x90,
      b => register1_q_net_x90,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x19,
      b_out => register1_q_net_x19,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_5fe6812fef: entity work.fir_tap4_entity_6d088bf2de
    port map (
      a => register0_q_net_x91,
      b => register1_q_net_x91,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x20,
      b_out => register1_q_net_x20,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_d69452b1a2: entity work.fir_tap3_entity_e8a4739b14
    port map (
      a => register0_q_net_x92,
      b => register1_q_net_x92,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x21,
      b_out => register1_q_net_x21,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_8c2c2e7d58: entity work.fir_tap2_entity_5b1d6f0f5c
    port map (
      a => register0_q_net_x93,
      b => register1_q_net_x93,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x22,
      b_out => register1_q_net_x22,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_080ca8e162: entity work.fir_tap1_entity_63c1df1fa1
    port map (
      a => register0_q_net_x94,
      b => register1_q_net_x94,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_d109bc19c8: entity work.fir_tap16_entity_acfb7c41fb
    port map (
      a => register0_q_net_x87,
      b => register1_q_net_x87,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_7f15a735e7: entity work.fir_tap15_entity_65e5cae13e
    port map (
      a => register0_q_net_x95,
      b => register1_q_net_x95,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_d6b0348c80: entity work.fir_tap14_entity_347e6fa43b
    port map (
      a => register0_q_net_x96,
      b => register1_q_net_x96,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x103,
      b_out => register1_q_net_x103,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_b7cc470f10: entity work.fir_tap13_entity_6b00bb1219
    port map (
      a => register0_q_net_x97,
      b => register1_q_net_x97,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x104,
      b_out => register1_q_net_x104,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_1215265e72: entity work.fir_tap12_entity_5f2503f0fc
    port map (
      a => register0_q_net_x98,
      b => register1_q_net_x98,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x105,
      b_out => register1_q_net_x105,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_736082c8e0: entity work.fir_tap11_entity_7274fd26b7
    port map (
      a => register0_q_net_x99,
      b => register1_q_net_x99,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x106,
      b_out => register1_q_net_x106,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_a7c3aafdbb: entity work.fir_tap10_entity_ce608d0ad2
    port map (
      a => register0_q_net_x100,
      b => register1_q_net_x100,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x107,
      b_out => register1_q_net_x107,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_cf0b356447: entity work.fir_tap9_entity_4fc065f93f
    port map (
      a => register0_q_net_x101,
      b => register1_q_net_x101,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x108,
      b_out => register1_q_net_x108,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_b6fb752ad8: entity work.fir_tap8_entity_25e08b5504
    port map (
      a => register0_q_net_x102,
      b => register1_q_net_x102,
      ce_1 => ce_1_sg_x143,
      clk_1 => clk_1_sg_x143,
      a_out => register0_q_net_x109,
      b_out => register1_q_net_x109,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap1"

entity fir_tap1_entity_401a45d19a is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_401a45d19a;

architecture structural of fir_tap1_entity_401a45d19a is
  signal ce_1_sg_x146: std_logic;
  signal clk_1_sg_x146: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);

begin
  register0_q_net_x17 <= a;
  register1_q_net_x17 <= b;
  ce_1_sg_x146 <= ce_1;
  clk_1_sg_x146 <= clk_1;
  imag <= mult1_p_net_x16;
  real_x0 <= mult0_p_net_x16;

  constant_x0: entity work.constant_64302bcbfa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x17,
      ce => ce_1_sg_x146,
      clk => clk_1_sg_x146,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x146,
      clk => clk_1_sg_x146,
      clr => '0',
      p => mult1_p_net_x16
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap10"

entity fir_tap10_entity_b091a1d45b is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_b091a1d45b;

architecture structural of fir_tap10_entity_b091a1d45b is
  signal ce_1_sg_x147: std_logic;
  signal clk_1_sg_x147: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);

begin
  register0_q_net_x18 <= a;
  register1_q_net_x18 <= b;
  ce_1_sg_x147 <= ce_1;
  clk_1_sg_x147 <= clk_1;
  imag <= mult1_p_net_x17;
  real_x0 <= mult0_p_net_x17;

  constant_x0: entity work.constant_be49aac425
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x18,
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x147,
      clk => clk_1_sg_x147,
      clr => '0',
      p => mult1_p_net_x17
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap11"

entity fir_tap11_entity_9f7780bc83 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_9f7780bc83;

architecture structural of fir_tap11_entity_9f7780bc83 is
  signal ce_1_sg_x148: std_logic;
  signal clk_1_sg_x148: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);

begin
  register0_q_net_x19 <= a;
  register1_q_net_x19 <= b;
  ce_1_sg_x148 <= ce_1;
  clk_1_sg_x148 <= clk_1;
  imag <= mult1_p_net_x18;
  real_x0 <= mult0_p_net_x18;

  constant_x0: entity work.constant_946344552b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x19,
      ce => ce_1_sg_x148,
      clk => clk_1_sg_x148,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x148,
      clk => clk_1_sg_x148,
      clr => '0',
      p => mult1_p_net_x18
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap12"

entity fir_tap12_entity_263cd9f40b is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_263cd9f40b;

architecture structural of fir_tap12_entity_263cd9f40b is
  signal ce_1_sg_x149: std_logic;
  signal clk_1_sg_x149: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);

begin
  register0_q_net_x20 <= a;
  register1_q_net_x20 <= b;
  ce_1_sg_x149 <= ce_1;
  clk_1_sg_x149 <= clk_1;
  imag <= mult1_p_net_x19;
  real_x0 <= mult0_p_net_x19;

  constant_x0: entity work.constant_7c38787388
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x20,
      ce => ce_1_sg_x149,
      clk => clk_1_sg_x149,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x20,
      ce => ce_1_sg_x149,
      clk => clk_1_sg_x149,
      clr => '0',
      p => mult1_p_net_x19
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap13"

entity fir_tap13_entity_2c2c2c6ba5 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_2c2c2c6ba5;

architecture structural of fir_tap13_entity_2c2c2c6ba5 is
  signal ce_1_sg_x150: std_logic;
  signal clk_1_sg_x150: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);

begin
  register0_q_net_x21 <= a;
  register1_q_net_x21 <= b;
  ce_1_sg_x150 <= ce_1;
  clk_1_sg_x150 <= clk_1;
  imag <= mult1_p_net_x20;
  real_x0 <= mult0_p_net_x20;

  constant_x0: entity work.constant_2539032405
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x21,
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x21,
      ce => ce_1_sg_x150,
      clk => clk_1_sg_x150,
      clr => '0',
      p => mult1_p_net_x20
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap14"

entity fir_tap14_entity_65c1dc5100 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_65c1dc5100;

architecture structural of fir_tap14_entity_65c1dc5100 is
  signal ce_1_sg_x151: std_logic;
  signal clk_1_sg_x151: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);

begin
  register0_q_net_x22 <= a;
  register1_q_net_x22 <= b;
  ce_1_sg_x151 <= ce_1;
  clk_1_sg_x151 <= clk_1;
  imag <= mult1_p_net_x21;
  real_x0 <= mult0_p_net_x21;

  constant_x0: entity work.constant_f22eee6ce2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x22,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x22,
      ce => ce_1_sg_x151,
      clk => clk_1_sg_x151,
      clr => '0',
      p => mult1_p_net_x21
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap15"

entity fir_tap15_entity_d255b3c09d is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_d255b3c09d;

architecture structural of fir_tap15_entity_d255b3c09d is
  signal ce_1_sg_x152: std_logic;
  signal clk_1_sg_x152: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);

begin
  register0_q_net_x23 <= a;
  register1_q_net_x23 <= b;
  ce_1_sg_x152 <= ce_1;
  clk_1_sg_x152 <= clk_1;
  imag <= mult1_p_net_x22;
  real_x0 <= mult0_p_net_x22;

  constant_x0: entity work.constant_b6b583c9df
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x23,
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x23,
      ce => ce_1_sg_x152,
      clk => clk_1_sg_x152,
      clr => '0',
      p => mult1_p_net_x22
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap16"

entity fir_tap16_entity_9a95614462 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap16_entity_9a95614462;

architecture structural of fir_tap16_entity_9a95614462 is
  signal ce_1_sg_x153: std_logic;
  signal clk_1_sg_x153: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);

begin
  register0_q_net_x24 <= a;
  register1_q_net_x24 <= b;
  ce_1_sg_x153 <= ce_1;
  clk_1_sg_x153 <= clk_1;
  imag <= mult1_p_net_x23;
  real_x0 <= mult0_p_net_x23;

  constant_x0: entity work.constant_e114d910e6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x24,
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x24,
      ce => ce_1_sg_x153,
      clk => clk_1_sg_x153,
      clr => '0',
      p => mult1_p_net_x23
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap2"

entity fir_tap2_entity_b036b99cdc is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap2_entity_b036b99cdc;

architecture structural of fir_tap2_entity_b036b99cdc is
  signal ce_1_sg_x154: std_logic;
  signal clk_1_sg_x154: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal register0_q_net_x25: std_logic_vector(7 downto 0);
  signal register1_q_net_x25: std_logic_vector(7 downto 0);

begin
  register0_q_net_x25 <= a;
  register1_q_net_x25 <= b;
  ce_1_sg_x154 <= ce_1;
  clk_1_sg_x154 <= clk_1;
  imag <= mult1_p_net_x24;
  real_x0 <= mult0_p_net_x24;

  constant_x0: entity work.constant_0a9404d2ee
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x25,
      ce => ce_1_sg_x154,
      clk => clk_1_sg_x154,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x25,
      ce => ce_1_sg_x154,
      clk => clk_1_sg_x154,
      clr => '0',
      p => mult1_p_net_x24
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap3"

entity fir_tap3_entity_533d7cac4f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap3_entity_533d7cac4f;

architecture structural of fir_tap3_entity_533d7cac4f is
  signal ce_1_sg_x155: std_logic;
  signal clk_1_sg_x155: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal register0_q_net_x104: std_logic_vector(7 downto 0);
  signal register1_q_net_x104: std_logic_vector(7 downto 0);

begin
  register0_q_net_x104 <= a;
  register1_q_net_x104 <= b;
  ce_1_sg_x155 <= ce_1;
  clk_1_sg_x155 <= clk_1;
  imag <= mult1_p_net_x25;
  real_x0 <= mult0_p_net_x25;

  constant_x0: entity work.constant_8360ce05bf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x104,
      ce => ce_1_sg_x155,
      clk => clk_1_sg_x155,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x104,
      ce => ce_1_sg_x155,
      clk => clk_1_sg_x155,
      clr => '0',
      p => mult1_p_net_x25
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap4"

entity fir_tap4_entity_637c99dea9 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap4_entity_637c99dea9;

architecture structural of fir_tap4_entity_637c99dea9 is
  signal ce_1_sg_x156: std_logic;
  signal clk_1_sg_x156: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal register0_q_net_x105: std_logic_vector(7 downto 0);
  signal register1_q_net_x105: std_logic_vector(7 downto 0);

begin
  register0_q_net_x105 <= a;
  register1_q_net_x105 <= b;
  ce_1_sg_x156 <= ce_1;
  clk_1_sg_x156 <= clk_1;
  imag <= mult1_p_net_x26;
  real_x0 <= mult0_p_net_x26;

  constant_x0: entity work.constant_d29b044433
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x105,
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x105,
      ce => ce_1_sg_x156,
      clk => clk_1_sg_x156,
      clr => '0',
      p => mult1_p_net_x26
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap5"

entity fir_tap5_entity_acc15ec1ee is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap5_entity_acc15ec1ee;

architecture structural of fir_tap5_entity_acc15ec1ee is
  signal ce_1_sg_x157: std_logic;
  signal clk_1_sg_x157: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal register0_q_net_x106: std_logic_vector(7 downto 0);
  signal register1_q_net_x106: std_logic_vector(7 downto 0);

begin
  register0_q_net_x106 <= a;
  register1_q_net_x106 <= b;
  ce_1_sg_x157 <= ce_1;
  clk_1_sg_x157 <= clk_1;
  imag <= mult1_p_net_x27;
  real_x0 <= mult0_p_net_x27;

  constant_x0: entity work.constant_cad6c9cf1d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x106,
      ce => ce_1_sg_x157,
      clk => clk_1_sg_x157,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x106,
      ce => ce_1_sg_x157,
      clk => clk_1_sg_x157,
      clr => '0',
      p => mult1_p_net_x27
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap6"

entity fir_tap6_entity_70e97465fb is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap6_entity_70e97465fb;

architecture structural of fir_tap6_entity_70e97465fb is
  signal ce_1_sg_x158: std_logic;
  signal clk_1_sg_x158: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal register0_q_net_x107: std_logic_vector(7 downto 0);
  signal register1_q_net_x107: std_logic_vector(7 downto 0);

begin
  register0_q_net_x107 <= a;
  register1_q_net_x107 <= b;
  ce_1_sg_x158 <= ce_1;
  clk_1_sg_x158 <= clk_1;
  imag <= mult1_p_net_x28;
  real_x0 <= mult0_p_net_x28;

  constant_x0: entity work.constant_8f7b5cfe83
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x107,
      ce => ce_1_sg_x158,
      clk => clk_1_sg_x158,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x107,
      ce => ce_1_sg_x158,
      clk => clk_1_sg_x158,
      clr => '0',
      p => mult1_p_net_x28
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap7"

entity fir_tap7_entity_74ecf36134 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap7_entity_74ecf36134;

architecture structural of fir_tap7_entity_74ecf36134 is
  signal ce_1_sg_x159: std_logic;
  signal clk_1_sg_x159: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal register0_q_net_x108: std_logic_vector(7 downto 0);
  signal register1_q_net_x108: std_logic_vector(7 downto 0);

begin
  register0_q_net_x108 <= a;
  register1_q_net_x108 <= b;
  ce_1_sg_x159 <= ce_1;
  clk_1_sg_x159 <= clk_1;
  imag <= mult1_p_net_x29;
  real_x0 <= mult0_p_net_x29;

  constant_x0: entity work.constant_355a464687
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x108,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x108,
      ce => ce_1_sg_x159,
      clk => clk_1_sg_x159,
      clr => '0',
      p => mult1_p_net_x29
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap8"

entity fir_tap8_entity_2b85f00b45 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_2b85f00b45;

architecture structural of fir_tap8_entity_2b85f00b45 is
  signal ce_1_sg_x160: std_logic;
  signal clk_1_sg_x160: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x109: std_logic_vector(7 downto 0);
  signal register1_q_net_x109: std_logic_vector(7 downto 0);

begin
  register0_q_net_x109 <= a;
  register1_q_net_x109 <= b;
  ce_1_sg_x160 <= ce_1;
  clk_1_sg_x160 <= clk_1;
  imag <= mult1_p_net_x30;
  real_x0 <= mult0_p_net_x30;

  constant_x0: entity work.constant_0f4b24ad35
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x109,
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x109,
      ce => ce_1_sg_x160,
      clk => clk_1_sg_x160,
      clr => '0',
      p => mult1_p_net_x30
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7/fir_tap9"

entity fir_tap9_entity_c7f4e8822c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap9_entity_c7f4e8822c;

architecture structural of fir_tap9_entity_c7f4e8822c is
  signal ce_1_sg_x161: std_logic;
  signal clk_1_sg_x161: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x110: std_logic_vector(7 downto 0);
  signal register1_q_net_x110: std_logic_vector(7 downto 0);

begin
  register0_q_net_x110 <= a;
  register1_q_net_x110 <= b;
  ce_1_sg_x161 <= ce_1;
  clk_1_sg_x161 <= clk_1;
  imag <= mult1_p_net_x31;
  real_x0 <= mult0_p_net_x31;

  constant_x0: entity work.constant_8ee545e7c0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  mult0: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register0_q_net_x110,
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x110,
      ce => ce_1_sg_x161,
      clk => clk_1_sg_x161,
      clr => '0',
      p => mult1_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/fir_col7"

entity fir_col7_entity_b08b0015d9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    imag_sum: out std_logic_vector(36 downto 0); 
    real_sum: out std_logic_vector(36 downto 0)
  );
end fir_col7_entity_b08b0015d9;

architecture structural of fir_col7_entity_b08b0015d9 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x162: std_logic;
  signal clk_1_sg_x162: std_logic;
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x111: std_logic_vector(7 downto 0);
  signal register0_q_net_x112: std_logic_vector(7 downto 0);
  signal register0_q_net_x113: std_logic_vector(7 downto 0);
  signal register0_q_net_x114: std_logic_vector(7 downto 0);
  signal register0_q_net_x115: std_logic_vector(7 downto 0);
  signal register0_q_net_x116: std_logic_vector(7 downto 0);
  signal register0_q_net_x117: std_logic_vector(7 downto 0);
  signal register0_q_net_x26: std_logic_vector(7 downto 0);
  signal register0_q_net_x27: std_logic_vector(7 downto 0);
  signal register0_q_net_x28: std_logic_vector(7 downto 0);
  signal register0_q_net_x29: std_logic_vector(7 downto 0);
  signal register0_q_net_x30: std_logic_vector(7 downto 0);
  signal register0_q_net_x31: std_logic_vector(7 downto 0);
  signal register0_q_net_x32: std_logic_vector(7 downto 0);
  signal register0_q_net_x33: std_logic_vector(7 downto 0);
  signal register0_q_net_x34: std_logic_vector(7 downto 0);
  signal register1_q_net_x111: std_logic_vector(7 downto 0);
  signal register1_q_net_x112: std_logic_vector(7 downto 0);
  signal register1_q_net_x113: std_logic_vector(7 downto 0);
  signal register1_q_net_x114: std_logic_vector(7 downto 0);
  signal register1_q_net_x115: std_logic_vector(7 downto 0);
  signal register1_q_net_x116: std_logic_vector(7 downto 0);
  signal register1_q_net_x117: std_logic_vector(7 downto 0);
  signal register1_q_net_x26: std_logic_vector(7 downto 0);
  signal register1_q_net_x27: std_logic_vector(7 downto 0);
  signal register1_q_net_x28: std_logic_vector(7 downto 0);
  signal register1_q_net_x29: std_logic_vector(7 downto 0);
  signal register1_q_net_x30: std_logic_vector(7 downto 0);
  signal register1_q_net_x31: std_logic_vector(7 downto 0);
  signal register1_q_net_x32: std_logic_vector(7 downto 0);
  signal register1_q_net_x33: std_logic_vector(7 downto 0);
  signal register1_q_net_x34: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x162 <= ce_1;
  clk_1_sg_x162 <= clk_1;
  register1_q_net_x26 <= imag1;
  register1_q_net_x27 <= imag10;
  register1_q_net_x28 <= imag11;
  register1_q_net_x29 <= imag12;
  register1_q_net_x30 <= imag13;
  register1_q_net_x31 <= imag14;
  register1_q_net_x32 <= imag15;
  register1_q_net_x33 <= imag16;
  register1_q_net_x34 <= imag2;
  register1_q_net_x111 <= imag3;
  register1_q_net_x112 <= imag4;
  register1_q_net_x113 <= imag5;
  register1_q_net_x114 <= imag6;
  register1_q_net_x115 <= imag7;
  register1_q_net_x116 <= imag8;
  register1_q_net_x117 <= imag9;
  register0_q_net_x26 <= real1;
  register0_q_net_x27 <= real10;
  register0_q_net_x28 <= real11;
  register0_q_net_x29 <= real12;
  register0_q_net_x30 <= real13;
  register0_q_net_x31 <= real14;
  register0_q_net_x32 <= real15;
  register0_q_net_x33 <= real16;
  register0_q_net_x34 <= real2;
  register0_q_net_x111 <= real3;
  register0_q_net_x112 <= real4;
  register0_q_net_x113 <= real5;
  register0_q_net_x114 <= real6;
  register0_q_net_x115 <= real7;
  register0_q_net_x116 <= real8;
  register0_q_net_x117 <= real9;
  imag_sum <= addr15_s_net_x3;
  real_sum <= addr15_s_net_x2;

  adder_tree1_0962483216: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      din1 => mult0_p_net_x16,
      din10 => mult0_p_net_x17,
      din11 => mult0_p_net_x18,
      din12 => mult0_p_net_x19,
      din13 => mult0_p_net_x20,
      din14 => mult0_p_net_x21,
      din15 => mult0_p_net_x22,
      din16 => mult0_p_net_x23,
      din2 => mult0_p_net_x24,
      din3 => mult0_p_net_x25,
      din4 => mult0_p_net_x26,
      din5 => mult0_p_net_x27,
      din6 => mult0_p_net_x28,
      din7 => mult0_p_net_x29,
      din8 => mult0_p_net_x30,
      din9 => mult0_p_net_x31,
      dout => addr15_s_net_x2
    );

  adder_tree2_9858d57791: entity work.adder_tree1_entity_13895861c8
    port map (
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      din1 => mult1_p_net_x16,
      din10 => mult1_p_net_x17,
      din11 => mult1_p_net_x18,
      din12 => mult1_p_net_x19,
      din13 => mult1_p_net_x20,
      din14 => mult1_p_net_x21,
      din15 => mult1_p_net_x22,
      din16 => mult1_p_net_x23,
      din2 => mult1_p_net_x24,
      din3 => mult1_p_net_x25,
      din4 => mult1_p_net_x26,
      din5 => mult1_p_net_x27,
      din6 => mult1_p_net_x28,
      din7 => mult1_p_net_x29,
      din8 => mult1_p_net_x30,
      din9 => mult1_p_net_x31,
      dout => addr15_s_net_x3
    );

  fir_tap10_b091a1d45b: entity work.fir_tap10_entity_b091a1d45b
    port map (
      a => register0_q_net_x27,
      b => register1_q_net_x27,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_9f7780bc83: entity work.fir_tap11_entity_9f7780bc83
    port map (
      a => register0_q_net_x28,
      b => register1_q_net_x28,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_263cd9f40b: entity work.fir_tap12_entity_263cd9f40b
    port map (
      a => register0_q_net_x29,
      b => register1_q_net_x29,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_2c2c2c6ba5: entity work.fir_tap13_entity_2c2c2c6ba5
    port map (
      a => register0_q_net_x30,
      b => register1_q_net_x30,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_65c1dc5100: entity work.fir_tap14_entity_65c1dc5100
    port map (
      a => register0_q_net_x31,
      b => register1_q_net_x31,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_d255b3c09d: entity work.fir_tap15_entity_d255b3c09d
    port map (
      a => register0_q_net_x32,
      b => register1_q_net_x32,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_9a95614462: entity work.fir_tap16_entity_9a95614462
    port map (
      a => register0_q_net_x33,
      b => register1_q_net_x33,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_401a45d19a: entity work.fir_tap1_entity_401a45d19a
    port map (
      a => register0_q_net_x26,
      b => register1_q_net_x26,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_b036b99cdc: entity work.fir_tap2_entity_b036b99cdc
    port map (
      a => register0_q_net_x34,
      b => register1_q_net_x34,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_533d7cac4f: entity work.fir_tap3_entity_533d7cac4f
    port map (
      a => register0_q_net_x111,
      b => register1_q_net_x111,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_637c99dea9: entity work.fir_tap4_entity_637c99dea9
    port map (
      a => register0_q_net_x112,
      b => register1_q_net_x112,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_acc15ec1ee: entity work.fir_tap5_entity_acc15ec1ee
    port map (
      a => register0_q_net_x113,
      b => register1_q_net_x113,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_70e97465fb: entity work.fir_tap6_entity_70e97465fb
    port map (
      a => register0_q_net_x114,
      b => register1_q_net_x114,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_74ecf36134: entity work.fir_tap7_entity_74ecf36134
    port map (
      a => register0_q_net_x115,
      b => register1_q_net_x115,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_2b85f00b45: entity work.fir_tap8_entity_2b85f00b45
    port map (
      a => register0_q_net_x116,
      b => register1_q_net_x116,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_c7f4e8822c: entity work.fir_tap9_entity_c7f4e8822c
    port map (
      a => register0_q_net_x117,
      b => register1_q_net_x117,
      ce_1 => ce_1_sg_x162,
      clk_1 => clk_1_sg_x162,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/imag_sum"

entity imag_sum_entity_d3d40d5dc9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(36 downto 0); 
    din2: in std_logic_vector(36 downto 0); 
    din3: in std_logic_vector(36 downto 0); 
    din4: in std_logic_vector(36 downto 0); 
    din5: in std_logic_vector(36 downto 0); 
    din6: in std_logic_vector(36 downto 0); 
    din7: in std_logic_vector(36 downto 0); 
    dout: out std_logic_vector(39 downto 0)
  );
end imag_sum_entity_d3d40d5dc9;

architecture structural of imag_sum_entity_d3d40d5dc9 is
  signal addr15_s_net_x10: std_logic_vector(36 downto 0);
  signal addr15_s_net_x11: std_logic_vector(36 downto 0);
  signal addr15_s_net_x12: std_logic_vector(36 downto 0);
  signal addr15_s_net_x13: std_logic_vector(36 downto 0);
  signal addr15_s_net_x14: std_logic_vector(36 downto 0);
  signal addr15_s_net_x15: std_logic_vector(36 downto 0);
  signal addr15_s_net_x16: std_logic_vector(36 downto 0);
  signal addr1_s_net: std_logic_vector(37 downto 0);
  signal addr2_s_net: std_logic_vector(37 downto 0);
  signal addr3_s_net: std_logic_vector(37 downto 0);
  signal addr5_s_net: std_logic_vector(38 downto 0);
  signal addr6_s_net: std_logic_vector(38 downto 0);
  signal addr7_s_net_x0: std_logic_vector(39 downto 0);
  signal ce_1_sg_x163: std_logic;
  signal clk_1_sg_x163: std_logic;
  signal dly4_q_net: std_logic_vector(36 downto 0);

begin
  ce_1_sg_x163 <= ce_1;
  clk_1_sg_x163 <= clk_1;
  addr15_s_net_x10 <= din1;
  addr15_s_net_x11 <= din2;
  addr15_s_net_x12 <= din3;
  addr15_s_net_x13 <= din4;
  addr15_s_net_x14 <= din5;
  addr15_s_net_x15 <= din6;
  addr15_s_net_x16 <= din7;
  dout <= addr7_s_net_x0;

  addr1: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x10,
      b => addr15_s_net_x11,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x12,
      b => addr15_s_net_x13,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x14,
      b => addr15_s_net_x15,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr3_s_net
    );

  addr5: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 38,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 38,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 39,
      core_name0 => "addsb_11_0_1ab2fc8c7fe57f94",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 39,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 39
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr5_s_net
    );

  addr6: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 38,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 39,
      core_name0 => "addsb_11_0_1ab2fc8c7fe57f94",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 39,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 39
    )
    port map (
      a => addr3_s_net,
      b => dly4_q_net,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr6_s_net
    );

  addr7: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 39,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 39,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 40,
      core_name0 => "addsb_11_0_a92f1809cda25252",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 40,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 40
    )
    port map (
      a => addr5_s_net,
      b => addr6_s_net,
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      en => "1",
      s => addr7_s_net_x0
    );

  dly4: entity work.delay_cdda6c7e6c
    port map (
      ce => ce_1_sg_x163,
      clk => clk_1_sg_x163,
      clr => '0',
      d => addr15_s_net_x16,
      q => dly4_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/real_sum"

entity real_sum_entity_259f6b7dea is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(36 downto 0); 
    din2: in std_logic_vector(36 downto 0); 
    din3: in std_logic_vector(36 downto 0); 
    din4: in std_logic_vector(36 downto 0); 
    din5: in std_logic_vector(36 downto 0); 
    din6: in std_logic_vector(36 downto 0); 
    din7: in std_logic_vector(36 downto 0); 
    sync: in std_logic; 
    dout: out std_logic_vector(39 downto 0); 
    sync_out: out std_logic
  );
end real_sum_entity_259f6b7dea;

architecture structural of real_sum_entity_259f6b7dea is
  signal addr15_s_net_x10: std_logic_vector(36 downto 0);
  signal addr15_s_net_x11: std_logic_vector(36 downto 0);
  signal addr15_s_net_x12: std_logic_vector(36 downto 0);
  signal addr15_s_net_x13: std_logic_vector(36 downto 0);
  signal addr15_s_net_x14: std_logic_vector(36 downto 0);
  signal addr15_s_net_x15: std_logic_vector(36 downto 0);
  signal addr15_s_net_x9: std_logic_vector(36 downto 0);
  signal addr1_s_net: std_logic_vector(37 downto 0);
  signal addr2_s_net: std_logic_vector(37 downto 0);
  signal addr3_s_net: std_logic_vector(37 downto 0);
  signal addr5_s_net: std_logic_vector(38 downto 0);
  signal addr6_s_net: std_logic_vector(38 downto 0);
  signal addr7_s_net_x0: std_logic_vector(39 downto 0);
  signal ce_1_sg_x164: std_logic;
  signal clk_1_sg_x164: std_logic;
  signal delay_q_net_x0: std_logic;
  signal dly4_q_net: std_logic_vector(36 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x164 <= ce_1;
  clk_1_sg_x164 <= clk_1;
  addr15_s_net_x9 <= din1;
  addr15_s_net_x10 <= din2;
  addr15_s_net_x11 <= din3;
  addr15_s_net_x12 <= din4;
  addr15_s_net_x13 <= din5;
  addr15_s_net_x14 <= din6;
  addr15_s_net_x15 <= din7;
  delay_q_net_x0 <= sync;
  dout <= addr7_s_net_x0;
  sync_out <= sync_delay_q_net_x0;

  addr1: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x9,
      b => addr15_s_net_x10,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x11,
      b => addr15_s_net_x12,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 37,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 38,
      core_name0 => "addsb_11_0_124ad8bd21557d78",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 38,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 38
    )
    port map (
      a => addr15_s_net_x13,
      b => addr15_s_net_x14,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr3_s_net
    );

  addr5: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 38,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 38,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 39,
      core_name0 => "addsb_11_0_1ab2fc8c7fe57f94",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 39,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 39
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr5_s_net
    );

  addr6: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 38,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 37,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 39,
      core_name0 => "addsb_11_0_1ab2fc8c7fe57f94",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 39,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 39
    )
    port map (
      a => addr3_s_net,
      b => dly4_q_net,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr6_s_net
    );

  addr7: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 39,
      b_arith => xlSigned,
      b_bin_pt => 31,
      b_width => 39,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 40,
      core_name0 => "addsb_11_0_a92f1809cda25252",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 40,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 31,
      s_width => 40
    )
    port map (
      a => addr5_s_net,
      b => addr6_s_net,
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      en => "1",
      s => addr7_s_net_x0
    );

  dly4: entity work.delay_cdda6c7e6c
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      d => addr15_s_net_x15,
      q => dly4_q_net
    );

  sync_delay: entity work.delay_23d71a76f2
    port map (
      ce => ce_1_sg_x164,
      clk => clk_1_sg_x164,
      clr => '0',
      d(0) => delay_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0/ri_to_c"

entity ri_to_c_entity_2e2fad565b is
  port (
    im: in std_logic_vector(29 downto 0); 
    re: in std_logic_vector(29 downto 0); 
    c: out std_logic_vector(59 downto 0)
  );
end ri_to_c_entity_2e2fad565b;

architecture structural of ri_to_c_entity_2e2fad565b is
  signal concat_y_net_x1: std_logic_vector(59 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(29 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(29 downto 0);
  signal force_im_output_port_net: std_logic_vector(29 downto 0);
  signal force_re_output_port_net: std_logic_vector(29 downto 0);

begin
  convert2_dout_net_x0 <= im;
  convert1_dout_net_x0 <= re;
  c <= concat_y_net_x1;

  concat: entity work.concat_67068d9ef9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => force_re_output_port_net,
      in1 => force_im_output_port_net,
      y => concat_y_net_x1
    );

  force_im: entity work.reinterpret_46dd2ac081
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x0,
      output_port => force_im_output_port_net
    );

  force_re: entity work.reinterpret_46dd2ac081
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net_x0,
      output_port => force_re_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/dec_fir0"

entity dec_fir0_entity_6aa9639198 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag1: in std_logic_vector(7 downto 0); 
    imag10: in std_logic_vector(7 downto 0); 
    imag11: in std_logic_vector(7 downto 0); 
    imag12: in std_logic_vector(7 downto 0); 
    imag13: in std_logic_vector(7 downto 0); 
    imag14: in std_logic_vector(7 downto 0); 
    imag15: in std_logic_vector(7 downto 0); 
    imag16: in std_logic_vector(7 downto 0); 
    imag2: in std_logic_vector(7 downto 0); 
    imag3: in std_logic_vector(7 downto 0); 
    imag4: in std_logic_vector(7 downto 0); 
    imag5: in std_logic_vector(7 downto 0); 
    imag6: in std_logic_vector(7 downto 0); 
    imag7: in std_logic_vector(7 downto 0); 
    imag8: in std_logic_vector(7 downto 0); 
    imag9: in std_logic_vector(7 downto 0); 
    real1: in std_logic_vector(7 downto 0); 
    real10: in std_logic_vector(7 downto 0); 
    real11: in std_logic_vector(7 downto 0); 
    real12: in std_logic_vector(7 downto 0); 
    real13: in std_logic_vector(7 downto 0); 
    real14: in std_logic_vector(7 downto 0); 
    real15: in std_logic_vector(7 downto 0); 
    real16: in std_logic_vector(7 downto 0); 
    real2: in std_logic_vector(7 downto 0); 
    real3: in std_logic_vector(7 downto 0); 
    real4: in std_logic_vector(7 downto 0); 
    real5: in std_logic_vector(7 downto 0); 
    real6: in std_logic_vector(7 downto 0); 
    real7: in std_logic_vector(7 downto 0); 
    real8: in std_logic_vector(7 downto 0); 
    real9: in std_logic_vector(7 downto 0); 
    sync_in: in std_logic; 
    dout: out std_logic_vector(59 downto 0); 
    sync_out: out std_logic
  );
end dec_fir0_entity_6aa9639198;

architecture structural of dec_fir0_entity_6aa9639198 is
  signal addr15_s_net_x10: std_logic_vector(36 downto 0);
  signal addr15_s_net_x11: std_logic_vector(36 downto 0);
  signal addr15_s_net_x12: std_logic_vector(36 downto 0);
  signal addr15_s_net_x13: std_logic_vector(36 downto 0);
  signal addr15_s_net_x14: std_logic_vector(36 downto 0);
  signal addr15_s_net_x15: std_logic_vector(36 downto 0);
  signal addr15_s_net_x16: std_logic_vector(36 downto 0);
  signal addr15_s_net_x17: std_logic_vector(36 downto 0);
  signal addr15_s_net_x18: std_logic_vector(36 downto 0);
  signal addr15_s_net_x19: std_logic_vector(36 downto 0);
  signal addr15_s_net_x20: std_logic_vector(36 downto 0);
  signal addr15_s_net_x21: std_logic_vector(36 downto 0);
  signal addr15_s_net_x22: std_logic_vector(36 downto 0);
  signal addr15_s_net_x9: std_logic_vector(36 downto 0);
  signal addr7_s_net_x0: std_logic_vector(39 downto 0);
  signal addr7_s_net_x1: std_logic_vector(39 downto 0);
  signal ce_1_sg_x165: std_logic;
  signal clk_1_sg_x165: std_logic;
  signal concat_y_net_x2: std_logic_vector(59 downto 0);
  signal constant10_op_net_x2: std_logic_vector(7 downto 0);
  signal constant11_op_net_x2: std_logic_vector(7 downto 0);
  signal constant12_op_net_x2: std_logic_vector(7 downto 0);
  signal constant14_op_net_x2: std_logic_vector(7 downto 0);
  signal constant15_op_net_x2: std_logic_vector(7 downto 0);
  signal constant16_op_net_x2: std_logic_vector(7 downto 0);
  signal constant17_op_net_x2: std_logic_vector(7 downto 0);
  signal constant18_op_net_x2: std_logic_vector(7 downto 0);
  signal constant19_op_net_x2: std_logic_vector(7 downto 0);
  signal constant20_op_net_x2: std_logic_vector(7 downto 0);
  signal constant21_op_net_x2: std_logic_vector(7 downto 0);
  signal constant22_op_net_x2: std_logic_vector(7 downto 0);
  signal constant24_op_net_x2: std_logic_vector(7 downto 0);
  signal constant4_op_net_x2: std_logic_vector(7 downto 0);
  signal constant7_op_net_x2: std_logic_vector(7 downto 0);
  signal constant9_op_net_x2: std_logic_vector(7 downto 0);
  signal convert1_dout_net_x0: std_logic_vector(29 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(29 downto 0);
  signal delay_q_net_x0: std_logic;
  signal register0_q_net_x100: std_logic_vector(7 downto 0);
  signal register0_q_net_x101: std_logic_vector(7 downto 0);
  signal register0_q_net_x102: std_logic_vector(7 downto 0);
  signal register0_q_net_x111: std_logic_vector(7 downto 0);
  signal register0_q_net_x112: std_logic_vector(7 downto 0);
  signal register0_q_net_x113: std_logic_vector(7 downto 0);
  signal register0_q_net_x114: std_logic_vector(7 downto 0);
  signal register0_q_net_x115: std_logic_vector(7 downto 0);
  signal register0_q_net_x116: std_logic_vector(7 downto 0);
  signal register0_q_net_x117: std_logic_vector(7 downto 0);
  signal register0_q_net_x118: std_logic_vector(7 downto 0);
  signal register0_q_net_x119: std_logic_vector(7 downto 0);
  signal register0_q_net_x120: std_logic_vector(7 downto 0);
  signal register0_q_net_x121: std_logic_vector(7 downto 0);
  signal register0_q_net_x122: std_logic_vector(7 downto 0);
  signal register0_q_net_x123: std_logic_vector(7 downto 0);
  signal register0_q_net_x124: std_logic_vector(7 downto 0);
  signal register0_q_net_x125: std_logic_vector(7 downto 0);
  signal register0_q_net_x126: std_logic_vector(7 downto 0);
  signal register0_q_net_x127: std_logic_vector(7 downto 0);
  signal register0_q_net_x128: std_logic_vector(7 downto 0);
  signal register0_q_net_x129: std_logic_vector(7 downto 0);
  signal register0_q_net_x130: std_logic_vector(7 downto 0);
  signal register0_q_net_x131: std_logic_vector(7 downto 0);
  signal register0_q_net_x132: std_logic_vector(7 downto 0);
  signal register0_q_net_x133: std_logic_vector(7 downto 0);
  signal register0_q_net_x134: std_logic_vector(7 downto 0);
  signal register0_q_net_x135: std_logic_vector(7 downto 0);
  signal register0_q_net_x136: std_logic_vector(7 downto 0);
  signal register0_q_net_x137: std_logic_vector(7 downto 0);
  signal register0_q_net_x138: std_logic_vector(7 downto 0);
  signal register0_q_net_x139: std_logic_vector(7 downto 0);
  signal register0_q_net_x140: std_logic_vector(7 downto 0);
  signal register0_q_net_x141: std_logic_vector(7 downto 0);
  signal register0_q_net_x142: std_logic_vector(7 downto 0);
  signal register0_q_net_x143: std_logic_vector(7 downto 0);
  signal register0_q_net_x144: std_logic_vector(7 downto 0);
  signal register0_q_net_x145: std_logic_vector(7 downto 0);
  signal register0_q_net_x146: std_logic_vector(7 downto 0);
  signal register0_q_net_x147: std_logic_vector(7 downto 0);
  signal register0_q_net_x148: std_logic_vector(7 downto 0);
  signal register0_q_net_x149: std_logic_vector(7 downto 0);
  signal register0_q_net_x150: std_logic_vector(7 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register0_q_net_x26: std_logic_vector(7 downto 0);
  signal register0_q_net_x27: std_logic_vector(7 downto 0);
  signal register0_q_net_x28: std_logic_vector(7 downto 0);
  signal register0_q_net_x29: std_logic_vector(7 downto 0);
  signal register0_q_net_x30: std_logic_vector(7 downto 0);
  signal register0_q_net_x31: std_logic_vector(7 downto 0);
  signal register0_q_net_x32: std_logic_vector(7 downto 0);
  signal register0_q_net_x33: std_logic_vector(7 downto 0);
  signal register0_q_net_x34: std_logic_vector(7 downto 0);
  signal register0_q_net_x48: std_logic_vector(7 downto 0);
  signal register0_q_net_x49: std_logic_vector(7 downto 0);
  signal register0_q_net_x50: std_logic_vector(7 downto 0);
  signal register0_q_net_x51: std_logic_vector(7 downto 0);
  signal register0_q_net_x52: std_logic_vector(7 downto 0);
  signal register0_q_net_x53: std_logic_vector(7 downto 0);
  signal register0_q_net_x54: std_logic_vector(7 downto 0);
  signal register0_q_net_x55: std_logic_vector(7 downto 0);
  signal register0_q_net_x56: std_logic_vector(7 downto 0);
  signal register0_q_net_x57: std_logic_vector(7 downto 0);
  signal register0_q_net_x58: std_logic_vector(7 downto 0);
  signal register0_q_net_x59: std_logic_vector(7 downto 0);
  signal register0_q_net_x60: std_logic_vector(7 downto 0);
  signal register0_q_net_x61: std_logic_vector(7 downto 0);
  signal register0_q_net_x62: std_logic_vector(7 downto 0);
  signal register0_q_net_x63: std_logic_vector(7 downto 0);
  signal register0_q_net_x64: std_logic_vector(7 downto 0);
  signal register0_q_net_x65: std_logic_vector(7 downto 0);
  signal register0_q_net_x66: std_logic_vector(7 downto 0);
  signal register0_q_net_x67: std_logic_vector(7 downto 0);
  signal register0_q_net_x68: std_logic_vector(7 downto 0);
  signal register0_q_net_x69: std_logic_vector(7 downto 0);
  signal register0_q_net_x81: std_logic_vector(7 downto 0);
  signal register0_q_net_x82: std_logic_vector(7 downto 0);
  signal register0_q_net_x83: std_logic_vector(7 downto 0);
  signal register0_q_net_x84: std_logic_vector(7 downto 0);
  signal register0_q_net_x85: std_logic_vector(7 downto 0);
  signal register0_q_net_x86: std_logic_vector(7 downto 0);
  signal register0_q_net_x87: std_logic_vector(7 downto 0);
  signal register0_q_net_x88: std_logic_vector(7 downto 0);
  signal register0_q_net_x89: std_logic_vector(7 downto 0);
  signal register0_q_net_x90: std_logic_vector(7 downto 0);
  signal register0_q_net_x91: std_logic_vector(7 downto 0);
  signal register0_q_net_x92: std_logic_vector(7 downto 0);
  signal register0_q_net_x93: std_logic_vector(7 downto 0);
  signal register0_q_net_x94: std_logic_vector(7 downto 0);
  signal register0_q_net_x95: std_logic_vector(7 downto 0);
  signal register0_q_net_x96: std_logic_vector(7 downto 0);
  signal register0_q_net_x97: std_logic_vector(7 downto 0);
  signal register0_q_net_x98: std_logic_vector(7 downto 0);
  signal register0_q_net_x99: std_logic_vector(7 downto 0);
  signal register1_q_net_x100: std_logic_vector(7 downto 0);
  signal register1_q_net_x101: std_logic_vector(7 downto 0);
  signal register1_q_net_x102: std_logic_vector(7 downto 0);
  signal register1_q_net_x111: std_logic_vector(7 downto 0);
  signal register1_q_net_x112: std_logic_vector(7 downto 0);
  signal register1_q_net_x113: std_logic_vector(7 downto 0);
  signal register1_q_net_x114: std_logic_vector(7 downto 0);
  signal register1_q_net_x115: std_logic_vector(7 downto 0);
  signal register1_q_net_x116: std_logic_vector(7 downto 0);
  signal register1_q_net_x117: std_logic_vector(7 downto 0);
  signal register1_q_net_x118: std_logic_vector(7 downto 0);
  signal register1_q_net_x119: std_logic_vector(7 downto 0);
  signal register1_q_net_x120: std_logic_vector(7 downto 0);
  signal register1_q_net_x121: std_logic_vector(7 downto 0);
  signal register1_q_net_x122: std_logic_vector(7 downto 0);
  signal register1_q_net_x123: std_logic_vector(7 downto 0);
  signal register1_q_net_x124: std_logic_vector(7 downto 0);
  signal register1_q_net_x125: std_logic_vector(7 downto 0);
  signal register1_q_net_x126: std_logic_vector(7 downto 0);
  signal register1_q_net_x127: std_logic_vector(7 downto 0);
  signal register1_q_net_x128: std_logic_vector(7 downto 0);
  signal register1_q_net_x129: std_logic_vector(7 downto 0);
  signal register1_q_net_x130: std_logic_vector(7 downto 0);
  signal register1_q_net_x131: std_logic_vector(7 downto 0);
  signal register1_q_net_x132: std_logic_vector(7 downto 0);
  signal register1_q_net_x133: std_logic_vector(7 downto 0);
  signal register1_q_net_x134: std_logic_vector(7 downto 0);
  signal register1_q_net_x135: std_logic_vector(7 downto 0);
  signal register1_q_net_x136: std_logic_vector(7 downto 0);
  signal register1_q_net_x137: std_logic_vector(7 downto 0);
  signal register1_q_net_x138: std_logic_vector(7 downto 0);
  signal register1_q_net_x139: std_logic_vector(7 downto 0);
  signal register1_q_net_x140: std_logic_vector(7 downto 0);
  signal register1_q_net_x141: std_logic_vector(7 downto 0);
  signal register1_q_net_x142: std_logic_vector(7 downto 0);
  signal register1_q_net_x143: std_logic_vector(7 downto 0);
  signal register1_q_net_x144: std_logic_vector(7 downto 0);
  signal register1_q_net_x145: std_logic_vector(7 downto 0);
  signal register1_q_net_x146: std_logic_vector(7 downto 0);
  signal register1_q_net_x147: std_logic_vector(7 downto 0);
  signal register1_q_net_x148: std_logic_vector(7 downto 0);
  signal register1_q_net_x149: std_logic_vector(7 downto 0);
  signal register1_q_net_x150: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x26: std_logic_vector(7 downto 0);
  signal register1_q_net_x27: std_logic_vector(7 downto 0);
  signal register1_q_net_x28: std_logic_vector(7 downto 0);
  signal register1_q_net_x29: std_logic_vector(7 downto 0);
  signal register1_q_net_x30: std_logic_vector(7 downto 0);
  signal register1_q_net_x31: std_logic_vector(7 downto 0);
  signal register1_q_net_x32: std_logic_vector(7 downto 0);
  signal register1_q_net_x33: std_logic_vector(7 downto 0);
  signal register1_q_net_x34: std_logic_vector(7 downto 0);
  signal register1_q_net_x48: std_logic_vector(7 downto 0);
  signal register1_q_net_x49: std_logic_vector(7 downto 0);
  signal register1_q_net_x50: std_logic_vector(7 downto 0);
  signal register1_q_net_x51: std_logic_vector(7 downto 0);
  signal register1_q_net_x52: std_logic_vector(7 downto 0);
  signal register1_q_net_x53: std_logic_vector(7 downto 0);
  signal register1_q_net_x54: std_logic_vector(7 downto 0);
  signal register1_q_net_x55: std_logic_vector(7 downto 0);
  signal register1_q_net_x56: std_logic_vector(7 downto 0);
  signal register1_q_net_x57: std_logic_vector(7 downto 0);
  signal register1_q_net_x58: std_logic_vector(7 downto 0);
  signal register1_q_net_x59: std_logic_vector(7 downto 0);
  signal register1_q_net_x60: std_logic_vector(7 downto 0);
  signal register1_q_net_x61: std_logic_vector(7 downto 0);
  signal register1_q_net_x62: std_logic_vector(7 downto 0);
  signal register1_q_net_x63: std_logic_vector(7 downto 0);
  signal register1_q_net_x64: std_logic_vector(7 downto 0);
  signal register1_q_net_x65: std_logic_vector(7 downto 0);
  signal register1_q_net_x66: std_logic_vector(7 downto 0);
  signal register1_q_net_x67: std_logic_vector(7 downto 0);
  signal register1_q_net_x68: std_logic_vector(7 downto 0);
  signal register1_q_net_x69: std_logic_vector(7 downto 0);
  signal register1_q_net_x81: std_logic_vector(7 downto 0);
  signal register1_q_net_x82: std_logic_vector(7 downto 0);
  signal register1_q_net_x83: std_logic_vector(7 downto 0);
  signal register1_q_net_x84: std_logic_vector(7 downto 0);
  signal register1_q_net_x85: std_logic_vector(7 downto 0);
  signal register1_q_net_x86: std_logic_vector(7 downto 0);
  signal register1_q_net_x87: std_logic_vector(7 downto 0);
  signal register1_q_net_x88: std_logic_vector(7 downto 0);
  signal register1_q_net_x89: std_logic_vector(7 downto 0);
  signal register1_q_net_x90: std_logic_vector(7 downto 0);
  signal register1_q_net_x91: std_logic_vector(7 downto 0);
  signal register1_q_net_x92: std_logic_vector(7 downto 0);
  signal register1_q_net_x93: std_logic_vector(7 downto 0);
  signal register1_q_net_x94: std_logic_vector(7 downto 0);
  signal register1_q_net_x95: std_logic_vector(7 downto 0);
  signal register1_q_net_x96: std_logic_vector(7 downto 0);
  signal register1_q_net_x97: std_logic_vector(7 downto 0);
  signal register1_q_net_x98: std_logic_vector(7 downto 0);
  signal register1_q_net_x99: std_logic_vector(7 downto 0);
  signal register2_q_net_x0: std_logic;
  signal register2_q_net_x32: std_logic_vector(7 downto 0);
  signal register2_q_net_x33: std_logic_vector(7 downto 0);
  signal register2_q_net_x34: std_logic_vector(7 downto 0);
  signal register2_q_net_x35: std_logic_vector(7 downto 0);
  signal register2_q_net_x36: std_logic_vector(7 downto 0);
  signal register2_q_net_x37: std_logic_vector(7 downto 0);
  signal register2_q_net_x38: std_logic_vector(7 downto 0);
  signal register2_q_net_x39: std_logic_vector(7 downto 0);
  signal register2_q_net_x40: std_logic_vector(7 downto 0);
  signal register2_q_net_x41: std_logic_vector(7 downto 0);
  signal register2_q_net_x42: std_logic_vector(7 downto 0);
  signal register2_q_net_x43: std_logic_vector(7 downto 0);
  signal register2_q_net_x44: std_logic_vector(7 downto 0);
  signal register2_q_net_x45: std_logic_vector(7 downto 0);
  signal register2_q_net_x46: std_logic_vector(7 downto 0);
  signal register2_q_net_x47: std_logic_vector(7 downto 0);
  signal shift1_op_net: std_logic_vector(39 downto 0);
  signal shift2_op_net: std_logic_vector(39 downto 0);
  signal sync_delay_q_net_x1: std_logic;

begin
  ce_1_sg_x165 <= ce_1;
  clk_1_sg_x165 <= clk_1;
  constant4_op_net_x2 <= imag1;
  constant15_op_net_x2 <= imag10;
  constant16_op_net_x2 <= imag11;
  constant17_op_net_x2 <= imag12;
  constant18_op_net_x2 <= imag13;
  constant19_op_net_x2 <= imag14;
  constant20_op_net_x2 <= imag15;
  constant21_op_net_x2 <= imag16;
  constant7_op_net_x2 <= imag2;
  constant9_op_net_x2 <= imag3;
  constant22_op_net_x2 <= imag4;
  constant24_op_net_x2 <= imag5;
  constant10_op_net_x2 <= imag6;
  constant11_op_net_x2 <= imag7;
  constant12_op_net_x2 <= imag8;
  constant14_op_net_x2 <= imag9;
  register2_q_net_x32 <= real1;
  register2_q_net_x41 <= real10;
  register2_q_net_x42 <= real11;
  register2_q_net_x43 <= real12;
  register2_q_net_x44 <= real13;
  register2_q_net_x45 <= real14;
  register2_q_net_x46 <= real15;
  register2_q_net_x47 <= real16;
  register2_q_net_x33 <= real2;
  register2_q_net_x34 <= real3;
  register2_q_net_x35 <= real4;
  register2_q_net_x36 <= real5;
  register2_q_net_x37 <= real6;
  register2_q_net_x38 <= real7;
  register2_q_net_x39 <= real8;
  register2_q_net_x40 <= real9;
  register2_q_net_x0 <= sync_in;
  dout <= concat_y_net_x2;
  sync_out <= sync_delay_q_net_x1;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 31,
      din_width => 40,
      dout_arith => 2,
      dout_bin_pt => 29,
      dout_width => 30,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      clr => '0',
      din => shift1_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 31,
      din_width => 40,
      dout_arith => 2,
      dout_bin_pt => 29,
      dout_width => 30,
      latency => 2,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      clr => '0',
      din => shift2_op_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      d(0) => register2_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  fir_col1_6707f31ecc: entity work.fir_col1_entity_6707f31ecc
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => constant4_op_net_x2,
      imag10 => constant15_op_net_x2,
      imag11 => constant16_op_net_x2,
      imag12 => constant17_op_net_x2,
      imag13 => constant18_op_net_x2,
      imag14 => constant19_op_net_x2,
      imag15 => constant20_op_net_x2,
      imag16 => constant21_op_net_x2,
      imag2 => constant7_op_net_x2,
      imag3 => constant9_op_net_x2,
      imag4 => constant22_op_net_x2,
      imag5 => constant24_op_net_x2,
      imag6 => constant10_op_net_x2,
      imag7 => constant11_op_net_x2,
      imag8 => constant12_op_net_x2,
      imag9 => constant14_op_net_x2,
      real1 => register2_q_net_x32,
      real10 => register2_q_net_x41,
      real11 => register2_q_net_x42,
      real12 => register2_q_net_x43,
      real13 => register2_q_net_x44,
      real14 => register2_q_net_x45,
      real15 => register2_q_net_x46,
      real16 => register2_q_net_x47,
      real2 => register2_q_net_x33,
      real3 => register2_q_net_x34,
      real4 => register2_q_net_x35,
      real5 => register2_q_net_x36,
      real6 => register2_q_net_x37,
      real7 => register2_q_net_x38,
      real8 => register2_q_net_x39,
      real9 => register2_q_net_x40,
      imag_out1 => register1_q_net_x48,
      imag_out10 => register1_q_net_x49,
      imag_out11 => register1_q_net_x50,
      imag_out12 => register1_q_net_x51,
      imag_out13 => register1_q_net_x52,
      imag_out14 => register1_q_net_x53,
      imag_out15 => register1_q_net_x54,
      imag_out16 => register1_q_net_x55,
      imag_out2 => register1_q_net_x56,
      imag_out3 => register1_q_net_x57,
      imag_out4 => register1_q_net_x58,
      imag_out5 => register1_q_net_x59,
      imag_out6 => register1_q_net_x60,
      imag_out7 => register1_q_net_x61,
      imag_out8 => register1_q_net_x62,
      imag_out9 => register1_q_net_x63,
      imag_sum => addr15_s_net_x10,
      real_out1 => register0_q_net_x48,
      real_out10 => register0_q_net_x49,
      real_out11 => register0_q_net_x50,
      real_out12 => register0_q_net_x51,
      real_out13 => register0_q_net_x52,
      real_out14 => register0_q_net_x53,
      real_out15 => register0_q_net_x54,
      real_out16 => register0_q_net_x55,
      real_out2 => register0_q_net_x56,
      real_out3 => register0_q_net_x57,
      real_out4 => register0_q_net_x58,
      real_out5 => register0_q_net_x59,
      real_out6 => register0_q_net_x60,
      real_out7 => register0_q_net_x61,
      real_out8 => register0_q_net_x62,
      real_out9 => register0_q_net_x63,
      real_sum => addr15_s_net_x9
    );

  fir_col2_7064a1433d: entity work.fir_col2_entity_7064a1433d
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x48,
      imag10 => register1_q_net_x49,
      imag11 => register1_q_net_x50,
      imag12 => register1_q_net_x51,
      imag13 => register1_q_net_x52,
      imag14 => register1_q_net_x53,
      imag15 => register1_q_net_x54,
      imag16 => register1_q_net_x55,
      imag2 => register1_q_net_x56,
      imag3 => register1_q_net_x57,
      imag4 => register1_q_net_x58,
      imag5 => register1_q_net_x59,
      imag6 => register1_q_net_x60,
      imag7 => register1_q_net_x61,
      imag8 => register1_q_net_x62,
      imag9 => register1_q_net_x63,
      real1 => register0_q_net_x48,
      real10 => register0_q_net_x49,
      real11 => register0_q_net_x50,
      real12 => register0_q_net_x51,
      real13 => register0_q_net_x52,
      real14 => register0_q_net_x53,
      real15 => register0_q_net_x54,
      real16 => register0_q_net_x55,
      real2 => register0_q_net_x56,
      real3 => register0_q_net_x57,
      real4 => register0_q_net_x58,
      real5 => register0_q_net_x59,
      real6 => register0_q_net_x60,
      real7 => register0_q_net_x61,
      real8 => register0_q_net_x62,
      real9 => register0_q_net_x63,
      imag_out1 => register1_q_net_x81,
      imag_out10 => register1_q_net_x82,
      imag_out11 => register1_q_net_x83,
      imag_out12 => register1_q_net_x84,
      imag_out13 => register1_q_net_x85,
      imag_out14 => register1_q_net_x86,
      imag_out15 => register1_q_net_x87,
      imag_out16 => register1_q_net_x88,
      imag_out2 => register1_q_net_x89,
      imag_out3 => register1_q_net_x90,
      imag_out4 => register1_q_net_x91,
      imag_out5 => register1_q_net_x92,
      imag_out6 => register1_q_net_x93,
      imag_out7 => register1_q_net_x94,
      imag_out8 => register1_q_net_x95,
      imag_out9 => register1_q_net_x96,
      imag_sum => addr15_s_net_x12,
      real_out1 => register0_q_net_x81,
      real_out10 => register0_q_net_x82,
      real_out11 => register0_q_net_x83,
      real_out12 => register0_q_net_x84,
      real_out13 => register0_q_net_x85,
      real_out14 => register0_q_net_x86,
      real_out15 => register0_q_net_x87,
      real_out16 => register0_q_net_x88,
      real_out2 => register0_q_net_x89,
      real_out3 => register0_q_net_x90,
      real_out4 => register0_q_net_x91,
      real_out5 => register0_q_net_x92,
      real_out6 => register0_q_net_x93,
      real_out7 => register0_q_net_x94,
      real_out8 => register0_q_net_x95,
      real_out9 => register0_q_net_x96,
      real_sum => addr15_s_net_x11
    );

  fir_col3_b0fc3dd9af: entity work.fir_col3_entity_b0fc3dd9af
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x81,
      imag10 => register1_q_net_x82,
      imag11 => register1_q_net_x83,
      imag12 => register1_q_net_x84,
      imag13 => register1_q_net_x85,
      imag14 => register1_q_net_x86,
      imag15 => register1_q_net_x87,
      imag16 => register1_q_net_x88,
      imag2 => register1_q_net_x89,
      imag3 => register1_q_net_x90,
      imag4 => register1_q_net_x91,
      imag5 => register1_q_net_x92,
      imag6 => register1_q_net_x93,
      imag7 => register1_q_net_x94,
      imag8 => register1_q_net_x95,
      imag9 => register1_q_net_x96,
      real1 => register0_q_net_x81,
      real10 => register0_q_net_x82,
      real11 => register0_q_net_x83,
      real12 => register0_q_net_x84,
      real13 => register0_q_net_x85,
      real14 => register0_q_net_x86,
      real15 => register0_q_net_x87,
      real16 => register0_q_net_x88,
      real2 => register0_q_net_x89,
      real3 => register0_q_net_x90,
      real4 => register0_q_net_x91,
      real5 => register0_q_net_x92,
      real6 => register0_q_net_x93,
      real7 => register0_q_net_x94,
      real8 => register0_q_net_x95,
      real9 => register0_q_net_x96,
      imag_out1 => register1_q_net_x20,
      imag_out10 => register1_q_net_x21,
      imag_out11 => register1_q_net_x22,
      imag_out12 => register1_q_net_x111,
      imag_out13 => register1_q_net_x112,
      imag_out14 => register1_q_net_x113,
      imag_out15 => register1_q_net_x114,
      imag_out16 => register1_q_net_x115,
      imag_out2 => register1_q_net_x116,
      imag_out3 => register1_q_net_x117,
      imag_out4 => register1_q_net_x118,
      imag_out5 => register1_q_net_x119,
      imag_out6 => register1_q_net_x120,
      imag_out7 => register1_q_net_x121,
      imag_out8 => register1_q_net_x122,
      imag_out9 => register1_q_net_x123,
      imag_sum => addr15_s_net_x14,
      real_out1 => register0_q_net_x20,
      real_out10 => register0_q_net_x21,
      real_out11 => register0_q_net_x22,
      real_out12 => register0_q_net_x111,
      real_out13 => register0_q_net_x112,
      real_out14 => register0_q_net_x113,
      real_out15 => register0_q_net_x114,
      real_out16 => register0_q_net_x115,
      real_out2 => register0_q_net_x116,
      real_out3 => register0_q_net_x117,
      real_out4 => register0_q_net_x118,
      real_out5 => register0_q_net_x119,
      real_out6 => register0_q_net_x120,
      real_out7 => register0_q_net_x121,
      real_out8 => register0_q_net_x122,
      real_out9 => register0_q_net_x123,
      real_sum => addr15_s_net_x13
    );

  fir_col4_1135c530b9: entity work.fir_col4_entity_1135c530b9
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x20,
      imag10 => register1_q_net_x21,
      imag11 => register1_q_net_x22,
      imag12 => register1_q_net_x111,
      imag13 => register1_q_net_x112,
      imag14 => register1_q_net_x113,
      imag15 => register1_q_net_x114,
      imag16 => register1_q_net_x115,
      imag2 => register1_q_net_x116,
      imag3 => register1_q_net_x117,
      imag4 => register1_q_net_x118,
      imag5 => register1_q_net_x119,
      imag6 => register1_q_net_x120,
      imag7 => register1_q_net_x121,
      imag8 => register1_q_net_x122,
      imag9 => register1_q_net_x123,
      real1 => register0_q_net_x20,
      real10 => register0_q_net_x21,
      real11 => register0_q_net_x22,
      real12 => register0_q_net_x111,
      real13 => register0_q_net_x112,
      real14 => register0_q_net_x113,
      real15 => register0_q_net_x114,
      real16 => register0_q_net_x115,
      real2 => register0_q_net_x116,
      real3 => register0_q_net_x117,
      real4 => register0_q_net_x118,
      real5 => register0_q_net_x119,
      real6 => register0_q_net_x120,
      real7 => register0_q_net_x121,
      real8 => register0_q_net_x122,
      real9 => register0_q_net_x123,
      imag_out1 => register1_q_net_x124,
      imag_out10 => register1_q_net_x125,
      imag_out11 => register1_q_net_x126,
      imag_out12 => register1_q_net_x127,
      imag_out13 => register1_q_net_x128,
      imag_out14 => register1_q_net_x129,
      imag_out15 => register1_q_net_x130,
      imag_out16 => register1_q_net_x131,
      imag_out2 => register1_q_net_x132,
      imag_out3 => register1_q_net_x133,
      imag_out4 => register1_q_net_x64,
      imag_out5 => register1_q_net_x65,
      imag_out6 => register1_q_net_x66,
      imag_out7 => register1_q_net_x67,
      imag_out8 => register1_q_net_x68,
      imag_out9 => register1_q_net_x69,
      imag_sum => addr15_s_net_x16,
      real_out1 => register0_q_net_x124,
      real_out10 => register0_q_net_x125,
      real_out11 => register0_q_net_x126,
      real_out12 => register0_q_net_x127,
      real_out13 => register0_q_net_x128,
      real_out14 => register0_q_net_x129,
      real_out15 => register0_q_net_x130,
      real_out16 => register0_q_net_x131,
      real_out2 => register0_q_net_x132,
      real_out3 => register0_q_net_x133,
      real_out4 => register0_q_net_x64,
      real_out5 => register0_q_net_x65,
      real_out6 => register0_q_net_x66,
      real_out7 => register0_q_net_x67,
      real_out8 => register0_q_net_x68,
      real_out9 => register0_q_net_x69,
      real_sum => addr15_s_net_x15
    );

  fir_col5_c96624a65d: entity work.fir_col5_entity_c96624a65d
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x124,
      imag10 => register1_q_net_x125,
      imag11 => register1_q_net_x126,
      imag12 => register1_q_net_x127,
      imag13 => register1_q_net_x128,
      imag14 => register1_q_net_x129,
      imag15 => register1_q_net_x130,
      imag16 => register1_q_net_x131,
      imag2 => register1_q_net_x132,
      imag3 => register1_q_net_x133,
      imag4 => register1_q_net_x64,
      imag5 => register1_q_net_x65,
      imag6 => register1_q_net_x66,
      imag7 => register1_q_net_x67,
      imag8 => register1_q_net_x68,
      imag9 => register1_q_net_x69,
      real1 => register0_q_net_x124,
      real10 => register0_q_net_x125,
      real11 => register0_q_net_x126,
      real12 => register0_q_net_x127,
      real13 => register0_q_net_x128,
      real14 => register0_q_net_x129,
      real15 => register0_q_net_x130,
      real16 => register0_q_net_x131,
      real2 => register0_q_net_x132,
      real3 => register0_q_net_x133,
      real4 => register0_q_net_x64,
      real5 => register0_q_net_x65,
      real6 => register0_q_net_x66,
      real7 => register0_q_net_x67,
      real8 => register0_q_net_x68,
      real9 => register0_q_net_x69,
      imag_out1 => register1_q_net_x134,
      imag_out10 => register1_q_net_x135,
      imag_out11 => register1_q_net_x136,
      imag_out12 => register1_q_net_x137,
      imag_out13 => register1_q_net_x138,
      imag_out14 => register1_q_net_x139,
      imag_out15 => register1_q_net_x140,
      imag_out16 => register1_q_net_x141,
      imag_out2 => register1_q_net_x142,
      imag_out3 => register1_q_net_x143,
      imag_out4 => register1_q_net_x97,
      imag_out5 => register1_q_net_x98,
      imag_out6 => register1_q_net_x99,
      imag_out7 => register1_q_net_x100,
      imag_out8 => register1_q_net_x101,
      imag_out9 => register1_q_net_x102,
      imag_sum => addr15_s_net_x18,
      real_out1 => register0_q_net_x134,
      real_out10 => register0_q_net_x135,
      real_out11 => register0_q_net_x136,
      real_out12 => register0_q_net_x137,
      real_out13 => register0_q_net_x138,
      real_out14 => register0_q_net_x139,
      real_out15 => register0_q_net_x140,
      real_out16 => register0_q_net_x141,
      real_out2 => register0_q_net_x142,
      real_out3 => register0_q_net_x143,
      real_out4 => register0_q_net_x97,
      real_out5 => register0_q_net_x98,
      real_out6 => register0_q_net_x99,
      real_out7 => register0_q_net_x100,
      real_out8 => register0_q_net_x101,
      real_out9 => register0_q_net_x102,
      real_sum => addr15_s_net_x17
    );

  fir_col6_0bd1e1bfbc: entity work.fir_col6_entity_0bd1e1bfbc
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x134,
      imag10 => register1_q_net_x135,
      imag11 => register1_q_net_x136,
      imag12 => register1_q_net_x137,
      imag13 => register1_q_net_x138,
      imag14 => register1_q_net_x139,
      imag15 => register1_q_net_x140,
      imag16 => register1_q_net_x141,
      imag2 => register1_q_net_x142,
      imag3 => register1_q_net_x143,
      imag4 => register1_q_net_x97,
      imag5 => register1_q_net_x98,
      imag6 => register1_q_net_x99,
      imag7 => register1_q_net_x100,
      imag8 => register1_q_net_x101,
      imag9 => register1_q_net_x102,
      real1 => register0_q_net_x134,
      real10 => register0_q_net_x135,
      real11 => register0_q_net_x136,
      real12 => register0_q_net_x137,
      real13 => register0_q_net_x138,
      real14 => register0_q_net_x139,
      real15 => register0_q_net_x140,
      real16 => register0_q_net_x141,
      real2 => register0_q_net_x142,
      real3 => register0_q_net_x143,
      real4 => register0_q_net_x97,
      real5 => register0_q_net_x98,
      real6 => register0_q_net_x99,
      real7 => register0_q_net_x100,
      real8 => register0_q_net_x101,
      real9 => register0_q_net_x102,
      imag_out1 => register1_q_net_x26,
      imag_out10 => register1_q_net_x27,
      imag_out11 => register1_q_net_x28,
      imag_out12 => register1_q_net_x29,
      imag_out13 => register1_q_net_x30,
      imag_out14 => register1_q_net_x31,
      imag_out15 => register1_q_net_x32,
      imag_out16 => register1_q_net_x33,
      imag_out2 => register1_q_net_x34,
      imag_out3 => register1_q_net_x144,
      imag_out4 => register1_q_net_x145,
      imag_out5 => register1_q_net_x146,
      imag_out6 => register1_q_net_x147,
      imag_out7 => register1_q_net_x148,
      imag_out8 => register1_q_net_x149,
      imag_out9 => register1_q_net_x150,
      imag_sum => addr15_s_net_x20,
      real_out1 => register0_q_net_x26,
      real_out10 => register0_q_net_x27,
      real_out11 => register0_q_net_x28,
      real_out12 => register0_q_net_x29,
      real_out13 => register0_q_net_x30,
      real_out14 => register0_q_net_x31,
      real_out15 => register0_q_net_x32,
      real_out16 => register0_q_net_x33,
      real_out2 => register0_q_net_x34,
      real_out3 => register0_q_net_x144,
      real_out4 => register0_q_net_x145,
      real_out5 => register0_q_net_x146,
      real_out6 => register0_q_net_x147,
      real_out7 => register0_q_net_x148,
      real_out8 => register0_q_net_x149,
      real_out9 => register0_q_net_x150,
      real_sum => addr15_s_net_x19
    );

  fir_col7_b08b0015d9: entity work.fir_col7_entity_b08b0015d9
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      imag1 => register1_q_net_x26,
      imag10 => register1_q_net_x27,
      imag11 => register1_q_net_x28,
      imag12 => register1_q_net_x29,
      imag13 => register1_q_net_x30,
      imag14 => register1_q_net_x31,
      imag15 => register1_q_net_x32,
      imag16 => register1_q_net_x33,
      imag2 => register1_q_net_x34,
      imag3 => register1_q_net_x144,
      imag4 => register1_q_net_x145,
      imag5 => register1_q_net_x146,
      imag6 => register1_q_net_x147,
      imag7 => register1_q_net_x148,
      imag8 => register1_q_net_x149,
      imag9 => register1_q_net_x150,
      real1 => register0_q_net_x26,
      real10 => register0_q_net_x27,
      real11 => register0_q_net_x28,
      real12 => register0_q_net_x29,
      real13 => register0_q_net_x30,
      real14 => register0_q_net_x31,
      real15 => register0_q_net_x32,
      real16 => register0_q_net_x33,
      real2 => register0_q_net_x34,
      real3 => register0_q_net_x144,
      real4 => register0_q_net_x145,
      real5 => register0_q_net_x146,
      real6 => register0_q_net_x147,
      real7 => register0_q_net_x148,
      real8 => register0_q_net_x149,
      real9 => register0_q_net_x150,
      imag_sum => addr15_s_net_x22,
      real_sum => addr15_s_net_x21
    );

  imag_sum_d3d40d5dc9: entity work.imag_sum_entity_d3d40d5dc9
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      din1 => addr15_s_net_x10,
      din2 => addr15_s_net_x12,
      din3 => addr15_s_net_x14,
      din4 => addr15_s_net_x16,
      din5 => addr15_s_net_x18,
      din6 => addr15_s_net_x20,
      din7 => addr15_s_net_x22,
      dout => addr7_s_net_x0
    );

  real_sum_259f6b7dea: entity work.real_sum_entity_259f6b7dea
    port map (
      ce_1 => ce_1_sg_x165,
      clk_1 => clk_1_sg_x165,
      din1 => addr15_s_net_x9,
      din2 => addr15_s_net_x11,
      din3 => addr15_s_net_x13,
      din4 => addr15_s_net_x15,
      din5 => addr15_s_net_x17,
      din6 => addr15_s_net_x19,
      din7 => addr15_s_net_x21,
      sync => delay_q_net_x0,
      dout => addr7_s_net_x1,
      sync_out => sync_delay_q_net_x1
    );

  ri_to_c_2e2fad565b: entity work.ri_to_c_entity_2e2fad565b
    port map (
      im => convert2_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x2
    );

  shift1: entity work.shift_bf4b7863c1
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      clr => '0',
      ip => addr7_s_net_x1,
      op => shift1_op_net
    );

  shift2: entity work.shift_bf4b7863c1
    port map (
      ce => ce_1_sg_x165,
      clk => clk_1_sg_x165,
      clr => '0',
      ip => addr7_s_net_x0,
      op => shift2_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/delay_wideband_prog0/barrel_switcher"

entity barrel_switcher_entity_69f2491152 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(7 downto 0); 
    in10: in std_logic_vector(7 downto 0); 
    in11: in std_logic_vector(7 downto 0); 
    in12: in std_logic_vector(7 downto 0); 
    in13: in std_logic_vector(7 downto 0); 
    in14: in std_logic_vector(7 downto 0); 
    in15: in std_logic_vector(7 downto 0); 
    in16: in std_logic_vector(7 downto 0); 
    in2: in std_logic_vector(7 downto 0); 
    in3: in std_logic_vector(7 downto 0); 
    in4: in std_logic_vector(7 downto 0); 
    in5: in std_logic_vector(7 downto 0); 
    in6: in std_logic_vector(7 downto 0); 
    in7: in std_logic_vector(7 downto 0); 
    in8: in std_logic_vector(7 downto 0); 
    in9: in std_logic_vector(7 downto 0); 
    sel: in std_logic_vector(3 downto 0); 
    sync_in: in std_logic; 
    out1: out std_logic_vector(7 downto 0); 
    out10: out std_logic_vector(7 downto 0); 
    out11: out std_logic_vector(7 downto 0); 
    out12: out std_logic_vector(7 downto 0); 
    out13: out std_logic_vector(7 downto 0); 
    out14: out std_logic_vector(7 downto 0); 
    out15: out std_logic_vector(7 downto 0); 
    out16: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0); 
    out4: out std_logic_vector(7 downto 0); 
    out5: out std_logic_vector(7 downto 0); 
    out6: out std_logic_vector(7 downto 0); 
    out7: out std_logic_vector(7 downto 0); 
    out8: out std_logic_vector(7 downto 0); 
    out9: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end barrel_switcher_entity_69f2491152;

architecture structural of barrel_switcher_entity_69f2491152 is
  signal ce_1_sg_x166: std_logic;
  signal clk_1_sg_x166: std_logic;
  signal delay1_q_net: std_logic_vector(3 downto 0);
  signal delay2_q_net: std_logic_vector(3 downto 0);
  signal delay3_q_net: std_logic_vector(3 downto 0);
  signal delay_sel_q_net_x0: std_logic_vector(3 downto 0);
  signal delay_sync_q_net_x0: std_logic;
  signal dual_port_ram_doutb_net_x15: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x16: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x17: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x18: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x19: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x20: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x21: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x22: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x23: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x24: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x25: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x26: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x27: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x28: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x29: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x30: std_logic_vector(7 downto 0);
  signal mux101_y_net: std_logic_vector(7 downto 0);
  signal mux102_y_net: std_logic_vector(7 downto 0);
  signal mux103_y_net: std_logic_vector(7 downto 0);
  signal mux104_y_net_x1: std_logic_vector(7 downto 0);
  signal mux111_y_net: std_logic_vector(7 downto 0);
  signal mux112_y_net: std_logic_vector(7 downto 0);
  signal mux113_y_net: std_logic_vector(7 downto 0);
  signal mux114_y_net_x1: std_logic_vector(7 downto 0);
  signal mux11_y_net: std_logic_vector(7 downto 0);
  signal mux121_y_net: std_logic_vector(7 downto 0);
  signal mux122_y_net: std_logic_vector(7 downto 0);
  signal mux123_y_net: std_logic_vector(7 downto 0);
  signal mux124_y_net_x1: std_logic_vector(7 downto 0);
  signal mux12_y_net: std_logic_vector(7 downto 0);
  signal mux131_y_net: std_logic_vector(7 downto 0);
  signal mux132_y_net: std_logic_vector(7 downto 0);
  signal mux133_y_net: std_logic_vector(7 downto 0);
  signal mux134_y_net_x1: std_logic_vector(7 downto 0);
  signal mux13_y_net: std_logic_vector(7 downto 0);
  signal mux141_y_net: std_logic_vector(7 downto 0);
  signal mux142_y_net: std_logic_vector(7 downto 0);
  signal mux143_y_net: std_logic_vector(7 downto 0);
  signal mux144_y_net_x1: std_logic_vector(7 downto 0);
  signal mux14_y_net_x1: std_logic_vector(7 downto 0);
  signal mux151_y_net: std_logic_vector(7 downto 0);
  signal mux152_y_net: std_logic_vector(7 downto 0);
  signal mux153_y_net: std_logic_vector(7 downto 0);
  signal mux154_y_net_x1: std_logic_vector(7 downto 0);
  signal mux161_y_net: std_logic_vector(7 downto 0);
  signal mux162_y_net: std_logic_vector(7 downto 0);
  signal mux163_y_net: std_logic_vector(7 downto 0);
  signal mux164_y_net_x1: std_logic_vector(7 downto 0);
  signal mux21_y_net: std_logic_vector(7 downto 0);
  signal mux22_y_net: std_logic_vector(7 downto 0);
  signal mux23_y_net: std_logic_vector(7 downto 0);
  signal mux24_y_net_x1: std_logic_vector(7 downto 0);
  signal mux31_y_net: std_logic_vector(7 downto 0);
  signal mux32_y_net: std_logic_vector(7 downto 0);
  signal mux33_y_net: std_logic_vector(7 downto 0);
  signal mux34_y_net_x1: std_logic_vector(7 downto 0);
  signal mux41_y_net: std_logic_vector(7 downto 0);
  signal mux42_y_net: std_logic_vector(7 downto 0);
  signal mux43_y_net: std_logic_vector(7 downto 0);
  signal mux44_y_net_x1: std_logic_vector(7 downto 0);
  signal mux51_y_net: std_logic_vector(7 downto 0);
  signal mux52_y_net: std_logic_vector(7 downto 0);
  signal mux53_y_net: std_logic_vector(7 downto 0);
  signal mux54_y_net_x1: std_logic_vector(7 downto 0);
  signal mux61_y_net: std_logic_vector(7 downto 0);
  signal mux62_y_net: std_logic_vector(7 downto 0);
  signal mux63_y_net: std_logic_vector(7 downto 0);
  signal mux64_y_net_x1: std_logic_vector(7 downto 0);
  signal mux71_y_net: std_logic_vector(7 downto 0);
  signal mux72_y_net: std_logic_vector(7 downto 0);
  signal mux73_y_net: std_logic_vector(7 downto 0);
  signal mux74_y_net_x1: std_logic_vector(7 downto 0);
  signal mux81_y_net: std_logic_vector(7 downto 0);
  signal mux82_y_net: std_logic_vector(7 downto 0);
  signal mux83_y_net: std_logic_vector(7 downto 0);
  signal mux84_y_net_x1: std_logic_vector(7 downto 0);
  signal mux91_y_net: std_logic_vector(7 downto 0);
  signal mux92_y_net: std_logic_vector(7 downto 0);
  signal mux93_y_net: std_logic_vector(7 downto 0);
  signal mux94_y_net_x1: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal slice3_y_net: std_logic;
  signal slice4_y_net: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x166 <= ce_1;
  clk_1_sg_x166 <= clk_1;
  dual_port_ram_doutb_net_x22 <= in1;
  dual_port_ram_doutb_net_x27 <= in10;
  dual_port_ram_doutb_net_x26 <= in11;
  dual_port_ram_doutb_net_x25 <= in12;
  dual_port_ram_doutb_net_x24 <= in13;
  dual_port_ram_doutb_net_x23 <= in14;
  dual_port_ram_doutb_net_x16 <= in15;
  dual_port_ram_doutb_net_x15 <= in16;
  dual_port_ram_doutb_net_x21 <= in2;
  dual_port_ram_doutb_net_x20 <= in3;
  dual_port_ram_doutb_net_x19 <= in4;
  dual_port_ram_doutb_net_x18 <= in5;
  dual_port_ram_doutb_net_x17 <= in6;
  dual_port_ram_doutb_net_x30 <= in7;
  dual_port_ram_doutb_net_x29 <= in8;
  dual_port_ram_doutb_net_x28 <= in9;
  delay_sel_q_net_x0 <= sel;
  sync_delay_q_net_x0 <= sync_in;
  out1 <= mux14_y_net_x1;
  out10 <= mux104_y_net_x1;
  out11 <= mux114_y_net_x1;
  out12 <= mux124_y_net_x1;
  out13 <= mux134_y_net_x1;
  out14 <= mux144_y_net_x1;
  out15 <= mux154_y_net_x1;
  out16 <= mux164_y_net_x1;
  out2 <= mux24_y_net_x1;
  out3 <= mux34_y_net_x1;
  out4 <= mux44_y_net_x1;
  out5 <= mux54_y_net_x1;
  out6 <= mux64_y_net_x1;
  out7 <= mux74_y_net_x1;
  out8 <= mux84_y_net_x1;
  out9 <= mux94_y_net_x1;
  sync_out <= delay_sync_q_net_x0;

  delay1: entity work.delay_4ca77626c8
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d => delay_sel_q_net_x0,
      q => delay1_q_net
    );

  delay2: entity work.delay_4ca77626c8
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d => delay1_q_net,
      q => delay2_q_net
    );

  delay3: entity work.delay_4ca77626c8
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d => delay2_q_net,
      q => delay3_q_net
    );

  delay_sync: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d(0) => sync_delay_q_net_x0,
      q(0) => delay_sync_q_net_x0
    );

  mux101: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x27,
      d1 => dual_port_ram_doutb_net_x21,
      sel(0) => slice1_y_net,
      y => mux101_y_net
    );

  mux102: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux101_y_net,
      d1 => mux141_y_net,
      sel(0) => slice2_y_net,
      y => mux102_y_net
    );

  mux103: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux102_y_net,
      d1 => mux122_y_net,
      sel(0) => slice3_y_net,
      y => mux103_y_net
    );

  mux104: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux103_y_net,
      d1 => mux113_y_net,
      sel(0) => slice4_y_net,
      y => mux104_y_net_x1
    );

  mux11: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x22,
      d1 => dual_port_ram_doutb_net_x28,
      sel(0) => slice1_y_net,
      y => mux11_y_net
    );

  mux111: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x26,
      d1 => dual_port_ram_doutb_net_x20,
      sel(0) => slice1_y_net,
      y => mux111_y_net
    );

  mux112: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux111_y_net,
      d1 => mux151_y_net,
      sel(0) => slice2_y_net,
      y => mux112_y_net
    );

  mux113: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux112_y_net,
      d1 => mux132_y_net,
      sel(0) => slice3_y_net,
      y => mux113_y_net
    );

  mux114: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux113_y_net,
      d1 => mux123_y_net,
      sel(0) => slice4_y_net,
      y => mux114_y_net_x1
    );

  mux12: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux11_y_net,
      d1 => mux51_y_net,
      sel(0) => slice2_y_net,
      y => mux12_y_net
    );

  mux121: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x25,
      d1 => dual_port_ram_doutb_net_x19,
      sel(0) => slice1_y_net,
      y => mux121_y_net
    );

  mux122: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux121_y_net,
      d1 => mux161_y_net,
      sel(0) => slice2_y_net,
      y => mux122_y_net
    );

  mux123: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux122_y_net,
      d1 => mux142_y_net,
      sel(0) => slice3_y_net,
      y => mux123_y_net
    );

  mux124: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux123_y_net,
      d1 => mux133_y_net,
      sel(0) => slice4_y_net,
      y => mux124_y_net_x1
    );

  mux13: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux12_y_net,
      d1 => mux32_y_net,
      sel(0) => slice3_y_net,
      y => mux13_y_net
    );

  mux131: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x24,
      d1 => dual_port_ram_doutb_net_x18,
      sel(0) => slice1_y_net,
      y => mux131_y_net
    );

  mux132: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux131_y_net,
      d1 => mux11_y_net,
      sel(0) => slice2_y_net,
      y => mux132_y_net
    );

  mux133: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux132_y_net,
      d1 => mux152_y_net,
      sel(0) => slice3_y_net,
      y => mux133_y_net
    );

  mux134: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux133_y_net,
      d1 => mux143_y_net,
      sel(0) => slice4_y_net,
      y => mux134_y_net_x1
    );

  mux14: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux13_y_net,
      d1 => mux23_y_net,
      sel(0) => slice4_y_net,
      y => mux14_y_net_x1
    );

  mux141: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x23,
      d1 => dual_port_ram_doutb_net_x17,
      sel(0) => slice1_y_net,
      y => mux141_y_net
    );

  mux142: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux141_y_net,
      d1 => mux21_y_net,
      sel(0) => slice2_y_net,
      y => mux142_y_net
    );

  mux143: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux142_y_net,
      d1 => mux162_y_net,
      sel(0) => slice3_y_net,
      y => mux143_y_net
    );

  mux144: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux143_y_net,
      d1 => mux153_y_net,
      sel(0) => slice4_y_net,
      y => mux144_y_net_x1
    );

  mux151: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x16,
      d1 => dual_port_ram_doutb_net_x30,
      sel(0) => slice1_y_net,
      y => mux151_y_net
    );

  mux152: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux151_y_net,
      d1 => mux31_y_net,
      sel(0) => slice2_y_net,
      y => mux152_y_net
    );

  mux153: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux152_y_net,
      d1 => mux12_y_net,
      sel(0) => slice3_y_net,
      y => mux153_y_net
    );

  mux154: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux153_y_net,
      d1 => mux163_y_net,
      sel(0) => slice4_y_net,
      y => mux154_y_net_x1
    );

  mux161: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x15,
      d1 => dual_port_ram_doutb_net_x29,
      sel(0) => slice1_y_net,
      y => mux161_y_net
    );

  mux162: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux161_y_net,
      d1 => mux41_y_net,
      sel(0) => slice2_y_net,
      y => mux162_y_net
    );

  mux163: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux162_y_net,
      d1 => mux22_y_net,
      sel(0) => slice3_y_net,
      y => mux163_y_net
    );

  mux164: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux163_y_net,
      d1 => mux13_y_net,
      sel(0) => slice4_y_net,
      y => mux164_y_net_x1
    );

  mux21: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x21,
      d1 => dual_port_ram_doutb_net_x27,
      sel(0) => slice1_y_net,
      y => mux21_y_net
    );

  mux22: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux21_y_net,
      d1 => mux61_y_net,
      sel(0) => slice2_y_net,
      y => mux22_y_net
    );

  mux23: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux22_y_net,
      d1 => mux42_y_net,
      sel(0) => slice3_y_net,
      y => mux23_y_net
    );

  mux24: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux23_y_net,
      d1 => mux33_y_net,
      sel(0) => slice4_y_net,
      y => mux24_y_net_x1
    );

  mux31: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x20,
      d1 => dual_port_ram_doutb_net_x26,
      sel(0) => slice1_y_net,
      y => mux31_y_net
    );

  mux32: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux31_y_net,
      d1 => mux71_y_net,
      sel(0) => slice2_y_net,
      y => mux32_y_net
    );

  mux33: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux32_y_net,
      d1 => mux52_y_net,
      sel(0) => slice3_y_net,
      y => mux33_y_net
    );

  mux34: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux33_y_net,
      d1 => mux43_y_net,
      sel(0) => slice4_y_net,
      y => mux34_y_net_x1
    );

  mux41: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x19,
      d1 => dual_port_ram_doutb_net_x25,
      sel(0) => slice1_y_net,
      y => mux41_y_net
    );

  mux42: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux41_y_net,
      d1 => mux81_y_net,
      sel(0) => slice2_y_net,
      y => mux42_y_net
    );

  mux43: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux42_y_net,
      d1 => mux62_y_net,
      sel(0) => slice3_y_net,
      y => mux43_y_net
    );

  mux44: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux43_y_net,
      d1 => mux53_y_net,
      sel(0) => slice4_y_net,
      y => mux44_y_net_x1
    );

  mux51: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x18,
      d1 => dual_port_ram_doutb_net_x24,
      sel(0) => slice1_y_net,
      y => mux51_y_net
    );

  mux52: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux51_y_net,
      d1 => mux91_y_net,
      sel(0) => slice2_y_net,
      y => mux52_y_net
    );

  mux53: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux52_y_net,
      d1 => mux72_y_net,
      sel(0) => slice3_y_net,
      y => mux53_y_net
    );

  mux54: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux53_y_net,
      d1 => mux63_y_net,
      sel(0) => slice4_y_net,
      y => mux54_y_net_x1
    );

  mux61: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x17,
      d1 => dual_port_ram_doutb_net_x23,
      sel(0) => slice1_y_net,
      y => mux61_y_net
    );

  mux62: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux61_y_net,
      d1 => mux101_y_net,
      sel(0) => slice2_y_net,
      y => mux62_y_net
    );

  mux63: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux62_y_net,
      d1 => mux82_y_net,
      sel(0) => slice3_y_net,
      y => mux63_y_net
    );

  mux64: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux63_y_net,
      d1 => mux73_y_net,
      sel(0) => slice4_y_net,
      y => mux64_y_net_x1
    );

  mux71: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x30,
      d1 => dual_port_ram_doutb_net_x16,
      sel(0) => slice1_y_net,
      y => mux71_y_net
    );

  mux72: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux71_y_net,
      d1 => mux111_y_net,
      sel(0) => slice2_y_net,
      y => mux72_y_net
    );

  mux73: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux72_y_net,
      d1 => mux92_y_net,
      sel(0) => slice3_y_net,
      y => mux73_y_net
    );

  mux74: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux73_y_net,
      d1 => mux83_y_net,
      sel(0) => slice4_y_net,
      y => mux74_y_net_x1
    );

  mux81: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x29,
      d1 => dual_port_ram_doutb_net_x15,
      sel(0) => slice1_y_net,
      y => mux81_y_net
    );

  mux82: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux81_y_net,
      d1 => mux121_y_net,
      sel(0) => slice2_y_net,
      y => mux82_y_net
    );

  mux83: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux82_y_net,
      d1 => mux102_y_net,
      sel(0) => slice3_y_net,
      y => mux83_y_net
    );

  mux84: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux83_y_net,
      d1 => mux93_y_net,
      sel(0) => slice4_y_net,
      y => mux84_y_net_x1
    );

  mux91: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x28,
      d1 => dual_port_ram_doutb_net_x22,
      sel(0) => slice1_y_net,
      y => mux91_y_net
    );

  mux92: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux91_y_net,
      d1 => mux131_y_net,
      sel(0) => slice2_y_net,
      y => mux92_y_net
    );

  mux93: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux92_y_net,
      d1 => mux112_y_net,
      sel(0) => slice3_y_net,
      y => mux93_y_net
    );

  mux94: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x166,
      clk => clk_1_sg_x166,
      clr => '0',
      d0 => mux93_y_net,
      d1 => mux103_y_net,
      sel(0) => slice4_y_net,
      y => mux94_y_net_x1
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => delay_sel_q_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => delay1_q_net,
      y(0) => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => delay2_q_net,
      y(0) => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => delay3_q_net,
      y(0) => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/delay_wideband_prog0/delay_dp0"

entity delay_dp0_entity_56c56bf401 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(1 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp0_entity_56c56bf401;

architecture structural of delay_dp0_entity_56c56bf401 is
  signal addsub_s_net: std_logic_vector(1 downto 0);
  signal bram_rd_addrs_y_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x167: std_logic;
  signal clk_1_sg_x167: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal dual_port_ram_doutb_net_x16: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x167 <= ce_1;
  clk_1_sg_x167 <= clk_1;
  bram_rd_addrs_y_net_x0 <= delay;
  reinterpret_output_port_net_x17 <= din;
  dout <= dual_port_ram_doutb_net_x16;

  addsub: entity work.addsub_b0bd9ccd8b
    port map (
      a => wr_addr_op_net,
      b => bram_rd_addrs_y_net_x0,
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      clr => '0',
      s => addsub_s_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  dual_port_ram: entity work.xldpram_testing3
    generic map (
      c_address_width_a => 2,
      c_address_width_b => 2,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_80ec4706477d97c1",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x167,
      a_clk => clk_1_sg_x167,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x167,
      b_clk => clk_1_sg_x167,
      dina => reinterpret_output_port_net_x17,
      dinb => reinterpret_output_port_net_x17,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => constant4_op_net,
      doutb => dual_port_ram_doutb_net_x16
    );

  wr_addr: entity work.counter_2986dea758
    port map (
      ce => ce_1_sg_x167,
      clk => clk_1_sg_x167,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/delay_wideband_prog0/delay_dp1"

entity delay_dp1_entity_c767a859c0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(2 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp1_entity_c767a859c0;

architecture structural of delay_dp1_entity_c767a859c0 is
  signal addsub1_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub_s_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x168: std_logic;
  signal clk_1_sg_x168: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal dual_port_ram_doutb_net_x17: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x168 <= ce_1;
  clk_1_sg_x168 <= clk_1;
  addsub1_s_net_x0 <= delay;
  reinterpret_output_port_net_x18 <= din;
  dout <= dual_port_ram_doutb_net_x17;

  addsub: entity work.addsub_32bd75a38d
    port map (
      a => wr_addr_op_net,
      b => addsub1_s_net_x0,
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      s => addsub_s_net
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net
    );

  dual_port_ram: entity work.xldpram_testing3
    generic map (
      c_address_width_a => 2,
      c_address_width_b => 2,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_80ec4706477d97c1",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x168,
      a_clk => clk_1_sg_x168,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x168,
      b_clk => clk_1_sg_x168,
      dina => reinterpret_output_port_net_x18,
      dinb => reinterpret_output_port_net_x18,
      ena => "1",
      enb => "1",
      rsta => "0",
      rstb => "0",
      wea(0) => constant2_op_net,
      web(0) => constant4_op_net,
      doutb => dual_port_ram_doutb_net_x17
    );

  wr_addr: entity work.counter_2986dea758
    port map (
      ce => ce_1_sg_x168,
      clk => clk_1_sg_x168,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/delay_wideband_prog0"

entity delay_wideband_prog0_entity_85152e04a4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in0: in std_logic_vector(7 downto 0); 
    data_in1: in std_logic_vector(7 downto 0); 
    data_in10: in std_logic_vector(7 downto 0); 
    data_in11: in std_logic_vector(7 downto 0); 
    data_in12: in std_logic_vector(7 downto 0); 
    data_in13: in std_logic_vector(7 downto 0); 
    data_in14: in std_logic_vector(7 downto 0); 
    data_in15: in std_logic_vector(7 downto 0); 
    data_in2: in std_logic_vector(7 downto 0); 
    data_in3: in std_logic_vector(7 downto 0); 
    data_in4: in std_logic_vector(7 downto 0); 
    data_in5: in std_logic_vector(7 downto 0); 
    data_in6: in std_logic_vector(7 downto 0); 
    data_in7: in std_logic_vector(7 downto 0); 
    data_in8: in std_logic_vector(7 downto 0); 
    data_in9: in std_logic_vector(7 downto 0); 
    delay: in std_logic_vector(31 downto 0); 
    ld_delay: in std_logic; 
    sync: in std_logic; 
    data_out0: out std_logic_vector(7 downto 0); 
    data_out1: out std_logic_vector(7 downto 0); 
    data_out10: out std_logic_vector(7 downto 0); 
    data_out11: out std_logic_vector(7 downto 0); 
    data_out12: out std_logic_vector(7 downto 0); 
    data_out13: out std_logic_vector(7 downto 0); 
    data_out14: out std_logic_vector(7 downto 0); 
    data_out15: out std_logic_vector(7 downto 0); 
    data_out2: out std_logic_vector(7 downto 0); 
    data_out3: out std_logic_vector(7 downto 0); 
    data_out4: out std_logic_vector(7 downto 0); 
    data_out5: out std_logic_vector(7 downto 0); 
    data_out6: out std_logic_vector(7 downto 0); 
    data_out7: out std_logic_vector(7 downto 0); 
    data_out8: out std_logic_vector(7 downto 0); 
    data_out9: out std_logic_vector(7 downto 0); 
    sync_out: out std_logic
  );
end delay_wideband_prog0_entity_85152e04a4;

architecture structural of delay_wideband_prog0_entity_85152e04a4 is
  signal addsub10_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub11_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub12_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub13_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub14_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub15_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub1_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub3_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub4_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub5_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub6_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub7_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub8_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub9_s_net_x0: std_logic_vector(2 downto 0);
  signal bram_rd_addrs_y_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x183: std_logic;
  signal clk_1_sg_x183: std_logic;
  signal constant10_op_net: std_logic_vector(3 downto 0);
  signal constant11_op_net: std_logic_vector(3 downto 0);
  signal constant12_op_net: std_logic_vector(3 downto 0);
  signal constant13_op_net: std_logic_vector(3 downto 0);
  signal constant14_op_net: std_logic_vector(3 downto 0);
  signal constant15_op_net: std_logic_vector(3 downto 0);
  signal constant1_op_net: std_logic_vector(3 downto 0);
  signal constant2_op_net: std_logic_vector(3 downto 0);
  signal constant3_op_net_x0: std_logic_vector(3 downto 0);
  signal constant3_op_net_x1: std_logic;
  signal constant4_op_net: std_logic_vector(3 downto 0);
  signal constant5_op_net: std_logic_vector(3 downto 0);
  signal constant6_op_net: std_logic_vector(3 downto 0);
  signal constant7_op_net: std_logic_vector(3 downto 0);
  signal constant8_op_net: std_logic_vector(3 downto 0);
  signal constant9_op_net: std_logic_vector(3 downto 0);
  signal convert10_dout_net: std_logic;
  signal convert11_dout_net: std_logic;
  signal convert12_dout_net: std_logic;
  signal convert13_dout_net: std_logic;
  signal convert14_dout_net: std_logic;
  signal convert15_dout_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert8_dout_net: std_logic;
  signal convert9_dout_net: std_logic;
  signal delay_reg_q_net: std_logic_vector(31 downto 0);
  signal delay_sel_q_net_x0: std_logic_vector(3 downto 0);
  signal delay_sync_q_net_x1: std_logic;
  signal dual_port_ram_doutb_net_x16: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x17: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x18: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x19: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x20: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x21: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x22: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x23: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x24: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x25: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x26: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x27: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x28: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x29: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x30: std_logic_vector(7 downto 0);
  signal dual_port_ram_doutb_net_x31: std_logic_vector(7 downto 0);
  signal mux104_y_net_x2: std_logic_vector(7 downto 0);
  signal mux114_y_net_x2: std_logic_vector(7 downto 0);
  signal mux124_y_net_x2: std_logic_vector(7 downto 0);
  signal mux134_y_net_x2: std_logic_vector(7 downto 0);
  signal mux144_y_net_x2: std_logic_vector(7 downto 0);
  signal mux14_y_net_x2: std_logic_vector(7 downto 0);
  signal mux154_y_net_x2: std_logic_vector(7 downto 0);
  signal mux164_y_net_x2: std_logic_vector(7 downto 0);
  signal mux24_y_net_x2: std_logic_vector(7 downto 0);
  signal mux34_y_net_x2: std_logic_vector(7 downto 0);
  signal mux44_y_net_x2: std_logic_vector(7 downto 0);
  signal mux54_y_net_x2: std_logic_vector(7 downto 0);
  signal mux64_y_net_x2: std_logic_vector(7 downto 0);
  signal mux74_y_net_x2: std_logic_vector(7 downto 0);
  signal mux84_y_net_x2: std_logic_vector(7 downto 0);
  signal mux94_y_net_x2: std_logic_vector(7 downto 0);
  signal register0_q_net_x0: std_logic;
  signal register1_q_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x33: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x34: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x35: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x36: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x37: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x38: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x39: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x40: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x41: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x42: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x43: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x44: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x45: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x46: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x47: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x48: std_logic_vector(7 downto 0);
  signal relational10_op_net: std_logic;
  signal relational11_op_net: std_logic;
  signal relational12_op_net: std_logic;
  signal relational13_op_net: std_logic;
  signal relational14_op_net: std_logic;
  signal relational15_op_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational6_op_net: std_logic;
  signal relational7_op_net: std_logic;
  signal relational8_op_net: std_logic;
  signal relational9_op_net: std_logic;
  signal shift_sel_y_net: std_logic_vector(3 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x183 <= ce_1;
  clk_1_sg_x183 <= clk_1;
  reinterpret_output_port_net_x33 <= data_in0;
  reinterpret_output_port_net_x34 <= data_in1;
  reinterpret_output_port_net_x35 <= data_in10;
  reinterpret_output_port_net_x36 <= data_in11;
  reinterpret_output_port_net_x37 <= data_in12;
  reinterpret_output_port_net_x38 <= data_in13;
  reinterpret_output_port_net_x39 <= data_in14;
  reinterpret_output_port_net_x40 <= data_in15;
  reinterpret_output_port_net_x41 <= data_in2;
  reinterpret_output_port_net_x42 <= data_in3;
  reinterpret_output_port_net_x43 <= data_in4;
  reinterpret_output_port_net_x44 <= data_in5;
  reinterpret_output_port_net_x45 <= data_in6;
  reinterpret_output_port_net_x46 <= data_in7;
  reinterpret_output_port_net_x47 <= data_in8;
  reinterpret_output_port_net_x48 <= data_in9;
  register1_q_net_x0 <= delay;
  constant3_op_net_x1 <= ld_delay;
  register0_q_net_x0 <= sync;
  data_out0 <= mux164_y_net_x2;
  data_out1 <= mux154_y_net_x2;
  data_out10 <= mux64_y_net_x2;
  data_out11 <= mux54_y_net_x2;
  data_out12 <= mux44_y_net_x2;
  data_out13 <= mux34_y_net_x2;
  data_out14 <= mux24_y_net_x2;
  data_out15 <= mux14_y_net_x2;
  data_out2 <= mux144_y_net_x2;
  data_out3 <= mux134_y_net_x2;
  data_out4 <= mux124_y_net_x2;
  data_out5 <= mux114_y_net_x2;
  data_out6 <= mux104_y_net_x2;
  data_out7 <= mux94_y_net_x2;
  data_out8 <= mux84_y_net_x2;
  data_out9 <= mux74_y_net_x2;
  sync_out <= delay_sync_q_net_x1;

  addsub1: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert1_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub1_s_net_x0
    );

  addsub10: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert10_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub10_s_net_x0
    );

  addsub11: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert11_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub11_s_net_x0
    );

  addsub12: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert12_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub12_s_net_x0
    );

  addsub13: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert13_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub13_s_net_x0
    );

  addsub14: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert14_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub14_s_net_x0
    );

  addsub15: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert15_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub15_s_net_x0
    );

  addsub2: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert2_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub2_s_net_x0
    );

  addsub3: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert3_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub3_s_net_x0
    );

  addsub4: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert4_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub4_s_net_x0
    );

  addsub5: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert5_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub5_s_net_x0
    );

  addsub6: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert6_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub6_s_net_x0
    );

  addsub7: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert7_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub7_s_net_x0
    );

  addsub8: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert8_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub8_s_net_x0
    );

  addsub9: entity work.xladdsub_testing3
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_6a49eeb869ee9525",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => bram_rd_addrs_y_net_x0,
      b(0) => convert9_dout_net,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      en => "1",
      s => addsub9_s_net_x0
    );

  barrel_switcher_69f2491152: entity work.barrel_switcher_entity_69f2491152
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      in1 => dual_port_ram_doutb_net_x23,
      in10 => dual_port_ram_doutb_net_x28,
      in11 => dual_port_ram_doutb_net_x27,
      in12 => dual_port_ram_doutb_net_x26,
      in13 => dual_port_ram_doutb_net_x25,
      in14 => dual_port_ram_doutb_net_x24,
      in15 => dual_port_ram_doutb_net_x17,
      in16 => dual_port_ram_doutb_net_x16,
      in2 => dual_port_ram_doutb_net_x22,
      in3 => dual_port_ram_doutb_net_x21,
      in4 => dual_port_ram_doutb_net_x20,
      in5 => dual_port_ram_doutb_net_x19,
      in6 => dual_port_ram_doutb_net_x18,
      in7 => dual_port_ram_doutb_net_x31,
      in8 => dual_port_ram_doutb_net_x30,
      in9 => dual_port_ram_doutb_net_x29,
      sel => delay_sel_q_net_x0,
      sync_in => sync_delay_q_net_x0,
      out1 => mux14_y_net_x2,
      out10 => mux104_y_net_x2,
      out11 => mux114_y_net_x2,
      out12 => mux124_y_net_x2,
      out13 => mux134_y_net_x2,
      out14 => mux144_y_net_x2,
      out15 => mux154_y_net_x2,
      out16 => mux164_y_net_x2,
      out2 => mux24_y_net_x2,
      out3 => mux34_y_net_x2,
      out4 => mux44_y_net_x2,
      out5 => mux54_y_net_x2,
      out6 => mux64_y_net_x2,
      out7 => mux74_y_net_x2,
      out8 => mux84_y_net_x2,
      out9 => mux94_y_net_x2,
      sync_out => delay_sync_q_net_x1
    );

  bram_rd_addrs: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 5,
      x_width => 32,
      y_width => 2
    )
    port map (
      x => delay_reg_q_net,
      y => bram_rd_addrs_y_net_x0
    );

  constant1: entity work.constant_fac28d1ec7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant10: entity work.constant_98c496058e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net
    );

  constant11: entity work.constant_b9bbeeed98
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant11_op_net
    );

  constant12: entity work.constant_8038205d89
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant12_op_net
    );

  constant13: entity work.constant_4149ed202d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant13_op_net
    );

  constant14: entity work.constant_67ad97ca70
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant14_op_net
    );

  constant15: entity work.constant_4c449dd556
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant15_op_net
    );

  constant2: entity work.constant_3af61a22d9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_c3074fb6dc
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net_x0
    );

  constant4: entity work.constant_c0ce4ae10c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_5c1626e05e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  constant6: entity work.constant_a629aefb53
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net
    );

  constant7: entity work.constant_145086465d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net
    );

  constant8: entity work.constant_a3d619979c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant8_op_net
    );

  constant9: entity work.constant_bfd5ba0f50
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational1_op_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert10: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational10_op_net,
      en => "1",
      dout(0) => convert10_dout_net
    );

  convert11: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational11_op_net,
      en => "1",
      dout(0) => convert11_dout_net
    );

  convert12: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational12_op_net,
      en => "1",
      dout(0) => convert12_dout_net
    );

  convert13: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational13_op_net,
      en => "1",
      dout(0) => convert13_dout_net
    );

  convert14: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational14_op_net,
      en => "1",
      dout(0) => convert14_dout_net
    );

  convert15: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational15_op_net,
      en => "1",
      dout(0) => convert15_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational2_op_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational3_op_net,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational4_op_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational5_op_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational6_op_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational7_op_net,
      en => "1",
      dout(0) => convert7_dout_net
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational8_op_net,
      en => "1",
      dout(0) => convert8_dout_net
    );

  convert9: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      din(0) => relational9_op_net,
      en => "1",
      dout(0) => convert9_dout_net
    );

  delay_dp0_56c56bf401: entity work.delay_dp0_entity_56c56bf401
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => bram_rd_addrs_y_net_x0,
      din => reinterpret_output_port_net_x33,
      dout => dual_port_ram_doutb_net_x16
    );

  delay_dp10_e00dbde2c9: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub10_s_net_x0,
      din => reinterpret_output_port_net_x35,
      dout => dual_port_ram_doutb_net_x18
    );

  delay_dp11_7fbd1b981e: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub11_s_net_x0,
      din => reinterpret_output_port_net_x36,
      dout => dual_port_ram_doutb_net_x19
    );

  delay_dp12_7db9f57e6d: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub12_s_net_x0,
      din => reinterpret_output_port_net_x37,
      dout => dual_port_ram_doutb_net_x20
    );

  delay_dp13_f741a0b627: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub13_s_net_x0,
      din => reinterpret_output_port_net_x38,
      dout => dual_port_ram_doutb_net_x21
    );

  delay_dp14_e1ec03b665: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub14_s_net_x0,
      din => reinterpret_output_port_net_x39,
      dout => dual_port_ram_doutb_net_x22
    );

  delay_dp15_864d8962b5: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub15_s_net_x0,
      din => reinterpret_output_port_net_x40,
      dout => dual_port_ram_doutb_net_x23
    );

  delay_dp1_c767a859c0: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub1_s_net_x0,
      din => reinterpret_output_port_net_x34,
      dout => dual_port_ram_doutb_net_x17
    );

  delay_dp2_4bff58f721: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub2_s_net_x0,
      din => reinterpret_output_port_net_x41,
      dout => dual_port_ram_doutb_net_x24
    );

  delay_dp3_87403bc8d0: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub3_s_net_x0,
      din => reinterpret_output_port_net_x42,
      dout => dual_port_ram_doutb_net_x25
    );

  delay_dp4_4503feecee: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub4_s_net_x0,
      din => reinterpret_output_port_net_x43,
      dout => dual_port_ram_doutb_net_x26
    );

  delay_dp5_7dc86e970e: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub5_s_net_x0,
      din => reinterpret_output_port_net_x44,
      dout => dual_port_ram_doutb_net_x27
    );

  delay_dp6_476a37e36e: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub6_s_net_x0,
      din => reinterpret_output_port_net_x45,
      dout => dual_port_ram_doutb_net_x28
    );

  delay_dp7_f536b27395: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub7_s_net_x0,
      din => reinterpret_output_port_net_x46,
      dout => dual_port_ram_doutb_net_x29
    );

  delay_dp8_ac009a5879: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub8_s_net_x0,
      din => reinterpret_output_port_net_x47,
      dout => dual_port_ram_doutb_net_x30
    );

  delay_dp9_835688f48b: entity work.delay_dp1_entity_c767a859c0
    port map (
      ce_1 => ce_1_sg_x183,
      clk_1 => clk_1_sg_x183,
      delay => addsub9_s_net_x0,
      din => reinterpret_output_port_net_x48,
      dout => dual_port_ram_doutb_net_x31
    );

  delay_reg: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      d => register1_q_net_x0,
      en(0) => constant3_op_net_x1,
      rst => "0",
      q => delay_reg_q_net
    );

  delay_sel: entity work.delay_ffd731c185
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      d => shift_sel_y_net,
      q => delay_sel_q_net_x0
    );

  relational1: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational10: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant10_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational10_op_net
    );

  relational11: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant11_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational11_op_net
    );

  relational12: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant12_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational12_op_net
    );

  relational13: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant13_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational13_op_net
    );

  relational14: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant14_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational14_op_net
    );

  relational15: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant15_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational15_op_net
    );

  relational2: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant3_op_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  relational4: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant4_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  relational6: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant6_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational6_op_net
    );

  relational7: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant7_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational7_op_net
    );

  relational8: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant8_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational8_op_net
    );

  relational9: entity work.relational_297b184c8e
    port map (
      a => shift_sel_y_net,
      b => constant9_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational9_op_net
    );

  shift_sel: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => delay_reg_q_net,
      y => shift_sel_y_net
    );

  sync_delay: entity work.delay_23d71a76f2
    port map (
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      d(0) => register0_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/freeze_cntr"

entity freeze_cntr_entity_98156320f4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(11 downto 0)
  );
end freeze_cntr_entity_98156320f4;

architecture structural of freeze_cntr_entity_98156320f4 is
  signal ce_1_sg_x184: std_logic;
  signal clk_1_sg_x184: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal counter3_op_net: std_logic_vector(12 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x0: std_logic_vector(11 downto 0);
  signal inverter1_op_net: std_logic;
  signal logical5_y_net: std_logic;
  signal register1_q_net_x0: std_logic;

begin
  ce_1_sg_x184 <= ce_1;
  clk_1_sg_x184 <= clk_1;
  constant2_op_net_x0 <= en;
  register1_q_net_x0 <= rst;
  addr <= enable_y_net_x0;

  counter3: entity work.counter_64a371be82
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => register1_q_net_x0,
      op => counter3_op_net
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 11,
      x_width => 13,
      y_width => 12
    )
    port map (
      x => counter3_op_net,
      y => enable_y_net_x0
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 13,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      ip(0) => enable1_y_net,
      op(0) => inverter1_op_net
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant2_op_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/freeze_cntr1"

entity freeze_cntr1_entity_faf4b83edc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(9 downto 0)
  );
end freeze_cntr1_entity_faf4b83edc;

architecture structural of freeze_cntr1_entity_faf4b83edc is
  signal ce_1_sg_x185: std_logic;
  signal clk_1_sg_x185: std_logic;
  signal counter3_op_net: std_logic_vector(10 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x0: std_logic_vector(9 downto 0);
  signal inverter1_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical5_y_net: std_logic;
  signal slice1_y_net_x1: std_logic;

begin
  ce_1_sg_x185 <= ce_1;
  clk_1_sg_x185 <= clk_1;
  logical1_y_net_x0 <= en;
  slice1_y_net_x1 <= rst;
  addr <= enable_y_net_x0;

  counter3: entity work.counter_c962367f4b
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => slice1_y_net_x1,
      op => counter3_op_net
    );

  enable: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 9,
      x_width => 11,
      y_width => 10
    )
    port map (
      x => counter3_op_net,
      y => enable_y_net_x0
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 10,
      new_msb => 10,
      x_width => 11,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      ip(0) => enable1_y_net,
      op(0) => inverter1_op_net
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/freeze_cntr3"

entity freeze_cntr3_entity_a8a4b11c19 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    done: out std_logic
  );
end freeze_cntr3_entity_a8a4b11c19;

architecture structural of freeze_cntr3_entity_a8a4b11c19 is
  signal ce_1_sg_x187: std_logic;
  signal clk_1_sg_x187: std_logic;
  signal counter3_op_net: std_logic_vector(8 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal enable1_y_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal logical5_y_net: std_logic;
  signal slice1_y_net_x3: std_logic;

begin
  ce_1_sg_x187 <= ce_1;
  clk_1_sg_x187 <= clk_1;
  delay3_q_net_x0 <= en;
  slice1_y_net_x3 <= rst;
  done <= enable1_y_net_x0;

  counter3: entity work.counter_54b3e8f79c
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => slice1_y_net_x3,
      op => counter3_op_net
    );

  enable1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 8,
      x_width => 9,
      y_width => 1
    )
    port map (
      x => counter3_op_net,
      y(0) => enable1_y_net_x0
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      ip(0) => enable1_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical5: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay3_q_net_x0,
      d1(0) => inverter1_op_net,
      y(0) => logical5_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/get_data"

entity get_data_entity_eca95f4c93 is
  port (
    testing3_get_data_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic
  );
end get_data_entity_eca95f4c93;

architecture structural of get_data_entity_eca95f4c93 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal slice_reg_y_net_x0: std_logic;
  signal testing3_get_data_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_get_data_user_data_out_net_x0 <= testing3_get_data_user_data_out;
  in_reg <= slice_reg_y_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_get_data_user_data_out_net_x0,
      q => io_delay_q_net
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => io_delay_q_net,
      y(0) => slice_reg_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/adder_1_1"

entity adder_1_1_entity_9b343a36b3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din1: in std_logic_vector(49 downto 0); 
    din2: in std_logic_vector(49 downto 0); 
    din3: in std_logic_vector(49 downto 0); 
    din4: in std_logic_vector(49 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    dout: out std_logic_vector(49 downto 0); 
    en_out: out std_logic; 
    sync_out: out std_logic
  );
end adder_1_1_entity_9b343a36b3;

architecture structural of adder_1_1_entity_9b343a36b3 is
  signal addr1_s_net: std_logic_vector(49 downto 0);
  signal addr2_s_net: std_logic_vector(49 downto 0);
  signal addr3_s_net_x0: std_logic_vector(49 downto 0);
  signal ce_1_sg_x188: std_logic;
  signal clk_1_sg_x188: std_logic;
  signal delay1_q_net_x2: std_logic_vector(49 downto 0);
  signal delay1_q_net_x3: std_logic_vector(49 downto 0);
  signal delay1_q_net_x4: std_logic_vector(49 downto 0);
  signal delay2_q_net_x0: std_logic_vector(49 downto 0);
  signal delay3_q_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal sync_delay1_q_net_x0: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x188 <= ce_1;
  clk_1_sg_x188 <= clk_1;
  delay1_q_net_x2 <= din1;
  delay1_q_net_x3 <= din2;
  delay1_q_net_x4 <= din3;
  delay2_q_net_x0 <= din4;
  delay4_q_net_x0 <= en;
  delay3_q_net_x0 <= sync;
  dout <= addr3_s_net_x0;
  en_out <= sync_delay1_q_net_x0;
  sync_out <= sync_delay_q_net_x0;

  addr1: entity work.addsub_db65d57300
    port map (
      a => delay1_q_net_x2,
      b => delay1_q_net_x3,
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      en(0) => delay4_q_net_x0,
      s => addr1_s_net
    );

  addr2: entity work.addsub_db65d57300
    port map (
      a => delay1_q_net_x4,
      b => delay2_q_net_x0,
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      en(0) => delay4_q_net_x0,
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 48,
      a_width => 50,
      b_arith => xlSigned,
      b_bin_pt => 48,
      b_width => 50,
      c_has_c_out => 0,
      c_latency => 1,
      c_output_width => 51,
      core_name0 => "addsb_11_0_d537e646351c8e73",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 51,
      latency => 1,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 48,
      s_width => 50
    )
    port map (
      a => addr1_s_net,
      b => addr2_s_net,
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      en => "1",
      s => addr3_s_net_x0
    );

  sync_delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      d(0) => delay3_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

  sync_delay1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      d(0) => delay4_q_net_x0,
      q(0) => sync_delay1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_coeffs"

entity pol1_in1_coeffs_entity_0568424c13 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    coeff: out std_logic_vector(71 downto 0); 
    dout: out std_logic_vector(31 downto 0); 
    en_out: out std_logic; 
    sync_out: out std_logic
  );
end pol1_in1_coeffs_entity_0568424c13;

architecture structural of pol1_in1_coeffs_entity_0568424c13 is
  signal ce_1_sg_x189: std_logic;
  signal clk_1_sg_x189: std_logic;
  signal concat_y_net: std_logic_vector(71 downto 0);
  signal convert2_dout_net_x0: std_logic_vector(31 downto 0);
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay1_q_net_x1: std_logic;
  signal delay1_q_net_x2: std_logic_vector(31 downto 0);
  signal delay2_q_net_x1: std_logic;
  signal delay2_q_net_x2: std_logic;
  signal delay3_q_net_x0: std_logic_vector(71 downto 0);
  signal delay_q_net_x0: std_logic;
  signal fan_delay1_q_net: std_logic_vector(5 downto 0);
  signal fan_delay2_q_net: std_logic_vector(5 downto 0);
  signal fan_delay3_q_net: std_logic_vector(5 downto 0);
  signal fan_delay4_q_net: std_logic_vector(5 downto 0);
  signal register_q_net: std_logic_vector(71 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(17 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(17 downto 0);
  signal rom1_data_net: std_logic_vector(17 downto 0);
  signal rom2_data_net: std_logic_vector(17 downto 0);
  signal rom3_data_net: std_logic_vector(17 downto 0);
  signal rom4_data_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x189 <= ce_1;
  clk_1_sg_x189 <= clk_1;
  convert2_dout_net_x0 <= din;
  delay2_q_net_x1 <= en;
  delay1_q_net_x1 <= sync;
  coeff <= delay3_q_net_x0;
  dout <= delay1_q_net_x2;
  en_out <= delay2_q_net_x2;
  sync_out <= delay_q_net_x0;

  concat: entity work.concat_a246e373e7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3 => reinterpret4_output_port_net,
      y => concat_y_net
    );

  counter: entity work.counter_7e3285e9f6
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      en(0) => delay2_q_net_x1,
      rst(0) => delay1_q_net_x1,
      op => counter_op_net
    );

  delay: entity work.delay_915afce49f
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d(0) => delay1_q_net_x1,
      q(0) => delay_q_net_x0
    );

  delay1: entity work.delay_0bf227c02a
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d => convert2_dout_net_x0,
      q => delay1_q_net_x2
    );

  delay2: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      d(0) => delay2_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x2
    );

  delay3: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 72
    )
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      d => register_q_net,
      en => '1',
      rst => '1',
      q => delay3_q_net_x0
    );

  fan_delay1: entity work.delay_b4a11b07da
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d => counter_op_net,
      q => fan_delay1_q_net
    );

  fan_delay2: entity work.delay_b4a11b07da
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d => counter_op_net,
      q => fan_delay2_q_net
    );

  fan_delay3: entity work.delay_b4a11b07da
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d => counter_op_net,
      q => fan_delay3_q_net
    );

  fan_delay4: entity work.delay_b4a11b07da
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      d => counter_op_net,
      q => fan_delay4_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 72,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      d => concat_y_net,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  reinterpret1: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom1_data_net,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom2_data_net,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom3_data_net,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_580feec131
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => rom4_data_net,
      output_port => reinterpret4_output_port_net
    );

  rom1: entity work.xlsprom_testing3
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_72_d1c80e28fd489b6f",
      latency => 7
    )
    port map (
      addr => fan_delay1_q_net,
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      en => "1",
      rst => "0",
      data => rom1_data_net
    );

  rom2: entity work.xlsprom_testing3
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_72_44b6341b35b35a10",
      latency => 7
    )
    port map (
      addr => fan_delay2_q_net,
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      en => "1",
      rst => "0",
      data => rom2_data_net
    );

  rom3: entity work.xlsprom_testing3
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_72_c4044a0cc7932d1b",
      latency => 7
    )
    port map (
      addr => fan_delay3_q_net,
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      en => "1",
      rst => "0",
      data => rom3_data_net
    );

  rom4: entity work.xlsprom_testing3
    generic map (
      c_address_width => 6,
      c_width => 18,
      core_name0 => "bmg_72_5e4d6e8669bb51b8",
      latency => 7
    )
    port map (
      addr => fan_delay4_q_net,
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      en => "1",
      rst => "0",
      data => rom4_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_first_tap/delay_bram"

entity delay_bram_entity_6097d53248 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    we: in std_logic; 
    dout: out std_logic_vector(31 downto 0)
  );
end delay_bram_entity_6097d53248;

architecture structural of delay_bram_entity_6097d53248 is
  signal ce_1_sg_x190: std_logic;
  signal clk_1_sg_x190: std_logic;
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay1_q_net_x3: std_logic_vector(31 downto 0);
  signal delay2_q_net_x3: std_logic;
  signal delay_q_net_x0: std_logic_vector(31 downto 0);
  signal ram_data_out_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x190 <= ce_1;
  clk_1_sg_x190 <= clk_1;
  delay1_q_net_x3 <= din;
  delay2_q_net_x3 <= we;
  dout <= delay_q_net_x0;

  counter: entity work.counter_9a0deae03b
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      en(0) => delay2_q_net_x3,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      d => ram_data_out_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  ram: entity work.xlspram_testing3
    generic map (
      c_address_width => 6,
      c_width => 32,
      core_name0 => "bmg_72_90b3d9cc777bd9da",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      data_in => delay1_q_net_x3,
      en => "1",
      rst => "0",
      we(0) => delay2_q_net_x3,
      data_out => ram_data_out_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_first_tap/sync_delay"

entity sync_delay_entity_d23d269c82 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end sync_delay_entity_d23d269c82;

architecture structural of sync_delay_entity_d23d269c82 is
  signal ce_1_sg_x191: std_logic;
  signal clk_1_sg_x191: std_logic;
  signal constant1_op_net: std_logic_vector(8 downto 0);
  signal constant2_op_net: std_logic_vector(8 downto 0);
  signal constant3_op_net: std_logic;
  signal constant_op_net: std_logic_vector(8 downto 0);
  signal counter_op_net: std_logic_vector(8 downto 0);
  signal delay_q_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x191 <= ce_1;
  clk_1_sg_x191 <= clk_1;
  delay_q_net_x1 <= in_x0;
  out_x0 <= mux_y_net_x0;

  constant1: entity work.constant_fd85eb7067
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_4a391b9a0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant_x0: entity work.constant_b4ec9de7d1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.counter_1dea202a2f
    port map (
      ce => ce_1_sg_x191,
      clk => clk_1_sg_x191,
      clr => '0',
      din => constant2_op_net,
      en(0) => logical_y_net,
      load(0) => delay_q_net_x1,
      op => counter_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational1_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_1bef4ba0e4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay_q_net_x1,
      d1(0) => relational_op_net,
      sel(0) => constant3_op_net,
      y(0) => mux_y_net_x0
    );

  relational: entity work.relational_6c3ee657fa
    port map (
      a => constant_op_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_78eac2928d
    port map (
      a => counter_op_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_first_tap"

entity pol1_in1_first_tap_entity_4b930ec0e4 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeffs: in std_logic_vector(71 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(53 downto 0); 
    dout: out std_logic_vector(31 downto 0); 
    en_out: out std_logic; 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(49 downto 0)
  );
end pol1_in1_first_tap_entity_4b930ec0e4;

architecture structural of pol1_in1_first_tap_entity_4b930ec0e4 is
  signal ce_1_sg_x192: std_logic;
  signal clk_1_sg_x192: std_logic;
  signal delay1_q_net_x4: std_logic_vector(31 downto 0);
  signal delay1_q_net_x5: std_logic_vector(49 downto 0);
  signal delay2_q_net_x4: std_logic;
  signal delay3_q_net_x1: std_logic_vector(71 downto 0);
  signal delay_q_net_x2: std_logic;
  signal delay_q_net_x3: std_logic;
  signal delay_q_net_x4: std_logic_vector(31 downto 0);
  signal mult_p_net: std_logic_vector(49 downto 0);
  signal mux_y_net_x1: std_logic;
  signal reinterpret2_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal slice1_y_net_x0: std_logic_vector(53 downto 0);
  signal slice_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x192 <= ce_1;
  clk_1_sg_x192 <= clk_1;
  delay3_q_net_x1 <= coeffs;
  delay1_q_net_x4 <= din;
  delay2_q_net_x4 <= en;
  delay_q_net_x2 <= sync;
  coeff_out <= slice1_y_net_x0;
  dout <= delay_q_net_x4;
  en_out <= delay_q_net_x3;
  sync_out <= mux_y_net_x1;
  taps_out <= delay1_q_net_x5;

  delay: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      d(0) => delay2_q_net_x4,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x3
    );

  delay1: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 50
    )
    port map (
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      d => mult_p_net,
      en => '1',
      rst => '1',
      q => delay1_q_net_x5
    );

  delay_bram_6097d53248: entity work.delay_bram_entity_6097d53248
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      din => delay1_q_net_x4,
      we => delay2_q_net_x4,
      dout => delay_q_net_x4
    );

  mult: entity work.xlmult_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 32,
      c_output_width => 50,
      c_type => 0,
      core_name0 => "mult_11_2_cc8b54dec0c4d746",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 48,
      p_width => 50,
      quantization => 1
    )
    port map (
      a => reinterpret2_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      core_ce => ce_1_sg_x192,
      core_clk => clk_1_sg_x192,
      core_clr => '1',
      en(0) => delay2_q_net_x4,
      rst => "0",
      p => mult_p_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret2: entity work.reinterpret_0be15ab28c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay1_q_net_x4,
      output_port => reinterpret2_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 72,
      y_width => 18
    )
    port map (
      x => delay3_q_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 71,
      x_width => 72,
      y_width => 54
    )
    port map (
      x => delay3_q_net_x1,
      y => slice1_y_net_x0
    );

  sync_delay_d23d269c82: entity work.sync_delay_entity_d23d269c82
    port map (
      ce_1 => ce_1_sg_x192,
      clk_1 => clk_1_sg_x192,
      in_x0 => delay_q_net_x2,
      out_x0 => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_last_tap"

entity pol1_in1_last_tap_entity_174bdff01c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(17 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    en_out: out std_logic; 
    sync_out: out std_logic; 
    tap_out: out std_logic_vector(49 downto 0)
  );
end pol1_in1_last_tap_entity_174bdff01c;

architecture structural of pol1_in1_last_tap_entity_174bdff01c is
  signal ce_1_sg_x193: std_logic;
  signal clk_1_sg_x193: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net_x1: std_logic_vector(49 downto 0);
  signal delay3_q_net_x1: std_logic;
  signal delay4_q_net_x1: std_logic;
  signal delay_q_net: std_logic;
  signal delay_q_net_x2: std_logic;
  signal delay_q_net_x3: std_logic_vector(31 downto 0);
  signal mult_p_net: std_logic_vector(49 downto 0);
  signal mux_y_net_x0: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal slice1_y_net_x0: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x193 <= ce_1;
  clk_1_sg_x193 <= clk_1;
  slice1_y_net_x0 <= coeff;
  delay_q_net_x3 <= din;
  delay_q_net_x2 <= en;
  mux_y_net_x0 <= sync;
  en_out <= delay4_q_net_x1;
  sync_out <= delay3_q_net_x1;
  tap_out <= delay2_q_net_x1;

  delay: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d(0) => mux_y_net_x0,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      d(0) => delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.delay_d8108f2eaf
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d => mult_p_net,
      q => delay2_q_net_x1
    );

  delay3: entity work.delay_aab7b18c27
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d(0) => delay_q_net,
      q(0) => delay3_q_net_x1
    );

  delay4: entity work.delay_aab7b18c27
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d(0) => delay1_q_net,
      q(0) => delay4_q_net_x1
    );

  mult: entity work.xlmult_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 32,
      c_output_width => 50,
      c_type => 0,
      core_name0 => "mult_11_2_cc8b54dec0c4d746",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 48,
      p_width => 50,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      core_ce => ce_1_sg_x193,
      core_clk => clk_1_sg_x193,
      core_clr => '1',
      en(0) => delay_q_net_x2,
      rst => "0",
      p => mult_p_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net_x0,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_0be15ab28c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay_q_net_x3,
      output_port => reinterpret1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_tap2/delay_bram"

entity delay_bram_entity_387d78d441 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    dout: out std_logic_vector(31 downto 0)
  );
end delay_bram_entity_387d78d441;

architecture structural of delay_bram_entity_387d78d441 is
  signal ce_1_sg_x194: std_logic;
  signal clk_1_sg_x194: std_logic;
  signal counter_op_net: std_logic_vector(5 downto 0);
  signal delay_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_q_net_x5: std_logic;
  signal delay_q_net_x6: std_logic_vector(31 downto 0);
  signal ram_data_out_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x194 <= ce_1;
  clk_1_sg_x194 <= clk_1;
  delay_q_net_x6 <= din;
  delay_q_net_x5 <= en;
  dout <= delay_q_net_x0;

  counter: entity work.counter_9a0deae03b
    port map (
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      clr => '0',
      en(0) => delay_q_net_x5,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      d => ram_data_out_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  ram: entity work.xlspram_testing3
    generic map (
      c_address_width => 6,
      c_width => 32,
      core_name0 => "bmg_72_90b3d9cc777bd9da",
      latency => 1
    )
    port map (
      addr => counter_op_net,
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      data_in => delay_q_net_x6,
      en => "1",
      rst => "0",
      we(0) => delay_q_net_x5,
      data_out => ram_data_out_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_tap2"

entity pol1_in1_tap2_entity_1eceb9c063 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(53 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(35 downto 0); 
    dout: out std_logic_vector(31 downto 0); 
    en_out: out std_logic; 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(49 downto 0)
  );
end pol1_in1_tap2_entity_1eceb9c063;

architecture structural of pol1_in1_tap2_entity_1eceb9c063 is
  signal ce_1_sg_x196: std_logic;
  signal clk_1_sg_x196: std_logic;
  signal delay1_q_net_x4: std_logic_vector(49 downto 0);
  signal delay_q_net_x10: std_logic_vector(31 downto 0);
  signal delay_q_net_x7: std_logic;
  signal delay_q_net_x8: std_logic_vector(31 downto 0);
  signal delay_q_net_x9: std_logic;
  signal mult_p_net: std_logic_vector(49 downto 0);
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x4: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal slice1_y_net_x1: std_logic_vector(53 downto 0);
  signal slice1_y_net_x2: std_logic_vector(35 downto 0);
  signal slice_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x196 <= ce_1;
  clk_1_sg_x196 <= clk_1;
  slice1_y_net_x1 <= coeff;
  delay_q_net_x8 <= din;
  delay_q_net_x7 <= en;
  mux_y_net_x3 <= sync;
  coeff_out <= slice1_y_net_x2;
  dout <= delay_q_net_x10;
  en_out <= delay_q_net_x9;
  sync_out <= mux_y_net_x4;
  taps_out <= delay1_q_net_x4;

  delay: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
      d(0) => delay_q_net_x7,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x9
    );

  delay1: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 50
    )
    port map (
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
      d => mult_p_net,
      en => '1',
      rst => '1',
      q => delay1_q_net_x4
    );

  delay_bram_387d78d441: entity work.delay_bram_entity_387d78d441
    port map (
      ce_1 => ce_1_sg_x196,
      clk_1 => clk_1_sg_x196,
      din => delay_q_net_x8,
      en => delay_q_net_x7,
      dout => delay_q_net_x10
    );

  mult: entity work.xlmult_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 32,
      c_output_width => 50,
      c_type => 0,
      core_name0 => "mult_11_2_cc8b54dec0c4d746",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 48,
      p_width => 50,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
      clr => '0',
      core_ce => ce_1_sg_x196,
      core_clk => clk_1_sg_x196,
      core_clr => '1',
      en(0) => delay_q_net_x7,
      rst => "0",
      p => mult_p_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_0be15ab28c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay_q_net_x8,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 54,
      y_width => 18
    )
    port map (
      x => slice1_y_net_x1,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 53,
      x_width => 54,
      y_width => 36
    )
    port map (
      x => slice1_y_net_x1,
      y => slice1_y_net_x2
    );

  sync_delay_a7401ab4c8: entity work.sync_delay_entity_d23d269c82
    port map (
      ce_1 => ce_1_sg_x196,
      clk_1 => clk_1_sg_x196,
      in_x0 => mux_y_net_x3,
      out_x0 => mux_y_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real/pol1_in1_tap3"

entity pol1_in1_tap3_entity_3e6098bd79 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    coeff: in std_logic_vector(35 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    sync: in std_logic; 
    coeff_out: out std_logic_vector(17 downto 0); 
    dout: out std_logic_vector(31 downto 0); 
    en_out: out std_logic; 
    sync_out: out std_logic; 
    taps_out: out std_logic_vector(49 downto 0)
  );
end pol1_in1_tap3_entity_3e6098bd79;

architecture structural of pol1_in1_tap3_entity_3e6098bd79 is
  signal ce_1_sg_x199: std_logic;
  signal clk_1_sg_x199: std_logic;
  signal delay1_q_net_x5: std_logic_vector(49 downto 0);
  signal delay_q_net_x14: std_logic;
  signal delay_q_net_x15: std_logic_vector(31 downto 0);
  signal delay_q_net_x16: std_logic_vector(31 downto 0);
  signal delay_q_net_x3: std_logic;
  signal mult_p_net: std_logic_vector(49 downto 0);
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x6: std_logic;
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(17 downto 0);
  signal slice1_y_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net_x4: std_logic_vector(17 downto 0);
  signal slice_y_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x199 <= ce_1;
  clk_1_sg_x199 <= clk_1;
  slice1_y_net_x3 <= coeff;
  delay_q_net_x15 <= din;
  delay_q_net_x14 <= en;
  mux_y_net_x6 <= sync;
  coeff_out <= slice1_y_net_x4;
  dout <= delay_q_net_x16;
  en_out <= delay_q_net_x3;
  sync_out <= mux_y_net_x2;
  taps_out <= delay1_q_net_x5;

  delay: entity work.xldelay
    generic map (
      latency => 8,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x199,
      clk => clk_1_sg_x199,
      d(0) => delay_q_net_x14,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x3
    );

  delay1: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 50
    )
    port map (
      ce => ce_1_sg_x199,
      clk => clk_1_sg_x199,
      d => mult_p_net,
      en => '1',
      rst => '1',
      q => delay1_q_net_x5
    );

  delay_bram_640cfead81: entity work.delay_bram_entity_387d78d441
    port map (
      ce_1 => ce_1_sg_x199,
      clk_1 => clk_1_sg_x199,
      din => delay_q_net_x15,
      en => delay_q_net_x14,
      dout => delay_q_net_x16
    );

  mult: entity work.xlmult_testing3
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 31,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 17,
      b_width => 18,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 18,
      c_baat => 32,
      c_output_width => 50,
      c_type => 0,
      core_name0 => "mult_11_2_cc8b54dec0c4d746",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 48,
      p_width => 50,
      quantization => 1
    )
    port map (
      a => reinterpret1_output_port_net,
      b => reinterpret_output_port_net,
      ce => ce_1_sg_x199,
      clk => clk_1_sg_x199,
      clr => '0',
      core_ce => ce_1_sg_x199,
      core_clk => clk_1_sg_x199,
      core_clr => '1',
      en(0) => delay_q_net_x14,
      rst => "0",
      p => mult_p_net
    );

  reinterpret: entity work.reinterpret_9a0fa0f632
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_y_net,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_0be15ab28c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => delay_q_net_x15,
      output_port => reinterpret1_output_port_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 17,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => slice1_y_net_x3,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 18,
      new_msb => 35,
      x_width => 36,
      y_width => 18
    )
    port map (
      x => slice1_y_net_x3,
      y => slice1_y_net_x4
    );

  sync_delay_b6f24768ea: entity work.sync_delay_entity_d23d269c82
    port map (
      ce_1 => ce_1_sg_x199,
      clk_1 => clk_1_sg_x199,
      in_x0 => mux_y_net_x6,
      out_x0 => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_fir_real"

entity pfb_fir_real_entity_fd9fc4592b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    pol1_in1: in std_logic_vector(31 downto 0); 
    sync: in std_logic; 
    valid: in std_logic; 
    en_out: out std_logic; 
    pol1_out1: out std_logic_vector(47 downto 0); 
    sync_out: out std_logic
  );
end pfb_fir_real_entity_fd9fc4592b;

architecture structural of pfb_fir_real_entity_fd9fc4592b is
  signal addr3_s_net_x0: std_logic_vector(49 downto 0);
  signal ce_1_sg_x200: std_logic;
  signal clk_1_sg_x200: std_logic;
  signal convert2_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_1_1_dout_net_x0: std_logic_vector(47 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay1_q_net_x4: std_logic_vector(31 downto 0);
  signal delay1_q_net_x5: std_logic_vector(49 downto 0);
  signal delay1_q_net_x6: std_logic_vector(49 downto 0);
  signal delay1_q_net_x7: std_logic_vector(49 downto 0);
  signal delay1_q_net_x8: std_logic;
  signal delay2_q_net_x4: std_logic;
  signal delay2_q_net_x5: std_logic_vector(49 downto 0);
  signal delay2_q_net_x6: std_logic;
  signal delay3_q_net_x1: std_logic_vector(71 downto 0);
  signal delay3_q_net_x2: std_logic;
  signal delay4_q_net_x1: std_logic;
  signal delay_q_net_x14: std_logic;
  signal delay_q_net_x15: std_logic_vector(31 downto 0);
  signal delay_q_net_x16: std_logic_vector(31 downto 0);
  signal delay_q_net_x2: std_logic;
  signal delay_q_net_x3: std_logic;
  signal delay_q_net_x7: std_logic;
  signal delay_q_net_x8: std_logic_vector(31 downto 0);
  signal mux_y_net_x2: std_logic;
  signal mux_y_net_x3: std_logic;
  signal mux_y_net_x6: std_logic;
  signal scale_1_1_op_net: std_logic_vector(49 downto 0);
  signal slice1_y_net_x1: std_logic_vector(53 downto 0);
  signal slice1_y_net_x3: std_logic_vector(35 downto 0);
  signal slice1_y_net_x4: std_logic_vector(17 downto 0);
  signal sync_delay1_q_net_x1: std_logic;
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x200 <= ce_1;
  clk_1_sg_x200 <= clk_1;
  convert2_dout_net_x1 <= pol1_in1;
  delay1_q_net_x8 <= sync;
  delay2_q_net_x6 <= valid;
  en_out <= sync_delay1_q_net_x1;
  pol1_out1 <= convert_1_1_dout_net_x0;
  sync_out <= delay1_q_net_x0;

  adder_1_1_9b343a36b3: entity work.adder_1_1_entity_9b343a36b3
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      din1 => delay1_q_net_x5,
      din2 => delay1_q_net_x6,
      din3 => delay1_q_net_x7,
      din4 => delay2_q_net_x5,
      en => delay4_q_net_x1,
      sync => delay3_q_net_x2,
      dout => addr3_s_net_x0,
      en_out => sync_delay1_q_net_x1,
      sync_out => sync_delay_q_net_x0
    );

  convert_1_1: entity work.xlconvert_pipeline
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 49,
      din_width => 50,
      dout_arith => 2,
      dout_bin_pt => 47,
      dout_width => 48,
      latency => 1,
      overflow => xlWrap,
      quantization => xlRoundBanker
    )
    port map (
      ce => ce_1_sg_x200,
      clk => clk_1_sg_x200,
      clr => '0',
      din => scale_1_1_op_net,
      en => "1",
      dout => convert_1_1_dout_net_x0
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x200,
      clk => clk_1_sg_x200,
      clr => '0',
      d(0) => sync_delay_q_net_x0,
      q(0) => delay1_q_net_x0
    );

  pol1_in1_coeffs_0568424c13: entity work.pol1_in1_coeffs_entity_0568424c13
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      din => convert2_dout_net_x1,
      en => delay2_q_net_x6,
      sync => delay1_q_net_x8,
      coeff => delay3_q_net_x1,
      dout => delay1_q_net_x4,
      en_out => delay2_q_net_x4,
      sync_out => delay_q_net_x2
    );

  pol1_in1_first_tap_4b930ec0e4: entity work.pol1_in1_first_tap_entity_4b930ec0e4
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      coeffs => delay3_q_net_x1,
      din => delay1_q_net_x4,
      en => delay2_q_net_x4,
      sync => delay_q_net_x2,
      coeff_out => slice1_y_net_x1,
      dout => delay_q_net_x8,
      en_out => delay_q_net_x7,
      sync_out => mux_y_net_x3,
      taps_out => delay1_q_net_x5
    );

  pol1_in1_last_tap_174bdff01c: entity work.pol1_in1_last_tap_entity_174bdff01c
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      coeff => slice1_y_net_x4,
      din => delay_q_net_x16,
      en => delay_q_net_x3,
      sync => mux_y_net_x2,
      en_out => delay4_q_net_x1,
      sync_out => delay3_q_net_x2,
      tap_out => delay2_q_net_x5
    );

  pol1_in1_tap2_1eceb9c063: entity work.pol1_in1_tap2_entity_1eceb9c063
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      coeff => slice1_y_net_x1,
      din => delay_q_net_x8,
      en => delay_q_net_x7,
      sync => mux_y_net_x3,
      coeff_out => slice1_y_net_x3,
      dout => delay_q_net_x15,
      en_out => delay_q_net_x14,
      sync_out => mux_y_net_x6,
      taps_out => delay1_q_net_x6
    );

  pol1_in1_tap3_3e6098bd79: entity work.pol1_in1_tap3_entity_3e6098bd79
    port map (
      ce_1 => ce_1_sg_x200,
      clk_1 => clk_1_sg_x200,
      coeff => slice1_y_net_x3,
      din => delay_q_net_x15,
      en => delay_q_net_x14,
      sync => mux_y_net_x6,
      coeff_out => slice1_y_net_x4,
      dout => delay_q_net_x16,
      en_out => delay_q_net_x3,
      sync_out => mux_y_net_x2,
      taps_out => delay1_q_net_x7
    );

  scale_1_1: entity work.scale_832c00b251
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => addr3_s_net_x0,
      op => scale_1_1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out/munge_in/join"

entity join_entity_8474fd8d06 is
  port (
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(63 downto 0)
  );
end join_entity_8474fd8d06;

architecture structural of join_entity_8474fd8d06 is
  signal concatenate_y_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x1: std_logic_vector(31 downto 0);

begin
  reinterpret1_output_port_net_x1 <= in1;
  reinterpret2_output_port_net_x1 <= in2;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_62c4475a80
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1 => reinterpret2_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret1_output_port_net_x1,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret2_output_port_net_x1,
      output_port => reinterpret2_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out/munge_in/split"

entity split_entity_e7b2b89d5f is
  port (
    bus_in: in std_logic_vector(63 downto 0); 
    lsb_out1: out std_logic_vector(31 downto 0); 
    msb_out2: out std_logic_vector(31 downto 0)
  );
end split_entity_e7b2b89d5f;

architecture structural of split_entity_e7b2b89d5f is
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(63 downto 0);
  signal slice1_y_net: std_logic_vector(31 downto 0);
  signal slice2_y_net: std_logic_vector(31 downto 0);

begin
  reinterpret_output_port_net_x0 <= bus_in;
  lsb_out1 <= reinterpret1_output_port_net_x2;
  msb_out2 <= reinterpret2_output_port_net_x2;

  reinterpret1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice1_y_net,
      output_port => reinterpret1_output_port_net_x2
    );

  reinterpret2: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice2_y_net,
      output_port => reinterpret2_output_port_net_x2
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 32,
      new_msb => 63,
      x_width => 64,
      y_width => 32
    )
    port map (
      x => reinterpret_output_port_net_x0,
      y => slice2_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out/munge_in"

entity munge_in_entity_bdb93cbbb6 is
  port (
    din: in std_logic_vector(63 downto 0); 
    dout: out std_logic_vector(63 downto 0)
  );
end munge_in_entity_bdb93cbbb6;

architecture structural of munge_in_entity_bdb93cbbb6 is
  signal concatenate_y_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(63 downto 0);

begin
  reinterpret_output_port_net_x1 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  join_8474fd8d06: entity work.join_entity_8474fd8d06
    port map (
      in1 => reinterpret1_output_port_net_x2,
      in2 => reinterpret2_output_port_net_x2,
      bus_out => concatenate_y_net_x0
    );

  reinterpret: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x1,
      output_port => reinterpret_output_port_net_x0
    );

  reinterpret_out: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concatenate_y_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

  split_e7b2b89d5f: entity work.split_entity_e7b2b89d5f
    port map (
      bus_in => reinterpret_output_port_net_x0,
      lsb_out1 => reinterpret1_output_port_net_x2,
      msb_out2 => reinterpret2_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out"

entity pfb_out_entity_d8d3bbee1d is
  port (
    addr: in std_logic_vector(9 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(63 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(63 downto 0); 
    convert_we_x0: out std_logic
  );
end pfb_out_entity_d8d3bbee1d;

architecture structural of pfb_out_entity_d8d3bbee1d is
  signal ce_1_sg_x202: std_logic;
  signal clk_1_sg_x202: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal enable_y_net_x2: std_logic_vector(9 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(63 downto 0);
  signal sync_delay1_q_net_x2: std_logic;

begin
  enable_y_net_x2 <= addr;
  ce_1_sg_x202 <= ce_1;
  clk_1_sg_x202 <= clk_1;
  reinterpret_output_port_net_x2 <= data_in;
  sync_delay1_q_net_x2 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_4a2c82e33c: entity work.calc_add_entity_1ef7896aaf
    port map (
      ce_1 => ce_1_sg_x202,
      clk_1 => clk_1_sg_x202,
      in_x0 => enable_y_net_x2,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x202,
      clk => clk_1_sg_x202,
      clr => '0',
      din(0) => sync_delay1_q_net_x2,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_bdb93cbbb6: entity work.munge_in_entity_bdb93cbbb6
    port map (
      din => reinterpret_output_port_net_x2,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out1/calc_add"

entity calc_add_entity_339f03764f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(1 downto 0); 
    out_x0: out std_logic_vector(9 downto 0)
  );
end calc_add_entity_339f03764f;

architecture structural of calc_add_entity_339f03764f is
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x203: std_logic;
  signal clk_1_sg_x203: std_logic;
  signal concat_y_net: std_logic_vector(9 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(9 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(8 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal slice3_y_net_x0: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x203 <= ce_1;
  clk_1_sg_x203 <= clk_1;
  slice3_y_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_1d98d96b58
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => msw_y_net,
      in1(0) => add_sub_s_net,
      y => concat_y_net
    );

  const: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => const_op_net
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x203,
      clk => clk_1_sg_x203,
      clr => '0',
      din => slice3_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => convert_addr_dout_net,
      y(0) => lsw_y_net
    );

  manipulate: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => manipulate_op_net
    );

  msw: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 9,
      x_width => 10,
      y_width => 9
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_4fe5face7f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert_addr_dout_net,
      d1 => concat_y_net,
      sel(0) => manipulate_op_net,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pfb_out1"

entity pfb_out1_entity_715d24dad0 is
  port (
    addr: in std_logic_vector(1 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(63 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(9 downto 0); 
    convert_din1_x0: out std_logic_vector(63 downto 0); 
    convert_we_x0: out std_logic
  );
end pfb_out1_entity_715d24dad0;

architecture structural of pfb_out1_entity_715d24dad0 is
  signal ce_1_sg_x204: std_logic;
  signal clk_1_sg_x204: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(63 downto 0);
  signal slice3_y_net_x1: std_logic_vector(1 downto 0);
  signal sync_delay1_q_net_x3: std_logic;

begin
  slice3_y_net_x1 <= addr;
  ce_1_sg_x204 <= ce_1;
  clk_1_sg_x204 <= clk_1;
  reinterpret_output_port_net_x4 <= data_in;
  sync_delay1_q_net_x3 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_339f03764f: entity work.calc_add_entity_339f03764f
    port map (
      ce_1 => ce_1_sg_x204,
      clk_1 => clk_1_sg_x204,
      in_x0 => slice3_y_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 10,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 10,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert_addr_dout_net_x0
    );

  convert_din1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 64,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din => reinterpret_out_output_port_net_x0,
      en => "1",
      dout => convert_din1_dout_net_x0
    );

  convert_we: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x204,
      clk => clk_1_sg_x204,
      clr => '0',
      din(0) => sync_delay1_q_net_x3,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_e3d35781da: entity work.munge_in_entity_bdb93cbbb6
    port map (
      din => reinterpret_output_port_net_x4,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline16"

entity pipeline16_entity_1b6bb72ccf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline16_entity_1b6bb72ccf;

architecture structural of pipeline16_entity_1b6bb72ccf is
  signal ce_1_sg_x205: std_logic;
  signal clk_1_sg_x205: std_logic;
  signal delay_sync_q_net_x2: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net: std_logic;
  signal register2_q_net_x1: std_logic;

begin
  ce_1_sg_x205 <= ce_1;
  clk_1_sg_x205 <= clk_1;
  delay_sync_q_net_x2 <= d;
  q <= register2_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x205,
      clk => clk_1_sg_x205,
      d(0) => delay_sync_q_net_x2,
      en => "1",
      rst => "0",
      q(0) => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x205,
      clk => clk_1_sg_x205,
      d(0) => register0_q_net,
      en => "1",
      rst => "0",
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x205,
      clk => clk_1_sg_x205,
      d(0) => register1_q_net,
      en => "1",
      rst => "0",
      q(0) => register2_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline2"

entity pipeline2_entity_a41c505118 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline2_entity_a41c505118;

architecture structural of pipeline2_entity_a41c505118 is
  signal ce_1_sg_x206: std_logic;
  signal clk_1_sg_x206: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net_x1: std_logic;
  signal slice_reg_y_net_x1: std_logic;

begin
  ce_1_sg_x206 <= ce_1;
  clk_1_sg_x206 <= clk_1;
  slice_reg_y_net_x1 <= d;
  q <= register1_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x206,
      clk => clk_1_sg_x206,
      d(0) => slice_reg_y_net_x1,
      en => "1",
      rst => "0",
      q(0) => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x206,
      clk => clk_1_sg_x206,
      d(0) => register0_q_net,
      en => "1",
      rst => "0",
      q(0) => register1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline251"

entity pipeline251_entity_9515b047fc is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline251_entity_9515b047fc;

architecture structural of pipeline251_entity_9515b047fc is
  signal ce_1_sg_x207: std_logic;
  signal clk_1_sg_x207: std_logic;
  signal register0_q_net_x0: std_logic;
  signal slice_reg_y_net_x1: std_logic;

begin
  ce_1_sg_x207 <= ce_1;
  clk_1_sg_x207 <= clk_1;
  slice_reg_y_net_x1 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x207,
      clk => clk_1_sg_x207,
      d(0) => slice_reg_y_net_x1,
      en => "1",
      rst => "0",
      q(0) => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline254"

entity pipeline254_entity_f0b95dd0ae is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end pipeline254_entity_f0b95dd0ae;

architecture structural of pipeline254_entity_f0b95dd0ae is
  signal ce_1_sg_x209: std_logic;
  signal clk_1_sg_x209: std_logic;
  signal register0_q_net: std_logic_vector(31 downto 0);
  signal register1_q_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x209 <= ce_1;
  clk_1_sg_x209 <= clk_1;
  reint1_output_port_net_x1 <= d;
  q <= register1_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => reint1_output_port_net_x1,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x209,
      clk => clk_1_sg_x209,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline256"

entity pipeline256_entity_245916bd3e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(7 downto 0); 
    q: out std_logic_vector(7 downto 0)
  );
end pipeline256_entity_245916bd3e;

architecture structural of pipeline256_entity_245916bd3e is
  signal ce_1_sg_x210: std_logic;
  signal clk_1_sg_x210: std_logic;
  signal mux164_y_net_x3: std_logic_vector(7 downto 0);
  signal register0_q_net: std_logic_vector(7 downto 0);
  signal register1_q_net: std_logic_vector(7 downto 0);
  signal register2_q_net_x33: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x210 <= ce_1;
  clk_1_sg_x210 <= clk_1;
  mux164_y_net_x3 <= d;
  q <= register2_q_net_x33;

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x210,
      clk => clk_1_sg_x210,
      d => mux164_y_net_x3,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x210,
      clk => clk_1_sg_x210,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x210,
      clk => clk_1_sg_x210,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x33
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/pipeline276"

entity pipeline276_entity_1a4bdfecee is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(127 downto 0); 
    q: out std_logic_vector(127 downto 0)
  );
end pipeline276_entity_1a4bdfecee;

architecture structural of pipeline276_entity_1a4bdfecee is
  signal ce_1_sg_x226: std_logic;
  signal clk_1_sg_x226: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(127 downto 0);
  signal register0_q_net: std_logic_vector(127 downto 0);
  signal register1_q_net: std_logic_vector(127 downto 0);
  signal register2_q_net_x1: std_logic_vector(127 downto 0);

begin
  ce_1_sg_x226 <= ce_1;
  clk_1_sg_x226 <= clk_1;
  concatenate_y_net_x1 <= d;
  q <= register2_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x226,
      clk => clk_1_sg_x226,
      d => concatenate_y_net_x1,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x226,
      clk => clk_1_sg_x226,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x226,
      clk => clk_1_sg_x226,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/snap_trig"

entity snap_trig_entity_e3f281dd5c is
  port (
    testing3_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end snap_trig_entity_e3f281dd5c;

architecture structural of snap_trig_entity_e3f281dd5c is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_snap_trig_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_snap_trig_user_data_out_net_x0 <= testing3_snap_trig_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_snap_trig_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/software_register"

entity software_register_entity_4c0f5944ea is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic; 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end software_register_entity_4c0f5944ea;

architecture structural of software_register_entity_4c0f5944ea is
  signal assert_reg_dout_net: std_logic;
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x228: std_logic;
  signal clk_1_sg_x228: std_logic;
  signal io_delay_q_net: std_logic;
  signal register_q_net_x0: std_logic;
  signal reint1_output_port_net: std_logic;

begin
  ce_1_sg_x228 <= ce_1;
  clk_1_sg_x228 <= clk_1;
  register_q_net_x0 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => register_q_net_x0,
      dout(0) => assert_reg_dout_net
    );

  cast_gw: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x228,
      clk => clk_1_sg_x228,
      clr => '0',
      din(0) => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_21355083c1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d(0) => reint1_output_port_net,
      q(0) => io_delay_q_net
    );

  reint1: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_reg_dout_net,
      output_port(0) => reint1_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/sync_gen/posedge3"

entity posedge3_entity_8075a32673 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(31 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end posedge3_entity_8075a32673;

architecture structural of posedge3_entity_8075a32673 is
  signal ce_1_sg_x230: std_logic;
  signal clk_1_sg_x230: std_logic;
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x0: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x230 <= ce_1;
  clk_1_sg_x230 <= clk_1;
  reint1_output_port_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x230,
      clk => clk_1_sg_x230,
      clr => '0',
      d => reint1_output_port_net_x0,
      q => delay_q_net
    );

  edge_op: entity work.logical_60efaf0d96
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => inverter_op_net,
      d1 => delay_q_net,
      y => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6a3d3dd4e5
    port map (
      ce => ce_1_sg_x230,
      clk => clk_1_sg_x230,
      clr => '0',
      ip => reint1_output_port_net_x0,
      op => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/sync_gen/sync"

entity sync_entity_f4dca3eb24 is
  port (
    testing3_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_entity_f4dca3eb24;

architecture structural of sync_entity_f4dca3eb24 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_sync_gen_sync_user_data_out_net_x0 <= testing3_sync_gen_sync_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_sync_gen_sync_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x1
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/sync_gen/sync_period_sel"

entity sync_period_sel_entity_a79bf30e94 is
  port (
    testing3_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_period_sel_entity_a79bf30e94;

architecture structural of sync_period_sel_entity_a79bf30e94 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_sel_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_sync_gen_sync_period_sel_user_data_out_net_x0 <= testing3_sync_gen_sync_period_sel_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_sync_gen_sync_period_sel_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/sync_gen/sync_period_var"

entity sync_period_var_entity_1c9bcf39d6 is
  port (
    testing3_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_period_var_entity_1c9bcf39d6;

architecture structural of sync_period_var_entity_1c9bcf39d6 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_var_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing3_sync_gen_sync_period_var_user_data_out_net_x0 <= testing3_sync_gen_sync_period_var_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing3_sync_gen_sync_period_var_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => slice_reg_y_net,
      output_port => reint1_output_port_net_x0
    );

  slice_reg: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 31,
      x_width => 32,
      y_width => 32
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3/sync_gen"

entity sync_gen_entity_3ac0932182 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    testing3_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end sync_gen_entity_3ac0932182;

architecture structural of sync_gen_entity_3ac0932182 is
  signal ce_1_sg_x231: std_logic;
  signal clk_1_sg_x231: std_logic;
  signal counter3_op_net: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x1: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x2: std_logic;
  signal logical1_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux_y_net: std_logic_vector(32 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal relational_op_net: std_logic;
  signal slice1_y_net: std_logic;
  signal slice2_y_net: std_logic;
  signal sync_period_const_op_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_sel_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_var_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_user_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x231 <= ce_1;
  clk_1_sg_x231 <= clk_1;
  testing3_sync_gen_sync_period_sel_user_data_out_net_x1 <= testing3_sync_gen_sync_period_sel_user_data_out;
  testing3_sync_gen_sync_period_var_user_data_out_net_x1 <= testing3_sync_gen_sync_period_var_user_data_out;
  testing3_sync_gen_sync_user_data_out_net_x1 <= testing3_sync_gen_sync_user_data_out;
  sync_out <= edge_op_y_net_x2;

  counter3: entity work.counter_25c920466b
    port map (
      ce => ce_1_sg_x231,
      clk => clk_1_sg_x231,
      clr => '0',
      rst(0) => logical1_y_net,
      op => counter3_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => slice2_y_net,
      y(0) => logical_y_net_x0
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => slice2_y_net,
      y(0) => logical1_y_net
    );

  mux: entity work.mux_45031cc577
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => sync_period_const_op_net,
      d1 => reint1_output_port_net_x2,
      sel(0) => slice1_y_net,
      y => mux_y_net
    );

  posedge1_f34bde303f: entity work.edge_detect_entity_ce1f18bad6
    port map (
      ce_1 => ce_1_sg_x231,
      clk_1 => clk_1_sg_x231,
      in_x0 => logical_y_net_x0,
      out_x0 => edge_op_y_net_x2
    );

  posedge3_8075a32673: entity work.posedge3_entity_8075a32673
    port map (
      ce_1 => ce_1_sg_x231,
      clk_1 => clk_1_sg_x231,
      in_x0 => reint1_output_port_net_x1,
      out_x0 => edge_op_y_net_x1
    );

  relational: entity work.relational_fc0914149b
    port map (
      a => mux_y_net,
      b => counter3_op_net,
      ce => ce_1_sg_x231,
      clk => clk_1_sg_x231,
      clr => '0',
      op(0) => relational_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => edge_op_y_net_x1,
      y(0) => slice2_y_net
    );

  sync_f4dca3eb24: entity work.sync_entity_f4dca3eb24
    port map (
      testing3_sync_gen_sync_user_data_out => testing3_sync_gen_sync_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  sync_period_const: entity work.constant_c74e57c994
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => sync_period_const_op_net
    );

  sync_period_sel_a79bf30e94: entity work.sync_period_sel_entity_a79bf30e94
    port map (
      testing3_sync_gen_sync_period_sel_user_data_out => testing3_sync_gen_sync_period_sel_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x0
    );

  sync_period_var_1c9bcf39d6: entity work.sync_period_var_entity_1c9bcf39d6
    port map (
      testing3_sync_gen_sync_period_var_user_data_out => testing3_sync_gen_sync_period_var_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing3"

entity testing3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    testing3_4narrow_data_out: in std_logic_vector(31 downto 0); 
    testing3_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
    testing3_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_asiaa_adc5g0_sync: in std_logic; 
    testing3_asiaa_adc5g0_user_data_i0: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i1: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i2: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i3: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i4: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i5: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i6: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_i7: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q0: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q1: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q2: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q3: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q4: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q5: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q6: in std_logic_vector(7 downto 0); 
    testing3_asiaa_adc5g0_user_data_q7: in std_logic_vector(7 downto 0); 
    testing3_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_get_data_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_pfb_out1_data_out: in std_logic_vector(63 downto 0); 
    testing3_pfb_out_data_out: in std_logic_vector(63 downto 0); 
    testing3_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    testing3_4narrow_addr: out std_logic_vector(9 downto 0); 
    testing3_4narrow_data_in: out std_logic_vector(31 downto 0); 
    testing3_4narrow_we: out std_logic; 
    testing3_adcsnap0_bram_addr: out std_logic_vector(9 downto 0); 
    testing3_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
    testing3_adcsnap0_bram_we: out std_logic; 
    testing3_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
    testing3_pfb_out1_addr: out std_logic_vector(9 downto 0); 
    testing3_pfb_out1_data_in: out std_logic_vector(63 downto 0); 
    testing3_pfb_out1_we: out std_logic; 
    testing3_pfb_out_addr: out std_logic_vector(9 downto 0); 
    testing3_pfb_out_data_in: out std_logic_vector(63 downto 0); 
    testing3_pfb_out_we: out std_logic; 
    testing3_software_register_user_data_in: out std_logic_vector(31 downto 0)
  );
end testing3;

architecture structural of testing3 is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "testing3,sysgen_core,{clock_period=7.40740000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=4283,xilinx_adder_subtracter_block=264,xilinx_arithmetic_relational_operator_block=27,xilinx_assert_block=2,xilinx_binary_shift_operator_block=3,xilinx_bit_slice_extractor_block=123,xilinx_bus_concatenator_block=42,xilinx_bus_multiplexer_block=82,xilinx_constant_block_block=233,xilinx_counter_block=32,xilinx_delay_block=99,xilinx_disregard_subsystem_for_generation_block=4,xilinx_dual_port_random_access_memory_block=16,xilinx_fdatool_interface_block=2,xilinx_fir_compiler_5_0_block=1,xilinx_gateway_in_block=42,xilinx_gateway_out_block=18,xilinx_input_scaler_block=1,xilinx_inverter_block=31,xilinx_logical_block_block=30,xilinx_multiplier_block=228,xilinx_register_block=303,xilinx_single_port_random_access_memory_block=7,xilinx_single_port_read_only_memory_block=4,xilinx_system_generator_block=1,xilinx_type_converter_block=45,xilinx_type_reinterpreter_block=154,xilinx_wavescope_block=1,}";

  signal ce_1_sg_x232: std_logic;
  signal clk_1_sg_x232: std_logic;
  signal concat_y_net_x2: std_logic_vector(59 downto 0);
  signal concatenate_y_net_x1: std_logic_vector(127 downto 0);
  signal constant10_op_net_x2: std_logic_vector(7 downto 0);
  signal constant11_op_net_x2: std_logic_vector(7 downto 0);
  signal constant12_op_net_x2: std_logic_vector(7 downto 0);
  signal constant14_op_net_x2: std_logic_vector(7 downto 0);
  signal constant15_op_net_x2: std_logic_vector(7 downto 0);
  signal constant16_op_net_x2: std_logic_vector(7 downto 0);
  signal constant17_op_net_x2: std_logic_vector(7 downto 0);
  signal constant18_op_net_x2: std_logic_vector(7 downto 0);
  signal constant19_op_net_x2: std_logic_vector(7 downto 0);
  signal constant20_op_net_x2: std_logic_vector(7 downto 0);
  signal constant21_op_net_x2: std_logic_vector(7 downto 0);
  signal constant22_op_net_x2: std_logic_vector(7 downto 0);
  signal constant24_op_net_x2: std_logic_vector(7 downto 0);
  signal constant2_op_net_x0: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal constant4_op_net_x2: std_logic_vector(7 downto 0);
  signal constant7_op_net_x2: std_logic_vector(7 downto 0);
  signal constant8_op_net_x1: std_logic;
  signal constant9_op_net_x2: std_logic_vector(7 downto 0);
  signal convert1_dout_net: std_logic_vector(63 downto 0);
  signal convert2_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_1_1_dout_net_x0: std_logic_vector(47 downto 0);
  signal convert_dout_net_x0: std_logic_vector(19 downto 0);
  signal delay16_q_net_x0: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay1_q_net_x8: std_logic;
  signal delay2_q_net_x6: std_logic;
  signal delay3_q_net_x0: std_logic;
  signal delay_q_net_x1: std_logic;
  signal delay_q_net_x2: std_logic;
  signal delay_sync_q_net_x2: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal enable1_y_net_x0: std_logic;
  signal enable_y_net_x0: std_logic_vector(11 downto 0);
  signal enable_y_net_x1: std_logic_vector(11 downto 0);
  signal enable_y_net_x2: std_logic_vector(9 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(29 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux104_y_net_x3: std_logic_vector(7 downto 0);
  signal mux114_y_net_x3: std_logic_vector(7 downto 0);
  signal mux124_y_net_x3: std_logic_vector(7 downto 0);
  signal mux134_y_net_x3: std_logic_vector(7 downto 0);
  signal mux144_y_net_x3: std_logic_vector(7 downto 0);
  signal mux14_y_net_x3: std_logic_vector(7 downto 0);
  signal mux154_y_net_x3: std_logic_vector(7 downto 0);
  signal mux164_y_net_x3: std_logic_vector(7 downto 0);
  signal mux24_y_net_x3: std_logic_vector(7 downto 0);
  signal mux34_y_net_x3: std_logic_vector(7 downto 0);
  signal mux44_y_net_x3: std_logic_vector(7 downto 0);
  signal mux54_y_net_x3: std_logic_vector(7 downto 0);
  signal mux64_y_net_x3: std_logic_vector(7 downto 0);
  signal mux74_y_net_x3: std_logic_vector(7 downto 0);
  signal mux84_y_net_x3: std_logic_vector(7 downto 0);
  signal mux94_y_net_x3: std_logic_vector(7 downto 0);
  signal register0_q_net_x0: std_logic;
  signal register0_q_net_x1: std_logic;
  signal register1_q_net_x0: std_logic;
  signal register1_q_net_x1: std_logic;
  signal register1_q_net_x2: std_logic_vector(31 downto 0);
  signal register1_q_net_x3: std_logic_vector(31 downto 0);
  signal register2_q_net_x1: std_logic;
  signal register2_q_net_x2: std_logic_vector(127 downto 0);
  signal register2_q_net_x33: std_logic_vector(7 downto 0);
  signal register2_q_net_x34: std_logic_vector(7 downto 0);
  signal register2_q_net_x35: std_logic_vector(7 downto 0);
  signal register2_q_net_x36: std_logic_vector(7 downto 0);
  signal register2_q_net_x37: std_logic_vector(7 downto 0);
  signal register2_q_net_x38: std_logic_vector(7 downto 0);
  signal register2_q_net_x39: std_logic_vector(7 downto 0);
  signal register2_q_net_x40: std_logic_vector(7 downto 0);
  signal register2_q_net_x41: std_logic_vector(7 downto 0);
  signal register2_q_net_x42: std_logic_vector(7 downto 0);
  signal register2_q_net_x43: std_logic_vector(7 downto 0);
  signal register2_q_net_x44: std_logic_vector(7 downto 0);
  signal register2_q_net_x45: std_logic_vector(7 downto 0);
  signal register2_q_net_x46: std_logic_vector(7 downto 0);
  signal register2_q_net_x47: std_logic_vector(7 downto 0);
  signal register2_q_net_x48: std_logic_vector(7 downto 0);
  signal register_q_net_x0: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(41 downto 0);
  signal reinterpret6_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal reinterpret_output_port_net_x33: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x34: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x35: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x36: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x37: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x38: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x39: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x4: std_logic_vector(63 downto 0);
  signal reinterpret_output_port_net_x40: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x41: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x42: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x43: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x44: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x45: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x46: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x47: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x48: std_logic_vector(7 downto 0);
  signal slice1_y_net_x3: std_logic;
  signal slice2_y_net_x1: std_logic_vector(9 downto 0);
  signal slice3_y_net_x1: std_logic_vector(1 downto 0);
  signal slice_reg_y_net_x1: std_logic;
  signal slice_reg_y_net_x2: std_logic;
  signal slice_y_net_x1: std_logic;
  signal sync_delay1_q_net_x3: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal testing3_4narrow_addr_net: std_logic_vector(9 downto 0);
  signal testing3_4narrow_data_in_net: std_logic_vector(31 downto 0);
  signal testing3_4narrow_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_4narrow_we_net: std_logic;
  signal testing3_adc0_delay_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_bram_addr_net: std_logic_vector(9 downto 0);
  signal testing3_adcsnap0_bram_data_in_net: std_logic_vector(127 downto 0);
  signal testing3_adcsnap0_bram_data_out_net: std_logic_vector(127 downto 0);
  signal testing3_adcsnap0_bram_we_net: std_logic;
  signal testing3_adcsnap0_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal testing3_adcsnap0_trig_offset_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_asiaa_adc5g0_sync_net: std_logic;
  signal testing3_asiaa_adc5g0_user_data_i0_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i1_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i2_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i3_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i4_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i5_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i6_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_i7_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q0_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q1_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q2_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q3_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q4_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q5_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q6_net: std_logic_vector(7 downto 0);
  signal testing3_asiaa_adc5g0_user_data_q7_net: std_logic_vector(7 downto 0);
  signal testing3_cnt_rst_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_get_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_pfb_out1_addr_net: std_logic_vector(9 downto 0);
  signal testing3_pfb_out1_data_in_net: std_logic_vector(63 downto 0);
  signal testing3_pfb_out1_data_out_net: std_logic_vector(63 downto 0);
  signal testing3_pfb_out1_we_net: std_logic;
  signal testing3_pfb_out_addr_net: std_logic_vector(9 downto 0);
  signal testing3_pfb_out_data_in_net: std_logic_vector(63 downto 0);
  signal testing3_pfb_out_data_out_net: std_logic_vector(63 downto 0);
  signal testing3_pfb_out_we_net: std_logic;
  signal testing3_snap_trig_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_software_register_user_data_in_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_sel_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_period_var_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing3_sync_gen_sync_user_data_out_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x232 <= ce_1;
  clk_1_sg_x232 <= clk_1;
  testing3_4narrow_data_out_net <= testing3_4narrow_data_out;
  testing3_adc0_delay_user_data_out_net <= testing3_adc0_delay_user_data_out;
  testing3_adcsnap0_bram_data_out_net <= testing3_adcsnap0_bram_data_out;
  testing3_adcsnap0_ctrl_user_data_out_net <= testing3_adcsnap0_ctrl_user_data_out;
  testing3_adcsnap0_trig_offset_user_data_out_net <= testing3_adcsnap0_trig_offset_user_data_out;
  testing3_asiaa_adc5g0_sync_net <= testing3_asiaa_adc5g0_sync;
  testing3_asiaa_adc5g0_user_data_i0_net <= testing3_asiaa_adc5g0_user_data_i0;
  testing3_asiaa_adc5g0_user_data_i1_net <= testing3_asiaa_adc5g0_user_data_i1;
  testing3_asiaa_adc5g0_user_data_i2_net <= testing3_asiaa_adc5g0_user_data_i2;
  testing3_asiaa_adc5g0_user_data_i3_net <= testing3_asiaa_adc5g0_user_data_i3;
  testing3_asiaa_adc5g0_user_data_i4_net <= testing3_asiaa_adc5g0_user_data_i4;
  testing3_asiaa_adc5g0_user_data_i5_net <= testing3_asiaa_adc5g0_user_data_i5;
  testing3_asiaa_adc5g0_user_data_i6_net <= testing3_asiaa_adc5g0_user_data_i6;
  testing3_asiaa_adc5g0_user_data_i7_net <= testing3_asiaa_adc5g0_user_data_i7;
  testing3_asiaa_adc5g0_user_data_q0_net <= testing3_asiaa_adc5g0_user_data_q0;
  testing3_asiaa_adc5g0_user_data_q1_net <= testing3_asiaa_adc5g0_user_data_q1;
  testing3_asiaa_adc5g0_user_data_q2_net <= testing3_asiaa_adc5g0_user_data_q2;
  testing3_asiaa_adc5g0_user_data_q3_net <= testing3_asiaa_adc5g0_user_data_q3;
  testing3_asiaa_adc5g0_user_data_q4_net <= testing3_asiaa_adc5g0_user_data_q4;
  testing3_asiaa_adc5g0_user_data_q5_net <= testing3_asiaa_adc5g0_user_data_q5;
  testing3_asiaa_adc5g0_user_data_q6_net <= testing3_asiaa_adc5g0_user_data_q6;
  testing3_asiaa_adc5g0_user_data_q7_net <= testing3_asiaa_adc5g0_user_data_q7;
  testing3_cnt_rst_user_data_out_net <= testing3_cnt_rst_user_data_out;
  testing3_get_data_user_data_out_net <= testing3_get_data_user_data_out;
  testing3_pfb_out1_data_out_net <= testing3_pfb_out1_data_out;
  testing3_pfb_out_data_out_net <= testing3_pfb_out_data_out;
  testing3_snap_trig_user_data_out_net <= testing3_snap_trig_user_data_out;
  testing3_sync_gen_sync_period_sel_user_data_out_net <= testing3_sync_gen_sync_period_sel_user_data_out;
  testing3_sync_gen_sync_period_var_user_data_out_net <= testing3_sync_gen_sync_period_var_user_data_out;
  testing3_sync_gen_sync_user_data_out_net <= testing3_sync_gen_sync_user_data_out;
  testing3_4narrow_addr <= testing3_4narrow_addr_net;
  testing3_4narrow_data_in <= testing3_4narrow_data_in_net;
  testing3_4narrow_we <= testing3_4narrow_we_net;
  testing3_adcsnap0_bram_addr <= testing3_adcsnap0_bram_addr_net;
  testing3_adcsnap0_bram_data_in <= testing3_adcsnap0_bram_data_in_net;
  testing3_adcsnap0_bram_we <= testing3_adcsnap0_bram_we_net;
  testing3_adcsnap0_status_user_data_in <= testing3_adcsnap0_status_user_data_in_net;
  testing3_pfb_out1_addr <= testing3_pfb_out1_addr_net;
  testing3_pfb_out1_data_in <= testing3_pfb_out1_data_in_net;
  testing3_pfb_out1_we <= testing3_pfb_out1_we_net;
  testing3_pfb_out_addr <= testing3_pfb_out_addr_net;
  testing3_pfb_out_data_in <= testing3_pfb_out_data_in_net;
  testing3_pfb_out_we <= testing3_pfb_out_we_net;
  testing3_software_register_user_data_in <= testing3_software_register_user_data_in_net;

  adc0_delay_c4a610e0e4: entity work.adc0_delay_entity_c4a610e0e4
    port map (
      testing3_adc0_delay_user_data_out => testing3_adc0_delay_user_data_out_net,
      in_reg => reint1_output_port_net_x1
    );

  adcsnap0_d1dca95e37: entity work.adcsnap0_entity_d1dca95e37
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      din => register2_q_net_x2,
      testing3_adcsnap0_ctrl_user_data_out => testing3_adcsnap0_ctrl_user_data_out_net,
      testing3_adcsnap0_trig_offset_user_data_out => testing3_adcsnap0_trig_offset_user_data_out_net,
      trig => slice_y_net_x1,
      we => constant8_op_net_x1,
      bram => testing3_adcsnap0_bram_addr_net,
      bram_x0 => testing3_adcsnap0_bram_data_in_net,
      bram_x1 => testing3_adcsnap0_bram_we_net,
      status => testing3_adcsnap0_status_user_data_in_net
    );

  bus_create_4dc4985e4c: entity work.bus_create_entity_4dc4985e4c
    port map (
      in1 => mux164_y_net_x3,
      in10 => mux74_y_net_x3,
      in11 => mux64_y_net_x3,
      in12 => mux54_y_net_x3,
      in13 => mux44_y_net_x3,
      in14 => mux34_y_net_x3,
      in15 => mux24_y_net_x3,
      in16 => mux14_y_net_x3,
      in2 => mux154_y_net_x3,
      in3 => mux144_y_net_x3,
      in4 => mux134_y_net_x3,
      in5 => mux124_y_net_x3,
      in6 => mux114_y_net_x3,
      in7 => mux104_y_net_x3,
      in8 => mux94_y_net_x3,
      in9 => mux84_y_net_x3,
      bus_out => concatenate_y_net_x1
    );

  c_to_ri_f1cbb7ea9b: entity work.c_to_ri_entity_f1cbb7ea9b
    port map (
      c => concat_y_net_x2,
      re => force_re_output_port_net_x0
    );

  cnt_rst_c29e142226: entity work.cnt_rst_entity_c29e142226
    port map (
      testing3_cnt_rst_user_data_out => testing3_cnt_rst_user_data_out_net,
      in_reg => slice_reg_y_net_x1
    );

  constant10: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x2
    );

  constant11: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant11_op_net_x2
    );

  constant12: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant12_op_net_x2
    );

  constant14: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant14_op_net_x2
    );

  constant15: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant15_op_net_x2
    );

  constant16: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant16_op_net_x2
    );

  constant17: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant17_op_net_x2
    );

  constant18: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant18_op_net_x2
    );

  constant19: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant19_op_net_x2
    );

  constant2: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant2_op_net_x0
    );

  constant20: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant20_op_net_x2
    );

  constant21: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant21_op_net_x2
    );

  constant22: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant22_op_net_x2
    );

  constant24: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant24_op_net_x2
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x1
    );

  constant4: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net_x2
    );

  constant7: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net_x2
    );

  constant8: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant8_op_net_x1
    );

  constant9: entity work.constant_91ef1678ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant9_op_net_x2
    );

  conv_bus0_e4846a5851: entity work.conv_bus0_entity_e4846a5851
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      i0 => testing3_asiaa_adc5g0_user_data_i0_net,
      i1 => testing3_asiaa_adc5g0_user_data_i1_net,
      i10 => testing3_asiaa_adc5g0_user_data_q2_net,
      i11 => testing3_asiaa_adc5g0_user_data_q3_net,
      i12 => testing3_asiaa_adc5g0_user_data_q4_net,
      i13 => testing3_asiaa_adc5g0_user_data_q5_net,
      i14 => testing3_asiaa_adc5g0_user_data_q6_net,
      i15 => testing3_asiaa_adc5g0_user_data_q7_net,
      i2 => testing3_asiaa_adc5g0_user_data_i2_net,
      i3 => testing3_asiaa_adc5g0_user_data_i3_net,
      i4 => testing3_asiaa_adc5g0_user_data_i4_net,
      i5 => testing3_asiaa_adc5g0_user_data_i5_net,
      i6 => testing3_asiaa_adc5g0_user_data_i6_net,
      i7 => testing3_asiaa_adc5g0_user_data_i7_net,
      i8 => testing3_asiaa_adc5g0_user_data_q0_net,
      i9 => testing3_asiaa_adc5g0_user_data_q1_net,
      q0 => reinterpret_output_port_net_x33,
      q1 => reinterpret_output_port_net_x34,
      q10 => reinterpret_output_port_net_x35,
      q11 => reinterpret_output_port_net_x36,
      q12 => reinterpret_output_port_net_x37,
      q13 => reinterpret_output_port_net_x38,
      q14 => reinterpret_output_port_net_x39,
      q15 => reinterpret_output_port_net_x40,
      q2 => reinterpret_output_port_net_x41,
      q3 => reinterpret_output_port_net_x42,
      q4 => reinterpret_output_port_net_x43,
      q5 => reinterpret_output_port_net_x44,
      q6 => reinterpret_output_port_net_x45,
      q7 => reinterpret_output_port_net_x46,
      q8 => reinterpret_output_port_net_x47,
      q9 => reinterpret_output_port_net_x48
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 29,
      din_width => 30,
      dout_arith => 2,
      dout_bin_pt => 19,
      dout_width => 20,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      clr => '0',
      din => force_re_output_port_net_x0,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 47,
      din_width => 48,
      dout_arith => 2,
      dout_bin_pt => 63,
      dout_width => 64,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      clr => '0',
      din => convert_1_1_dout_net_x0,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 41,
      din_width => 42,
      dout_arith => 2,
      dout_bin_pt => 31,
      dout_width => 32,
      latency => 2,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      clr => '0',
      din => reinterpret2_output_port_net,
      en => "1",
      dout => convert2_dout_net_x1
    );

  dec_fir0_6aa9639198: entity work.dec_fir0_entity_6aa9639198
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      imag1 => constant4_op_net_x2,
      imag10 => constant15_op_net_x2,
      imag11 => constant16_op_net_x2,
      imag12 => constant17_op_net_x2,
      imag13 => constant18_op_net_x2,
      imag14 => constant19_op_net_x2,
      imag15 => constant20_op_net_x2,
      imag16 => constant21_op_net_x2,
      imag2 => constant7_op_net_x2,
      imag3 => constant9_op_net_x2,
      imag4 => constant22_op_net_x2,
      imag5 => constant24_op_net_x2,
      imag6 => constant10_op_net_x2,
      imag7 => constant11_op_net_x2,
      imag8 => constant12_op_net_x2,
      imag9 => constant14_op_net_x2,
      real1 => register2_q_net_x33,
      real10 => register2_q_net_x42,
      real11 => register2_q_net_x43,
      real12 => register2_q_net_x44,
      real13 => register2_q_net_x45,
      real14 => register2_q_net_x46,
      real15 => register2_q_net_x47,
      real16 => register2_q_net_x48,
      real2 => register2_q_net_x34,
      real3 => register2_q_net_x35,
      real4 => register2_q_net_x36,
      real5 => register2_q_net_x37,
      real6 => register2_q_net_x38,
      real7 => register2_q_net_x39,
      real8 => register2_q_net_x40,
      real9 => register2_q_net_x41,
      sync_in => register2_q_net_x1,
      dout => concat_y_net_x2,
      sync_out => sync_delay_q_net_x1
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => sync_delay_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x1
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => delay_q_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x8
    );

  delay16: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => edge_op_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay16_q_net_x0
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x6
    );

  delay3: entity work.xldelay
    generic map (
      latency => 4,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => delay1_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net_x0
    );

  delay_wideband_prog0_85152e04a4: entity work.delay_wideband_prog0_entity_85152e04a4
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      data_in0 => reinterpret_output_port_net_x33,
      data_in1 => reinterpret_output_port_net_x34,
      data_in10 => reinterpret_output_port_net_x35,
      data_in11 => reinterpret_output_port_net_x36,
      data_in12 => reinterpret_output_port_net_x37,
      data_in13 => reinterpret_output_port_net_x38,
      data_in14 => reinterpret_output_port_net_x39,
      data_in15 => reinterpret_output_port_net_x40,
      data_in2 => reinterpret_output_port_net_x41,
      data_in3 => reinterpret_output_port_net_x42,
      data_in4 => reinterpret_output_port_net_x43,
      data_in5 => reinterpret_output_port_net_x44,
      data_in6 => reinterpret_output_port_net_x45,
      data_in7 => reinterpret_output_port_net_x46,
      data_in8 => reinterpret_output_port_net_x47,
      data_in9 => reinterpret_output_port_net_x48,
      delay => register1_q_net_x2,
      ld_delay => constant3_op_net_x1,
      sync => register0_q_net_x1,
      data_out0 => mux164_y_net_x3,
      data_out1 => mux154_y_net_x3,
      data_out10 => mux64_y_net_x3,
      data_out11 => mux54_y_net_x3,
      data_out12 => mux44_y_net_x3,
      data_out13 => mux34_y_net_x3,
      data_out14 => mux24_y_net_x3,
      data_out15 => mux14_y_net_x3,
      data_out2 => mux144_y_net_x3,
      data_out3 => mux134_y_net_x3,
      data_out4 => mux124_y_net_x3,
      data_out5 => mux114_y_net_x3,
      data_out6 => mux104_y_net_x3,
      data_out7 => mux94_y_net_x3,
      data_out8 => mux84_y_net_x3,
      data_out9 => mux74_y_net_x3,
      sync_out => delay_sync_q_net_x2
    );

  freeze_cntr1_faf4b83edc: entity work.freeze_cntr1_entity_faf4b83edc
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      en => logical1_y_net_x0,
      rst => slice1_y_net_x3,
      addr => enable_y_net_x2
    );

  freeze_cntr2_6f4d7fbbb4: entity work.freeze_cntr_entity_98156320f4
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      en => register1_q_net_x0,
      rst => slice1_y_net_x3,
      addr => enable_y_net_x1
    );

  freeze_cntr3_a8a4b11c19: entity work.freeze_cntr3_entity_a8a4b11c19
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      en => delay3_q_net_x0,
      rst => slice1_y_net_x3,
      done => enable1_y_net_x0
    );

  freeze_cntr_98156320f4: entity work.freeze_cntr_entity_98156320f4
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      en => constant2_op_net_x0,
      rst => register1_q_net_x1,
      addr => enable_y_net_x0
    );

  get_data_eca95f4c93: entity work.get_data_entity_eca95f4c93
    port map (
      testing3_get_data_user_data_out => testing3_get_data_user_data_out_net,
      in_reg => slice_reg_y_net_x2
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net_x1,
      d1(0) => delay3_q_net_x0,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => sync_delay1_q_net_x3,
      y(0) => logical1_y_net_x0
    );

  pfb_fir_real_fd9fc4592b: entity work.pfb_fir_real_entity_fd9fc4592b
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      pol1_in1 => convert2_dout_net_x1,
      sync => delay1_q_net_x8,
      valid => delay2_q_net_x6,
      en_out => sync_delay1_q_net_x3,
      pol1_out1 => convert_1_1_dout_net_x0,
      sync_out => delay1_q_net_x0
    );

  pfb_out1_715d24dad0: entity work.pfb_out1_entity_715d24dad0
    port map (
      addr => slice3_y_net_x1,
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      data_in => reinterpret_output_port_net_x4,
      we => sync_delay1_q_net_x3,
      convert_addr_x0 => testing3_pfb_out1_addr_net,
      convert_din1_x0 => testing3_pfb_out1_data_in_net,
      convert_we_x0 => testing3_pfb_out1_we_net
    );

  pfb_out_d8d3bbee1d: entity work.pfb_out_entity_d8d3bbee1d
    port map (
      addr => enable_y_net_x2,
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      data_in => reinterpret_output_port_net_x4,
      we => sync_delay1_q_net_x3,
      convert_addr_x0 => testing3_pfb_out_addr_net,
      convert_din1_x0 => testing3_pfb_out_data_in_net,
      convert_we_x0 => testing3_pfb_out_we_net
    );

  pipeline16_1b6bb72ccf: entity work.pipeline16_entity_1b6bb72ccf
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => delay_sync_q_net_x2,
      q => register2_q_net_x1
    );

  pipeline251_9515b047fc: entity work.pipeline251_entity_9515b047fc
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => slice_reg_y_net_x1,
      q => register0_q_net_x0
    );

  pipeline252_6ae793c091: entity work.pipeline251_entity_9515b047fc
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => delay16_q_net_x0,
      q => register0_q_net_x1
    );

  pipeline254_f0b95dd0ae: entity work.pipeline254_entity_f0b95dd0ae
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => reint1_output_port_net_x1,
      q => register1_q_net_x2
    );

  pipeline256_245916bd3e: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux164_y_net_x3,
      q => register2_q_net_x33
    );

  pipeline257_0caca763c8: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux154_y_net_x3,
      q => register2_q_net_x34
    );

  pipeline258_9a835fb306: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux144_y_net_x3,
      q => register2_q_net_x35
    );

  pipeline259_726f362866: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux134_y_net_x3,
      q => register2_q_net_x36
    );

  pipeline260_481c4f7546: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux124_y_net_x3,
      q => register2_q_net_x37
    );

  pipeline261_7129264b53: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux114_y_net_x3,
      q => register2_q_net_x38
    );

  pipeline262_dae5b3589c: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux104_y_net_x3,
      q => register2_q_net_x39
    );

  pipeline263_0769a0f064: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux94_y_net_x3,
      q => register2_q_net_x40
    );

  pipeline264_7cb0f086a8: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux84_y_net_x3,
      q => register2_q_net_x41
    );

  pipeline265_fa1b113609: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux74_y_net_x3,
      q => register2_q_net_x42
    );

  pipeline266_8a3ccc4b1b: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux64_y_net_x3,
      q => register2_q_net_x43
    );

  pipeline267_b0e170ffb5: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux54_y_net_x3,
      q => register2_q_net_x44
    );

  pipeline268_ba90c096df: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux44_y_net_x3,
      q => register2_q_net_x45
    );

  pipeline269_2116618c60: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux34_y_net_x3,
      q => register2_q_net_x46
    );

  pipeline270_401b396e89: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux24_y_net_x3,
      q => register2_q_net_x47
    );

  pipeline271_8e1b729b6d: entity work.pipeline256_entity_245916bd3e
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => mux14_y_net_x3,
      q => register2_q_net_x48
    );

  pipeline276_1a4bdfecee: entity work.pipeline276_entity_1a4bdfecee
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => concatenate_y_net_x1,
      q => register2_q_net_x2
    );

  pipeline277_9e29ab5ad8: entity work.pipeline254_entity_f0b95dd0ae
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => reint1_output_port_net_x2,
      q => register1_q_net_x3
    );

  pipeline2_a41c505118: entity work.pipeline2_entity_a41c505118
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      d => slice_reg_y_net_x2,
      q => register1_q_net_x1
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => enable1_y_net_x0,
      en(0) => enable1_y_net_x0,
      rst(0) => slice1_y_net_x3,
      q(0) => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x232,
      clk => clk_1_sg_x232,
      d(0) => logical_y_net,
      en(0) => logical_y_net,
      rst(0) => slice1_y_net_x3,
      q(0) => register_q_net_x0
    );

  reinterpret: entity work.reinterpret_fc311682dd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net,
      output_port => reinterpret_output_port_net_x4
    );

  reinterpret2: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x0,
      output_port => reinterpret2_output_port_net
    );

  reinterpret6: entity work.reinterpret_3f7e3674f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net_x1,
      output_port => reinterpret6_output_port_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => register1_q_net_x3,
      y(0) => slice_y_net_x1
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 1,
      y_width => 1
    )
    port map (
      x(0) => register0_q_net_x0,
      y(0) => slice1_y_net_x3
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 11,
      x_width => 12,
      y_width => 10
    )
    port map (
      x => enable_y_net_x0,
      y => slice2_y_net_x1
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 12,
      y_width => 2
    )
    port map (
      x => enable_y_net_x1,
      y => slice3_y_net_x1
    );

  snap_trig_e3f281dd5c: entity work.snap_trig_entity_e3f281dd5c
    port map (
      testing3_snap_trig_user_data_out => testing3_snap_trig_user_data_out_net,
      in_reg => reint1_output_port_net_x2
    );

  software_register_4c0f5944ea: entity work.software_register_entity_4c0f5944ea
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      out_reg => register_q_net_x0,
      cast_gw_x0 => testing3_software_register_user_data_in_net
    );

  sync_gen_3ac0932182: entity work.sync_gen_entity_3ac0932182
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      testing3_sync_gen_sync_period_sel_user_data_out => testing3_sync_gen_sync_period_sel_user_data_out_net,
      testing3_sync_gen_sync_period_var_user_data_out => testing3_sync_gen_sync_period_var_user_data_out_net,
      testing3_sync_gen_sync_user_data_out => testing3_sync_gen_sync_user_data_out_net,
      sync_out => edge_op_y_net_x2
    );

  x4narrow_57f0cfb062: entity work.x4narrow_entity_57f0cfb062
    port map (
      addr => slice2_y_net_x1,
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      data_in => reinterpret6_output_port_net_x1,
      we => delay2_q_net_x6,
      convert_addr_x0 => testing3_4narrow_addr_net,
      convert_din1_x0 => testing3_4narrow_data_in_net,
      convert_we_x0 => testing3_4narrow_we_net
    );

  x4zone_narrow_0ca64769d2: entity work.x4zone_narrow_entity_0ca64769d2
    port map (
      ce_1 => ce_1_sg_x232,
      clk_1 => clk_1_sg_x232,
      din => convert_dout_net_x0,
      rst => slice1_y_net_x3,
      sync => delay_q_net_x1,
      dout_x0 => reinterpret_output_port_net_x0,
      sync_out => delay_q_net_x2,
      valid_x0 => logical_y_net_x0
    );

end structural;
