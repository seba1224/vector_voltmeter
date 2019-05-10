--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_866619918c8abcee.vhd when simulating
-- the core, cntr_11_0_866619918c8abcee. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_866619918c8abcee IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END cntr_11_0_866619918c8abcee;

ARCHITECTURE cntr_11_0_866619918c8abcee_a OF cntr_11_0_866619918c8abcee IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_866619918c8abcee
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_866619918c8abcee USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "100",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 13,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_866619918c8abcee
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_866619918c8abcee_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_6a49eeb869ee9525.vhd when simulating
-- the core, addsb_11_0_6a49eeb869ee9525. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_6a49eeb869ee9525 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END addsb_11_0_6a49eeb869ee9525;

ARCHITECTURE addsb_11_0_6a49eeb869ee9525_a OF addsb_11_0_6a49eeb869ee9525 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_6a49eeb869ee9525
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_6a49eeb869ee9525 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 3,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "000",
      c_b_width => 3,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 3,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_6a49eeb869ee9525
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_6a49eeb869ee9525_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_be90175e3110ea82.vhd when simulating
-- the core, cntr_11_0_be90175e3110ea82. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_be90175e3110ea82 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_be90175e3110ea82;

ARCHITECTURE cntr_11_0_be90175e3110ea82_a OF cntr_11_0_be90175e3110ea82 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_be90175e3110ea82
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_be90175e3110ea82 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "100",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_be90175e3110ea82
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_be90175e3110ea82_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_f52883bb4806fc24.vhd when simulating
-- the core, addsb_11_0_f52883bb4806fc24. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_f52883bb4806fc24 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(36 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(36 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)
  );
END addsb_11_0_f52883bb4806fc24;

ARCHITECTURE addsb_11_0_f52883bb4806fc24_a OF addsb_11_0_f52883bb4806fc24 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_f52883bb4806fc24
  PORT (
    a : IN STD_LOGIC_VECTOR(36 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(36 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(36 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_f52883bb4806fc24 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 37,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000000000000000000000000000",
      c_b_width => 37,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 37,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_f52883bb4806fc24
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_f52883bb4806fc24_a;
--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file fr_cmplr_v5_0_11b79c4c0363d2c9.vhd when simulating
-- the core, fr_cmplr_v5_0_11b79c4c0363d2c9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fr_cmplr_v5_0_11b79c4c0363d2c9 IS
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
END fr_cmplr_v5_0_11b79c4c0363d2c9;

ARCHITECTURE fr_cmplr_v5_0_11b79c4c0363d2c9_a OF fr_cmplr_v5_0_11b79c4c0363d2c9 IS
-- synthesis translate_off
component wrapped_fr_cmplr_v5_0_11b79c4c0363d2c9
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fr_cmplr_v5_0_11b79c4c0363d2c9 use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 20,
			c_has_sclr => 1,
			datapath_memtype => 0,
			c_component_name => "fr_cmplr_v5_0_11b79c4c0363d2c9",
			c_family => "virtex6",
			round_mode => 0,
			output_width => 42,
			sclr_deterministic => 1,
			col_config => "16",
			coef_memtype => 0,
			clock_freq => 1,
			symmetry => 0,
			col_pipe_len => 4,
			c_latency => 9,
			chan_sel_width => 1,
			c_xdevicefamily => "virtex6",
			c_has_nd => 1,
			allow_approx => 0,
			num_channels => 1,
			data_width => 20,
			filter_sel_width => 1,
			sample_freq => 1,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 13,
			data_type => 0,
			accum_width => 42,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 1,
			decim_rate => 4,
			coef_type => 0,
			filter_arch => 4,
			interp_rate => 1,
			num_taps => 64,
			c_mem_init_file => "fr_cmplr_v5_0_11b79c4c0363d2c9.mif",
			zero_packing_factor => 1,
			num_paths => 1,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 1,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fr_cmplr_v5_0_11b79c4c0363d2c9
		port map (
			sclr => sclr,
			clk => clk,
			ce => ce,
			nd => nd,
			rfd => rfd,
			rdy => rdy,
			data_valid => data_valid,
			din => din,
			dout => dout);
-- synthesis translate_on

END fr_cmplr_v5_0_11b79c4c0363d2c9_a;

--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_124ad8bd21557d78.vhd when simulating
-- the core, addsb_11_0_124ad8bd21557d78. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_124ad8bd21557d78 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(37 DOWNTO 0)
  );
END addsb_11_0_124ad8bd21557d78;

ARCHITECTURE addsb_11_0_124ad8bd21557d78_a OF addsb_11_0_124ad8bd21557d78 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_124ad8bd21557d78
  PORT (
    a : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(37 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(37 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_124ad8bd21557d78 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 38,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000000000000000000000000",
      c_b_width => 38,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 38,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_124ad8bd21557d78
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_124ad8bd21557d78_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_541f86689cddfa59.vhd when simulating
-- the core, cntr_11_0_541f86689cddfa59. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_541f86689cddfa59 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_541f86689cddfa59;

ARCHITECTURE cntr_11_0_541f86689cddfa59_a OF cntr_11_0_541f86689cddfa59 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_541f86689cddfa59
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_541f86689cddfa59 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 2,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_541f86689cddfa59
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_541f86689cddfa59_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_1ab2fc8c7fe57f94.vhd when simulating
-- the core, addsb_11_0_1ab2fc8c7fe57f94. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_1ab2fc8c7fe57f94 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(38 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(38 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(38 DOWNTO 0)
  );
END addsb_11_0_1ab2fc8c7fe57f94;

ARCHITECTURE addsb_11_0_1ab2fc8c7fe57f94_a OF addsb_11_0_1ab2fc8c7fe57f94 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_1ab2fc8c7fe57f94
  PORT (
    a : IN STD_LOGIC_VECTOR(38 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(38 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(38 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_1ab2fc8c7fe57f94 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 39,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000000000000000000000000",
      c_b_width => 39,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 39,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_1ab2fc8c7fe57f94
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_1ab2fc8c7fe57f94_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_a92f1809cda25252.vhd when simulating
-- the core, addsb_11_0_a92f1809cda25252. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_a92f1809cda25252 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
  );
END addsb_11_0_a92f1809cda25252;

ARCHITECTURE addsb_11_0_a92f1809cda25252_a OF addsb_11_0_a92f1809cda25252 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_a92f1809cda25252
  PORT (
    a : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(39 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(39 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_a92f1809cda25252 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 40,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000000000000000000000000000000",
      c_b_width => 40,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 40,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_a92f1809cda25252
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_a92f1809cda25252_a;
--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file fr_cmplr_v5_0_91f8d93ab4c57cc9.vhd when simulating
-- the core, fr_cmplr_v5_0_91f8d93ab4c57cc9. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fr_cmplr_v5_0_91f8d93ab4c57cc9 IS
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
END fr_cmplr_v5_0_91f8d93ab4c57cc9;

ARCHITECTURE fr_cmplr_v5_0_91f8d93ab4c57cc9_a OF fr_cmplr_v5_0_91f8d93ab4c57cc9 IS
-- synthesis translate_off
component wrapped_fr_cmplr_v5_0_91f8d93ab4c57cc9
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fr_cmplr_v5_0_91f8d93ab4c57cc9 use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 20,
			c_has_sclr => 1,
			datapath_memtype => 0,
			c_component_name => "fr_cmplr_v5_0_91f8d93ab4c57cc9",
			c_family => "virtex6",
			round_mode => 0,
			output_width => 42,
			sclr_deterministic => 1,
			col_config => "16",
			coef_memtype => 0,
			clock_freq => 1,
			symmetry => 0,
			col_pipe_len => 4,
			c_latency => 9,
			chan_sel_width => 1,
			c_xdevicefamily => "virtex6",
			c_has_nd => 1,
			allow_approx => 0,
			num_channels => 1,
			data_width => 20,
			filter_sel_width => 1,
			sample_freq => 1,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 13,
			data_type => 0,
			accum_width => 42,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 1,
			decim_rate => 4,
			coef_type => 0,
			filter_arch => 4,
			interp_rate => 1,
			num_taps => 64,
			c_mem_init_file => "fr_cmplr_v5_0_91f8d93ab4c57cc9.mif",
			zero_packing_factor => 1,
			num_paths => 1,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 1,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fr_cmplr_v5_0_91f8d93ab4c57cc9
		port map (
			sclr => sclr,
			clk => clk,
			ce => ce,
			nd => nd,
			rfd => rfd,
			rdy => rdy,
			data_valid => data_valid,
			din => din,
			dout => dout);
-- synthesis translate_on

END fr_cmplr_v5_0_91f8d93ab4c57cc9_a;

--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_e45fdd6bbd8931af.vhd when simulating
-- the core, cntr_11_0_e45fdd6bbd8931af. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_e45fdd6bbd8931af IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END cntr_11_0_e45fdd6bbd8931af;

ARCHITECTURE cntr_11_0_e45fdd6bbd8931af_a OF cntr_11_0_e45fdd6bbd8931af IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_e45fdd6bbd8931af
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_e45fdd6bbd8931af USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "10000",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 15,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_e45fdd6bbd8931af
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_e45fdd6bbd8931af_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_057e085f9fa7824e.vhd when simulating
-- the core, addsb_11_0_057e085f9fa7824e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_057e085f9fa7824e IS
  PORT (
    a : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END addsb_11_0_057e085f9fa7824e;

ARCHITECTURE addsb_11_0_057e085f9fa7824e_a OF addsb_11_0_057e085f9fa7824e IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_057e085f9fa7824e
  PORT (
    a : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(35 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_057e085f9fa7824e USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 36,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000000000000000000000",
      c_b_width => 36,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 36,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_057e085f9fa7824e
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_057e085f9fa7824e_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_878d64cddecff8f4.vhd when simulating
-- the core, cntr_11_0_878d64cddecff8f4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_878d64cddecff8f4 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_878d64cddecff8f4;

ARCHITECTURE cntr_11_0_878d64cddecff8f4_a OF cntr_11_0_878d64cddecff8f4 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_878d64cddecff8f4
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_878d64cddecff8f4 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "10000",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_878d64cddecff8f4
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_878d64cddecff8f4_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_26f49e58a7187211.vhd when simulating
-- the core, addsb_11_0_26f49e58a7187211. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_26f49e58a7187211 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END addsb_11_0_26f49e58a7187211;

ARCHITECTURE addsb_11_0_26f49e58a7187211_a OF addsb_11_0_26f49e58a7187211 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_26f49e58a7187211
  PORT (
    a : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(34 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    s : OUT STD_LOGIC_VECTOR(34 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_26f49e58a7187211 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 35,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000000000000000000000",
      c_b_width => 35,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 1,
      c_latency => 1,
      c_out_width => 35,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_26f49e58a7187211
  PORT MAP (
    a => a,
    b => b,
    clk => clk,
    ce => ce,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_26f49e58a7187211_a;
--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file fr_cmplr_v5_0_4b60decb792efd1e.vhd when simulating
-- the core, fr_cmplr_v5_0_4b60decb792efd1e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fr_cmplr_v5_0_4b60decb792efd1e IS
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
END fr_cmplr_v5_0_4b60decb792efd1e;

ARCHITECTURE fr_cmplr_v5_0_4b60decb792efd1e_a OF fr_cmplr_v5_0_4b60decb792efd1e IS
-- synthesis translate_off
component wrapped_fr_cmplr_v5_0_4b60decb792efd1e
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fr_cmplr_v5_0_4b60decb792efd1e use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 20,
			c_has_sclr => 1,
			datapath_memtype => 0,
			c_component_name => "fr_cmplr_v5_0_4b60decb792efd1e",
			c_family => "virtex6",
			round_mode => 0,
			output_width => 42,
			sclr_deterministic => 1,
			col_config => "16",
			coef_memtype => 0,
			clock_freq => 1,
			symmetry => 0,
			col_pipe_len => 4,
			c_latency => 9,
			chan_sel_width => 1,
			c_xdevicefamily => "virtex6",
			c_has_nd => 1,
			allow_approx => 0,
			num_channels => 1,
			data_width => 20,
			filter_sel_width => 1,
			sample_freq => 1,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 13,
			data_type => 0,
			accum_width => 42,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 1,
			decim_rate => 4,
			coef_type => 0,
			filter_arch => 4,
			interp_rate => 1,
			num_taps => 64,
			c_mem_init_file => "fr_cmplr_v5_0_4b60decb792efd1e.mif",
			zero_packing_factor => 1,
			num_paths => 1,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 1,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fr_cmplr_v5_0_4b60decb792efd1e
		port map (
			sclr => sclr,
			clk => clk,
			ce => ce,
			nd => nd,
			rfd => rfd,
			rdy => rdy,
			data_valid => data_valid,
			din => din,
			dout => dout);
-- synthesis translate_on

END fr_cmplr_v5_0_4b60decb792efd1e_a;

--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2019 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file bmg_72_80ec4706477d97c1.vhd when simulating
-- the core, bmg_72_80ec4706477d97c1. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY bmg_72_80ec4706477d97c1 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END bmg_72_80ec4706477d97c1;

ARCHITECTURE bmg_72_80ec4706477d97c1_a OF bmg_72_80ec4706477d97c1 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_72_80ec4706477d97c1
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addrb : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_72_80ec4706477d97c1 USE ENTITY XilinxCoreLib.blk_mem_gen_v7_2(behavioral)
    GENERIC MAP (
      c_addra_width => 2,
      c_addrb_width => 2,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 1,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 1,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 1,
      c_has_mem_output_regs_b => 1,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_72_80ec4706477d97c1.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 2,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 4,
      c_read_depth_b => 4,
      c_read_width_a => 8,
      c_read_width_b => 8,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 4,
      c_write_depth_b => 4,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "READ_FIRST",
      c_write_width_a => 8,
      c_write_width_b => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_72_80ec4706477d97c1
  PORT MAP (
    clka => clka,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => dina,
    douta => douta,
    clkb => clkb,
    enb => enb,
    web => web,
    addrb => addrb,
    dinb => dinb,
    doutb => doutb
  );
-- synthesis translate_on

END bmg_72_80ec4706477d97c1_a;
--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file fr_cmplr_v5_0_ca7ec58752e7cbe6.vhd when simulating
-- the core, fr_cmplr_v5_0_ca7ec58752e7cbe6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY fr_cmplr_v5_0_ca7ec58752e7cbe6 IS
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
END fr_cmplr_v5_0_ca7ec58752e7cbe6;

ARCHITECTURE fr_cmplr_v5_0_ca7ec58752e7cbe6_a OF fr_cmplr_v5_0_ca7ec58752e7cbe6 IS
-- synthesis translate_off
component wrapped_fr_cmplr_v5_0_ca7ec58752e7cbe6
	port (
	sclr: in std_logic;
	clk: in std_logic;
	ce: in std_logic;
	nd: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	data_valid: out std_logic;
	din: in std_logic_vector(19 downto 0);
	dout: out std_logic_vector(41 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_fr_cmplr_v5_0_ca7ec58752e7cbe6 use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 20,
			c_has_sclr => 1,
			datapath_memtype => 0,
			c_component_name => "fr_cmplr_v5_0_ca7ec58752e7cbe6",
			c_family => "virtex6",
			round_mode => 0,
			output_width => 42,
			sclr_deterministic => 1,
			col_config => "16",
			coef_memtype => 0,
			clock_freq => 1,
			symmetry => 0,
			col_pipe_len => 4,
			c_latency => 9,
			chan_sel_width => 1,
			c_xdevicefamily => "virtex6",
			c_has_nd => 1,
			allow_approx => 0,
			num_channels => 1,
			data_width => 20,
			filter_sel_width => 1,
			sample_freq => 1,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 13,
			data_type => 0,
			accum_width => 42,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 1,
			decim_rate => 4,
			coef_type => 0,
			filter_arch => 4,
			interp_rate => 1,
			num_taps => 64,
			c_mem_init_file => "fr_cmplr_v5_0_ca7ec58752e7cbe6.mif",
			zero_packing_factor => 1,
			num_paths => 1,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 1,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_fr_cmplr_v5_0_ca7ec58752e7cbe6
		port map (
			sclr => sclr,
			clk => clk,
			ce => ce,
			nd => nd,
			rfd => rfd,
			rdy => rdy,
			data_valid => data_valid,
			din => din,
			dout => dout);
-- synthesis translate_on

END fr_cmplr_v5_0_ca7ec58752e7cbe6_a;


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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c13097e33e is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c13097e33e;


architecture behavior of addsub_c13097e33e is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0");
  signal op_mem_91_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((3 - 1) downto 0);
  signal cast_71_22: signed((3 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((3 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((1 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 3, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 3, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 1, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1d98d96b58 is
  port (
    in0 : in std_logic_vector((9 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1d98d96b58;


architecture behavior of concat_1d98d96b58 is
  signal in0_1_23: unsigned((9 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((10 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_4fe5face7f is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((10 - 1) downto 0);
    d1 : in std_logic_vector((10 - 1) downto 0);
    y : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_4fe5face7f;


architecture behavior of mux_4fe5face7f is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((10 - 1) downto 0);
  signal d1_1_27: std_logic_vector((10 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((10 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_c5d4d59b73 is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_c5d4d59b73;


architecture behavior of reinterpret_c5d4d59b73 is
  signal input_port_1_40: unsigned((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity xlfir_compiler_404d012e246fd7c3c478300b2767a524 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    data_valid:out std_logic;
    din:in std_logic_vector(19 downto 0);
    dout:out std_logic_vector(41 downto 0);
    nd:in std_logic;
    rdy:out std_logic;
    rfd:out std_logic;
    rst:in std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_404d012e246fd7c3c478300b2767a524;


architecture behavior of xlfir_compiler_404d012e246fd7c3c478300b2767a524  is
  component fr_cmplr_v5_0_4b60decb792efd1e
    port(
      ce:in std_logic;
      clk:in std_logic;
      data_valid:out std_logic;
      din:in std_logic_vector(19 downto 0);
      dout:out std_logic_vector(41 downto 0);
      nd:in std_logic;
      rdy:out std_logic;
      rfd:out std_logic;
      sclr:in std_logic
    );
end component;
signal sclr_net: std_logic := '0';
begin
  sclr_net <= rst and ce;
  fr_cmplr_v5_0_4b60decb792efd1e_instance : fr_cmplr_v5_0_4b60decb792efd1e
    port map(
      ce=>ce,
      clk=>clk,
      data_valid=>data_valid,
      din=>din,
      dout=>dout,
      nd=>nd,
      rdy=>rdy,
      rfd=>rfd,
      sclr=>sclr_net
    );
end  behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_c1a6347d0b is
  port (
    input_port : in std_logic_vector((42 - 1) downto 0);
    output_port : out std_logic_vector((42 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_c1a6347d0b;


architecture behavior of reinterpret_c1a6347d0b is
  signal input_port_1_40: signed((42 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port <= signed_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity xlfir_compiler_ede421514d01101ba0ac303ab8d705af is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    data_valid:out std_logic;
    din:in std_logic_vector(19 downto 0);
    dout:out std_logic_vector(41 downto 0);
    nd:in std_logic;
    rdy:out std_logic;
    rfd:out std_logic;
    rst:in std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_ede421514d01101ba0ac303ab8d705af;


architecture behavior of xlfir_compiler_ede421514d01101ba0ac303ab8d705af  is
  component fr_cmplr_v5_0_11b79c4c0363d2c9
    port(
      ce:in std_logic;
      clk:in std_logic;
      data_valid:out std_logic;
      din:in std_logic_vector(19 downto 0);
      dout:out std_logic_vector(41 downto 0);
      nd:in std_logic;
      rdy:out std_logic;
      rfd:out std_logic;
      sclr:in std_logic
    );
end component;
signal sclr_net: std_logic := '0';
begin
  sclr_net <= rst and ce;
  fr_cmplr_v5_0_11b79c4c0363d2c9_instance : fr_cmplr_v5_0_11b79c4c0363d2c9
    port map(
      ce=>ce,
      clk=>clk,
      data_valid=>data_valid,
      din=>din,
      dout=>dout,
      nd=>nd,
      rdy=>rdy,
      rfd=>rfd,
      sclr=>sclr_net
    );
end  behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity xlfir_compiler_7af4c9db30a2b72459860f2765c257d2 is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    data_valid:out std_logic;
    din:in std_logic_vector(19 downto 0);
    dout:out std_logic_vector(41 downto 0);
    nd:in std_logic;
    rdy:out std_logic;
    rfd:out std_logic;
    rst:in std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_7af4c9db30a2b72459860f2765c257d2;


architecture behavior of xlfir_compiler_7af4c9db30a2b72459860f2765c257d2  is
  component fr_cmplr_v5_0_ca7ec58752e7cbe6
    port(
      ce:in std_logic;
      clk:in std_logic;
      data_valid:out std_logic;
      din:in std_logic_vector(19 downto 0);
      dout:out std_logic_vector(41 downto 0);
      nd:in std_logic;
      rdy:out std_logic;
      rfd:out std_logic;
      sclr:in std_logic
    );
end component;
signal sclr_net: std_logic := '0';
begin
  sclr_net <= rst and ce;
  fr_cmplr_v5_0_ca7ec58752e7cbe6_instance : fr_cmplr_v5_0_ca7ec58752e7cbe6
    port map(
      ce=>ce,
      clk=>clk,
      data_valid=>data_valid,
      din=>din,
      dout=>dout,
      nd=>nd,
      rdy=>rdy,
      rfd=>rfd,
      sclr=>sclr_net
    );
end  behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity xlfir_compiler_ea40e17acbdca2041e07e94cdd414ebc is 
  port(
    ce:in std_logic;
    clk:in std_logic;
    data_valid:out std_logic;
    din:in std_logic_vector(19 downto 0);
    dout:out std_logic_vector(41 downto 0);
    nd:in std_logic;
    rdy:out std_logic;
    rfd:out std_logic;
    rst:in std_logic;
    src_ce:in std_logic;
    src_clk:in std_logic
  );
end xlfir_compiler_ea40e17acbdca2041e07e94cdd414ebc;


architecture behavior of xlfir_compiler_ea40e17acbdca2041e07e94cdd414ebc  is
  component fr_cmplr_v5_0_91f8d93ab4c57cc9
    port(
      ce:in std_logic;
      clk:in std_logic;
      data_valid:out std_logic;
      din:in std_logic_vector(19 downto 0);
      dout:out std_logic_vector(41 downto 0);
      nd:in std_logic;
      rdy:out std_logic;
      rfd:out std_logic;
      sclr:in std_logic
    );
end component;
signal sclr_net: std_logic := '0';
begin
  sclr_net <= rst and ce;
  fr_cmplr_v5_0_91f8d93ab4c57cc9_instance : fr_cmplr_v5_0_91f8d93ab4c57cc9
    port map(
      ce=>ce,
      clk=>clk,
      data_valid=>data_valid,
      din=>din,
      dout=>dout,
      nd=>nd,
      rdy=>rdy,
      rfd=>rfd,
      sclr=>sclr_net
    );
end  behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_2b0feb00fb is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_2b0feb00fb;


architecture behavior of delay_2b0feb00fb is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_f6397bdee1 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_f6397bdee1;


architecture behavior of logical_f6397bdee1 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_27: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_27 <= d0_1_24 xor d1_1_27;
  fully_2_1_bitnot <= not bit_2_27;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_350c391ba7 is
  port (
    in0 : in std_logic_vector((17 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((14 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_350c391ba7;


architecture behavior of concat_350c391ba7 is
  signal in0_1_23: unsigned((17 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: unsigned((14 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & boolean_to_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_9f02caa990 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_9f02caa990;


architecture behavior of delay_9f02caa990 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_ee0f706095 is
  port (
    d : in std_logic_vector((128 - 1) downto 0);
    q : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_ee0f706095;


architecture behavior of delay_ee0f706095 is
  signal d_1_22: std_logic_vector((128 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_6844eee868 is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_6844eee868;


architecture behavior of inverter_6844eee868 is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_799f62af22 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_799f62af22;


architecture behavior of logical_799f62af22 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_latency_pipe_5_26 is array (0 to (1 - 1)) of std_logic;
  signal latency_pipe_5_26: array_type_latency_pipe_5_26 := (
    0 => '0');
  signal latency_pipe_5_26_front_din: std_logic;
  signal latency_pipe_5_26_back: std_logic;
  signal latency_pipe_5_26_push_front_pop_back_en: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  latency_pipe_5_26_back <= latency_pipe_5_26(0);
  proc_latency_pipe_5_26: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (latency_pipe_5_26_push_front_pop_back_en = '1')) then
        latency_pipe_5_26(0) <= latency_pipe_5_26_front_din;
      end if;
    end if;
  end process proc_latency_pipe_5_26;
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  latency_pipe_5_26_front_din <= fully_2_1_bit;
  latency_pipe_5_26_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(latency_pipe_5_26_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_df05fba441 is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_df05fba441;


architecture behavior of shift_df05fba441 is
  signal ip_1_23: unsigned((17 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((17 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000000");
  signal op_mem_46_20_front_din: unsigned((17 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((17 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((33 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((17 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 33, 16);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 17, 0);
  op_mem_46_20_front_din <= cast_internal_ip_36_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_testing is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_testing ;
architecture behavior of xlcounter_free_testing is
  component cntr_11_0_e45fdd6bbd8931af
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_e45fdd6bbd8931af:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_e45fdd6bbd8931af:
    component is "true";
  attribute box_type of cntr_11_0_e45fdd6bbd8931af:
    component  is "black_box";
  component cntr_11_0_541f86689cddfa59
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_541f86689cddfa59:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_541f86689cddfa59:
    component is "true";
  attribute box_type of cntr_11_0_541f86689cddfa59:
    component  is "black_box";
  component cntr_11_0_878d64cddecff8f4
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_878d64cddecff8f4:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_878d64cddecff8f4:
    component is "true";
  attribute box_type of cntr_11_0_878d64cddecff8f4:
    component  is "black_box";
  component cntr_11_0_866619918c8abcee
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_866619918c8abcee:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_866619918c8abcee:
    component is "true";
  attribute box_type of cntr_11_0_866619918c8abcee:
    component  is "black_box";
  component cntr_11_0_be90175e3110ea82
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_be90175e3110ea82:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_be90175e3110ea82:
    component is "true";
  attribute box_type of cntr_11_0_be90175e3110ea82:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_e45fdd6bbd8931af")) generate
    core_instance0: cntr_11_0_e45fdd6bbd8931af
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_541f86689cddfa59")) generate
    core_instance1: cntr_11_0_541f86689cddfa59
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_878d64cddecff8f4")) generate
    core_instance2: cntr_11_0_878d64cddecff8f4
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_866619918c8abcee")) generate
    core_instance3: cntr_11_0_866619918c8abcee
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_be90175e3110ea82")) generate
    core_instance4: cntr_11_0_be90175e3110ea82
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_fd1ce36c4a is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((128 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((128 - 1) downto 0);
    y : out std_logic_vector((272 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_fd1ce36c4a;


architecture behavior of concat_fd1ce36c4a is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((128 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((128 - 1) downto 0);
  signal y_2_1_concat: unsigned((272 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_91ef1678ca is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_91ef1678ca;


architecture behavior of constant_91ef1678ca is
begin
  op <= "00000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_ddf27bda35 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((272 - 1) downto 0);
    d1 : in std_logic_vector((272 - 1) downto 0);
    y : out std_logic_vector((272 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_ddf27bda35;


architecture behavior of mux_ddf27bda35 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((272 - 1) downto 0);
  signal d1_1_27: std_logic_vector((272 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((272 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((272 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((272 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((272 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5f1eb17108 is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5f1eb17108;


architecture behavior of relational_5f1eb17108 is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a7e2bb9e12 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7e2bb9e12;


architecture behavior of constant_a7e2bb9e12 is
begin
  op <= "01";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8ddc079e9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8ddc079e9;


architecture behavior of constant_e8ddc079e9 is
begin
  op <= "10";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3a9a3daeb9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3a9a3daeb9;


architecture behavior of constant_3a9a3daeb9 is
begin
  op <= "11";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_5441ad2d93 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((128 - 1) downto 0);
    d1 : in std_logic_vector((272 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_5441ad2d93;


architecture behavior of mux_5441ad2d93 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((128 - 1) downto 0);
  signal d1_1_27: std_logic_vector((272 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((272 - 1) downto 0);
  signal cast_unregy_13_5_convert: std_logic_vector((128 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 272, 0, xlUnsigned);
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  cast_unregy_13_5_convert <= cast(unregy_join_6_1, 0, 128, 0, xlUnsigned);
  y <= cast_unregy_13_5_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_caa2b01eef is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_caa2b01eef;


architecture behavior of counter_caa2b01eef is
  signal rst_1_40: boolean;
  signal en_1_45: boolean;
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
  signal count_reg_20_23_rst: std_logic;
  signal count_reg_20_23_en: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((2 - 1) downto 0);
  signal count_reg_join_44_1_en: std_logic;
  signal count_reg_join_44_1_rst: std_logic;
  signal rst_limit_join_44_1: boolean;
begin
  rst_1_40 <= ((rst) = "1");
  en_1_45 <= ((en) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0";
      elsif ((ce = '1') and (count_reg_20_23_en = '1')) then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23, en_1_45)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    elsif en_1_45 then
      count_reg_join_44_1_rst <= '0';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if en_1_45 then
      count_reg_join_44_1_en <= '1';
    else 
      count_reg_join_44_1_en <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    elsif en_1_45 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  count_reg_20_23_en <= count_reg_join_44_1_en;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d99e59b6d4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d99e59b6d4;


architecture behavior of mux_d99e59b6d4 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= std_logic_to_vector(unregy_join_6_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_dfe2dded7f is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_dfe2dded7f;


architecture behavior of logical_dfe2dded7f is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal bit_2_26: std_logic;
  signal fully_2_1_bitnot: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= std_logic_to_vector(fully_2_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_b11ec1c0d4 is
  port (
    in0 : in std_logic_vector((32 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    in2 : in std_logic_vector((32 - 1) downto 0);
    in3 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_b11ec1c0d4;


architecture behavior of concat_b11ec1c0d4 is
  signal in0_1_23: unsigned((32 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal in2_1_31: unsigned((32 - 1) downto 0);
  signal in3_1_35: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((128 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_28b9ecc6fc is
  port (
    input_port : in std_logic_vector((128 - 1) downto 0);
    output_port : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_28b9ecc6fc;


architecture behavior of reinterpret_28b9ecc6fc is
  signal input_port_1_40: unsigned((128 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_a14e3dd1bd is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_a14e3dd1bd;


architecture behavior of delay_a14e3dd1bd is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_672d2b8d1e is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_672d2b8d1e;


architecture behavior of delay_672d2b8d1e is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_6fcf35ba77 is
  port (
    d : in std_logic_vector((128 - 1) downto 0);
    q : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_6fcf35ba77;


architecture behavior of delay_6fcf35ba77 is
  signal d_1_22: std_logic_vector((128 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
    "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((128 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_34fc311f5b is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_34fc311f5b;


architecture behavior of relational_34fc311f5b is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_18_3_rel <= a_1_31 > b_1_34;
  op_mem_32_22_front_din <= result_18_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;


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
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlpassthrough is
    generic (
        din_width    : integer := 16;
        dout_width   : integer := 16
        );
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlpassthrough;
architecture passthrough_arch of xlpassthrough is
begin
  dout <= din;
end passthrough_arch;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_cf4f99539f is
  port (
    d : in std_logic_vector((10 - 1) downto 0);
    q : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_cf4f99539f;


architecture behavior of delay_cf4f99539f is
  signal d_1_22: std_logic_vector((10 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000");
  signal op_mem_20_24_front_din: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((10 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1d665a7331 is
  port (
    in0 : in std_logic_vector((19 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((12 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1d665a7331;


architecture behavior of concat_1d665a7331 is
  signal in0_1_23: unsigned((19 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: unsigned((12 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= ((in1) = "1");
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & boolean_to_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_892c2104f7 is
  port (
    ip : in std_logic_vector((19 - 1) downto 0);
    op : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_892c2104f7;


architecture behavior of shift_892c2104f7 is
  signal ip_1_23: unsigned((19 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((19 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000000");
  signal op_mem_46_20_front_din: unsigned((19 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((19 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((37 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((19 - 1) downto 0);
begin
  ip_1_23 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 37, 18);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 19, 0);
  op_mem_46_20_front_din <= cast_internal_ip_36_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_762608f33d is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((32 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((80 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_762608f33d;


architecture behavior of concat_762608f33d is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((32 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((80 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_a575c74b27 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((80 - 1) downto 0);
    d1 : in std_logic_vector((80 - 1) downto 0);
    y : out std_logic_vector((80 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_a575c74b27;


architecture behavior of mux_a575c74b27 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((80 - 1) downto 0);
  signal d1_1_27: std_logic_vector((80 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((80 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000");
  signal pipe_16_22_front_din: std_logic_vector((80 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((80 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((80 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_b4a3823c60 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((80 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_b4a3823c60;


architecture behavior of mux_b4a3823c60 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((80 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((80 - 1) downto 0);
  signal cast_unregy_13_5_convert: std_logic_vector((32 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 80, 0, xlUnsigned);
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  cast_unregy_13_5_convert <= cast(unregy_join_6_1, 0, 32, 0, xlUnsigned);
  y <= cast_unregy_13_5_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e31c8dd846 is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e31c8dd846;


architecture behavior of delay_e31c8dd846 is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (5 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(4);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 4 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_96b2f1cb93 is
  port (
    in0 : in std_logic_vector((8 - 1) downto 0);
    in1 : in std_logic_vector((8 - 1) downto 0);
    in2 : in std_logic_vector((8 - 1) downto 0);
    in3 : in std_logic_vector((8 - 1) downto 0);
    in4 : in std_logic_vector((8 - 1) downto 0);
    in5 : in std_logic_vector((8 - 1) downto 0);
    in6 : in std_logic_vector((8 - 1) downto 0);
    in7 : in std_logic_vector((8 - 1) downto 0);
    in8 : in std_logic_vector((8 - 1) downto 0);
    in9 : in std_logic_vector((8 - 1) downto 0);
    in10 : in std_logic_vector((8 - 1) downto 0);
    in11 : in std_logic_vector((8 - 1) downto 0);
    in12 : in std_logic_vector((8 - 1) downto 0);
    in13 : in std_logic_vector((8 - 1) downto 0);
    in14 : in std_logic_vector((8 - 1) downto 0);
    in15 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((128 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_96b2f1cb93;


architecture behavior of concat_96b2f1cb93 is
  signal in0_1_23: unsigned((8 - 1) downto 0);
  signal in1_1_27: unsigned((8 - 1) downto 0);
  signal in2_1_31: unsigned((8 - 1) downto 0);
  signal in3_1_35: unsigned((8 - 1) downto 0);
  signal in4_1_39: unsigned((8 - 1) downto 0);
  signal in5_1_43: unsigned((8 - 1) downto 0);
  signal in6_1_47: unsigned((8 - 1) downto 0);
  signal in7_1_51: unsigned((8 - 1) downto 0);
  signal in8_1_55: unsigned((8 - 1) downto 0);
  signal in9_1_59: unsigned((8 - 1) downto 0);
  signal in10_1_63: unsigned((8 - 1) downto 0);
  signal in11_1_68: unsigned((8 - 1) downto 0);
  signal in12_1_73: unsigned((8 - 1) downto 0);
  signal in13_1_78: unsigned((8 - 1) downto 0);
  signal in14_1_83: unsigned((8 - 1) downto 0);
  signal in15_1_88: unsigned((8 - 1) downto 0);
  signal y_2_1_concat: unsigned((128 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  in8_1_55 <= std_logic_vector_to_unsigned(in8);
  in9_1_59 <= std_logic_vector_to_unsigned(in9);
  in10_1_63 <= std_logic_vector_to_unsigned(in10);
  in11_1_68 <= std_logic_vector_to_unsigned(in11);
  in12_1_73 <= std_logic_vector_to_unsigned(in12);
  in13_1_78 <= std_logic_vector_to_unsigned(in13);
  in14_1_83 <= std_logic_vector_to_unsigned(in14);
  in15_1_88 <= std_logic_vector_to_unsigned(in15);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51) & unsigned_to_std_logic_vector(in8_1_55) & unsigned_to_std_logic_vector(in9_1_59) & unsigned_to_std_logic_vector(in10_1_63) & unsigned_to_std_logic_vector(in11_1_68) & unsigned_to_std_logic_vector(in12_1_73) & unsigned_to_std_logic_vector(in13_1_78) & unsigned_to_std_logic_vector(in14_1_83) & unsigned_to_std_logic_vector(in15_1_88));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_d51df7ac30 is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_d51df7ac30;


architecture behavior of reinterpret_d51df7ac30 is
  signal input_port_1_40: signed((8 - 1) downto 0);
  signal output_port_5_5_force: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_eb03bc3377 is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_eb03bc3377;


architecture behavior of reinterpret_eb03bc3377 is
  signal input_port_1_40: unsigned((30 - 1) downto 0);
  signal output_port_5_5_force: signed((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_83e473517e is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((7 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_83e473517e;


architecture behavior of concat_83e473517e is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((7 - 1) downto 0);
  signal y_2_1_concat: unsigned((8 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e2b989a05e is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e2b989a05e;


architecture behavior of inverter_e2b989a05e is
  signal ip_1_26: unsigned((1 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0");
  signal op_mem_22_20_front_din: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((1 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((1 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_4389dc89bf is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_4389dc89bf;


architecture behavior of reinterpret_4389dc89bf is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
  signal output_port_5_5_force: signed((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port_5_5_force <= unsigned_to_signed(input_port_1_40);
  output_port <= signed_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_fb93b41e9c is
  port (
    a : in std_logic_vector((33 - 1) downto 0);
    b : in std_logic_vector((33 - 1) downto 0);
    s : out std_logic_vector((34 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_fb93b41e9c;


architecture behavior of addsub_fb93b41e9c is
  signal a_17_32: signed((33 - 1) downto 0);
  signal b_17_35: signed((33 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((34 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((34 - 1) downto 0);
  signal op_mem_91_20_back: signed((34 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((34 - 1) downto 0);
  signal cast_69_22: signed((34 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((34 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 31, 34, 31);
  cast_69_22 <= s2s_cast(b_17_35, 31, 34, 31);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_front_din <= internal_s_69_5_addsub;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(op_mem_91_20_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_testing is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_testing;
architecture behavior of xladdsub_testing is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_26f49e58a7187211
    port (
          a: in std_logic_vector(35 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(35 - 1 downto 0)
    );
  end component;
  component addsb_11_0_057e085f9fa7824e
    port (
          a: in std_logic_vector(36 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(36 - 1 downto 0)
    );
  end component;
  component addsb_11_0_f52883bb4806fc24
    port (
          a: in std_logic_vector(37 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(37 - 1 downto 0)
    );
  end component;
  component addsb_11_0_124ad8bd21557d78
    port (
          a: in std_logic_vector(38 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(38 - 1 downto 0)
    );
  end component;
  component addsb_11_0_1ab2fc8c7fe57f94
    port (
          a: in std_logic_vector(39 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(39 - 1 downto 0)
    );
  end component;
  component addsb_11_0_a92f1809cda25252
    port (
          a: in std_logic_vector(40 - 1 downto 0);
    clk: in std_logic:= '0';
    ce: in std_logic:= '0';
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(40 - 1 downto 0)
    );
  end component;
  component addsb_11_0_6a49eeb869ee9525
    port (
          a: in std_logic_vector(3 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(3 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_26f49e58a7187211")) generate
    core_instance0: addsb_11_0_26f49e58a7187211
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_057e085f9fa7824e")) generate
    core_instance1: addsb_11_0_057e085f9fa7824e
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_f52883bb4806fc24")) generate
    core_instance2: addsb_11_0_f52883bb4806fc24
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp3: if ((core_name0 = "addsb_11_0_124ad8bd21557d78")) generate
    core_instance3: addsb_11_0_124ad8bd21557d78
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp4: if ((core_name0 = "addsb_11_0_1ab2fc8c7fe57f94")) generate
    core_instance4: addsb_11_0_1ab2fc8c7fe57f94
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp6: if ((core_name0 = "addsb_11_0_a92f1809cda25252")) generate
    core_instance6: addsb_11_0_a92f1809cda25252
      port map (
         a => full_a,
         clk => clk,
         ce => internal_ce,
         s => core_s,
         b => full_b
      );
  end generate;
  comp7: if ((core_name0 = "addsb_11_0_6a49eeb869ee9525")) generate
    core_instance7: addsb_11_0_6a49eeb869ee9525
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e114d910e6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e114d910e6;


architecture behavior of constant_e114d910e6 is
begin
  op <= "0000000011001011100101000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mult_12191cd2b4 is
  port (
    a : in std_logic_vector((25 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    p : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mult_12191cd2b4;


architecture behavior of mult_12191cd2b4 is
  signal a_1_22: signed((25 - 1) downto 0);
  signal b_1_25: signed((8 - 1) downto 0);
  type array_type_op_mem_65_20 is array (0 to (2 - 1)) of signed((33 - 1) downto 0);
  signal op_mem_65_20: array_type_op_mem_65_20 := (
    "000000000000000000000000000000000",
    "000000000000000000000000000000000");
  signal op_mem_65_20_front_din: signed((33 - 1) downto 0);
  signal op_mem_65_20_back: signed((33 - 1) downto 0);
  signal op_mem_65_20_push_front_pop_back_en: std_logic;
  signal mult_46_56: signed((33 - 1) downto 0);
begin
  a_1_22 <= std_logic_vector_to_signed(a);
  b_1_25 <= std_logic_vector_to_signed(b);
  op_mem_65_20_back <= op_mem_65_20(1);
  proc_op_mem_65_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_65_20_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_65_20(i) <= op_mem_65_20(i-1);
        end loop;
        op_mem_65_20(0) <= op_mem_65_20_front_din;
      end if;
    end if;
  end process proc_op_mem_65_20;
  mult_46_56 <= (a_1_22 * b_1_25);
  op_mem_65_20_front_din <= mult_46_56;
  op_mem_65_20_push_front_pop_back_en <= '1';
  p <= signed_to_std_logic_vector(op_mem_65_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_355a464687 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_355a464687;


architecture behavior of constant_355a464687 is
begin
  op <= "1111111110010001001011111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8f7b5cfe83 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8f7b5cfe83;


architecture behavior of constant_8f7b5cfe83 is
begin
  op <= "1111111101111100111100010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cad6c9cf1d is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cad6c9cf1d;


architecture behavior of constant_cad6c9cf1d is
begin
  op <= "1111111101101111010000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_d29b044433 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_d29b044433;


architecture behavior of constant_d29b044433 is
begin
  op <= "1111111101101000010011010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8360ce05bf is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8360ce05bf;


architecture behavior of constant_8360ce05bf is
begin
  op <= "1111111101101000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0a9404d2ee is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0a9404d2ee;


architecture behavior of constant_0a9404d2ee is
begin
  op <= "1111111101101110000000011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_64302bcbfa is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_64302bcbfa;


architecture behavior of constant_64302bcbfa is
begin
  op <= "1111111101111001101101010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b6b583c9df is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b6b583c9df;


architecture behavior of constant_b6b583c9df is
begin
  op <= "0000000010101110100010110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f22eee6ce2 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f22eee6ce2;


architecture behavior of constant_f22eee6ce2 is
begin
  op <= "0000000010001100000110110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_2539032405 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_2539032405;


architecture behavior of constant_2539032405 is
begin
  op <= "0000000001100101111110110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7c38787388 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7c38787388;


architecture behavior of constant_7c38787388 is
begin
  op <= "0000000000111101111011101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_946344552b is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_946344552b;


architecture behavior of constant_946344552b is
begin
  op <= "0000000000010101101100011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_be49aac425 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_be49aac425;


architecture behavior of constant_be49aac425 is
begin
  op <= "1111111111101110111010011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8ee545e7c0 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8ee545e7c0;


architecture behavior of constant_8ee545e7c0 is
begin
  op <= "1111111111001011000101001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0f4b24ad35 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0f4b24ad35;


architecture behavior of constant_0f4b24ad35 is
begin
  op <= "1111111110101011011111010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9b4f569def is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9b4f569def;


architecture behavior of constant_9b4f569def is
begin
  op <= "1111111001111100111010011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_97f9df5f3b is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_97f9df5f3b;


architecture behavior of constant_97f9df5f3b is
begin
  op <= "0000000010011001100011111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6994be872a is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6994be872a;


architecture behavior of constant_6994be872a is
begin
  op <= "0000000010111111111101001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_916558e6f4 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_916558e6f4;


architecture behavior of constant_916558e6f4 is
begin
  op <= "0000000011011011111010011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cfef190528 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cfef190528;


architecture behavior of constant_cfef190528 is
begin
  op <= "0000000011101101000001100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a356878fa5 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a356878fa5;


architecture behavior of constant_a356878fa5 is
begin
  op <= "0000000011110011010100011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c9bf17358d is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c9bf17358d;


architecture behavior of constant_c9bf17358d is
begin
  op <= "0000000011101111001111010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5704abaa9e is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5704abaa9e;


architecture behavior of constant_5704abaa9e is
begin
  op <= "0000000011100001100111001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_13ab4e5615 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_13ab4e5615;


architecture behavior of constant_13ab4e5615 is
begin
  op <= "1111111010101100101110001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a1d18e4f4d is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a1d18e4f4d;


architecture behavior of constant_a1d18e4f4d is
begin
  op <= "1111111011100110010010101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4cbcb95b2e is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4cbcb95b2e;


architecture behavior of constant_4cbcb95b2e is
begin
  op <= "1111111100100110100111110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e5bdebc6b0 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e5bdebc6b0;


architecture behavior of constant_e5bdebc6b0 is
begin
  op <= "1111111101101010101101101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e544d93ed8 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e544d93ed8;


architecture behavior of constant_e544d93ed8 is
begin
  op <= "1111111110101111101001110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5a7a372c8f is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5a7a372c8f;


architecture behavior of constant_5a7a372c8f is
begin
  op <= "1111111111110010101101010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e738368fbd is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e738368fbd;


architecture behavior of constant_e738368fbd is
begin
  op <= "0000000000110001011001111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_02d1537ab6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_02d1537ab6;


architecture behavior of constant_02d1537ab6 is
begin
  op <= "0000000001101001100110110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_78d50178d9 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_78d50178d9;


architecture behavior of constant_78d50178d9 is
begin
  op <= "0000010010110010101011110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_dd1380aa0f is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_dd1380aa0f;


architecture behavior of constant_dd1380aa0f is
begin
  op <= "1111111100001000110010111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_f98dbbfcc2 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_f98dbbfcc2;


architecture behavior of constant_f98dbbfcc2 is
begin
  op <= "1111111010110110111000010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e625dfe409 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e625dfe409;


architecture behavior of constant_e625dfe409 is
begin
  op <= "1111111001111010111100100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c69ce17d42 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c69ce17d42;


architecture behavior of constant_c69ce17d42 is
begin
  op <= "1111111001010100110001011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4970bb8d62 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4970bb8d62;


architecture behavior of constant_4970bb8d62 is
begin
  op <= "1111111001000011100100011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_db262cf869 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_db262cf869;


architecture behavior of constant_db262cf869 is
begin
  op <= "1111111001000101110111001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c2649c8ff3 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c2649c8ff3;


architecture behavior of constant_c2649c8ff3 is
begin
  op <= "1111111001011001110000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5df1d8d4a6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5df1d8d4a6;


architecture behavior of constant_5df1d8d4a6 is
begin
  op <= "0000001111110110111101001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_68f4b11a38 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_68f4b11a38;


architecture behavior of constant_68f4b11a38 is
begin
  op <= "0000001100111000110001011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_973bade9a0 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_973bade9a0;


architecture behavior of constant_973bade9a0 is
begin
  op <= "0000001001111100011111001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3d4a42903b is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3d4a42903b;


architecture behavior of constant_3d4a42903b is
begin
  op <= "0000000111000110001100101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a9a76bf5b9 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a9a76bf5b9;


architecture behavior of constant_a9a76bf5b9 is
begin
  op <= "0000000100011001110111001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_cb28619f1e is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cb28619f1e;


architecture behavior of constant_cb28619f1e is
begin
  op <= "0000000001111010111000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_0435bfa680 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_0435bfa680;


architecture behavior of constant_0435bfa680 is
begin
  op <= "1111111111101100001110101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_81ee75d5ac is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_81ee75d5ac;


architecture behavior of constant_81ee75d5ac is
begin
  op <= "1111111101110000010001111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a7dda33bc0 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7dda33bc0;


architecture behavior of constant_a7dda33bc0 is
begin
  op <= "0000010101100111011111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_92c6a13049 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_92c6a13049;


architecture behavior of constant_92c6a13049 is
begin
  op <= "0000100000110100011101100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5c56548779 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5c56548779;


architecture behavior of constant_5c56548779 is
begin
  op <= "0000011111111001010010001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6b9646cf8a is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6b9646cf8a;


architecture behavior of constant_6b9646cf8a is
begin
  op <= "0000011110100010011100101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3a71d705f4 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3a71d705f4;


architecture behavior of constant_3a71d705f4 is
begin
  op <= "0000011100110010001001110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3f7f5064bb is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3f7f5064bb;


architecture behavior of constant_3f7f5064bb is
begin
  op <= "0000011010101011001101101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a125d716d6 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a125d716d6;


architecture behavior of constant_a125d716d6 is
begin
  op <= "0000011000010001000010100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a6c7b95d29 is
  port (
    op : out std_logic_vector((25 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a6c7b95d29;


architecture behavior of constant_a6c7b95d29 is
begin
  op <= "0000100001010010011010011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_cdda6c7e6c is
  port (
    d : in std_logic_vector((37 - 1) downto 0);
    q : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_cdda6c7e6c;


architecture behavior of delay_cdda6c7e6c is
  signal d_1_22: std_logic_vector((37 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((37 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((37 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((37 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_23d71a76f2 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_23d71a76f2;


architecture behavior of delay_23d71a76f2 is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_67068d9ef9 is
  port (
    in0 : in std_logic_vector((30 - 1) downto 0);
    in1 : in std_logic_vector((30 - 1) downto 0);
    y : out std_logic_vector((60 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_67068d9ef9;


architecture behavior of concat_67068d9ef9 is
  signal in0_1_23: unsigned((30 - 1) downto 0);
  signal in1_1_27: unsigned((30 - 1) downto 0);
  signal y_2_1_concat: unsigned((60 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_46dd2ac081 is
  port (
    input_port : in std_logic_vector((30 - 1) downto 0);
    output_port : out std_logic_vector((30 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_46dd2ac081;


architecture behavior of reinterpret_46dd2ac081 is
  signal input_port_1_40: signed((30 - 1) downto 0);
  signal output_port_5_5_force: unsigned((30 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity shift_bf4b7863c1 is
  port (
    ip : in std_logic_vector((40 - 1) downto 0);
    op : out std_logic_vector((40 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_bf4b7863c1;


architecture behavior of shift_bf4b7863c1 is
  signal ip_1_23: signed((40 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((40 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "0000000000000000000000000000000000000000");
  signal op_mem_46_20_front_din: signed((40 - 1) downto 0);
  signal op_mem_46_20_back: signed((40 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
begin
  ip_1_23 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(ip_1_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_4ca77626c8 is
  port (
    d : in std_logic_vector((4 - 1) downto 0);
    q : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_4ca77626c8;


architecture behavior of delay_4ca77626c8 is
  signal d_1_22: std_logic_vector((4 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000");
  signal op_mem_20_24_front_din: std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(0);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_c53de546ea is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_c53de546ea;


architecture behavior of delay_c53de546ea is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (4 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0',
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(3);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 3 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= std_logic_to_vector(op_mem_20_24_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_7f6b7da686 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_7f6b7da686;


architecture behavior of mux_7f6b7da686 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => "00000000");
  signal pipe_16_22_front_din: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_back: std_logic_vector((8 - 1) downto 0);
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  pipe_16_22_back <= pipe_16_22(0);
  proc_pipe_16_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (pipe_16_22_push_front_pop_back_en = '1')) then
        pipe_16_22(0) <= pipe_16_22_front_din;
      end if;
    end if;
  end process proc_pipe_16_22;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= pipe_16_22_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_b0bd9ccd8b is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    s : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b0bd9ccd8b;


architecture behavior of addsub_b0bd9ccd8b is
  signal a_17_32: unsigned((2 - 1) downto 0);
  signal b_17_35: unsigned((2 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((2 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00");
  signal op_mem_91_20_front_din: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((4 - 1) downto 0);
  signal cast_71_22: signed((4 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((4 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((2 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 4, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 4, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 2, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(op_mem_91_20_back);
end behavior;


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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xldpram_testing is
  generic (
    core_name0: string := "";
    c_width_a: integer := 13;
    c_address_width_a: integer := 4;
    c_width_b: integer := 13;
    c_address_width_b: integer := 4;
    c_has_sinita: integer := 0;
    c_has_sinitb: integer := 0;
    latency: integer := 1
  );
  port (
    dina: in std_logic_vector(c_width_a - 1 downto 0);
    addra: in std_logic_vector(c_address_width_a - 1 downto 0);
    wea: in std_logic_vector(0 downto 0);
    a_ce: in std_logic;
    a_clk: in std_logic;
    rsta: in std_logic_vector(0 downto 0) := (others => '0');
    ena: in std_logic_vector(0 downto 0) := (others => '1');
    douta: out std_logic_vector(c_width_a - 1 downto 0);
    dinb: in std_logic_vector(c_width_b - 1 downto 0);
    addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
    web: in std_logic_vector(0 downto 0);
    b_ce: in std_logic;
    b_clk: in std_logic;
    rstb: in std_logic_vector(0 downto 0) := (others => '0');
    enb: in std_logic_vector(0 downto 0) := (others => '1');
    doutb: out std_logic_vector(c_width_b - 1 downto 0)
  );
end xldpram_testing;
architecture behavior of xldpram_testing is
  component synth_reg
    generic (
      width: integer;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;

  signal core_addra: std_logic_vector(c_address_width_a - 1 downto 0);
  signal core_addrb: std_logic_vector(c_address_width_b - 1 downto 0);
  signal core_dina, core_douta, dly_douta:
    std_logic_vector(c_width_a - 1 downto 0);
  signal core_dinb, core_doutb, dly_doutb:
    std_logic_vector(c_width_b - 1 downto 0);
  signal core_wea, core_web: std_logic;
  signal core_a_ce, core_b_ce: std_logic;
  signal sinita, sinitb: std_logic;

  component bmg_72_80ec4706477d97c1
    port (
        addra: in std_logic_vector(c_address_width_a - 1 downto 0);
      addrb: in std_logic_vector(c_address_width_b - 1 downto 0);
      dina: in std_logic_vector(c_width_a - 1 downto 0);
      dinb: in std_logic_vector(c_width_b - 1 downto 0);
      clka: in std_logic;
      clkb: in std_logic;
      wea: in std_logic_vector(0 downto 0);
      web: in std_logic_vector(0 downto 0);
      ena: in std_logic;
      enb: in std_logic;
      douta: out std_logic_vector(c_width_a - 1 downto 0);
      doutb: out std_logic_vector(c_width_b - 1 downto 0)
     );
  end component;

  attribute syn_black_box of bmg_72_80ec4706477d97c1:
    component is true;
  attribute fpga_dont_touch of bmg_72_80ec4706477d97c1:
    component is "true";
  attribute box_type of bmg_72_80ec4706477d97c1:
    component  is "black_box";
begin
  core_addra <= addra;
  core_dina <= dina;
  douta <= dly_douta;
  core_wea <= wea(0);
  core_a_ce <= a_ce and ena(0);
  sinita <= rsta(0) and a_ce;

  core_addrb <= addrb;
  core_dinb <= dinb;
  doutb <= dly_doutb;
  core_web <= web(0);
  core_b_ce <= b_ce and enb(0);
  sinitb <= rstb(0) and b_ce;
  comp0: if ((core_name0 = "bmg_72_80ec4706477d97c1")) generate
    core_instance0: bmg_72_80ec4706477d97c1
      port map (
          addra => core_addra,
        clka => a_clk,
        addrb => core_addrb,
        clkb => b_clk,
        dina => core_dina,
        wea(0) => core_wea,
        dinb => core_dinb,
        web(0) => core_web,
        ena => core_a_ce,
        enb => core_b_ce,
        douta => core_douta,
        doutb => core_doutb
      );
  end generate;
  latency_test: if (latency > 2) generate
    regA: synth_reg
      generic map (
        width => c_width_a,
        latency => latency - 2
      )
      port map (
        i => core_douta,
        ce => core_a_ce,
        clr => '0',
        clk => a_clk,
        o => dly_douta
      );
    regB: synth_reg
      generic map (
        width => c_width_b,
        latency => latency - 2
      )
      port map (
        i => core_doutb,
        ce => core_b_ce,
        clr => '0',
        clk => b_clk,
        o => dly_doutb
      );
  end generate;
  latency1: if (latency <= 2) generate
    dly_douta <= core_douta;
    dly_doutb <= core_doutb;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_2986dea758 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_2986dea758;


architecture behavior of counter_2986dea758 is
  signal count_reg_20_23: unsigned((2 - 1) downto 0) := "00";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("01");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_32bd75a38d is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((3 - 1) downto 0);
    s : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_32bd75a38d;


architecture behavior of addsub_32bd75a38d is
  signal a_17_32: unsigned((2 - 1) downto 0);
  signal b_17_35: unsigned((3 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((2 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00");
  signal op_mem_91_20_front_din: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((5 - 1) downto 0);
  signal cast_71_22: signed((5 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((5 - 1) downto 0);
  signal cast_internal_s_83_3_convert: unsigned((2 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 5, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 5, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2u_cast(internal_s_71_5_addsub, 0, 2, 0);
  op_mem_91_20_front_din <= cast_internal_s_83_3_convert;
  op_mem_91_20_push_front_pop_back_en <= '1';
  cout_mem_92_22_front_din <= std_logic_vector_to_unsigned("0");
  cout_mem_92_22_push_front_pop_back_en <= '1';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(op_mem_91_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_fac28d1ec7 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_fac28d1ec7;


architecture behavior of constant_fac28d1ec7 is
begin
  op <= "1110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_98c496058e is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_98c496058e;


architecture behavior of constant_98c496058e is
begin
  op <= "0101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b9bbeeed98 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b9bbeeed98;


architecture behavior of constant_b9bbeeed98 is
begin
  op <= "0100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_8038205d89 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_8038205d89;


architecture behavior of constant_8038205d89 is
begin
  op <= "0011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4149ed202d is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4149ed202d;


architecture behavior of constant_4149ed202d is
begin
  op <= "0010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_67ad97ca70 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_67ad97ca70;


architecture behavior of constant_67ad97ca70 is
begin
  op <= "0001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4c449dd556 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4c449dd556;


architecture behavior of constant_4c449dd556 is
begin
  op <= "0000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3af61a22d9 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3af61a22d9;


architecture behavior of constant_3af61a22d9 is
begin
  op <= "1101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c3074fb6dc is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c3074fb6dc;


architecture behavior of constant_c3074fb6dc is
begin
  op <= "1100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c0ce4ae10c is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c0ce4ae10c;


architecture behavior of constant_c0ce4ae10c is
begin
  op <= "1011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_5c1626e05e is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_5c1626e05e;


architecture behavior of constant_5c1626e05e is
begin
  op <= "1010";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a629aefb53 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a629aefb53;


architecture behavior of constant_a629aefb53 is
begin
  op <= "1001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_145086465d is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_145086465d;


architecture behavior of constant_145086465d is
begin
  op <= "1000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a3d619979c is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a3d619979c;


architecture behavior of constant_a3d619979c is
begin
  op <= "0111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_bfd5ba0f50 is
  port (
    op : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_bfd5ba0f50;


architecture behavior of constant_bfd5ba0f50 is
begin
  op <= "0110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_297b184c8e is
  port (
    a : in std_logic_vector((4 - 1) downto 0);
    b : in std_logic_vector((4 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_297b184c8e;


architecture behavior of relational_297b184c8e is
  signal a_1_31: unsigned((4 - 1) downto 0);
  signal b_1_34: unsigned((4 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_ffd731c185 is
  port (
    d : in std_logic_vector((4 - 1) downto 0);
    q : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_ffd731c185;


architecture behavior of delay_ffd731c185 is
  signal d_1_22: std_logic_vector((4 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (3 - 1)) of std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "0000",
    "0000",
    "0000");
  signal op_mem_20_24_front_din: std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((4 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(2);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          op_mem_20_24(i) <= op_mem_20_24(i-1);
        end loop;
        op_mem_20_24(0) <= op_mem_20_24_front_din;
      end if;
    end if;
  end process proc_op_mem_20_24;
  op_mem_20_24_front_din <= d_1_22;
  op_mem_20_24_push_front_pop_back_en <= '1';
  q <= op_mem_20_24_back;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_64a371be82 is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_64a371be82;


architecture behavior of counter_64a371be82 is
  signal rst_1_40: boolean;
  signal en_1_45: boolean;
  signal count_reg_20_23: unsigned((13 - 1) downto 0) := "0000000000000";
  signal count_reg_20_23_rst: std_logic;
  signal count_reg_20_23_en: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((14 - 1) downto 0);
  signal count_reg_join_44_1_en: std_logic;
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  en_1_45 <= ((en) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "0000000000000";
      elsif ((ce = '1') and (count_reg_20_23_en = '1')) then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("0000000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23, en_1_45)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    elsif en_1_45 then
      count_reg_join_44_1_rst <= '0';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if en_1_45 then
      count_reg_join_44_1_en <= '1';
    else 
      count_reg_join_44_1_en <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    elsif en_1_45 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  count_reg_20_23_en <= count_reg_join_44_1_en;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_6a3d3dd4e5 is
  port (
    ip : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_6a3d3dd4e5;


architecture behavior of inverter_6a3d3dd4e5 is
  signal ip_1_26: unsigned((32 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((32 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "00000000000000000000000000000000");
  signal op_mem_22_20_front_din: unsigned((32 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((32 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((32 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_60efaf0d96 is
  port (
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_60efaf0d96;


architecture behavior of logical_60efaf0d96 is
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal bit_2_26: std_logic_vector((32 - 1) downto 0);
  signal fully_2_1_bitnot: std_logic_vector((32 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  bit_2_26 <= d0_1_24 or d1_1_27;
  fully_2_1_bitnot <= not bit_2_26;
  y <= fully_2_1_bitnot;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_25c920466b is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_25c920466b;


architecture behavior of counter_25c920466b is
  signal rst_1_40: boolean;
  signal count_reg_20_23: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal count_reg_20_23_rst: std_logic;
  signal bool_44_4: boolean;
  signal rst_limit_join_44_1: boolean;
  signal count_reg_join_44_1: unsigned((33 - 1) downto 0);
  signal count_reg_join_44_1_rst: std_logic;
begin
  rst_1_40 <= ((rst) = "1");
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (count_reg_20_23_rst = '1')) then
        count_reg_20_23 <= "00000000000000000000000000000000";
      elsif (ce = '1') then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("00000000000000000000000000000001");
      end if;
    end if;
  end process proc_count_reg_20_23;
  bool_44_4 <= rst_1_40 or false;
  proc_if_44_1: process (bool_44_4, count_reg_20_23)
  is
  begin
    if bool_44_4 then
      count_reg_join_44_1_rst <= '1';
    else 
      count_reg_join_44_1_rst <= '0';
    end if;
    if bool_44_4 then
      rst_limit_join_44_1 <= false;
    else 
      rst_limit_join_44_1 <= false;
    end if;
  end process proc_if_44_1;
  count_reg_20_23_rst <= count_reg_join_44_1_rst;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_45031cc577 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((32 - 1) downto 0);
    d1 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((33 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_45031cc577;


architecture behavior of mux_45031cc577 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((32 - 1) downto 0);
  signal d1_1_27: std_logic_vector((32 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((33 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 33, 0, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 0, 33, 0, xlUnsigned);
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_fc0914149b is
  port (
    a : in std_logic_vector((33 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_fc0914149b;


architecture behavior of relational_fc0914149b is
  signal a_1_31: signed((33 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (1 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    0 => false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal cast_12_17: signed((33 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  op_mem_32_22_back <= op_mem_32_22(0);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  cast_12_17 <= u2s_cast(b_1_34, 0, 33, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c74e57c994 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c74e57c994;


architecture behavior of constant_c74e57c994 is
begin
  op <= "00000000000000000000000011111110";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_8108dc1cfd is
  port (
    in0 : in std_logic_vector((2 - 1) downto 0);
    in1 : in std_logic_vector((30 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_8108dc1cfd;


architecture behavior of concat_8108dc1cfd is
  signal in0_1_23: unsigned((2 - 1) downto 0);
  signal in1_1_27: unsigned((30 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_3f7e3674f6 is
  port (
    input_port : in std_logic_vector((32 - 1) downto 0);
    output_port : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_3f7e3674f6;


architecture behavior of reinterpret_3f7e3674f6 is
  signal input_port_1_40: signed((32 - 1) downto 0);
  signal output_port_5_5_force: unsigned((32 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_signed(input_port);
  output_port_5_5_force <= signed_to_unsigned(input_port_1_40);
  output_port <= unsigned_to_std_logic_vector(output_port_5_5_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/1narrow/calc_add"

entity calc_add_entity_5a5958d771 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(9 downto 0); 
    out_x0: out std_logic_vector(9 downto 0)
  );
end calc_add_entity_5a5958d771;

architecture structural of calc_add_entity_5a5958d771 is
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

-- Generated from Simulink block "testing/1narrow/munge_in"

entity munge_in_entity_e13a54a9ec is
  port (
    din: in std_logic_vector(31 downto 0); 
    dout: out std_logic_vector(31 downto 0)
  );
end munge_in_entity_e13a54a9ec;

architecture structural of munge_in_entity_e13a54a9ec is
  signal reinterpret8_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(31 downto 0);

begin
  reinterpret8_output_port_net_x0 <= din;
  dout <= reinterpret_out_output_port_net_x0;

  reinterpret_out: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret8_output_port_net_x0,
      output_port => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/1narrow"

entity x1narrow_entity_5b8a02a399 is
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
end x1narrow_entity_5b8a02a399;

architecture structural of x1narrow_entity_5b8a02a399 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret8_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice2_y_net_x1: std_logic_vector(9 downto 0);

begin
  slice2_y_net_x1 <= addr;
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  reinterpret8_output_port_net_x1 <= data_in;
  delay4_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_5a5958d771: entity work.calc_add_entity_5a5958d771
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
      din(0) => delay4_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_e13a54a9ec: entity work.munge_in_entity_e13a54a9ec
    port map (
      din => reinterpret8_output_port_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/1zone_narrow"

entity x1zone_narrow_entity_1657a5f38b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    rst: in std_logic; 
    sync: in std_logic; 
    dout_x0: out std_logic_vector(41 downto 0); 
    valid_x0: out std_logic
  );
end x1zone_narrow_entity_1657a5f38b;

architecture structural of x1zone_narrow_entity_1657a5f38b is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal convert_dout_net_x0: std_logic_vector(19 downto 0);
  signal delay_q_net_x0: std_logic;
  signal dout: std_logic_vector(41 downto 0);
  signal logical_y_net_x0: std_logic;
  signal rdy: std_logic;
  signal re_gister_q_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal slice1_y_net_x0: std_logic;
  signal valid: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  convert_dout_net_x0 <= din;
  slice1_y_net_x0 <= rst;
  delay_q_net_x0 <= sync;
  dout_x0 <= reinterpret_output_port_net_x0;
  valid_x0 <= logical_y_net_x0;

  fir_compiler_5_0: entity work.xlfir_compiler_404d012e246fd7c3c478300b2767a524
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
      rdy => rdy
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

  re_gister: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d(0) => delay_q_net_x0,
      en(0) => delay_q_net_x0,
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

-- Generated from Simulink block "testing/3zone_narrow"

entity x3zone_narrow_entity_0e4bab562c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    rst: in std_logic; 
    sync: in std_logic; 
    dout_x0: out std_logic_vector(41 downto 0); 
    valid_x0: out std_logic
  );
end x3zone_narrow_entity_0e4bab562c;

architecture structural of x3zone_narrow_entity_0e4bab562c is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal convert_dout_net_x1: std_logic_vector(19 downto 0);
  signal delay_q_net_x1: std_logic;
  signal dout: std_logic_vector(41 downto 0);
  signal logical_y_net_x0: std_logic;
  signal rdy: std_logic;
  signal re_gister_q_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal slice1_y_net_x1: std_logic;
  signal valid: std_logic;

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  convert_dout_net_x1 <= din;
  slice1_y_net_x1 <= rst;
  delay_q_net_x1 <= sync;
  dout_x0 <= reinterpret_output_port_net_x0;
  valid_x0 <= logical_y_net_x0;

  fir_compiler_5_0: entity work.xlfir_compiler_ede421514d01101ba0ac303ab8d705af
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      din => convert_dout_net_x1,
      nd => re_gister_q_net,
      rst => slice1_y_net_x1,
      src_ce => ce_1_sg_x5,
      src_clk => clk_1_sg_x5,
      data_valid => valid,
      dout => dout,
      rdy => rdy
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

  re_gister: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => delay_q_net_x1,
      en(0) => delay_q_net_x1,
      rst(0) => slice1_y_net_x1,
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

-- Generated from Simulink block "testing/4zone_narrow"

entity x4zone_narrow_entity_546d740714 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    rst: in std_logic; 
    sync: in std_logic; 
    dout_x0: out std_logic_vector(41 downto 0); 
    valid_x0: out std_logic
  );
end x4zone_narrow_entity_546d740714;

architecture structural of x4zone_narrow_entity_546d740714 is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal convert_dout_net_x2: std_logic_vector(19 downto 0);
  signal delay_q_net_x2: std_logic;
  signal dout: std_logic_vector(41 downto 0);
  signal logical_y_net_x0: std_logic;
  signal rdy: std_logic;
  signal re_gister_q_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal slice1_y_net_x2: std_logic;
  signal valid: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  convert_dout_net_x2 <= din;
  slice1_y_net_x2 <= rst;
  delay_q_net_x2 <= sync;
  dout_x0 <= reinterpret_output_port_net_x0;
  valid_x0 <= logical_y_net_x0;

  fir_compiler_5_0: entity work.xlfir_compiler_7af4c9db30a2b72459860f2765c257d2
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      din => convert_dout_net_x2,
      nd => re_gister_q_net,
      rst => slice1_y_net_x2,
      src_ce => ce_1_sg_x10,
      src_clk => clk_1_sg_x10,
      data_valid => valid,
      dout => dout,
      rdy => rdy
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

  re_gister: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => delay_q_net_x2,
      en(0) => delay_q_net_x2,
      rst(0) => slice1_y_net_x2,
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

-- Generated from Simulink block "testing/4zone_wide"

entity x4zone_wide_entity_8f6b71c203 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(19 downto 0); 
    rst: in std_logic; 
    sync: in std_logic; 
    dout_x0: out std_logic_vector(41 downto 0); 
    valid_x0: out std_logic
  );
end x4zone_wide_entity_8f6b71c203;

architecture structural of x4zone_wide_entity_8f6b71c203 is
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal convert_dout_net_x3: std_logic_vector(19 downto 0);
  signal delay_q_net_x3: std_logic;
  signal dout: std_logic_vector(41 downto 0);
  signal logical_y_net_x0: std_logic;
  signal rdy: std_logic;
  signal re_gister_q_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal slice1_y_net_x3: std_logic;
  signal valid: std_logic;

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  convert_dout_net_x3 <= din;
  slice1_y_net_x3 <= rst;
  delay_q_net_x3 <= sync;
  dout_x0 <= reinterpret_output_port_net_x0;
  valid_x0 <= logical_y_net_x0;

  fir_compiler_5_0: entity work.xlfir_compiler_ea40e17acbdca2041e07e94cdd414ebc
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      din => convert_dout_net_x3,
      nd => re_gister_q_net,
      rst => slice1_y_net_x3,
      src_ce => ce_1_sg_x11,
      src_clk => clk_1_sg_x11,
      data_valid => valid,
      dout => dout,
      rdy => rdy
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

  re_gister: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      d(0) => delay_q_net_x3,
      en(0) => delay_q_net_x3,
      rst(0) => slice1_y_net_x3,
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

-- Generated from Simulink block "testing/adc0_delay"

entity adc0_delay_entity_cce63f6027 is
  port (
    testing_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end adc0_delay_entity_cce63f6027;

architecture structural of adc0_delay_entity_cce63f6027 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adc0_delay_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adc0_delay_user_data_out_net_x0 <= testing_adc0_delay_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adc0_delay_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap0/add_gen/edge_detect"

entity edge_detect_entity_154f7fef62 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_154f7fef62;

architecture structural of edge_detect_entity_154f7fef62 is
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
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
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
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
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      ip(0) => slice3_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap0/add_gen"

entity add_gen_entity_dfdf868483 is
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
end add_gen_entity_dfdf868483;

architecture structural of add_gen_entity_dfdf868483 is
  signal add_gen_op_net: std_logic_vector(14 downto 0);
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
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
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  delay10_q_net_x0 <= cont;
  delay9_q_net_x0 <= din;
  register_q_net_x0 <= go;
  delay3_q_net_x1 <= init;
  delay16_q_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_e45fdd6bbd8931af",
      op_arith => xlUnsigned,
      op_width => 15
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      d(0) => delay10_q_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      d(0) => delay3_q_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      d => delay9_q_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_154f7fef62: entity work.edge_detect_entity_154f7fef62
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_df05fba441
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
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

-- Generated from Simulink block "testing/adcsnap0/basic_ctrl/dram_munge"

entity dram_munge_entity_8c149b589d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    init: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    we_o: out std_logic
  );
end dram_munge_entity_8c149b589d;

architecture structural of dram_munge_entity_8c149b589d is
  signal cast_dout_net_x0: std_logic_vector(127 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
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
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  dout_count: entity work.counter_caa2b01eef
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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

  input_count: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_541f86689cddfa59",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      en(0) => mux1_y_net_x1,
      rst(0) => edge_op_y_net_x0,
      op => input_count_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
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

-- Generated from Simulink block "testing/adcsnap0/basic_ctrl/edge_detect"

entity edge_detect_entity_1579c06dba is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_1579c06dba;

architecture structural of edge_detect_entity_1579c06dba is
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal inverter_op_net: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  delay1_q_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x1;

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
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
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      clr => '0',
      ip(0) => delay1_q_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap0/basic_ctrl"

entity basic_ctrl_entity_963fe0566a is
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
end basic_ctrl_entity_963fe0566a;

architecture structural of basic_ctrl_entity_963fe0566a is
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal ce_1_sg_x16: std_logic;
  signal clk_1_sg_x16: std_logic;
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
  ce_1_sg_x16 <= ce_1;
  clk_1_sg_x16 <= clk_1;
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
      d(0) => valid_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  dram_munge_8c149b589d: entity work.dram_munge_entity_8c149b589d
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
      din => cast_dout_net_x1,
      init => edge_op_y_net_x2,
      we => mux1_y_net_x1,
      dout => data_choice_y_net_x1,
      we_o => we_choice_y_net_x1
    );

  edge_detect_1579c06dba: entity work.edge_detect_entity_1579c06dba
    port map (
      ce_1 => ce_1_sg_x16,
      clk_1 => clk_1_sg_x16,
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
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
      ce => ce_1_sg_x16,
      clk => clk_1_sg_x16,
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

-- Generated from Simulink block "testing/adcsnap0/bram/munge_in/join"

entity join_entity_0ac0f519b1 is
  port (
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    in3: in std_logic_vector(31 downto 0); 
    in4: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(127 downto 0)
  );
end join_entity_0ac0f519b1;

architecture structural of join_entity_0ac0f519b1 is
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

-- Generated from Simulink block "testing/adcsnap0/bram/munge_in/split"

entity split_entity_d5b70d9de2 is
  port (
    bus_in: in std_logic_vector(127 downto 0); 
    lsb_out1: out std_logic_vector(31 downto 0); 
    msb_out4: out std_logic_vector(31 downto 0); 
    out2: out std_logic_vector(31 downto 0); 
    out3: out std_logic_vector(31 downto 0)
  );
end split_entity_d5b70d9de2;

architecture structural of split_entity_d5b70d9de2 is
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

-- Generated from Simulink block "testing/adcsnap0/bram/munge_in"

entity munge_in_entity_c458037660 is
  port (
    din: in std_logic_vector(127 downto 0); 
    dout: out std_logic_vector(127 downto 0)
  );
end munge_in_entity_c458037660;

architecture structural of munge_in_entity_c458037660 is
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

  join_0ac0f519b1: entity work.join_entity_0ac0f519b1
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

  split_d5b70d9de2: entity work.split_entity_d5b70d9de2
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

-- Generated from Simulink block "testing/adcsnap0/bram"

entity bram_entity_6dcc4e1011 is
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
end bram_entity_6dcc4e1011;

architecture structural of bram_entity_6dcc4e1011 is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal ce_1_sg_x18: std_logic;
  signal clk_1_sg_x18: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal mux_y_net_x0: std_logic_vector(9 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal we_del_q_net_x0: std_logic;

begin
  add_del_q_net_x1 <= addr;
  ce_1_sg_x18 <= ce_1;
  clk_1_sg_x18 <= clk_1;
  dat_del_q_net_x1 <= data_in;
  we_del_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_bcf98ec316: entity work.calc_add_entity_5a5958d771
    port map (
      ce_1 => ce_1_sg_x18,
      clk_1 => clk_1_sg_x18,
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
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
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
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
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
      ce => ce_1_sg_x18,
      clk => clk_1_sg_x18,
      clr => '0',
      din(0) => we_del_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_c458037660: entity work.munge_in_entity_c458037660
    port map (
      din => dat_del_q_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap0/ctrl"

entity ctrl_entity_cb9c11bb82 is
  port (
    testing_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_cb9c11bb82;

architecture structural of ctrl_entity_cb9c11bb82 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap0_ctrl_user_data_out_net_x0 <= testing_adcsnap0_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap0_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap0/delay"

entity delay_entity_77badfc58b is
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
end delay_entity_77badfc58b;

architecture structural of delay_entity_77badfc58b is
  signal ce_1_sg_x19: std_logic;
  signal clk_1_sg_x19: std_logic;
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
  ce_1_sg_x19 <= ce_1;
  clk_1_sg_x19 <= clk_1;
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

  counter: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_878d64cddecff8f4",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => delay4_q_net,
      op => counter_op_net
    );

  delay10: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay10_q_net_x1
    );

  delay16: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => we_choice_y_net_x2,
      q(0) => delay16_q_net_x1
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => delay5_q_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => delay2_q_net,
      q(0) => delay3_q_net_x2
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => edge_op_y_net_x3,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => delay8_q_net,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => counter_op_net,
      q => delay6_q_net
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => reint1_output_port_net_x0,
      q => delay7_q_net
    );

  delay8: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay8_q_net
    );

  delay9: entity work.delay_6fcf35ba77
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      d => data_choice_y_net_x2,
      q => delay9_q_net_x1
    );

  logical5: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
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
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      d(0) => constant_op_net,
      en(0) => relational_op_net,
      rst(0) => delay2_q_net,
      q(0) => register_q_net_x1
    );

  relational: entity work.relational_34fc311f5b
    port map (
      a => delay6_q_net,
      b => delay7_q_net,
      ce => ce_1_sg_x19,
      clk => clk_1_sg_x19,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap0/status"

entity status_entity_d082ee619b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end status_entity_d082ee619b;

architecture structural of status_entity_d082ee619b is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
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
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
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

-- Generated from Simulink block "testing/adcsnap0/trig_offset"

entity trig_offset_entity_3cf53eb2aa is
  port (
    testing_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end trig_offset_entity_3cf53eb2aa;

architecture structural of trig_offset_entity_3cf53eb2aa is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_trig_offset_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap0_trig_offset_user_data_out_net_x0 <= testing_adcsnap0_trig_offset_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap0_trig_offset_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap0"

entity adcsnap0_entity_c881771cde is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    testing_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(9 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end adcsnap0_entity_c881771cde;

architecture structural of adcsnap0_entity_c881771cde is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
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
  signal testing_adcsnap0_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_trig_offset_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  register2_q_net_x0 <= din;
  testing_adcsnap0_ctrl_user_data_out_net_x1 <= testing_adcsnap0_ctrl_user_data_out;
  testing_adcsnap0_trig_offset_user_data_out_net_x1 <= testing_adcsnap0_trig_offset_user_data_out;
  slice_y_net_x1 <= trig;
  constant8_op_net_x1 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_dfdf868483: entity work.add_gen_entity_dfdf868483
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
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

  basic_ctrl_963fe0566a: entity work.basic_ctrl_entity_963fe0566a
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => slice_y_net_x1,
      we => constant8_op_net_x1,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      we_o => we_choice_y_net_x2
    );

  bram_6dcc4e1011: entity work.bram_entity_6dcc4e1011
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
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
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_cb9c11bb82: entity work.ctrl_entity_cb9c11bb82
    port map (
      testing_adcsnap0_ctrl_user_data_out => testing_adcsnap0_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  delay_77badfc58b: entity work.delay_entity_77badfc58b
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
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

  status_d082ee619b: entity work.status_entity_d082ee619b
    port map (
      ce_1 => ce_1_sg_x21,
      clk_1 => clk_1_sg_x21,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  trig_offset_3cf53eb2aa: entity work.trig_offset_entity_3cf53eb2aa
    port map (
      testing_adcsnap0_trig_offset_user_data_out => testing_adcsnap0_trig_offset_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap1/add_gen"

entity add_gen_entity_86610d39be is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cont: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    we: in std_logic; 
    add: out std_logic_vector(9 downto 0); 
    dout: out std_logic_vector(31 downto 0); 
    status: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end add_gen_entity_86610d39be;

architecture structural of add_gen_entity_86610d39be is
  signal add_gen_op_net: std_logic_vector(12 downto 0);
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(18 downto 0);
  signal delay10_q_net_x0: std_logic;
  signal delay16_q_net_x0: std_logic;
  signal delay1_q_net: std_logic_vector(11 downto 0);
  signal delay3_q_net: std_logic;
  signal delay3_q_net_x1: std_logic;
  signal delay4_q_net: std_logic;
  signal delay6_q_net_x0: std_logic_vector(31 downto 0);
  signal delay9_q_net_x0: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal register5_q_net: std_logic;
  signal register_q_net_x0: std_logic;
  signal shift_op_net: std_logic_vector(18 downto 0);
  signal slice1_y_net: std_logic_vector(11 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  delay10_q_net_x0 <= cont;
  delay9_q_net_x0 <= din;
  register_q_net_x0 <= go;
  delay3_q_net_x1 <= init;
  delay16_q_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_866619918c8abcee",
      op_arith => xlUnsigned,
      op_width => 13
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      en(0) => logical6_y_net_x0,
      rst(0) => delay4_q_net,
      op => add_gen_op_net
    );

  concat: entity work.concat_1d665a7331
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
      dout_width => 19,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 12
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d(0) => delay10_q_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d(0) => delay3_q_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      d => delay9_q_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_ab7e2828aa: entity work.edge_detect_entity_154f7fef62
    port map (
      ce_1 => ce_1_sg_x23,
      clk_1 => clk_1_sg_x23,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
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
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_892c2104f7
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      ip => convert_dout_net,
      op => shift_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 11,
      x_width => 13,
      y_width => 12
    )
    port map (
      x => add_gen_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 11,
      x_width => 13,
      y_width => 10
    )
    port map (
      x => add_gen_op_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 12,
      x_width => 13,
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

-- Generated from Simulink block "testing/adcsnap1/basic_ctrl/dram_munge"

entity dram_munge_entity_fd9a330dd7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    init: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end dram_munge_entity_fd9a330dd7;

architecture structural of dram_munge_entity_fd9a330dd7 is
  signal cast_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x24: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal con0_op_net: std_logic_vector(1 downto 0);
  signal con1_op_net: std_logic_vector(1 downto 0);
  signal con2_op_net: std_logic_vector(1 downto 0);
  signal con3_op_net: std_logic_vector(1 downto 0);
  signal concat1_y_net: std_logic_vector(79 downto 0);
  signal concat_y_net: std_logic_vector(79 downto 0);
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal data_choice_y_net_x0: std_logic_vector(31 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal dout_count_op_net: std_logic;
  signal dram_op_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal input_count_op_net: std_logic_vector(1 downto 0);
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x0: std_logic_vector(79 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal register1_q_net: std_logic_vector(31 downto 0);
  signal register2_q_net: std_logic_vector(31 downto 0);
  signal register3_q_net: std_logic_vector(31 downto 0);
  signal register_q_net: std_logic_vector(31 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x0: std_logic;

begin
  ce_1_sg_x24 <= ce_1;
  clk_1_sg_x24 <= clk_1;
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

  concat: entity work.concat_762608f33d
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

  concat1: entity work.concat_762608f33d
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

  data_choice: entity work.mux_b4a3823c60
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
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
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
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  dout_count: entity work.counter_caa2b01eef
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
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

  input_count: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_541f86689cddfa59",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      en(0) => mux1_y_net_x1,
      rst(0) => edge_op_y_net_x0,
      op => input_count_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
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

  mux1: entity work.mux_a575c74b27
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      d0 => concat_y_net,
      d1 => concat1_y_net,
      sel(0) => dout_count_op_net,
      y => mux1_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d => cast_dout_net_x0,
      en(0) => relational1_op_net,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d => cast_dout_net_x0,
      en(0) => relational2_op_net,
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d => cast_dout_net_x0,
      en(0) => relational3_op_net,
      rst => "0",
      q => register3_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
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

-- Generated from Simulink block "testing/adcsnap1/basic_ctrl"

entity basic_ctrl_entity_44814eb6e8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    ctrl: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    go: out std_logic; 
    init: out std_logic; 
    we_o: out std_logic
  );
end basic_ctrl_entity_44814eb6e8;

architecture structural of basic_ctrl_entity_44814eb6e8 is
  signal cast_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x26: std_logic;
  signal clk_1_sg_x26: std_logic;
  signal constant1_op_net_x0: std_logic;
  signal constant1_op_net_x1: std_logic;
  signal constant2_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal data_choice_y_net_x1: std_logic_vector(31 downto 0);
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
  signal slice_y_net_x2: std_logic;
  signal trig_src_y_net: std_logic;
  signal valid_src_y_net: std_logic;
  signal we_choice_y_net_x1: std_logic;

begin
  ce_1_sg_x26 <= ce_1;
  clk_1_sg_x26 <= clk_1;
  reint1_output_port_net_x0 <= ctrl;
  cast_dout_net_x1 <= din;
  slice_y_net_x2 <= trig;
  constant1_op_net_x1 <= we;
  dout <= data_choice_y_net_x1;
  go <= register6_q_net_x0;
  init <= edge_op_y_net_x2;
  we_o <= we_choice_y_net_x1;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x0
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
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
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
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
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
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
      d(0) => valid_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  dram_munge_fd9a330dd7: entity work.dram_munge_entity_fd9a330dd7
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
      din => cast_dout_net_x1,
      init => edge_op_y_net_x2,
      we => mux1_y_net_x1,
      dout => data_choice_y_net_x1,
      we_o => we_choice_y_net_x1
    );

  edge_detect_758b283fa4: entity work.edge_detect_entity_1579c06dba
    port map (
      ce_1 => ce_1_sg_x26,
      clk_1 => clk_1_sg_x26,
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
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
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
      d0(0) => constant1_op_net_x1,
      d1(0) => constant2_op_net,
      sel(0) => delay3_q_net,
      y(0) => mux1_y_net_x1
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => slice_y_net_x2,
      d1(0) => constant1_op_net_x0,
      sel(0) => delay2_q_net,
      y(0) => mux2_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
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
      ce => ce_1_sg_x26,
      clk => clk_1_sg_x26,
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

-- Generated from Simulink block "testing/adcsnap1/ctrl"

entity ctrl_entity_458f8227f3 is
  port (
    testing_adcsnap1_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_458f8227f3;

architecture structural of ctrl_entity_458f8227f3 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap1_ctrl_user_data_out_net_x0 <= testing_adcsnap1_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap1_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap1/delay"

entity delay_entity_aff3650f95 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(31 downto 0); 
    din: in std_logic_vector(31 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    stopi: in std_logic; 
    we: in std_logic; 
    del_go: out std_logic; 
    del_init: out std_logic; 
    dout: out std_logic_vector(31 downto 0); 
    stop: out std_logic; 
    we_o: out std_logic
  );
end delay_entity_aff3650f95;

architecture structural of delay_entity_aff3650f95 is
  signal ce_1_sg_x29: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal constant_op_net: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(31 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay4_q_net: std_logic;
  signal delay5_q_net: std_logic;
  signal delay6_q_net: std_logic_vector(31 downto 0);
  signal delay7_q_net: std_logic_vector(31 downto 0);
  signal delay8_q_net: std_logic;
  signal delay9_q_net_x1: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical5_y_net: std_logic;
  signal never_op_net_x0: std_logic;
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal relational_op_net: std_logic;
  signal we_choice_y_net_x2: std_logic;

begin
  ce_1_sg_x29 <= ce_1;
  clk_1_sg_x29 <= clk_1;
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

  counter: entity work.xlcounter_free_testing
    generic map (
      core_name0 => "cntr_11_0_be90175e3110ea82",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      en(0) => logical5_y_net,
      rst(0) => delay4_q_net,
      op => counter_op_net
    );

  delay10: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay10_q_net_x1
    );

  delay16: entity work.delay_a14e3dd1bd
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => we_choice_y_net_x2,
      q(0) => delay16_q_net_x1
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => delay5_q_net,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => delay2_q_net,
      q(0) => delay3_q_net_x2
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => edge_op_y_net_x3,
      q(0) => delay4_q_net
    );

  delay5: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => delay8_q_net,
      q(0) => delay5_q_net
    );

  delay6: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d => counter_op_net,
      q => delay6_q_net
    );

  delay7: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d => reint1_output_port_net_x0,
      q => delay7_q_net
    );

  delay8: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay8_q_net
    );

  delay9: entity work.delay_e31c8dd846
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      d => data_choice_y_net_x2,
      q => delay9_q_net_x1
    );

  logical5: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
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
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      d(0) => constant_op_net,
      en(0) => relational_op_net,
      rst(0) => delay2_q_net,
      q(0) => register_q_net_x1
    );

  relational: entity work.relational_34fc311f5b
    port map (
      a => delay6_q_net,
      b => delay7_q_net,
      ce => ce_1_sg_x29,
      clk => clk_1_sg_x29,
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap1/trig_offset"

entity trig_offset_entity_edff335655 is
  port (
    testing_adcsnap1_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end trig_offset_entity_edff335655;

architecture structural of trig_offset_entity_edff335655 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_trig_offset_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap1_trig_offset_user_data_out_net_x0 <= testing_adcsnap1_trig_offset_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap1_trig_offset_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap1"

entity adcsnap1_entity_0d1e223887 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    testing_adcsnap1_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap1_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(9 downto 0); 
    bram_x0: out std_logic_vector(31 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end adcsnap1_entity_0d1e223887;

architecture structural of adcsnap1_entity_0d1e223887 is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal cast_dout_net_x1: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x31: std_logic;
  signal clk_1_sg_x31: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal constant1_op_net_x2: std_logic;
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(31 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(31 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay6_q_net_x0: std_logic_vector(31 downto 0);
  signal delay9_q_net_x1: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register2_q_net_x0: std_logic_vector(31 downto 0);
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);
  signal slice_y_net_x3: std_logic;
  signal testing_adcsnap1_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_trig_offset_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x31 <= ce_1;
  clk_1_sg_x31 <= clk_1;
  register2_q_net_x0 <= din;
  testing_adcsnap1_ctrl_user_data_out_net_x1 <= testing_adcsnap1_ctrl_user_data_out;
  testing_adcsnap1_trig_offset_user_data_out_net_x1 <= testing_adcsnap1_trig_offset_user_data_out;
  slice_y_net_x3 <= trig;
  constant1_op_net_x2 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_86610d39be: entity work.add_gen_entity_86610d39be
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
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

  basic_ctrl_44814eb6e8: entity work.basic_ctrl_entity_44814eb6e8
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => slice_y_net_x3,
      we => constant1_op_net_x2,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      we_o => we_choice_y_net_x2
    );

  bram_63de8372b5: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
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
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_458f8227f3: entity work.ctrl_entity_458f8227f3
    port map (
      testing_adcsnap1_ctrl_user_data_out => testing_adcsnap1_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  delay_aff3650f95: entity work.delay_entity_aff3650f95
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
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

  ri: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register2_q_net_x0,
      output_port => ri_output_port_net
    );

  status_42c1da6c4f: entity work.status_entity_d082ee619b
    port map (
      ce_1 => ce_1_sg_x31,
      clk_1 => clk_1_sg_x31,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  trig_offset_edff335655: entity work.trig_offset_entity_edff335655
    port map (
      testing_adcsnap1_trig_offset_user_data_out => testing_adcsnap1_trig_offset_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/adcsnap2/ctrl"

entity ctrl_entity_9556f05424 is
  port (
    testing_adcsnap2_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_9556f05424;

architecture structural of ctrl_entity_9556f05424 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap2_ctrl_user_data_out_net_x0 <= testing_adcsnap2_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap2_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap2/trig_offset"

entity trig_offset_entity_243787a426 is
  port (
    testing_adcsnap2_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end trig_offset_entity_243787a426;

architecture structural of trig_offset_entity_243787a426 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_trig_offset_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_adcsnap2_trig_offset_user_data_out_net_x0 <= testing_adcsnap2_trig_offset_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_adcsnap2_trig_offset_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/adcsnap2"

entity adcsnap2_entity_b9f48e9c47 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(31 downto 0); 
    testing_adcsnap2_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap2_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(9 downto 0); 
    bram_x0: out std_logic_vector(31 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end adcsnap2_entity_b9f48e9c47;

architecture structural of adcsnap2_entity_b9f48e9c47 is
  signal add_del_q_net_x1: std_logic_vector(9 downto 0);
  signal cast_dout_net_x1: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x41: std_logic;
  signal clk_1_sg_x41: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(9 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(31 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(31 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(31 downto 0);
  signal delay10_q_net_x1: std_logic;
  signal delay16_q_net_x1: std_logic;
  signal delay1_q_net_x3: std_logic;
  signal delay3_q_net_x2: std_logic;
  signal delay6_q_net_x0: std_logic_vector(31 downto 0);
  signal delay9_q_net_x1: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x3: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register6_q_net_x1: std_logic;
  signal register_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret5_output_port_net_x2: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(9 downto 0);
  signal slice_y_net_x5: std_logic;
  signal testing_adcsnap2_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_trig_offset_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x41 <= ce_1;
  clk_1_sg_x41 <= clk_1;
  reinterpret5_output_port_net_x2 <= din;
  testing_adcsnap2_ctrl_user_data_out_net_x1 <= testing_adcsnap2_ctrl_user_data_out;
  testing_adcsnap2_trig_offset_user_data_out_net_x1 <= testing_adcsnap2_trig_offset_user_data_out;
  slice_y_net_x5 <= trig;
  delay1_q_net_x3 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_cf4f99539f
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_faa771598d: entity work.add_gen_entity_86610d39be
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
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

  basic_ctrl_6c1c95de85: entity work.basic_ctrl_entity_44814eb6e8
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => slice_y_net_x5,
      we => delay1_q_net_x3,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x3,
      we_o => we_choice_y_net_x2
    );

  bram_bd03644de4: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
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
      din_width => 32,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_9556f05424: entity work.ctrl_entity_9556f05424
    port map (
      testing_adcsnap2_ctrl_user_data_out => testing_adcsnap2_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  delay_16e4c1c1f2: entity work.delay_entity_aff3650f95
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
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

  ri: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret5_output_port_net_x2,
      output_port => ri_output_port_net
    );

  status_0f4fac4248: entity work.status_entity_d082ee619b
    port map (
      ce_1 => ce_1_sg_x41,
      clk_1 => clk_1_sg_x41,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  trig_offset_243787a426: entity work.trig_offset_entity_243787a426
    port map (
      testing_adcsnap2_trig_offset_user_data_out => testing_adcsnap2_trig_offset_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x41,
      clk => clk_1_sg_x41,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/bus_create"

entity bus_create_entity_0d7caf7613 is
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
end bus_create_entity_0d7caf7613;

architecture structural of bus_create_entity_0d7caf7613 is
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

-- Generated from Simulink block "testing/c_to_ri"

entity c_to_ri_entity_208746d8c1 is
  port (
    c: in std_logic_vector(59 downto 0); 
    re: out std_logic_vector(29 downto 0)
  );
end c_to_ri_entity_208746d8c1;

architecture structural of c_to_ri_entity_208746d8c1 is
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

-- Generated from Simulink block "testing/cnt_rst"

entity cnt_rst_entity_31bb4d2a53 is
  port (
    testing_cnt_rst_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic
  );
end cnt_rst_entity_31bb4d2a53;

architecture structural of cnt_rst_entity_31bb4d2a53 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal slice_reg_y_net_x0: std_logic;
  signal testing_cnt_rst_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_cnt_rst_user_data_out_net_x0 <= testing_cnt_rst_user_data_out;
  in_reg <= slice_reg_y_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_cnt_rst_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/conv_bus0/conv_ob0"

entity conv_ob0_entity_5f14bdd37e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    i: in std_logic_vector(7 downto 0); 
    q: out std_logic_vector(7 downto 0)
  );
end conv_ob0_entity_5f14bdd37e;

architecture structural of conv_ob0_entity_5f14bdd37e is
  signal ce_1_sg_x42: std_logic;
  signal clk_1_sg_x42: std_logic;
  signal concat_y_net: std_logic_vector(7 downto 0);
  signal inverter_op_net: std_logic;
  signal reinterpret_output_port_net_x0: std_logic_vector(7 downto 0);
  signal slice1_y_net: std_logic_vector(6 downto 0);
  signal slice_y_net: std_logic;
  signal testing_asiaa_adc5g0_user_data_i0_net_x0: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x42 <= ce_1;
  clk_1_sg_x42 <= clk_1;
  testing_asiaa_adc5g0_user_data_i0_net_x0 <= i;
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
      ce => ce_1_sg_x42,
      clk => clk_1_sg_x42,
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
      x => testing_asiaa_adc5g0_user_data_i0_net_x0,
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
      x => testing_asiaa_adc5g0_user_data_i0_net_x0,
      y => slice1_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/conv_bus0"

entity conv_bus0_entity_b42f66fa70 is
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
end conv_bus0_entity_b42f66fa70;

architecture structural of conv_bus0_entity_b42f66fa70 is
  signal ce_1_sg_x58: std_logic;
  signal clk_1_sg_x58: std_logic;
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
  signal testing_asiaa_adc5g0_user_data_i0_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i1_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i2_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i3_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i4_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i5_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i6_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i7_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q0_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q1_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q2_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q3_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q4_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q5_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q6_net_x1: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q7_net_x1: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x58 <= ce_1;
  clk_1_sg_x58 <= clk_1;
  testing_asiaa_adc5g0_user_data_i0_net_x1 <= i0;
  testing_asiaa_adc5g0_user_data_i1_net_x1 <= i1;
  testing_asiaa_adc5g0_user_data_q2_net_x1 <= i10;
  testing_asiaa_adc5g0_user_data_q3_net_x1 <= i11;
  testing_asiaa_adc5g0_user_data_q4_net_x1 <= i12;
  testing_asiaa_adc5g0_user_data_q5_net_x1 <= i13;
  testing_asiaa_adc5g0_user_data_q6_net_x1 <= i14;
  testing_asiaa_adc5g0_user_data_q7_net_x1 <= i15;
  testing_asiaa_adc5g0_user_data_i2_net_x1 <= i2;
  testing_asiaa_adc5g0_user_data_i3_net_x1 <= i3;
  testing_asiaa_adc5g0_user_data_i4_net_x1 <= i4;
  testing_asiaa_adc5g0_user_data_i5_net_x1 <= i5;
  testing_asiaa_adc5g0_user_data_i6_net_x1 <= i6;
  testing_asiaa_adc5g0_user_data_i7_net_x1 <= i7;
  testing_asiaa_adc5g0_user_data_q0_net_x1 <= i8;
  testing_asiaa_adc5g0_user_data_q1_net_x1 <= i9;
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

  conv_ob0_5f14bdd37e: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i0_net_x1,
      q => reinterpret_output_port_net_x16
    );

  conv_ob10_2d87452ea3: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q2_net_x1,
      q => reinterpret_output_port_net_x18
    );

  conv_ob11_94eca80945: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q3_net_x1,
      q => reinterpret_output_port_net_x19
    );

  conv_ob12_a124f1d147: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q4_net_x1,
      q => reinterpret_output_port_net_x20
    );

  conv_ob13_2eadbcfb3d: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q5_net_x1,
      q => reinterpret_output_port_net_x21
    );

  conv_ob14_063f44cc54: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q6_net_x1,
      q => reinterpret_output_port_net_x22
    );

  conv_ob15_86ba339b4f: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q7_net_x1,
      q => reinterpret_output_port_net_x23
    );

  conv_ob1_171bacfe09: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i1_net_x1,
      q => reinterpret_output_port_net_x17
    );

  conv_ob2_3ecd19ee8b: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i2_net_x1,
      q => reinterpret_output_port_net_x24
    );

  conv_ob3_c8cc6e06fa: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i3_net_x1,
      q => reinterpret_output_port_net_x25
    );

  conv_ob4_50bf592886: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i4_net_x1,
      q => reinterpret_output_port_net_x26
    );

  conv_ob5_d745158e65: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i5_net_x1,
      q => reinterpret_output_port_net_x27
    );

  conv_ob6_d3a0fcc997: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i6_net_x1,
      q => reinterpret_output_port_net_x28
    );

  conv_ob7_7184715119: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_i7_net_x1,
      q => reinterpret_output_port_net_x29
    );

  conv_ob8_95613e251a: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q0_net_x1,
      q => reinterpret_output_port_net_x30
    );

  conv_ob9_c3a7c3fd28: entity work.conv_ob0_entity_5f14bdd37e
    port map (
      ce_1 => ce_1_sg_x58,
      clk_1 => clk_1_sg_x58,
      i => testing_asiaa_adc5g0_user_data_q1_net_x1,
      q => reinterpret_output_port_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/adder_tree1"

entity adder_tree1_entity_5ca939a699 is
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
end adder_tree1_entity_5ca939a699;

architecture structural of adder_tree1_entity_5ca939a699 is
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
  signal ce_1_sg_x59: std_logic;
  signal clk_1_sg_x59: std_logic;
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
  ce_1_sg_x59 <= ce_1;
  clk_1_sg_x59 <= clk_1;
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr1_s_net
    );

  addr10: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr10_s_net
    );

  addr11: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr11_s_net
    );

  addr12: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr12_s_net
    );

  addr13: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr13_s_net
    );

  addr14: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr14_s_net
    );

  addr15: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr15_s_net_x0
    );

  addr2: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x24,
      b => mult0_p_net_x25,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr2_s_net
    );

  addr3: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x26,
      b => mult0_p_net_x27,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr3_s_net
    );

  addr4: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x28,
      b => mult0_p_net_x29,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr4_s_net
    );

  addr5: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x30,
      b => mult0_p_net_x16,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr5_s_net
    );

  addr6: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x17,
      b => mult0_p_net_x18,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr6_s_net
    );

  addr7: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x19,
      b => mult0_p_net_x20,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr7_s_net
    );

  addr8: entity work.addsub_fb93b41e9c
    port map (
      a => mult0_p_net_x21,
      b => mult0_p_net_x22,
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      s => addr8_s_net
    );

  addr9: entity work.xladdsub_testing
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
      ce => ce_1_sg_x59,
      clk => clk_1_sg_x59,
      clr => '0',
      en => "1",
      s => addr9_s_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap1"

entity fir_tap1_entity_7f8b44731a is
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
end fir_tap1_entity_7f8b44731a;

architecture structural of fir_tap1_entity_7f8b44731a is
  signal ce_1_sg_x61: std_logic;
  signal clk_1_sg_x61: std_logic;
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
  ce_1_sg_x61 <= ce_1;
  clk_1_sg_x61 <= clk_1;
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
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant4_op_net_x0,
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
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
      ce => ce_1_sg_x61,
      clk => clk_1_sg_x61,
      d => constant4_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap10"

entity fir_tap10_entity_5e42ac2cd6 is
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
end fir_tap10_entity_5e42ac2cd6;

architecture structural of fir_tap10_entity_5e42ac2cd6 is
  signal ce_1_sg_x62: std_logic;
  signal clk_1_sg_x62: std_logic;
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
  ce_1_sg_x62 <= ce_1;
  clk_1_sg_x62 <= clk_1;
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
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant15_op_net_x0,
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
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
      ce => ce_1_sg_x62,
      clk => clk_1_sg_x62,
      d => constant15_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap11"

entity fir_tap11_entity_dc4ee3c9af is
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
end fir_tap11_entity_dc4ee3c9af;

architecture structural of fir_tap11_entity_dc4ee3c9af is
  signal ce_1_sg_x63: std_logic;
  signal clk_1_sg_x63: std_logic;
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
  ce_1_sg_x63 <= ce_1;
  clk_1_sg_x63 <= clk_1;
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
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant16_op_net_x0,
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
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
      ce => ce_1_sg_x63,
      clk => clk_1_sg_x63,
      d => constant16_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap12"

entity fir_tap12_entity_b5f8148d42 is
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
end fir_tap12_entity_b5f8148d42;

architecture structural of fir_tap12_entity_b5f8148d42 is
  signal ce_1_sg_x64: std_logic;
  signal clk_1_sg_x64: std_logic;
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
  ce_1_sg_x64 <= ce_1;
  clk_1_sg_x64 <= clk_1;
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
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant17_op_net_x0,
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
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
      ce => ce_1_sg_x64,
      clk => clk_1_sg_x64,
      d => constant17_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap13"

entity fir_tap13_entity_eb4ff69434 is
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
end fir_tap13_entity_eb4ff69434;

architecture structural of fir_tap13_entity_eb4ff69434 is
  signal ce_1_sg_x65: std_logic;
  signal clk_1_sg_x65: std_logic;
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
  ce_1_sg_x65 <= ce_1;
  clk_1_sg_x65 <= clk_1;
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
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant18_op_net_x0,
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
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
      ce => ce_1_sg_x65,
      clk => clk_1_sg_x65,
      d => constant18_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap14"

entity fir_tap14_entity_9520a30170 is
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
end fir_tap14_entity_9520a30170;

architecture structural of fir_tap14_entity_9520a30170 is
  signal ce_1_sg_x66: std_logic;
  signal clk_1_sg_x66: std_logic;
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
  ce_1_sg_x66 <= ce_1;
  clk_1_sg_x66 <= clk_1;
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
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant19_op_net_x0,
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
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
      ce => ce_1_sg_x66,
      clk => clk_1_sg_x66,
      d => constant19_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap15"

entity fir_tap15_entity_4cc1484fc5 is
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
end fir_tap15_entity_4cc1484fc5;

architecture structural of fir_tap15_entity_4cc1484fc5 is
  signal ce_1_sg_x67: std_logic;
  signal clk_1_sg_x67: std_logic;
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
  ce_1_sg_x67 <= ce_1;
  clk_1_sg_x67 <= clk_1;
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
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant20_op_net_x0,
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
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
      ce => ce_1_sg_x67,
      clk => clk_1_sg_x67,
      d => constant20_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap16"

entity fir_tap16_entity_a86adef5ab is
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
end fir_tap16_entity_a86adef5ab;

architecture structural of fir_tap16_entity_a86adef5ab is
  signal ce_1_sg_x68: std_logic;
  signal clk_1_sg_x68: std_logic;
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
  ce_1_sg_x68 <= ce_1;
  clk_1_sg_x68 <= clk_1;
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
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant21_op_net_x0,
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
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
      ce => ce_1_sg_x68,
      clk => clk_1_sg_x68,
      d => constant21_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap2"

entity fir_tap2_entity_2f17a59c2d is
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
end fir_tap2_entity_2f17a59c2d;

architecture structural of fir_tap2_entity_2f17a59c2d is
  signal ce_1_sg_x69: std_logic;
  signal clk_1_sg_x69: std_logic;
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
  ce_1_sg_x69 <= ce_1;
  clk_1_sg_x69 <= clk_1;
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
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant7_op_net_x0,
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
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
      ce => ce_1_sg_x69,
      clk => clk_1_sg_x69,
      d => constant7_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap3"

entity fir_tap3_entity_d28568b8c8 is
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
end fir_tap3_entity_d28568b8c8;

architecture structural of fir_tap3_entity_d28568b8c8 is
  signal ce_1_sg_x70: std_logic;
  signal clk_1_sg_x70: std_logic;
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
  ce_1_sg_x70 <= ce_1;
  clk_1_sg_x70 <= clk_1;
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
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant9_op_net_x0,
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
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
      ce => ce_1_sg_x70,
      clk => clk_1_sg_x70,
      d => constant9_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap4"

entity fir_tap4_entity_c55fdcad54 is
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
end fir_tap4_entity_c55fdcad54;

architecture structural of fir_tap4_entity_c55fdcad54 is
  signal ce_1_sg_x71: std_logic;
  signal clk_1_sg_x71: std_logic;
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
  ce_1_sg_x71 <= ce_1;
  clk_1_sg_x71 <= clk_1;
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
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant22_op_net_x0,
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
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
      ce => ce_1_sg_x71,
      clk => clk_1_sg_x71,
      d => constant22_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap5"

entity fir_tap5_entity_686ec112ea is
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
end fir_tap5_entity_686ec112ea;

architecture structural of fir_tap5_entity_686ec112ea is
  signal ce_1_sg_x72: std_logic;
  signal clk_1_sg_x72: std_logic;
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
  ce_1_sg_x72 <= ce_1;
  clk_1_sg_x72 <= clk_1;
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
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant24_op_net_x0,
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
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
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      d => constant24_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap6"

entity fir_tap6_entity_a1a820a0ca is
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
end fir_tap6_entity_a1a820a0ca;

architecture structural of fir_tap6_entity_a1a820a0ca is
  signal ce_1_sg_x73: std_logic;
  signal clk_1_sg_x73: std_logic;
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
  ce_1_sg_x73 <= ce_1;
  clk_1_sg_x73 <= clk_1;
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
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant10_op_net_x0,
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
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
      ce => ce_1_sg_x73,
      clk => clk_1_sg_x73,
      d => constant10_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap7"

entity fir_tap7_entity_e5e5504166 is
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
end fir_tap7_entity_e5e5504166;

architecture structural of fir_tap7_entity_e5e5504166 is
  signal ce_1_sg_x74: std_logic;
  signal clk_1_sg_x74: std_logic;
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
  ce_1_sg_x74 <= ce_1;
  clk_1_sg_x74 <= clk_1;
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
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant11_op_net_x0,
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
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
      ce => ce_1_sg_x74,
      clk => clk_1_sg_x74,
      d => constant11_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap8"

entity fir_tap8_entity_5fee10c455 is
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
end fir_tap8_entity_5fee10c455;

architecture structural of fir_tap8_entity_5fee10c455 is
  signal ce_1_sg_x75: std_logic;
  signal clk_1_sg_x75: std_logic;
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
  ce_1_sg_x75 <= ce_1;
  clk_1_sg_x75 <= clk_1;
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
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant12_op_net_x0,
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
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
      ce => ce_1_sg_x75,
      clk => clk_1_sg_x75,
      d => constant12_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1/fir_tap9"

entity fir_tap9_entity_4aadcad313 is
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
end fir_tap9_entity_4aadcad313;

architecture structural of fir_tap9_entity_4aadcad313 is
  signal ce_1_sg_x76: std_logic;
  signal clk_1_sg_x76: std_logic;
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
  ce_1_sg_x76 <= ce_1;
  clk_1_sg_x76 <= clk_1;
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
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => constant14_op_net_x0,
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
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
      ce => ce_1_sg_x76,
      clk => clk_1_sg_x76,
      d => constant14_op_net_x0,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col1"

entity fir_col1_entity_44fda80ac2 is
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
end fir_col1_entity_44fda80ac2;

architecture structural of fir_col1_entity_44fda80ac2 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x77: std_logic;
  signal clk_1_sg_x77: std_logic;
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
  ce_1_sg_x77 <= ce_1;
  clk_1_sg_x77 <= clk_1;
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

  adder_tree1_5ca939a699: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
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

  adder_tree2_4799b43eaa: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
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

  fir_tap10_5e42ac2cd6: entity work.fir_tap10_entity_5e42ac2cd6
    port map (
      a => register2_q_net_x25,
      b => constant15_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_dc4ee3c9af: entity work.fir_tap11_entity_dc4ee3c9af
    port map (
      a => register2_q_net_x26,
      b => constant16_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_b5f8148d42: entity work.fir_tap12_entity_b5f8148d42
    port map (
      a => register2_q_net_x27,
      b => constant17_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x19,
      b_out => register1_q_net_x19,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_eb4ff69434: entity work.fir_tap13_entity_eb4ff69434
    port map (
      a => register2_q_net_x28,
      b => constant18_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x20,
      b_out => register1_q_net_x20,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_9520a30170: entity work.fir_tap14_entity_9520a30170
    port map (
      a => register2_q_net_x29,
      b => constant19_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x21,
      b_out => register1_q_net_x21,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_4cc1484fc5: entity work.fir_tap15_entity_4cc1484fc5
    port map (
      a => register2_q_net_x30,
      b => constant20_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x22,
      b_out => register1_q_net_x22,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_a86adef5ab: entity work.fir_tap16_entity_a86adef5ab
    port map (
      a => register2_q_net_x31,
      b => constant21_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_7f8b44731a: entity work.fir_tap1_entity_7f8b44731a
    port map (
      a => register2_q_net_x16,
      b => constant4_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_2f17a59c2d: entity work.fir_tap2_entity_2f17a59c2d
    port map (
      a => register2_q_net_x17,
      b => constant7_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_d28568b8c8: entity work.fir_tap3_entity_d28568b8c8
    port map (
      a => register2_q_net_x18,
      b => constant9_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x25,
      b_out => register1_q_net_x25,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_c55fdcad54: entity work.fir_tap4_entity_c55fdcad54
    port map (
      a => register2_q_net_x19,
      b => constant22_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x26,
      b_out => register1_q_net_x26,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_686ec112ea: entity work.fir_tap5_entity_686ec112ea
    port map (
      a => register2_q_net_x20,
      b => constant24_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x27,
      b_out => register1_q_net_x27,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_a1a820a0ca: entity work.fir_tap6_entity_a1a820a0ca
    port map (
      a => register2_q_net_x21,
      b => constant10_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x28,
      b_out => register1_q_net_x28,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_e5e5504166: entity work.fir_tap7_entity_e5e5504166
    port map (
      a => register2_q_net_x22,
      b => constant11_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x29,
      b_out => register1_q_net_x29,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_5fee10c455: entity work.fir_tap8_entity_5fee10c455
    port map (
      a => register2_q_net_x23,
      b => constant12_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x30,
      b_out => register1_q_net_x30,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_4aadcad313: entity work.fir_tap9_entity_4aadcad313
    port map (
      a => register2_q_net_x24,
      b => constant14_op_net_x1,
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      a_out => register0_q_net_x31,
      b_out => register1_q_net_x31,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap1"

entity fir_tap1_entity_6fcd99634a is
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
end fir_tap1_entity_6fcd99634a;

architecture structural of fir_tap1_entity_6fcd99634a is
  signal ce_1_sg_x80: std_logic;
  signal clk_1_sg_x80: std_logic;
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
  ce_1_sg_x80 <= ce_1;
  clk_1_sg_x80 <= clk_1;
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
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
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
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      d => register1_q_net_x17,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap10"

entity fir_tap10_entity_a1846c9cdc is
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
end fir_tap10_entity_a1846c9cdc;

architecture structural of fir_tap10_entity_a1846c9cdc is
  signal ce_1_sg_x81: std_logic;
  signal clk_1_sg_x81: std_logic;
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
  ce_1_sg_x81 <= ce_1;
  clk_1_sg_x81 <= clk_1;
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
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
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
      ce => ce_1_sg_x81,
      clk => clk_1_sg_x81,
      d => register1_q_net_x18,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap11"

entity fir_tap11_entity_b49553ac20 is
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
end fir_tap11_entity_b49553ac20;

architecture structural of fir_tap11_entity_b49553ac20 is
  signal ce_1_sg_x82: std_logic;
  signal clk_1_sg_x82: std_logic;
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
  ce_1_sg_x82 <= ce_1;
  clk_1_sg_x82 <= clk_1;
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
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
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
      ce => ce_1_sg_x82,
      clk => clk_1_sg_x82,
      d => register1_q_net_x19,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap12"

entity fir_tap12_entity_d38d10387b is
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
end fir_tap12_entity_d38d10387b;

architecture structural of fir_tap12_entity_d38d10387b is
  signal ce_1_sg_x83: std_logic;
  signal clk_1_sg_x83: std_logic;
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
  ce_1_sg_x83 <= ce_1;
  clk_1_sg_x83 <= clk_1;
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
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x20,
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
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
      ce => ce_1_sg_x83,
      clk => clk_1_sg_x83,
      d => register1_q_net_x20,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap13"

entity fir_tap13_entity_63200ee91a is
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
end fir_tap13_entity_63200ee91a;

architecture structural of fir_tap13_entity_63200ee91a is
  signal ce_1_sg_x84: std_logic;
  signal clk_1_sg_x84: std_logic;
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
  ce_1_sg_x84 <= ce_1;
  clk_1_sg_x84 <= clk_1;
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
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x21,
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
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
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      d => register1_q_net_x21,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap14"

entity fir_tap14_entity_8875a6b20a is
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
end fir_tap14_entity_8875a6b20a;

architecture structural of fir_tap14_entity_8875a6b20a is
  signal ce_1_sg_x85: std_logic;
  signal clk_1_sg_x85: std_logic;
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
  ce_1_sg_x85 <= ce_1;
  clk_1_sg_x85 <= clk_1;
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
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x22,
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
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
      ce => ce_1_sg_x85,
      clk => clk_1_sg_x85,
      d => register1_q_net_x22,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap15"

entity fir_tap15_entity_afa266f9f0 is
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
end fir_tap15_entity_afa266f9f0;

architecture structural of fir_tap15_entity_afa266f9f0 is
  signal ce_1_sg_x86: std_logic;
  signal clk_1_sg_x86: std_logic;
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
  ce_1_sg_x86 <= ce_1;
  clk_1_sg_x86 <= clk_1;
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
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x23,
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
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
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      d => register1_q_net_x23,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap16"

entity fir_tap16_entity_7ae1e3cf40 is
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
end fir_tap16_entity_7ae1e3cf40;

architecture structural of fir_tap16_entity_7ae1e3cf40 is
  signal ce_1_sg_x87: std_logic;
  signal clk_1_sg_x87: std_logic;
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
  ce_1_sg_x87 <= ce_1;
  clk_1_sg_x87 <= clk_1;
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
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x24,
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
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
      ce => ce_1_sg_x87,
      clk => clk_1_sg_x87,
      d => register1_q_net_x24,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap2"

entity fir_tap2_entity_5be275e045 is
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
end fir_tap2_entity_5be275e045;

architecture structural of fir_tap2_entity_5be275e045 is
  signal ce_1_sg_x88: std_logic;
  signal clk_1_sg_x88: std_logic;
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
  ce_1_sg_x88 <= ce_1;
  clk_1_sg_x88 <= clk_1;
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
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x25,
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
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
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      d => register1_q_net_x25,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap3"

entity fir_tap3_entity_395da8881e is
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
end fir_tap3_entity_395da8881e;

architecture structural of fir_tap3_entity_395da8881e is
  signal ce_1_sg_x89: std_logic;
  signal clk_1_sg_x89: std_logic;
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
  ce_1_sg_x89 <= ce_1;
  clk_1_sg_x89 <= clk_1;
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
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x26,
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
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
      ce => ce_1_sg_x89,
      clk => clk_1_sg_x89,
      d => register1_q_net_x26,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap4"

entity fir_tap4_entity_d32278f489 is
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
end fir_tap4_entity_d32278f489;

architecture structural of fir_tap4_entity_d32278f489 is
  signal ce_1_sg_x90: std_logic;
  signal clk_1_sg_x90: std_logic;
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
  ce_1_sg_x90 <= ce_1;
  clk_1_sg_x90 <= clk_1;
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
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x27,
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
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
      ce => ce_1_sg_x90,
      clk => clk_1_sg_x90,
      d => register1_q_net_x27,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap5"

entity fir_tap5_entity_532924299a is
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
end fir_tap5_entity_532924299a;

architecture structural of fir_tap5_entity_532924299a is
  signal ce_1_sg_x91: std_logic;
  signal clk_1_sg_x91: std_logic;
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
  ce_1_sg_x91 <= ce_1;
  clk_1_sg_x91 <= clk_1;
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
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x28,
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
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
      ce => ce_1_sg_x91,
      clk => clk_1_sg_x91,
      d => register1_q_net_x28,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap6"

entity fir_tap6_entity_98d6e4220b is
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
end fir_tap6_entity_98d6e4220b;

architecture structural of fir_tap6_entity_98d6e4220b is
  signal ce_1_sg_x92: std_logic;
  signal clk_1_sg_x92: std_logic;
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
  ce_1_sg_x92 <= ce_1;
  clk_1_sg_x92 <= clk_1;
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
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x29,
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
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
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      d => register1_q_net_x29,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap7"

entity fir_tap7_entity_8bd03762ad is
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
end fir_tap7_entity_8bd03762ad;

architecture structural of fir_tap7_entity_8bd03762ad is
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
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
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
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
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x30,
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
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
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      d => register1_q_net_x30,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap8"

entity fir_tap8_entity_a855cd762c is
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
end fir_tap8_entity_a855cd762c;

architecture structural of fir_tap8_entity_a855cd762c is
  signal ce_1_sg_x94: std_logic;
  signal clk_1_sg_x94: std_logic;
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
  ce_1_sg_x94 <= ce_1;
  clk_1_sg_x94 <= clk_1;
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
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x31,
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
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
      ce => ce_1_sg_x94,
      clk => clk_1_sg_x94,
      d => register1_q_net_x31,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2/fir_tap9"

entity fir_tap9_entity_716d65c85d is
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
end fir_tap9_entity_716d65c85d;

architecture structural of fir_tap9_entity_716d65c85d is
  signal ce_1_sg_x95: std_logic;
  signal clk_1_sg_x95: std_logic;
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
  ce_1_sg_x95 <= ce_1;
  clk_1_sg_x95 <= clk_1;
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
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x32,
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
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
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      d => register1_q_net_x32,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col2"

entity fir_col2_entity_4d89652474 is
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
end fir_col2_entity_4d89652474;

architecture structural of fir_col2_entity_4d89652474 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x96: std_logic;
  signal clk_1_sg_x96: std_logic;
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
  ce_1_sg_x96 <= ce_1;
  clk_1_sg_x96 <= clk_1;
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

  adder_tree1_cb0937a6cd: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
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

  adder_tree2_bd1b8d9bf5: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
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

  fir_tap10_a1846c9cdc: entity work.fir_tap10_entity_a1846c9cdc
    port map (
      a => register0_q_net_x49,
      b => register1_q_net_x49,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x65,
      b_out => register1_q_net_x65,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_b49553ac20: entity work.fir_tap11_entity_b49553ac20
    port map (
      a => register0_q_net_x50,
      b => register1_q_net_x50,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x66,
      b_out => register1_q_net_x66,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_d38d10387b: entity work.fir_tap12_entity_d38d10387b
    port map (
      a => register0_q_net_x51,
      b => register1_q_net_x51,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x67,
      b_out => register1_q_net_x67,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_63200ee91a: entity work.fir_tap13_entity_63200ee91a
    port map (
      a => register0_q_net_x52,
      b => register1_q_net_x52,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x68,
      b_out => register1_q_net_x68,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_8875a6b20a: entity work.fir_tap14_entity_8875a6b20a
    port map (
      a => register0_q_net_x53,
      b => register1_q_net_x53,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x69,
      b_out => register1_q_net_x69,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_afa266f9f0: entity work.fir_tap15_entity_afa266f9f0
    port map (
      a => register0_q_net_x54,
      b => register1_q_net_x54,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x70,
      b_out => register1_q_net_x70,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_7ae1e3cf40: entity work.fir_tap16_entity_7ae1e3cf40
    port map (
      a => register0_q_net_x55,
      b => register1_q_net_x55,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x71,
      b_out => register1_q_net_x71,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_6fcd99634a: entity work.fir_tap1_entity_6fcd99634a
    port map (
      a => register0_q_net_x48,
      b => register1_q_net_x48,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x64,
      b_out => register1_q_net_x64,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_5be275e045: entity work.fir_tap2_entity_5be275e045
    port map (
      a => register0_q_net_x56,
      b => register1_q_net_x56,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x72,
      b_out => register1_q_net_x72,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_395da8881e: entity work.fir_tap3_entity_395da8881e
    port map (
      a => register0_q_net_x57,
      b => register1_q_net_x57,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x73,
      b_out => register1_q_net_x73,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_d32278f489: entity work.fir_tap4_entity_d32278f489
    port map (
      a => register0_q_net_x58,
      b => register1_q_net_x58,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x74,
      b_out => register1_q_net_x74,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_532924299a: entity work.fir_tap5_entity_532924299a
    port map (
      a => register0_q_net_x59,
      b => register1_q_net_x59,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x75,
      b_out => register1_q_net_x75,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_98d6e4220b: entity work.fir_tap6_entity_98d6e4220b
    port map (
      a => register0_q_net_x60,
      b => register1_q_net_x60,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x76,
      b_out => register1_q_net_x76,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_8bd03762ad: entity work.fir_tap7_entity_8bd03762ad
    port map (
      a => register0_q_net_x61,
      b => register1_q_net_x61,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x77,
      b_out => register1_q_net_x77,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_a855cd762c: entity work.fir_tap8_entity_a855cd762c
    port map (
      a => register0_q_net_x62,
      b => register1_q_net_x62,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x78,
      b_out => register1_q_net_x78,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_716d65c85d: entity work.fir_tap9_entity_716d65c85d
    port map (
      a => register0_q_net_x63,
      b => register1_q_net_x63,
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      a_out => register0_q_net_x79,
      b_out => register1_q_net_x79,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap1"

entity fir_tap1_entity_a277e5a9e5 is
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
end fir_tap1_entity_a277e5a9e5;

architecture structural of fir_tap1_entity_a277e5a9e5 is
  signal ce_1_sg_x99: std_logic;
  signal clk_1_sg_x99: std_logic;
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
  ce_1_sg_x99 <= ce_1;
  clk_1_sg_x99 <= clk_1;
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
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x65,
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
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
      ce => ce_1_sg_x99,
      clk => clk_1_sg_x99,
      d => register1_q_net_x65,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap10"

entity fir_tap10_entity_e6b820656c is
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
end fir_tap10_entity_e6b820656c;

architecture structural of fir_tap10_entity_e6b820656c is
  signal ce_1_sg_x100: std_logic;
  signal clk_1_sg_x100: std_logic;
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
  ce_1_sg_x100 <= ce_1;
  clk_1_sg_x100 <= clk_1;
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
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x66,
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
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
      ce => ce_1_sg_x100,
      clk => clk_1_sg_x100,
      d => register1_q_net_x66,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap11"

entity fir_tap11_entity_0d9f2c9d87 is
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
end fir_tap11_entity_0d9f2c9d87;

architecture structural of fir_tap11_entity_0d9f2c9d87 is
  signal ce_1_sg_x101: std_logic;
  signal clk_1_sg_x101: std_logic;
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
  ce_1_sg_x101 <= ce_1;
  clk_1_sg_x101 <= clk_1;
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
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x67,
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
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
      ce => ce_1_sg_x101,
      clk => clk_1_sg_x101,
      d => register1_q_net_x67,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap12"

entity fir_tap12_entity_ac210ff984 is
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
end fir_tap12_entity_ac210ff984;

architecture structural of fir_tap12_entity_ac210ff984 is
  signal ce_1_sg_x102: std_logic;
  signal clk_1_sg_x102: std_logic;
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
  ce_1_sg_x102 <= ce_1;
  clk_1_sg_x102 <= clk_1;
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
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x68,
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
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
      ce => ce_1_sg_x102,
      clk => clk_1_sg_x102,
      d => register1_q_net_x68,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap13"

entity fir_tap13_entity_37798a220c is
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
end fir_tap13_entity_37798a220c;

architecture structural of fir_tap13_entity_37798a220c is
  signal ce_1_sg_x103: std_logic;
  signal clk_1_sg_x103: std_logic;
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
  ce_1_sg_x103 <= ce_1;
  clk_1_sg_x103 <= clk_1;
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
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x69,
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
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
      ce => ce_1_sg_x103,
      clk => clk_1_sg_x103,
      d => register1_q_net_x69,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap14"

entity fir_tap14_entity_b7173353b5 is
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
end fir_tap14_entity_b7173353b5;

architecture structural of fir_tap14_entity_b7173353b5 is
  signal ce_1_sg_x104: std_logic;
  signal clk_1_sg_x104: std_logic;
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
  ce_1_sg_x104 <= ce_1;
  clk_1_sg_x104 <= clk_1;
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
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x70,
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
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
      ce => ce_1_sg_x104,
      clk => clk_1_sg_x104,
      d => register1_q_net_x70,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap15"

entity fir_tap15_entity_af7982bc57 is
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
end fir_tap15_entity_af7982bc57;

architecture structural of fir_tap15_entity_af7982bc57 is
  signal ce_1_sg_x105: std_logic;
  signal clk_1_sg_x105: std_logic;
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
  ce_1_sg_x105 <= ce_1;
  clk_1_sg_x105 <= clk_1;
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
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x71,
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
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
      ce => ce_1_sg_x105,
      clk => clk_1_sg_x105,
      d => register1_q_net_x71,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap16"

entity fir_tap16_entity_da34145035 is
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
end fir_tap16_entity_da34145035;

architecture structural of fir_tap16_entity_da34145035 is
  signal ce_1_sg_x106: std_logic;
  signal clk_1_sg_x106: std_logic;
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
  ce_1_sg_x106 <= ce_1;
  clk_1_sg_x106 <= clk_1;
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
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x72,
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      clr => '0',
      p => mult1_p_net_x23
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
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
      ce => ce_1_sg_x106,
      clk => clk_1_sg_x106,
      d => register1_q_net_x72,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap2"

entity fir_tap2_entity_2e85abef72 is
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
end fir_tap2_entity_2e85abef72;

architecture structural of fir_tap2_entity_2e85abef72 is
  signal ce_1_sg_x107: std_logic;
  signal clk_1_sg_x107: std_logic;
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
  ce_1_sg_x107 <= ce_1;
  clk_1_sg_x107 <= clk_1;
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
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x73,
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      clr => '0',
      p => mult1_p_net_x24
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
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
      ce => ce_1_sg_x107,
      clk => clk_1_sg_x107,
      d => register1_q_net_x73,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap3"

entity fir_tap3_entity_a10227bc50 is
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
end fir_tap3_entity_a10227bc50;

architecture structural of fir_tap3_entity_a10227bc50 is
  signal ce_1_sg_x108: std_logic;
  signal clk_1_sg_x108: std_logic;
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
  ce_1_sg_x108 <= ce_1;
  clk_1_sg_x108 <= clk_1;
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
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x74,
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      clr => '0',
      p => mult1_p_net_x25
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
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
      ce => ce_1_sg_x108,
      clk => clk_1_sg_x108,
      d => register1_q_net_x74,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap4"

entity fir_tap4_entity_a5b6ef5b7a is
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
end fir_tap4_entity_a5b6ef5b7a;

architecture structural of fir_tap4_entity_a5b6ef5b7a is
  signal ce_1_sg_x109: std_logic;
  signal clk_1_sg_x109: std_logic;
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
  ce_1_sg_x109 <= ce_1;
  clk_1_sg_x109 <= clk_1;
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
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x75,
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      clr => '0',
      p => mult1_p_net_x26
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
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
      ce => ce_1_sg_x109,
      clk => clk_1_sg_x109,
      d => register1_q_net_x75,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap5"

entity fir_tap5_entity_a1e86a092a is
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
end fir_tap5_entity_a1e86a092a;

architecture structural of fir_tap5_entity_a1e86a092a is
  signal ce_1_sg_x110: std_logic;
  signal clk_1_sg_x110: std_logic;
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
  ce_1_sg_x110 <= ce_1;
  clk_1_sg_x110 <= clk_1;
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
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x76,
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      clr => '0',
      p => mult1_p_net_x27
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
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
      ce => ce_1_sg_x110,
      clk => clk_1_sg_x110,
      d => register1_q_net_x76,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap6"

entity fir_tap6_entity_7cd9361b8f is
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
end fir_tap6_entity_7cd9361b8f;

architecture structural of fir_tap6_entity_7cd9361b8f is
  signal ce_1_sg_x111: std_logic;
  signal clk_1_sg_x111: std_logic;
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
  ce_1_sg_x111 <= ce_1;
  clk_1_sg_x111 <= clk_1;
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
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x77,
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      clr => '0',
      p => mult1_p_net_x28
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
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
      ce => ce_1_sg_x111,
      clk => clk_1_sg_x111,
      d => register1_q_net_x77,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap7"

entity fir_tap7_entity_83726504ed is
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
end fir_tap7_entity_83726504ed;

architecture structural of fir_tap7_entity_83726504ed is
  signal ce_1_sg_x112: std_logic;
  signal clk_1_sg_x112: std_logic;
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
  ce_1_sg_x112 <= ce_1;
  clk_1_sg_x112 <= clk_1;
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
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x78,
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      clr => '0',
      p => mult1_p_net_x29
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
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
      ce => ce_1_sg_x112,
      clk => clk_1_sg_x112,
      d => register1_q_net_x78,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap8"

entity fir_tap8_entity_78c05f1551 is
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
end fir_tap8_entity_78c05f1551;

architecture structural of fir_tap8_entity_78c05f1551 is
  signal ce_1_sg_x113: std_logic;
  signal clk_1_sg_x113: std_logic;
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
  ce_1_sg_x113 <= ce_1;
  clk_1_sg_x113 <= clk_1;
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
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x79,
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
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
      ce => ce_1_sg_x113,
      clk => clk_1_sg_x113,
      d => register1_q_net_x79,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3/fir_tap9"

entity fir_tap9_entity_fe3796566c is
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
end fir_tap9_entity_fe3796566c;

architecture structural of fir_tap9_entity_fe3796566c is
  signal ce_1_sg_x114: std_logic;
  signal clk_1_sg_x114: std_logic;
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
  ce_1_sg_x114 <= ce_1;
  clk_1_sg_x114 <= clk_1;
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
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x80,
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      clr => '0',
      p => mult1_p_net_x31
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
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
      ce => ce_1_sg_x114,
      clk => clk_1_sg_x114,
      d => register1_q_net_x80,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col3"

entity fir_col3_entity_e7b6cfa219 is
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
end fir_col3_entity_e7b6cfa219;

architecture structural of fir_col3_entity_e7b6cfa219 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x115: std_logic;
  signal clk_1_sg_x115: std_logic;
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
  ce_1_sg_x115 <= ce_1;
  clk_1_sg_x115 <= clk_1;
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

  adder_tree1_e27224db92: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
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

  adder_tree2_4dc1cd4406: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
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

  fir_tap10_e6b820656c: entity work.fir_tap10_entity_e6b820656c
    port map (
      a => register0_q_net_x82,
      b => register1_q_net_x82,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_0d9f2c9d87: entity work.fir_tap11_entity_0d9f2c9d87
    port map (
      a => register0_q_net_x83,
      b => register1_q_net_x83,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_ac210ff984: entity work.fir_tap12_entity_ac210ff984
    port map (
      a => register0_q_net_x84,
      b => register1_q_net_x84,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x97,
      b_out => register1_q_net_x97,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_37798a220c: entity work.fir_tap13_entity_37798a220c
    port map (
      a => register0_q_net_x85,
      b => register1_q_net_x85,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x98,
      b_out => register1_q_net_x98,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_b7173353b5: entity work.fir_tap14_entity_b7173353b5
    port map (
      a => register0_q_net_x86,
      b => register1_q_net_x86,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x99,
      b_out => register1_q_net_x99,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_af7982bc57: entity work.fir_tap15_entity_af7982bc57
    port map (
      a => register0_q_net_x87,
      b => register1_q_net_x87,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x100,
      b_out => register1_q_net_x100,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_da34145035: entity work.fir_tap16_entity_da34145035
    port map (
      a => register0_q_net_x88,
      b => register1_q_net_x88,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x101,
      b_out => register1_q_net_x101,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_a277e5a9e5: entity work.fir_tap1_entity_a277e5a9e5
    port map (
      a => register0_q_net_x81,
      b => register1_q_net_x81,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_2e85abef72: entity work.fir_tap2_entity_2e85abef72
    port map (
      a => register0_q_net_x89,
      b => register1_q_net_x89,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x102,
      b_out => register1_q_net_x102,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_a10227bc50: entity work.fir_tap3_entity_a10227bc50
    port map (
      a => register0_q_net_x90,
      b => register1_q_net_x90,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x103,
      b_out => register1_q_net_x103,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_a5b6ef5b7a: entity work.fir_tap4_entity_a5b6ef5b7a
    port map (
      a => register0_q_net_x91,
      b => register1_q_net_x91,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x104,
      b_out => register1_q_net_x104,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_a1e86a092a: entity work.fir_tap5_entity_a1e86a092a
    port map (
      a => register0_q_net_x92,
      b => register1_q_net_x92,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x105,
      b_out => register1_q_net_x105,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_7cd9361b8f: entity work.fir_tap6_entity_7cd9361b8f
    port map (
      a => register0_q_net_x93,
      b => register1_q_net_x93,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x106,
      b_out => register1_q_net_x106,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_83726504ed: entity work.fir_tap7_entity_83726504ed
    port map (
      a => register0_q_net_x94,
      b => register1_q_net_x94,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x107,
      b_out => register1_q_net_x107,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_78c05f1551: entity work.fir_tap8_entity_78c05f1551
    port map (
      a => register0_q_net_x95,
      b => register1_q_net_x95,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x108,
      b_out => register1_q_net_x108,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_fe3796566c: entity work.fir_tap9_entity_fe3796566c
    port map (
      a => register0_q_net_x96,
      b => register1_q_net_x96,
      ce_1 => ce_1_sg_x115,
      clk_1 => clk_1_sg_x115,
      a_out => register0_q_net_x109,
      b_out => register1_q_net_x109,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap1"

entity fir_tap1_entity_33b088bd79 is
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
end fir_tap1_entity_33b088bd79;

architecture structural of fir_tap1_entity_33b088bd79 is
  signal ce_1_sg_x118: std_logic;
  signal clk_1_sg_x118: std_logic;
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
  ce_1_sg_x118 <= ce_1;
  clk_1_sg_x118 <= clk_1;
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
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      clr => '0',
      p => mult1_p_net_x16
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
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
      ce => ce_1_sg_x118,
      clk => clk_1_sg_x118,
      d => register1_q_net_x17,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap10"

entity fir_tap10_entity_5adf233cc3 is
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
end fir_tap10_entity_5adf233cc3;

architecture structural of fir_tap10_entity_5adf233cc3 is
  signal ce_1_sg_x119: std_logic;
  signal clk_1_sg_x119: std_logic;
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
  ce_1_sg_x119 <= ce_1;
  clk_1_sg_x119 <= clk_1;
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
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
      clr => '0',
      p => mult1_p_net_x17
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
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
      ce => ce_1_sg_x119,
      clk => clk_1_sg_x119,
      d => register1_q_net_x18,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap11"

entity fir_tap11_entity_d434fcf4bf is
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
end fir_tap11_entity_d434fcf4bf;

architecture structural of fir_tap11_entity_d434fcf4bf is
  signal ce_1_sg_x120: std_logic;
  signal clk_1_sg_x120: std_logic;
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
  ce_1_sg_x120 <= ce_1;
  clk_1_sg_x120 <= clk_1;
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
      ce => ce_1_sg_x120,
      clk => clk_1_sg_x120,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x120,
      clk => clk_1_sg_x120,
      clr => '0',
      p => mult1_p_net_x18
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x120,
      clk => clk_1_sg_x120,
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
      ce => ce_1_sg_x120,
      clk => clk_1_sg_x120,
      d => register1_q_net_x19,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap12"

entity fir_tap12_entity_0adb0f41bc is
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
end fir_tap12_entity_0adb0f41bc;

architecture structural of fir_tap12_entity_0adb0f41bc is
  signal ce_1_sg_x121: std_logic;
  signal clk_1_sg_x121: std_logic;
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
  ce_1_sg_x121 <= ce_1;
  clk_1_sg_x121 <= clk_1;
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
      ce => ce_1_sg_x121,
      clk => clk_1_sg_x121,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x98,
      ce => ce_1_sg_x121,
      clk => clk_1_sg_x121,
      clr => '0',
      p => mult1_p_net_x19
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x121,
      clk => clk_1_sg_x121,
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
      ce => ce_1_sg_x121,
      clk => clk_1_sg_x121,
      d => register1_q_net_x98,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap13"

entity fir_tap13_entity_4a4446401d is
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
end fir_tap13_entity_4a4446401d;

architecture structural of fir_tap13_entity_4a4446401d is
  signal ce_1_sg_x122: std_logic;
  signal clk_1_sg_x122: std_logic;
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
  ce_1_sg_x122 <= ce_1;
  clk_1_sg_x122 <= clk_1;
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
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x99,
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      clr => '0',
      p => mult1_p_net_x20
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
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
      ce => ce_1_sg_x122,
      clk => clk_1_sg_x122,
      d => register1_q_net_x99,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap14"

entity fir_tap14_entity_3965d74e1c is
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
end fir_tap14_entity_3965d74e1c;

architecture structural of fir_tap14_entity_3965d74e1c is
  signal ce_1_sg_x123: std_logic;
  signal clk_1_sg_x123: std_logic;
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
  ce_1_sg_x123 <= ce_1;
  clk_1_sg_x123 <= clk_1;
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
      ce => ce_1_sg_x123,
      clk => clk_1_sg_x123,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x100,
      ce => ce_1_sg_x123,
      clk => clk_1_sg_x123,
      clr => '0',
      p => mult1_p_net_x21
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x123,
      clk => clk_1_sg_x123,
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
      ce => ce_1_sg_x123,
      clk => clk_1_sg_x123,
      d => register1_q_net_x100,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap15"

entity fir_tap15_entity_3990857d16 is
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
end fir_tap15_entity_3990857d16;

architecture structural of fir_tap15_entity_3990857d16 is
  signal ce_1_sg_x124: std_logic;
  signal clk_1_sg_x124: std_logic;
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
  ce_1_sg_x124 <= ce_1;
  clk_1_sg_x124 <= clk_1;
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
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x101,
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      clr => '0',
      p => mult1_p_net_x22
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
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
      ce => ce_1_sg_x124,
      clk => clk_1_sg_x124,
      d => register1_q_net_x101,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4/fir_tap8"

entity fir_tap8_entity_c6e8a0c28d is
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
end fir_tap8_entity_c6e8a0c28d;

architecture structural of fir_tap8_entity_c6e8a0c28d is
  signal ce_1_sg_x132: std_logic;
  signal clk_1_sg_x132: std_logic;
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
  ce_1_sg_x132 <= ce_1;
  clk_1_sg_x132 <= clk_1;
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
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x109,
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
      clr => '0',
      p => mult1_p_net_x30
    );

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
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
      ce => ce_1_sg_x132,
      clk => clk_1_sg_x132,
      d => register1_q_net_x109,
      en => "1",
      rst => "0",
      q => register1_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col4"

entity fir_col4_entity_ad4c3f4478 is
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
end fir_col4_entity_ad4c3f4478;

architecture structural of fir_col4_entity_ad4c3f4478 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x134: std_logic;
  signal clk_1_sg_x134: std_logic;
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
  ce_1_sg_x134 <= ce_1;
  clk_1_sg_x134 <= clk_1;
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

  adder_tree1_0706975821: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
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

  adder_tree2_33bebf9205: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
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

  fir_tap10_5adf233cc3: entity work.fir_tap10_entity_5adf233cc3
    port map (
      a => register0_q_net_x21,
      b => register1_q_net_x21,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_d434fcf4bf: entity work.fir_tap11_entity_d434fcf4bf
    port map (
      a => register0_q_net_x22,
      b => register1_q_net_x22,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_0adb0f41bc: entity work.fir_tap12_entity_0adb0f41bc
    port map (
      a => register0_q_net_x111,
      b => register1_q_net_x111,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x25,
      b_out => register1_q_net_x25,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_4a4446401d: entity work.fir_tap13_entity_4a4446401d
    port map (
      a => register0_q_net_x112,
      b => register1_q_net_x112,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x26,
      b_out => register1_q_net_x26,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_3965d74e1c: entity work.fir_tap14_entity_3965d74e1c
    port map (
      a => register0_q_net_x113,
      b => register1_q_net_x113,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x27,
      b_out => register1_q_net_x27,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_3990857d16: entity work.fir_tap15_entity_3990857d16
    port map (
      a => register0_q_net_x114,
      b => register1_q_net_x114,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x28,
      b_out => register1_q_net_x28,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_02aa468981: entity work.fir_tap1_entity_33b088bd79
    port map (
      a => register0_q_net_x115,
      b => register1_q_net_x115,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x29,
      b_out => register1_q_net_x29,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_33b088bd79: entity work.fir_tap1_entity_33b088bd79
    port map (
      a => register0_q_net_x20,
      b => register1_q_net_x20,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_11ed5f7196: entity work.fir_tap15_entity_3990857d16
    port map (
      a => register0_q_net_x116,
      b => register1_q_net_x116,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x30,
      b_out => register1_q_net_x30,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_3adb279061: entity work.fir_tap14_entity_3965d74e1c
    port map (
      a => register0_q_net_x117,
      b => register1_q_net_x117,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x31,
      b_out => register1_q_net_x31,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_50aa9b260c: entity work.fir_tap13_entity_4a4446401d
    port map (
      a => register0_q_net_x118,
      b => register1_q_net_x118,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x32,
      b_out => register1_q_net_x32,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_c77e932b51: entity work.fir_tap12_entity_0adb0f41bc
    port map (
      a => register0_q_net_x119,
      b => register1_q_net_x119,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x33,
      b_out => register1_q_net_x33,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_4cfeb53830: entity work.fir_tap11_entity_d434fcf4bf
    port map (
      a => register0_q_net_x120,
      b => register1_q_net_x120,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x34,
      b_out => register1_q_net_x34,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_a3ae296503: entity work.fir_tap10_entity_5adf233cc3
    port map (
      a => register0_q_net_x121,
      b => register1_q_net_x121,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x35,
      b_out => register1_q_net_x35,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_c6e8a0c28d: entity work.fir_tap8_entity_c6e8a0c28d
    port map (
      a => register0_q_net_x122,
      b => register1_q_net_x122,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x36,
      b_out => register1_q_net_x36,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_15691f549a: entity work.fir_tap8_entity_c6e8a0c28d
    port map (
      a => register0_q_net_x123,
      b => register1_q_net_x123,
      ce_1 => ce_1_sg_x134,
      clk_1 => clk_1_sg_x134,
      a_out => register0_q_net_x37,
      b_out => register1_q_net_x37,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col5"

entity fir_col5_entity_1c37f008aa is
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
end fir_col5_entity_1c37f008aa;

architecture structural of fir_col5_entity_1c37f008aa is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x153: std_logic;
  signal clk_1_sg_x153: std_logic;
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
  ce_1_sg_x153 <= ce_1;
  clk_1_sg_x153 <= clk_1;
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

  adder_tree1_516b87372e: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
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

  adder_tree2_357461eda7: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
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

  fir_tap10_0e5824e8d1: entity work.fir_tap7_entity_83726504ed
    port map (
      a => register0_q_net_x55,
      b => register1_q_net_x55,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x71,
      b_out => register1_q_net_x71,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_56488d0d76: entity work.fir_tap6_entity_7cd9361b8f
    port map (
      a => register0_q_net_x56,
      b => register1_q_net_x56,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x72,
      b_out => register1_q_net_x72,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_92ab2dd1b3: entity work.fir_tap5_entity_a1e86a092a
    port map (
      a => register0_q_net_x57,
      b => register1_q_net_x57,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x73,
      b_out => register1_q_net_x73,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_b597581901: entity work.fir_tap4_entity_a5b6ef5b7a
    port map (
      a => register0_q_net_x58,
      b => register1_q_net_x58,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x74,
      b_out => register1_q_net_x74,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_87353f52dd: entity work.fir_tap3_entity_a10227bc50
    port map (
      a => register0_q_net_x59,
      b => register1_q_net_x59,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x75,
      b_out => register1_q_net_x75,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_196d3f2b03: entity work.fir_tap2_entity_2e85abef72
    port map (
      a => register0_q_net_x60,
      b => register1_q_net_x60,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x76,
      b_out => register1_q_net_x76,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_43f9384743: entity work.fir_tap1_entity_a277e5a9e5
    port map (
      a => register0_q_net_x61,
      b => register1_q_net_x61,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x77,
      b_out => register1_q_net_x77,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_af07c84ac3: entity work.fir_tap16_entity_da34145035
    port map (
      a => register0_q_net_x54,
      b => register1_q_net_x54,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x70,
      b_out => register1_q_net_x70,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_4c0ec1612f: entity work.fir_tap15_entity_af7982bc57
    port map (
      a => register0_q_net_x62,
      b => register1_q_net_x62,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x78,
      b_out => register1_q_net_x78,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_8c39f5bff6: entity work.fir_tap14_entity_b7173353b5
    port map (
      a => register0_q_net_x63,
      b => register1_q_net_x63,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x79,
      b_out => register1_q_net_x79,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_befe241caf: entity work.fir_tap13_entity_37798a220c
    port map (
      a => register0_q_net_x64,
      b => register1_q_net_x64,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x80,
      b_out => register1_q_net_x80,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_370b2d4e3e: entity work.fir_tap12_entity_ac210ff984
    port map (
      a => register0_q_net_x65,
      b => register1_q_net_x65,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x81,
      b_out => register1_q_net_x81,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_aa033c8718: entity work.fir_tap11_entity_0d9f2c9d87
    port map (
      a => register0_q_net_x66,
      b => register1_q_net_x66,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x82,
      b_out => register1_q_net_x82,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_ee99553fa8: entity work.fir_tap10_entity_e6b820656c
    port map (
      a => register0_q_net_x67,
      b => register1_q_net_x67,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x83,
      b_out => register1_q_net_x83,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_0c87ebf40f: entity work.fir_tap9_entity_fe3796566c
    port map (
      a => register0_q_net_x68,
      b => register1_q_net_x68,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x84,
      b_out => register1_q_net_x84,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_2756cd2965: entity work.fir_tap8_entity_78c05f1551
    port map (
      a => register0_q_net_x69,
      b => register1_q_net_x69,
      ce_1 => ce_1_sg_x153,
      clk_1 => clk_1_sg_x153,
      a_out => register0_q_net_x85,
      b_out => register1_q_net_x85,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col6"

entity fir_col6_entity_08d2f28b89 is
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
end fir_col6_entity_08d2f28b89;

architecture structural of fir_col6_entity_08d2f28b89 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x172: std_logic;
  signal clk_1_sg_x172: std_logic;
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
  ce_1_sg_x172 <= ce_1;
  clk_1_sg_x172 <= clk_1;
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

  adder_tree1_b6003ae825: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
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

  adder_tree2_49ee39a98e: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
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

  fir_tap10_bbfc3e8c33: entity work.fir_tap7_entity_8bd03762ad
    port map (
      a => register0_q_net_x88,
      b => register1_q_net_x88,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x17,
      b_out => register1_q_net_x17,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_2bc2703ee2: entity work.fir_tap6_entity_98d6e4220b
    port map (
      a => register0_q_net_x89,
      b => register1_q_net_x89,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x18,
      b_out => register1_q_net_x18,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_73944e342c: entity work.fir_tap5_entity_532924299a
    port map (
      a => register0_q_net_x90,
      b => register1_q_net_x90,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x19,
      b_out => register1_q_net_x19,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_9c53838e9d: entity work.fir_tap4_entity_d32278f489
    port map (
      a => register0_q_net_x91,
      b => register1_q_net_x91,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x20,
      b_out => register1_q_net_x20,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_32fbbb6b8f: entity work.fir_tap3_entity_395da8881e
    port map (
      a => register0_q_net_x92,
      b => register1_q_net_x92,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x21,
      b_out => register1_q_net_x21,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_242b5f7dc6: entity work.fir_tap2_entity_5be275e045
    port map (
      a => register0_q_net_x93,
      b => register1_q_net_x93,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x22,
      b_out => register1_q_net_x22,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_8fffcdf8d8: entity work.fir_tap1_entity_6fcd99634a
    port map (
      a => register0_q_net_x94,
      b => register1_q_net_x94,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x23,
      b_out => register1_q_net_x23,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_f2465fddba: entity work.fir_tap16_entity_7ae1e3cf40
    port map (
      a => register0_q_net_x87,
      b => register1_q_net_x87,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x16,
      b_out => register1_q_net_x16,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_641570cca9: entity work.fir_tap15_entity_afa266f9f0
    port map (
      a => register0_q_net_x95,
      b => register1_q_net_x95,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x24,
      b_out => register1_q_net_x24,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_0edf4a0b60: entity work.fir_tap14_entity_8875a6b20a
    port map (
      a => register0_q_net_x96,
      b => register1_q_net_x96,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x103,
      b_out => register1_q_net_x103,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_df4fdbefe0: entity work.fir_tap13_entity_63200ee91a
    port map (
      a => register0_q_net_x97,
      b => register1_q_net_x97,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x104,
      b_out => register1_q_net_x104,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_7154fbbaa0: entity work.fir_tap12_entity_d38d10387b
    port map (
      a => register0_q_net_x98,
      b => register1_q_net_x98,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x105,
      b_out => register1_q_net_x105,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_80ae5d2bc5: entity work.fir_tap11_entity_b49553ac20
    port map (
      a => register0_q_net_x99,
      b => register1_q_net_x99,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x106,
      b_out => register1_q_net_x106,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_83262e1725: entity work.fir_tap10_entity_a1846c9cdc
    port map (
      a => register0_q_net_x100,
      b => register1_q_net_x100,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x107,
      b_out => register1_q_net_x107,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_af3c4f539d: entity work.fir_tap9_entity_716d65c85d
    port map (
      a => register0_q_net_x101,
      b => register1_q_net_x101,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x108,
      b_out => register1_q_net_x108,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_5b1bf1c897: entity work.fir_tap8_entity_a855cd762c
    port map (
      a => register0_q_net_x102,
      b => register1_q_net_x102,
      ce_1 => ce_1_sg_x172,
      clk_1 => clk_1_sg_x172,
      a_out => register0_q_net_x109,
      b_out => register1_q_net_x109,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap1"

entity fir_tap1_entity_23866294a3 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap1_entity_23866294a3;

architecture structural of fir_tap1_entity_23866294a3 is
  signal ce_1_sg_x175: std_logic;
  signal clk_1_sg_x175: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x16: std_logic_vector(32 downto 0);
  signal mult1_p_net_x16: std_logic_vector(32 downto 0);
  signal register0_q_net_x17: std_logic_vector(7 downto 0);
  signal register1_q_net_x17: std_logic_vector(7 downto 0);

begin
  register0_q_net_x17 <= a;
  register1_q_net_x17 <= b;
  ce_1_sg_x175 <= ce_1;
  clk_1_sg_x175 <= clk_1;
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
      ce => ce_1_sg_x175,
      clk => clk_1_sg_x175,
      clr => '0',
      p => mult0_p_net_x16
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x17,
      ce => ce_1_sg_x175,
      clk => clk_1_sg_x175,
      clr => '0',
      p => mult1_p_net_x16
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap10"

entity fir_tap10_entity_6c9cd36a0f is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap10_entity_6c9cd36a0f;

architecture structural of fir_tap10_entity_6c9cd36a0f is
  signal ce_1_sg_x176: std_logic;
  signal clk_1_sg_x176: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x17: std_logic_vector(32 downto 0);
  signal mult1_p_net_x17: std_logic_vector(32 downto 0);
  signal register0_q_net_x18: std_logic_vector(7 downto 0);
  signal register1_q_net_x18: std_logic_vector(7 downto 0);

begin
  register0_q_net_x18 <= a;
  register1_q_net_x18 <= b;
  ce_1_sg_x176 <= ce_1;
  clk_1_sg_x176 <= clk_1;
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
      ce => ce_1_sg_x176,
      clk => clk_1_sg_x176,
      clr => '0',
      p => mult0_p_net_x17
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x18,
      ce => ce_1_sg_x176,
      clk => clk_1_sg_x176,
      clr => '0',
      p => mult1_p_net_x17
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap11"

entity fir_tap11_entity_d91a5908ef is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap11_entity_d91a5908ef;

architecture structural of fir_tap11_entity_d91a5908ef is
  signal ce_1_sg_x177: std_logic;
  signal clk_1_sg_x177: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x18: std_logic_vector(32 downto 0);
  signal mult1_p_net_x18: std_logic_vector(32 downto 0);
  signal register0_q_net_x19: std_logic_vector(7 downto 0);
  signal register1_q_net_x19: std_logic_vector(7 downto 0);

begin
  register0_q_net_x19 <= a;
  register1_q_net_x19 <= b;
  ce_1_sg_x177 <= ce_1;
  clk_1_sg_x177 <= clk_1;
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
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      clr => '0',
      p => mult0_p_net_x18
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x19,
      ce => ce_1_sg_x177,
      clk => clk_1_sg_x177,
      clr => '0',
      p => mult1_p_net_x18
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap12"

entity fir_tap12_entity_c62f78d91a is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap12_entity_c62f78d91a;

architecture structural of fir_tap12_entity_c62f78d91a is
  signal ce_1_sg_x178: std_logic;
  signal clk_1_sg_x178: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x19: std_logic_vector(32 downto 0);
  signal mult1_p_net_x19: std_logic_vector(32 downto 0);
  signal register0_q_net_x20: std_logic_vector(7 downto 0);
  signal register1_q_net_x20: std_logic_vector(7 downto 0);

begin
  register0_q_net_x20 <= a;
  register1_q_net_x20 <= b;
  ce_1_sg_x178 <= ce_1;
  clk_1_sg_x178 <= clk_1;
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
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult0_p_net_x19
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x20,
      ce => ce_1_sg_x178,
      clk => clk_1_sg_x178,
      clr => '0',
      p => mult1_p_net_x19
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap13"

entity fir_tap13_entity_2c2f1650b8 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap13_entity_2c2f1650b8;

architecture structural of fir_tap13_entity_2c2f1650b8 is
  signal ce_1_sg_x179: std_logic;
  signal clk_1_sg_x179: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x20: std_logic_vector(32 downto 0);
  signal mult1_p_net_x20: std_logic_vector(32 downto 0);
  signal register0_q_net_x21: std_logic_vector(7 downto 0);
  signal register1_q_net_x21: std_logic_vector(7 downto 0);

begin
  register0_q_net_x21 <= a;
  register1_q_net_x21 <= b;
  ce_1_sg_x179 <= ce_1;
  clk_1_sg_x179 <= clk_1;
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
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      p => mult0_p_net_x20
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x21,
      ce => ce_1_sg_x179,
      clk => clk_1_sg_x179,
      clr => '0',
      p => mult1_p_net_x20
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap14"

entity fir_tap14_entity_1005a03ce0 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap14_entity_1005a03ce0;

architecture structural of fir_tap14_entity_1005a03ce0 is
  signal ce_1_sg_x180: std_logic;
  signal clk_1_sg_x180: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x21: std_logic_vector(32 downto 0);
  signal mult1_p_net_x21: std_logic_vector(32 downto 0);
  signal register0_q_net_x22: std_logic_vector(7 downto 0);
  signal register1_q_net_x22: std_logic_vector(7 downto 0);

begin
  register0_q_net_x22 <= a;
  register1_q_net_x22 <= b;
  ce_1_sg_x180 <= ce_1;
  clk_1_sg_x180 <= clk_1;
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
      ce => ce_1_sg_x180,
      clk => clk_1_sg_x180,
      clr => '0',
      p => mult0_p_net_x21
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x22,
      ce => ce_1_sg_x180,
      clk => clk_1_sg_x180,
      clr => '0',
      p => mult1_p_net_x21
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap15"

entity fir_tap15_entity_869563a281 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap15_entity_869563a281;

architecture structural of fir_tap15_entity_869563a281 is
  signal ce_1_sg_x181: std_logic;
  signal clk_1_sg_x181: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x22: std_logic_vector(32 downto 0);
  signal mult1_p_net_x22: std_logic_vector(32 downto 0);
  signal register0_q_net_x23: std_logic_vector(7 downto 0);
  signal register1_q_net_x23: std_logic_vector(7 downto 0);

begin
  register0_q_net_x23 <= a;
  register1_q_net_x23 <= b;
  ce_1_sg_x181 <= ce_1;
  clk_1_sg_x181 <= clk_1;
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
      ce => ce_1_sg_x181,
      clk => clk_1_sg_x181,
      clr => '0',
      p => mult0_p_net_x22
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x23,
      ce => ce_1_sg_x181,
      clk => clk_1_sg_x181,
      clr => '0',
      p => mult1_p_net_x22
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap16"

entity fir_tap16_entity_71d37ae8b8 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap16_entity_71d37ae8b8;

architecture structural of fir_tap16_entity_71d37ae8b8 is
  signal ce_1_sg_x182: std_logic;
  signal clk_1_sg_x182: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x23: std_logic_vector(32 downto 0);
  signal mult1_p_net_x23: std_logic_vector(32 downto 0);
  signal register0_q_net_x24: std_logic_vector(7 downto 0);
  signal register1_q_net_x24: std_logic_vector(7 downto 0);

begin
  register0_q_net_x24 <= a;
  register1_q_net_x24 <= b;
  ce_1_sg_x182 <= ce_1;
  clk_1_sg_x182 <= clk_1;
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
      ce => ce_1_sg_x182,
      clk => clk_1_sg_x182,
      clr => '0',
      p => mult0_p_net_x23
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x24,
      ce => ce_1_sg_x182,
      clk => clk_1_sg_x182,
      clr => '0',
      p => mult1_p_net_x23
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap2"

entity fir_tap2_entity_a15614bf97 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap2_entity_a15614bf97;

architecture structural of fir_tap2_entity_a15614bf97 is
  signal ce_1_sg_x183: std_logic;
  signal clk_1_sg_x183: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x24: std_logic_vector(32 downto 0);
  signal mult1_p_net_x24: std_logic_vector(32 downto 0);
  signal register0_q_net_x25: std_logic_vector(7 downto 0);
  signal register1_q_net_x25: std_logic_vector(7 downto 0);

begin
  register0_q_net_x25 <= a;
  register1_q_net_x25 <= b;
  ce_1_sg_x183 <= ce_1;
  clk_1_sg_x183 <= clk_1;
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
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      p => mult0_p_net_x24
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x25,
      ce => ce_1_sg_x183,
      clk => clk_1_sg_x183,
      clr => '0',
      p => mult1_p_net_x24
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap3"

entity fir_tap3_entity_ee79acdef3 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap3_entity_ee79acdef3;

architecture structural of fir_tap3_entity_ee79acdef3 is
  signal ce_1_sg_x184: std_logic;
  signal clk_1_sg_x184: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x25: std_logic_vector(32 downto 0);
  signal mult1_p_net_x25: std_logic_vector(32 downto 0);
  signal register0_q_net_x104: std_logic_vector(7 downto 0);
  signal register1_q_net_x104: std_logic_vector(7 downto 0);

begin
  register0_q_net_x104 <= a;
  register1_q_net_x104 <= b;
  ce_1_sg_x184 <= ce_1;
  clk_1_sg_x184 <= clk_1;
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
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      p => mult0_p_net_x25
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x104,
      ce => ce_1_sg_x184,
      clk => clk_1_sg_x184,
      clr => '0',
      p => mult1_p_net_x25
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap4"

entity fir_tap4_entity_d2bacbffb1 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap4_entity_d2bacbffb1;

architecture structural of fir_tap4_entity_d2bacbffb1 is
  signal ce_1_sg_x185: std_logic;
  signal clk_1_sg_x185: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x26: std_logic_vector(32 downto 0);
  signal mult1_p_net_x26: std_logic_vector(32 downto 0);
  signal register0_q_net_x105: std_logic_vector(7 downto 0);
  signal register1_q_net_x105: std_logic_vector(7 downto 0);

begin
  register0_q_net_x105 <= a;
  register1_q_net_x105 <= b;
  ce_1_sg_x185 <= ce_1;
  clk_1_sg_x185 <= clk_1;
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
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult0_p_net_x26
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x105,
      ce => ce_1_sg_x185,
      clk => clk_1_sg_x185,
      clr => '0',
      p => mult1_p_net_x26
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap5"

entity fir_tap5_entity_6fb7654fa6 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap5_entity_6fb7654fa6;

architecture structural of fir_tap5_entity_6fb7654fa6 is
  signal ce_1_sg_x186: std_logic;
  signal clk_1_sg_x186: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x27: std_logic_vector(32 downto 0);
  signal mult1_p_net_x27: std_logic_vector(32 downto 0);
  signal register0_q_net_x106: std_logic_vector(7 downto 0);
  signal register1_q_net_x106: std_logic_vector(7 downto 0);

begin
  register0_q_net_x106 <= a;
  register1_q_net_x106 <= b;
  ce_1_sg_x186 <= ce_1;
  clk_1_sg_x186 <= clk_1;
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
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      p => mult0_p_net_x27
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x106,
      ce => ce_1_sg_x186,
      clk => clk_1_sg_x186,
      clr => '0',
      p => mult1_p_net_x27
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap6"

entity fir_tap6_entity_011f3bafc3 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap6_entity_011f3bafc3;

architecture structural of fir_tap6_entity_011f3bafc3 is
  signal ce_1_sg_x187: std_logic;
  signal clk_1_sg_x187: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x28: std_logic_vector(32 downto 0);
  signal mult1_p_net_x28: std_logic_vector(32 downto 0);
  signal register0_q_net_x107: std_logic_vector(7 downto 0);
  signal register1_q_net_x107: std_logic_vector(7 downto 0);

begin
  register0_q_net_x107 <= a;
  register1_q_net_x107 <= b;
  ce_1_sg_x187 <= ce_1;
  clk_1_sg_x187 <= clk_1;
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
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      p => mult0_p_net_x28
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x107,
      ce => ce_1_sg_x187,
      clk => clk_1_sg_x187,
      clr => '0',
      p => mult1_p_net_x28
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap7"

entity fir_tap7_entity_50e32a3312 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap7_entity_50e32a3312;

architecture structural of fir_tap7_entity_50e32a3312 is
  signal ce_1_sg_x188: std_logic;
  signal clk_1_sg_x188: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x29: std_logic_vector(32 downto 0);
  signal mult1_p_net_x29: std_logic_vector(32 downto 0);
  signal register0_q_net_x108: std_logic_vector(7 downto 0);
  signal register1_q_net_x108: std_logic_vector(7 downto 0);

begin
  register0_q_net_x108 <= a;
  register1_q_net_x108 <= b;
  ce_1_sg_x188 <= ce_1;
  clk_1_sg_x188 <= clk_1;
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
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      p => mult0_p_net_x29
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x108,
      ce => ce_1_sg_x188,
      clk => clk_1_sg_x188,
      clr => '0',
      p => mult1_p_net_x29
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap8"

entity fir_tap8_entity_97183f1b7c is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap8_entity_97183f1b7c;

architecture structural of fir_tap8_entity_97183f1b7c is
  signal ce_1_sg_x189: std_logic;
  signal clk_1_sg_x189: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x30: std_logic_vector(32 downto 0);
  signal mult1_p_net_x30: std_logic_vector(32 downto 0);
  signal register0_q_net_x109: std_logic_vector(7 downto 0);
  signal register1_q_net_x109: std_logic_vector(7 downto 0);

begin
  register0_q_net_x109 <= a;
  register1_q_net_x109 <= b;
  ce_1_sg_x189 <= ce_1;
  clk_1_sg_x189 <= clk_1;
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
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      p => mult0_p_net_x30
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x109,
      ce => ce_1_sg_x189,
      clk => clk_1_sg_x189,
      clr => '0',
      p => mult1_p_net_x30
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7/fir_tap9"

entity fir_tap9_entity_3748bab044 is
  port (
    a: in std_logic_vector(7 downto 0); 
    b: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    imag: out std_logic_vector(32 downto 0); 
    real_x0: out std_logic_vector(32 downto 0)
  );
end fir_tap9_entity_3748bab044;

architecture structural of fir_tap9_entity_3748bab044 is
  signal ce_1_sg_x190: std_logic;
  signal clk_1_sg_x190: std_logic;
  signal constant_op_net: std_logic_vector(24 downto 0);
  signal mult0_p_net_x31: std_logic_vector(32 downto 0);
  signal mult1_p_net_x31: std_logic_vector(32 downto 0);
  signal register0_q_net_x110: std_logic_vector(7 downto 0);
  signal register1_q_net_x110: std_logic_vector(7 downto 0);

begin
  register0_q_net_x110 <= a;
  register1_q_net_x110 <= b;
  ce_1_sg_x190 <= ce_1;
  clk_1_sg_x190 <= clk_1;
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
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      p => mult0_p_net_x31
    );

  mult1: entity work.mult_12191cd2b4
    port map (
      a => constant_op_net,
      b => register1_q_net_x110,
      ce => ce_1_sg_x190,
      clk => clk_1_sg_x190,
      clr => '0',
      p => mult1_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/fir_col7"

entity fir_col7_entity_4a08777f80 is
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
end fir_col7_entity_4a08777f80;

architecture structural of fir_col7_entity_4a08777f80 is
  signal addr15_s_net_x2: std_logic_vector(36 downto 0);
  signal addr15_s_net_x3: std_logic_vector(36 downto 0);
  signal ce_1_sg_x191: std_logic;
  signal clk_1_sg_x191: std_logic;
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
  ce_1_sg_x191 <= ce_1;
  clk_1_sg_x191 <= clk_1;
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

  adder_tree1_8f6baa4acc: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
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

  adder_tree2_3cccde9cff: entity work.adder_tree1_entity_5ca939a699
    port map (
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
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

  fir_tap10_6c9cd36a0f: entity work.fir_tap10_entity_6c9cd36a0f
    port map (
      a => register0_q_net_x27,
      b => register1_q_net_x27,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x17,
      real_x0 => mult0_p_net_x17
    );

  fir_tap11_d91a5908ef: entity work.fir_tap11_entity_d91a5908ef
    port map (
      a => register0_q_net_x28,
      b => register1_q_net_x28,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x18,
      real_x0 => mult0_p_net_x18
    );

  fir_tap12_c62f78d91a: entity work.fir_tap12_entity_c62f78d91a
    port map (
      a => register0_q_net_x29,
      b => register1_q_net_x29,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x19,
      real_x0 => mult0_p_net_x19
    );

  fir_tap13_2c2f1650b8: entity work.fir_tap13_entity_2c2f1650b8
    port map (
      a => register0_q_net_x30,
      b => register1_q_net_x30,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x20,
      real_x0 => mult0_p_net_x20
    );

  fir_tap14_1005a03ce0: entity work.fir_tap14_entity_1005a03ce0
    port map (
      a => register0_q_net_x31,
      b => register1_q_net_x31,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x21,
      real_x0 => mult0_p_net_x21
    );

  fir_tap15_869563a281: entity work.fir_tap15_entity_869563a281
    port map (
      a => register0_q_net_x32,
      b => register1_q_net_x32,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x22,
      real_x0 => mult0_p_net_x22
    );

  fir_tap16_71d37ae8b8: entity work.fir_tap16_entity_71d37ae8b8
    port map (
      a => register0_q_net_x33,
      b => register1_q_net_x33,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x23,
      real_x0 => mult0_p_net_x23
    );

  fir_tap1_23866294a3: entity work.fir_tap1_entity_23866294a3
    port map (
      a => register0_q_net_x26,
      b => register1_q_net_x26,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x16,
      real_x0 => mult0_p_net_x16
    );

  fir_tap2_a15614bf97: entity work.fir_tap2_entity_a15614bf97
    port map (
      a => register0_q_net_x34,
      b => register1_q_net_x34,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x24,
      real_x0 => mult0_p_net_x24
    );

  fir_tap3_ee79acdef3: entity work.fir_tap3_entity_ee79acdef3
    port map (
      a => register0_q_net_x111,
      b => register1_q_net_x111,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x25,
      real_x0 => mult0_p_net_x25
    );

  fir_tap4_d2bacbffb1: entity work.fir_tap4_entity_d2bacbffb1
    port map (
      a => register0_q_net_x112,
      b => register1_q_net_x112,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x26,
      real_x0 => mult0_p_net_x26
    );

  fir_tap5_6fb7654fa6: entity work.fir_tap5_entity_6fb7654fa6
    port map (
      a => register0_q_net_x113,
      b => register1_q_net_x113,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x27,
      real_x0 => mult0_p_net_x27
    );

  fir_tap6_011f3bafc3: entity work.fir_tap6_entity_011f3bafc3
    port map (
      a => register0_q_net_x114,
      b => register1_q_net_x114,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x28,
      real_x0 => mult0_p_net_x28
    );

  fir_tap7_50e32a3312: entity work.fir_tap7_entity_50e32a3312
    port map (
      a => register0_q_net_x115,
      b => register1_q_net_x115,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x29,
      real_x0 => mult0_p_net_x29
    );

  fir_tap8_97183f1b7c: entity work.fir_tap8_entity_97183f1b7c
    port map (
      a => register0_q_net_x116,
      b => register1_q_net_x116,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x30,
      real_x0 => mult0_p_net_x30
    );

  fir_tap9_3748bab044: entity work.fir_tap9_entity_3748bab044
    port map (
      a => register0_q_net_x117,
      b => register1_q_net_x117,
      ce_1 => ce_1_sg_x191,
      clk_1 => clk_1_sg_x191,
      imag => mult1_p_net_x31,
      real_x0 => mult0_p_net_x31
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/imag_sum"

entity imag_sum_entity_643600a1a1 is
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
end imag_sum_entity_643600a1a1;

architecture structural of imag_sum_entity_643600a1a1 is
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
  signal ce_1_sg_x192: std_logic;
  signal clk_1_sg_x192: std_logic;
  signal dly4_q_net: std_logic_vector(36 downto 0);

begin
  ce_1_sg_x192 <= ce_1;
  clk_1_sg_x192 <= clk_1;
  addr15_s_net_x10 <= din1;
  addr15_s_net_x11 <= din2;
  addr15_s_net_x12 <= din3;
  addr15_s_net_x13 <= din4;
  addr15_s_net_x14 <= din5;
  addr15_s_net_x15 <= din6;
  addr15_s_net_x16 <= din7;
  dout <= addr7_s_net_x0;

  addr1: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr3_s_net
    );

  addr5: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr5_s_net
    );

  addr6: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr6_s_net
    );

  addr7: entity work.xladdsub_testing
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
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      en => "1",
      s => addr7_s_net_x0
    );

  dly4: entity work.delay_cdda6c7e6c
    port map (
      ce => ce_1_sg_x192,
      clk => clk_1_sg_x192,
      clr => '0',
      d => addr15_s_net_x16,
      q => dly4_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/real_sum"

entity real_sum_entity_afc545cf76 is
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
end real_sum_entity_afc545cf76;

architecture structural of real_sum_entity_afc545cf76 is
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
  signal ce_1_sg_x193: std_logic;
  signal clk_1_sg_x193: std_logic;
  signal delay_q_net_x0: std_logic;
  signal dly4_q_net: std_logic_vector(36 downto 0);
  signal sync_delay_q_net_x0: std_logic;

begin
  ce_1_sg_x193 <= ce_1;
  clk_1_sg_x193 <= clk_1;
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

  addr1: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr1_s_net
    );

  addr2: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr2_s_net
    );

  addr3: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr3_s_net
    );

  addr5: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr5_s_net
    );

  addr6: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr6_s_net
    );

  addr7: entity work.xladdsub_testing
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
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      en => "1",
      s => addr7_s_net_x0
    );

  dly4: entity work.delay_cdda6c7e6c
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d => addr15_s_net_x15,
      q => dly4_q_net
    );

  sync_delay: entity work.delay_23d71a76f2
    port map (
      ce => ce_1_sg_x193,
      clk => clk_1_sg_x193,
      clr => '0',
      d(0) => delay_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/dec_fir0/ri_to_c"

entity ri_to_c_entity_a2c74d726c is
  port (
    im: in std_logic_vector(29 downto 0); 
    re: in std_logic_vector(29 downto 0); 
    c: out std_logic_vector(59 downto 0)
  );
end ri_to_c_entity_a2c74d726c;

architecture structural of ri_to_c_entity_a2c74d726c is
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

-- Generated from Simulink block "testing/dec_fir0"

entity dec_fir0_entity_4fb6ae1aab is
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
end dec_fir0_entity_4fb6ae1aab;

architecture structural of dec_fir0_entity_4fb6ae1aab is
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
  signal ce_1_sg_x194: std_logic;
  signal clk_1_sg_x194: std_logic;
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
  ce_1_sg_x194 <= ce_1;
  clk_1_sg_x194 <= clk_1;
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
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
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
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
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
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      d(0) => register2_q_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  fir_col1_44fda80ac2: entity work.fir_col1_entity_44fda80ac2
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col2_4d89652474: entity work.fir_col2_entity_4d89652474
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col3_e7b6cfa219: entity work.fir_col3_entity_e7b6cfa219
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col4_ad4c3f4478: entity work.fir_col4_entity_ad4c3f4478
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col5_1c37f008aa: entity work.fir_col5_entity_1c37f008aa
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col6_08d2f28b89: entity work.fir_col6_entity_08d2f28b89
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  fir_col7_4a08777f80: entity work.fir_col7_entity_4a08777f80
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  imag_sum_643600a1a1: entity work.imag_sum_entity_643600a1a1
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
      din1 => addr15_s_net_x10,
      din2 => addr15_s_net_x12,
      din3 => addr15_s_net_x14,
      din4 => addr15_s_net_x16,
      din5 => addr15_s_net_x18,
      din6 => addr15_s_net_x20,
      din7 => addr15_s_net_x22,
      dout => addr7_s_net_x0
    );

  real_sum_afc545cf76: entity work.real_sum_entity_afc545cf76
    port map (
      ce_1 => ce_1_sg_x194,
      clk_1 => clk_1_sg_x194,
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

  ri_to_c_a2c74d726c: entity work.ri_to_c_entity_a2c74d726c
    port map (
      im => convert2_dout_net_x0,
      re => convert1_dout_net_x0,
      c => concat_y_net_x2
    );

  shift1: entity work.shift_bf4b7863c1
    port map (
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      clr => '0',
      ip => addr7_s_net_x1,
      op => shift1_op_net
    );

  shift2: entity work.shift_bf4b7863c1
    port map (
      ce => ce_1_sg_x194,
      clk => clk_1_sg_x194,
      clr => '0',
      ip => addr7_s_net_x0,
      op => shift2_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/delay_wideband_prog0/barrel_switcher"

entity barrel_switcher_entity_6ba68f1fbe is
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
end barrel_switcher_entity_6ba68f1fbe;

architecture structural of barrel_switcher_entity_6ba68f1fbe is
  signal ce_1_sg_x195: std_logic;
  signal clk_1_sg_x195: std_logic;
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
  ce_1_sg_x195 <= ce_1;
  clk_1_sg_x195 <= clk_1;
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
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d => delay_sel_q_net_x0,
      q => delay1_q_net
    );

  delay2: entity work.delay_4ca77626c8
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d => delay1_q_net,
      q => delay2_q_net
    );

  delay3: entity work.delay_4ca77626c8
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d => delay2_q_net,
      q => delay3_q_net
    );

  delay_sync: entity work.delay_c53de546ea
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d(0) => sync_delay_q_net_x0,
      q(0) => delay_sync_q_net_x0
    );

  mux101: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x27,
      d1 => dual_port_ram_doutb_net_x21,
      sel(0) => slice1_y_net,
      y => mux101_y_net
    );

  mux102: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux101_y_net,
      d1 => mux141_y_net,
      sel(0) => slice2_y_net,
      y => mux102_y_net
    );

  mux103: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux102_y_net,
      d1 => mux122_y_net,
      sel(0) => slice3_y_net,
      y => mux103_y_net
    );

  mux104: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux103_y_net,
      d1 => mux113_y_net,
      sel(0) => slice4_y_net,
      y => mux104_y_net_x1
    );

  mux11: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x22,
      d1 => dual_port_ram_doutb_net_x28,
      sel(0) => slice1_y_net,
      y => mux11_y_net
    );

  mux111: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x26,
      d1 => dual_port_ram_doutb_net_x20,
      sel(0) => slice1_y_net,
      y => mux111_y_net
    );

  mux112: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux111_y_net,
      d1 => mux151_y_net,
      sel(0) => slice2_y_net,
      y => mux112_y_net
    );

  mux113: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux112_y_net,
      d1 => mux132_y_net,
      sel(0) => slice3_y_net,
      y => mux113_y_net
    );

  mux114: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux113_y_net,
      d1 => mux123_y_net,
      sel(0) => slice4_y_net,
      y => mux114_y_net_x1
    );

  mux12: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux11_y_net,
      d1 => mux51_y_net,
      sel(0) => slice2_y_net,
      y => mux12_y_net
    );

  mux121: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x25,
      d1 => dual_port_ram_doutb_net_x19,
      sel(0) => slice1_y_net,
      y => mux121_y_net
    );

  mux122: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux121_y_net,
      d1 => mux161_y_net,
      sel(0) => slice2_y_net,
      y => mux122_y_net
    );

  mux123: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux122_y_net,
      d1 => mux142_y_net,
      sel(0) => slice3_y_net,
      y => mux123_y_net
    );

  mux124: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux123_y_net,
      d1 => mux133_y_net,
      sel(0) => slice4_y_net,
      y => mux124_y_net_x1
    );

  mux13: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux12_y_net,
      d1 => mux32_y_net,
      sel(0) => slice3_y_net,
      y => mux13_y_net
    );

  mux131: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x24,
      d1 => dual_port_ram_doutb_net_x18,
      sel(0) => slice1_y_net,
      y => mux131_y_net
    );

  mux132: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux131_y_net,
      d1 => mux11_y_net,
      sel(0) => slice2_y_net,
      y => mux132_y_net
    );

  mux133: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux132_y_net,
      d1 => mux152_y_net,
      sel(0) => slice3_y_net,
      y => mux133_y_net
    );

  mux134: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux133_y_net,
      d1 => mux143_y_net,
      sel(0) => slice4_y_net,
      y => mux134_y_net_x1
    );

  mux14: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux13_y_net,
      d1 => mux23_y_net,
      sel(0) => slice4_y_net,
      y => mux14_y_net_x1
    );

  mux141: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x23,
      d1 => dual_port_ram_doutb_net_x17,
      sel(0) => slice1_y_net,
      y => mux141_y_net
    );

  mux142: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux141_y_net,
      d1 => mux21_y_net,
      sel(0) => slice2_y_net,
      y => mux142_y_net
    );

  mux143: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux142_y_net,
      d1 => mux162_y_net,
      sel(0) => slice3_y_net,
      y => mux143_y_net
    );

  mux144: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux143_y_net,
      d1 => mux153_y_net,
      sel(0) => slice4_y_net,
      y => mux144_y_net_x1
    );

  mux151: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x16,
      d1 => dual_port_ram_doutb_net_x30,
      sel(0) => slice1_y_net,
      y => mux151_y_net
    );

  mux152: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux151_y_net,
      d1 => mux31_y_net,
      sel(0) => slice2_y_net,
      y => mux152_y_net
    );

  mux153: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux152_y_net,
      d1 => mux12_y_net,
      sel(0) => slice3_y_net,
      y => mux153_y_net
    );

  mux154: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux153_y_net,
      d1 => mux163_y_net,
      sel(0) => slice4_y_net,
      y => mux154_y_net_x1
    );

  mux161: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x15,
      d1 => dual_port_ram_doutb_net_x29,
      sel(0) => slice1_y_net,
      y => mux161_y_net
    );

  mux162: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux161_y_net,
      d1 => mux41_y_net,
      sel(0) => slice2_y_net,
      y => mux162_y_net
    );

  mux163: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux162_y_net,
      d1 => mux22_y_net,
      sel(0) => slice3_y_net,
      y => mux163_y_net
    );

  mux164: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux163_y_net,
      d1 => mux13_y_net,
      sel(0) => slice4_y_net,
      y => mux164_y_net_x1
    );

  mux21: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x21,
      d1 => dual_port_ram_doutb_net_x27,
      sel(0) => slice1_y_net,
      y => mux21_y_net
    );

  mux22: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux21_y_net,
      d1 => mux61_y_net,
      sel(0) => slice2_y_net,
      y => mux22_y_net
    );

  mux23: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux22_y_net,
      d1 => mux42_y_net,
      sel(0) => slice3_y_net,
      y => mux23_y_net
    );

  mux24: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux23_y_net,
      d1 => mux33_y_net,
      sel(0) => slice4_y_net,
      y => mux24_y_net_x1
    );

  mux31: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x20,
      d1 => dual_port_ram_doutb_net_x26,
      sel(0) => slice1_y_net,
      y => mux31_y_net
    );

  mux32: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux31_y_net,
      d1 => mux71_y_net,
      sel(0) => slice2_y_net,
      y => mux32_y_net
    );

  mux33: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux32_y_net,
      d1 => mux52_y_net,
      sel(0) => slice3_y_net,
      y => mux33_y_net
    );

  mux34: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux33_y_net,
      d1 => mux43_y_net,
      sel(0) => slice4_y_net,
      y => mux34_y_net_x1
    );

  mux41: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x19,
      d1 => dual_port_ram_doutb_net_x25,
      sel(0) => slice1_y_net,
      y => mux41_y_net
    );

  mux42: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux41_y_net,
      d1 => mux81_y_net,
      sel(0) => slice2_y_net,
      y => mux42_y_net
    );

  mux43: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux42_y_net,
      d1 => mux62_y_net,
      sel(0) => slice3_y_net,
      y => mux43_y_net
    );

  mux44: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux43_y_net,
      d1 => mux53_y_net,
      sel(0) => slice4_y_net,
      y => mux44_y_net_x1
    );

  mux51: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x18,
      d1 => dual_port_ram_doutb_net_x24,
      sel(0) => slice1_y_net,
      y => mux51_y_net
    );

  mux52: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux51_y_net,
      d1 => mux91_y_net,
      sel(0) => slice2_y_net,
      y => mux52_y_net
    );

  mux53: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux52_y_net,
      d1 => mux72_y_net,
      sel(0) => slice3_y_net,
      y => mux53_y_net
    );

  mux54: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux53_y_net,
      d1 => mux63_y_net,
      sel(0) => slice4_y_net,
      y => mux54_y_net_x1
    );

  mux61: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x17,
      d1 => dual_port_ram_doutb_net_x23,
      sel(0) => slice1_y_net,
      y => mux61_y_net
    );

  mux62: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux61_y_net,
      d1 => mux101_y_net,
      sel(0) => slice2_y_net,
      y => mux62_y_net
    );

  mux63: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux62_y_net,
      d1 => mux82_y_net,
      sel(0) => slice3_y_net,
      y => mux63_y_net
    );

  mux64: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux63_y_net,
      d1 => mux73_y_net,
      sel(0) => slice4_y_net,
      y => mux64_y_net_x1
    );

  mux71: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x30,
      d1 => dual_port_ram_doutb_net_x16,
      sel(0) => slice1_y_net,
      y => mux71_y_net
    );

  mux72: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux71_y_net,
      d1 => mux111_y_net,
      sel(0) => slice2_y_net,
      y => mux72_y_net
    );

  mux73: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux72_y_net,
      d1 => mux92_y_net,
      sel(0) => slice3_y_net,
      y => mux73_y_net
    );

  mux74: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux73_y_net,
      d1 => mux83_y_net,
      sel(0) => slice4_y_net,
      y => mux74_y_net_x1
    );

  mux81: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x29,
      d1 => dual_port_ram_doutb_net_x15,
      sel(0) => slice1_y_net,
      y => mux81_y_net
    );

  mux82: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux81_y_net,
      d1 => mux121_y_net,
      sel(0) => slice2_y_net,
      y => mux82_y_net
    );

  mux83: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux82_y_net,
      d1 => mux102_y_net,
      sel(0) => slice3_y_net,
      y => mux83_y_net
    );

  mux84: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux83_y_net,
      d1 => mux93_y_net,
      sel(0) => slice4_y_net,
      y => mux84_y_net_x1
    );

  mux91: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => dual_port_ram_doutb_net_x28,
      d1 => dual_port_ram_doutb_net_x22,
      sel(0) => slice1_y_net,
      y => mux91_y_net
    );

  mux92: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux91_y_net,
      d1 => mux131_y_net,
      sel(0) => slice2_y_net,
      y => mux92_y_net
    );

  mux93: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
      clr => '0',
      d0 => mux92_y_net,
      d1 => mux112_y_net,
      sel(0) => slice3_y_net,
      y => mux93_y_net
    );

  mux94: entity work.mux_7f6b7da686
    port map (
      ce => ce_1_sg_x195,
      clk => clk_1_sg_x195,
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

-- Generated from Simulink block "testing/delay_wideband_prog0/delay_dp0"

entity delay_dp0_entity_ad2360f468 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(1 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp0_entity_ad2360f468;

architecture structural of delay_dp0_entity_ad2360f468 is
  signal addsub_s_net: std_logic_vector(1 downto 0);
  signal bram_rd_addrs_y_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x196: std_logic;
  signal clk_1_sg_x196: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal dual_port_ram_doutb_net_x16: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x17: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x196 <= ce_1;
  clk_1_sg_x196 <= clk_1;
  bram_rd_addrs_y_net_x0 <= delay;
  reinterpret_output_port_net_x17 <= din;
  dout <= dual_port_ram_doutb_net_x16;

  addsub: entity work.addsub_b0bd9ccd8b
    port map (
      a => wr_addr_op_net,
      b => bram_rd_addrs_y_net_x0,
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
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

  dual_port_ram: entity work.xldpram_testing
    generic map (
      c_address_width_a => 2,
      c_address_width_b => 2,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_80ec4706477d97c1",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x196,
      a_clk => clk_1_sg_x196,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x196,
      b_clk => clk_1_sg_x196,
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
      ce => ce_1_sg_x196,
      clk => clk_1_sg_x196,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/delay_wideband_prog0/delay_dp1"

entity delay_dp1_entity_5305b5a35e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    delay: in std_logic_vector(2 downto 0); 
    din: in std_logic_vector(7 downto 0); 
    dout: out std_logic_vector(7 downto 0)
  );
end delay_dp1_entity_5305b5a35e;

architecture structural of delay_dp1_entity_5305b5a35e is
  signal addsub1_s_net_x0: std_logic_vector(2 downto 0);
  signal addsub_s_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x197: std_logic;
  signal clk_1_sg_x197: std_logic;
  signal constant2_op_net: std_logic;
  signal constant4_op_net: std_logic;
  signal dual_port_ram_doutb_net_x17: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net_x18: std_logic_vector(7 downto 0);
  signal wr_addr_op_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x197 <= ce_1;
  clk_1_sg_x197 <= clk_1;
  addsub1_s_net_x0 <= delay;
  reinterpret_output_port_net_x18 <= din;
  dout <= dual_port_ram_doutb_net_x17;

  addsub: entity work.addsub_32bd75a38d
    port map (
      a => wr_addr_op_net,
      b => addsub1_s_net_x0,
      ce => ce_1_sg_x197,
      clk => clk_1_sg_x197,
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

  dual_port_ram: entity work.xldpram_testing
    generic map (
      c_address_width_a => 2,
      c_address_width_b => 2,
      c_width_a => 8,
      c_width_b => 8,
      core_name0 => "bmg_72_80ec4706477d97c1",
      latency => 2
    )
    port map (
      a_ce => ce_1_sg_x197,
      a_clk => clk_1_sg_x197,
      addra => wr_addr_op_net,
      addrb => addsub_s_net,
      b_ce => ce_1_sg_x197,
      b_clk => clk_1_sg_x197,
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
      ce => ce_1_sg_x197,
      clk => clk_1_sg_x197,
      clr => '0',
      op => wr_addr_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/delay_wideband_prog0"

entity delay_wideband_prog0_entity_49d13860ed is
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
end delay_wideband_prog0_entity_49d13860ed;

architecture structural of delay_wideband_prog0_entity_49d13860ed is
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
  signal ce_1_sg_x212: std_logic;
  signal clk_1_sg_x212: std_logic;
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
  ce_1_sg_x212 <= ce_1;
  clk_1_sg_x212 <= clk_1;
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

  addsub1: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub1_s_net_x0
    );

  addsub10: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub10_s_net_x0
    );

  addsub11: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub11_s_net_x0
    );

  addsub12: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub12_s_net_x0
    );

  addsub13: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub13_s_net_x0
    );

  addsub14: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub14_s_net_x0
    );

  addsub15: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub15_s_net_x0
    );

  addsub2: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub2_s_net_x0
    );

  addsub3: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub3_s_net_x0
    );

  addsub4: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub4_s_net_x0
    );

  addsub5: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub5_s_net_x0
    );

  addsub6: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub6_s_net_x0
    );

  addsub7: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub7_s_net_x0
    );

  addsub8: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub8_s_net_x0
    );

  addsub9: entity work.xladdsub_testing
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      en => "1",
      s => addsub9_s_net_x0
    );

  barrel_switcher_6ba68f1fbe: entity work.barrel_switcher_entity_6ba68f1fbe
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      din(0) => relational9_op_net,
      en => "1",
      dout(0) => convert9_dout_net
    );

  delay_dp0_ad2360f468: entity work.delay_dp0_entity_ad2360f468
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => bram_rd_addrs_y_net_x0,
      din => reinterpret_output_port_net_x33,
      dout => dual_port_ram_doutb_net_x16
    );

  delay_dp10_d5b99ecf06: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub10_s_net_x0,
      din => reinterpret_output_port_net_x35,
      dout => dual_port_ram_doutb_net_x18
    );

  delay_dp11_e733af3693: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub11_s_net_x0,
      din => reinterpret_output_port_net_x36,
      dout => dual_port_ram_doutb_net_x19
    );

  delay_dp12_8f38a40f25: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub12_s_net_x0,
      din => reinterpret_output_port_net_x37,
      dout => dual_port_ram_doutb_net_x20
    );

  delay_dp13_69f419871c: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub13_s_net_x0,
      din => reinterpret_output_port_net_x38,
      dout => dual_port_ram_doutb_net_x21
    );

  delay_dp14_6ca6524458: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub14_s_net_x0,
      din => reinterpret_output_port_net_x39,
      dout => dual_port_ram_doutb_net_x22
    );

  delay_dp15_fa0358efde: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub15_s_net_x0,
      din => reinterpret_output_port_net_x40,
      dout => dual_port_ram_doutb_net_x23
    );

  delay_dp1_5305b5a35e: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub1_s_net_x0,
      din => reinterpret_output_port_net_x34,
      dout => dual_port_ram_doutb_net_x17
    );

  delay_dp2_2c664372c3: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub2_s_net_x0,
      din => reinterpret_output_port_net_x41,
      dout => dual_port_ram_doutb_net_x24
    );

  delay_dp3_0c66a43680: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub3_s_net_x0,
      din => reinterpret_output_port_net_x42,
      dout => dual_port_ram_doutb_net_x25
    );

  delay_dp4_effb1b1c1b: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub4_s_net_x0,
      din => reinterpret_output_port_net_x43,
      dout => dual_port_ram_doutb_net_x26
    );

  delay_dp5_3491cc8ef5: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub5_s_net_x0,
      din => reinterpret_output_port_net_x44,
      dout => dual_port_ram_doutb_net_x27
    );

  delay_dp6_afa68a985f: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub6_s_net_x0,
      din => reinterpret_output_port_net_x45,
      dout => dual_port_ram_doutb_net_x28
    );

  delay_dp7_6ec981769d: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub7_s_net_x0,
      din => reinterpret_output_port_net_x46,
      dout => dual_port_ram_doutb_net_x29
    );

  delay_dp8_920856b79c: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
      delay => addsub8_s_net_x0,
      din => reinterpret_output_port_net_x47,
      dout => dual_port_ram_doutb_net_x30
    );

  delay_dp9_f25b566c6d: entity work.delay_dp1_entity_5305b5a35e
    port map (
      ce_1 => ce_1_sg_x212,
      clk_1 => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      d => register1_q_net_x0,
      en(0) => constant3_op_net_x1,
      rst => "0",
      q => delay_reg_q_net
    );

  delay_sel: entity work.delay_ffd731c185
    port map (
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
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
      ce => ce_1_sg_x212,
      clk => clk_1_sg_x212,
      clr => '0',
      d(0) => register0_q_net_x0,
      q(0) => sync_delay_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/freeze_cntr"

entity freeze_cntr_entity_86320f54e6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    addr: out std_logic_vector(11 downto 0)
  );
end freeze_cntr_entity_86320f54e6;

architecture structural of freeze_cntr_entity_86320f54e6 is
  signal ce_1_sg_x213: std_logic;
  signal clk_1_sg_x213: std_logic;
  signal constant2_op_net_x0: std_logic;
  signal counter3_op_net: std_logic_vector(12 downto 0);
  signal enable1_y_net: std_logic;
  signal enable_y_net_x0: std_logic_vector(11 downto 0);
  signal inverter1_op_net: std_logic;
  signal logical5_y_net: std_logic;
  signal register1_q_net_x0: std_logic;

begin
  ce_1_sg_x213 <= ce_1;
  clk_1_sg_x213 <= clk_1;
  constant2_op_net_x0 <= en;
  register1_q_net_x0 <= rst;
  addr <= enable_y_net_x0;

  counter3: entity work.counter_64a371be82
    port map (
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
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
      ce => ce_1_sg_x213,
      clk => clk_1_sg_x213,
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

-- Generated from Simulink block "testing/get_data"

entity get_data_entity_6c3303de26 is
  port (
    testing_get_data_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic
  );
end get_data_entity_6c3303de26;

architecture structural of get_data_entity_6c3303de26 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal slice_reg_y_net_x0: std_logic;
  signal testing_get_data_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_get_data_user_data_out_net_x0 <= testing_get_data_user_data_out;
  in_reg <= slice_reg_y_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_get_data_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/pipeline1"

entity pipeline1_entity_956a46503e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end pipeline1_entity_956a46503e;

architecture structural of pipeline1_entity_956a46503e is
  signal ce_1_sg_x214: std_logic;
  signal clk_1_sg_x214: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal register0_q_net: std_logic_vector(31 downto 0);
  signal register1_q_net: std_logic_vector(31 downto 0);
  signal register2_q_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x214 <= ce_1;
  clk_1_sg_x214 <= clk_1;
  concat_y_net_x0 <= d;
  q <= register2_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      d => concat_y_net_x0,
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
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x214,
      clk => clk_1_sg_x214,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline16"

entity pipeline16_entity_5693f7c5d0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline16_entity_5693f7c5d0;

architecture structural of pipeline16_entity_5693f7c5d0 is
  signal ce_1_sg_x215: std_logic;
  signal clk_1_sg_x215: std_logic;
  signal delay_sync_q_net_x2: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net: std_logic;
  signal register2_q_net_x1: std_logic;

begin
  ce_1_sg_x215 <= ce_1;
  clk_1_sg_x215 <= clk_1;
  delay_sync_q_net_x2 <= d;
  q <= register2_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x215,
      clk => clk_1_sg_x215,
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
      ce => ce_1_sg_x215,
      clk => clk_1_sg_x215,
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
      ce => ce_1_sg_x215,
      clk => clk_1_sg_x215,
      d(0) => register1_q_net,
      en => "1",
      rst => "0",
      q(0) => register2_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline2"

entity pipeline2_entity_d43ad4c6f7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline2_entity_d43ad4c6f7;

architecture structural of pipeline2_entity_d43ad4c6f7 is
  signal ce_1_sg_x216: std_logic;
  signal clk_1_sg_x216: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net_x1: std_logic;
  signal slice_reg_y_net_x1: std_logic;

begin
  ce_1_sg_x216 <= ce_1;
  clk_1_sg_x216 <= clk_1;
  slice_reg_y_net_x1 <= d;
  q <= register1_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x216,
      clk => clk_1_sg_x216,
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
      ce => ce_1_sg_x216,
      clk => clk_1_sg_x216,
      d(0) => register0_q_net,
      en => "1",
      rst => "0",
      q(0) => register1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline251"

entity pipeline251_entity_4d7cee7a55 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end pipeline251_entity_4d7cee7a55;

architecture structural of pipeline251_entity_4d7cee7a55 is
  signal ce_1_sg_x217: std_logic;
  signal clk_1_sg_x217: std_logic;
  signal register0_q_net_x0: std_logic;
  signal slice_reg_y_net_x1: std_logic;

begin
  ce_1_sg_x217 <= ce_1;
  clk_1_sg_x217 <= clk_1;
  slice_reg_y_net_x1 <= d;
  q <= register0_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x217,
      clk => clk_1_sg_x217,
      d(0) => slice_reg_y_net_x1,
      en => "1",
      rst => "0",
      q(0) => register0_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline254"

entity pipeline254_entity_90e40f3669 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(31 downto 0); 
    q: out std_logic_vector(31 downto 0)
  );
end pipeline254_entity_90e40f3669;

architecture structural of pipeline254_entity_90e40f3669 is
  signal ce_1_sg_x219: std_logic;
  signal clk_1_sg_x219: std_logic;
  signal register0_q_net: std_logic_vector(31 downto 0);
  signal register1_q_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x219 <= ce_1;
  clk_1_sg_x219 <= clk_1;
  reint1_output_port_net_x1 <= d;
  q <= register1_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
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
      ce => ce_1_sg_x219,
      clk => clk_1_sg_x219,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline256"

entity pipeline256_entity_a49ba71cff is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(7 downto 0); 
    q: out std_logic_vector(7 downto 0)
  );
end pipeline256_entity_a49ba71cff;

architecture structural of pipeline256_entity_a49ba71cff is
  signal ce_1_sg_x220: std_logic;
  signal clk_1_sg_x220: std_logic;
  signal mux164_y_net_x3: std_logic_vector(7 downto 0);
  signal register0_q_net: std_logic_vector(7 downto 0);
  signal register1_q_net: std_logic_vector(7 downto 0);
  signal register2_q_net_x33: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x220 <= ce_1;
  clk_1_sg_x220 <= clk_1;
  mux164_y_net_x3 <= d;
  q <= register2_q_net_x33;

  register0: entity work.xlregister
    generic map (
      d_width => 8,
      init_value => b"00000000"
    )
    port map (
      ce => ce_1_sg_x220,
      clk => clk_1_sg_x220,
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
      ce => ce_1_sg_x220,
      clk => clk_1_sg_x220,
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
      ce => ce_1_sg_x220,
      clk => clk_1_sg_x220,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x33
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/pipeline276"

entity pipeline276_entity_7f18d38ff3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(127 downto 0); 
    q: out std_logic_vector(127 downto 0)
  );
end pipeline276_entity_7f18d38ff3;

architecture structural of pipeline276_entity_7f18d38ff3 is
  signal ce_1_sg_x236: std_logic;
  signal clk_1_sg_x236: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(127 downto 0);
  signal register0_q_net: std_logic_vector(127 downto 0);
  signal register1_q_net: std_logic_vector(127 downto 0);
  signal register2_q_net_x1: std_logic_vector(127 downto 0);

begin
  ce_1_sg_x236 <= ce_1;
  clk_1_sg_x236 <= clk_1;
  concatenate_y_net_x1 <= d;
  q <= register2_q_net_x1;

  register0: entity work.xlregister
    generic map (
      d_width => 128,
      init_value => b"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x236,
      clk => clk_1_sg_x236,
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
      ce => ce_1_sg_x236,
      clk => clk_1_sg_x236,
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
      ce => ce_1_sg_x236,
      clk => clk_1_sg_x236,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/snap_trig"

entity snap_trig_entity_7d747573d1 is
  port (
    testing_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end snap_trig_entity_7d747573d1;

architecture structural of snap_trig_entity_7d747573d1 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_snap_trig_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_snap_trig_user_data_out_net_x0 <= testing_snap_trig_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_snap_trig_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/sync_gen/posedge3"

entity posedge3_entity_3083a61c64 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(31 downto 0); 
    out_x0: out std_logic_vector(31 downto 0)
  );
end posedge3_entity_3083a61c64;

architecture structural of posedge3_entity_3083a61c64 is
  signal ce_1_sg_x239: std_logic;
  signal clk_1_sg_x239: std_logic;
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal edge_op_y_net_x0: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x239 <= ce_1;
  clk_1_sg_x239 <= clk_1;
  reint1_output_port_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x239,
      clk => clk_1_sg_x239,
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
      ce => ce_1_sg_x239,
      clk => clk_1_sg_x239,
      clr => '0',
      ip => reint1_output_port_net_x0,
      op => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing/sync_gen/sync"

entity sync_entity_2e1ef56150 is
  port (
    testing_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_entity_2e1ef56150;

architecture structural of sync_entity_2e1ef56150 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_sync_gen_sync_user_data_out_net_x0 <= testing_sync_gen_sync_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_sync_gen_sync_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/sync_gen/sync_period_sel"

entity sync_period_sel_entity_499c186b98 is
  port (
    testing_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_period_sel_entity_499c186b98;

architecture structural of sync_period_sel_entity_499c186b98 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_period_sel_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_sync_gen_sync_period_sel_user_data_out_net_x0 <= testing_sync_gen_sync_period_sel_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_sync_gen_sync_period_sel_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/sync_gen/sync_period_var"

entity sync_period_var_entity_d3280152ab is
  port (
    testing_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end sync_period_var_entity_d3280152ab;

architecture structural of sync_period_var_entity_d3280152ab is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_period_var_user_data_out_net_x0: std_logic_vector(31 downto 0);

begin
  testing_sync_gen_sync_period_var_user_data_out_net_x0 <= testing_sync_gen_sync_period_var_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => testing_sync_gen_sync_period_var_user_data_out_net_x0,
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

-- Generated from Simulink block "testing/sync_gen"

entity sync_gen_entity_7f0630e1a2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    testing_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    sync_out: out std_logic
  );
end sync_gen_entity_7f0630e1a2;

architecture structural of sync_gen_entity_7f0630e1a2 is
  signal ce_1_sg_x240: std_logic;
  signal clk_1_sg_x240: std_logic;
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
  signal testing_sync_gen_sync_period_sel_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_period_var_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_user_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x240 <= ce_1;
  clk_1_sg_x240 <= clk_1;
  testing_sync_gen_sync_period_sel_user_data_out_net_x1 <= testing_sync_gen_sync_period_sel_user_data_out;
  testing_sync_gen_sync_period_var_user_data_out_net_x1 <= testing_sync_gen_sync_period_var_user_data_out;
  testing_sync_gen_sync_user_data_out_net_x1 <= testing_sync_gen_sync_user_data_out;
  sync_out <= edge_op_y_net_x2;

  counter3: entity work.counter_25c920466b
    port map (
      ce => ce_1_sg_x240,
      clk => clk_1_sg_x240,
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

  posedge1_c4d71f5721: entity work.edge_detect_entity_1579c06dba
    port map (
      ce_1 => ce_1_sg_x240,
      clk_1 => clk_1_sg_x240,
      in_x0 => logical_y_net_x0,
      out_x0 => edge_op_y_net_x2
    );

  posedge3_3083a61c64: entity work.posedge3_entity_3083a61c64
    port map (
      ce_1 => ce_1_sg_x240,
      clk_1 => clk_1_sg_x240,
      in_x0 => reint1_output_port_net_x1,
      out_x0 => edge_op_y_net_x1
    );

  relational: entity work.relational_fc0914149b
    port map (
      a => mux_y_net,
      b => counter3_op_net,
      ce => ce_1_sg_x240,
      clk => clk_1_sg_x240,
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

  sync_2e1ef56150: entity work.sync_entity_2e1ef56150
    port map (
      testing_sync_gen_sync_user_data_out => testing_sync_gen_sync_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  sync_period_const: entity work.constant_c74e57c994
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => sync_period_const_op_net
    );

  sync_period_sel_499c186b98: entity work.sync_period_sel_entity_499c186b98
    port map (
      testing_sync_gen_sync_period_sel_user_data_out => testing_sync_gen_sync_period_sel_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x0
    );

  sync_period_var_d3280152ab: entity work.sync_period_var_entity_d3280152ab
    port map (
      testing_sync_gen_sync_period_var_user_data_out => testing_sync_gen_sync_period_var_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "testing"

entity testing is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    testing_1narrow_data_out: in std_logic_vector(31 downto 0); 
    testing_3narrow_data_out: in std_logic_vector(31 downto 0); 
    testing_4narrow_data_out: in std_logic_vector(31 downto 0); 
    testing_4wide_data_out: in std_logic_vector(31 downto 0); 
    testing_adc0_delay_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap0_bram_data_out: in std_logic_vector(127 downto 0); 
    testing_adcsnap0_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap0_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap1_bram_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap1_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap1_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap2_bram_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap2_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    testing_adcsnap2_trig_offset_user_data_out: in std_logic_vector(31 downto 0); 
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
    testing_snap_trig_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_period_sel_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_period_var_user_data_out: in std_logic_vector(31 downto 0); 
    testing_sync_gen_sync_user_data_out: in std_logic_vector(31 downto 0); 
    testing_1narrow_addr: out std_logic_vector(9 downto 0); 
    testing_1narrow_data_in: out std_logic_vector(31 downto 0); 
    testing_1narrow_we: out std_logic; 
    testing_3narrow_addr: out std_logic_vector(9 downto 0); 
    testing_3narrow_data_in: out std_logic_vector(31 downto 0); 
    testing_3narrow_we: out std_logic; 
    testing_4narrow_addr: out std_logic_vector(9 downto 0); 
    testing_4narrow_data_in: out std_logic_vector(31 downto 0); 
    testing_4narrow_we: out std_logic; 
    testing_4wide_addr: out std_logic_vector(9 downto 0); 
    testing_4wide_data_in: out std_logic_vector(31 downto 0); 
    testing_4wide_we: out std_logic; 
    testing_adcsnap0_bram_addr: out std_logic_vector(9 downto 0); 
    testing_adcsnap0_bram_data_in: out std_logic_vector(127 downto 0); 
    testing_adcsnap0_bram_we: out std_logic; 
    testing_adcsnap0_status_user_data_in: out std_logic_vector(31 downto 0); 
    testing_adcsnap1_bram_addr: out std_logic_vector(9 downto 0); 
    testing_adcsnap1_bram_data_in: out std_logic_vector(31 downto 0); 
    testing_adcsnap1_bram_we: out std_logic; 
    testing_adcsnap1_status_user_data_in: out std_logic_vector(31 downto 0); 
    testing_adcsnap2_bram_addr: out std_logic_vector(9 downto 0); 
    testing_adcsnap2_bram_data_in: out std_logic_vector(31 downto 0); 
    testing_adcsnap2_bram_we: out std_logic; 
    testing_adcsnap2_status_user_data_in: out std_logic_vector(31 downto 0)
  );
end testing;

architecture structural of testing is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "testing,sysgen_core,{clock_period=7.40740000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=4550,xilinx_adder_subtracter_block=267,xilinx_arithmetic_relational_operator_block=31,xilinx_assert_block=3,xilinx_binary_shift_operator_block=5,xilinx_bit_slice_extractor_block=122,xilinx_bus_concatenator_block=46,xilinx_bus_multiplexer_block=97,xilinx_constant_block_block=259,xilinx_counter_block=30,xilinx_delay_block=144,xilinx_disregard_subsystem_for_generation_block=7,xilinx_dual_port_random_access_memory_block=16,xilinx_fdatool_interface_block=5,xilinx_fir_compiler_5_0_block=4,xilinx_gateway_in_block=58,xilinx_gateway_out_block=31,xilinx_inverter_block=35,xilinx_logical_block_block=47,xilinx_multiplier_block=224,xilinx_register_block=330,xilinx_single_port_random_access_memory_block=7,xilinx_system_generator_block=1,xilinx_type_converter_block=66,xilinx_type_reinterpreter_block=130,xilinx_wavescope_block=1,}";

  signal ce_1_sg_x241: std_logic;
  signal clk_1_sg_x241: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
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
  signal constant1_op_net_x2: std_logic;
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
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal convert1_dout_net: std_logic_vector(31 downto 0);
  signal convert2_dout_net: std_logic_vector(31 downto 0);
  signal convert3_dout_net: std_logic_vector(31 downto 0);
  signal convert4_dout_net: std_logic_vector(31 downto 0);
  signal convert_dout_net_x3: std_logic_vector(19 downto 0);
  signal delay16_q_net_x0: std_logic;
  signal delay1_q_net_x3: std_logic;
  signal delay2_q_net_x0: std_logic;
  signal delay3_q_net_x0: std_logic;
  signal delay4_q_net_x0: std_logic;
  signal delay_q_net_x3: std_logic;
  signal delay_sync_q_net_x2: std_logic;
  signal edge_op_y_net_x2: std_logic;
  signal enable_y_net_x0: std_logic_vector(11 downto 0);
  signal force_re_output_port_net_x0: std_logic_vector(29 downto 0);
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
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
  signal register1_q_net_x0: std_logic_vector(31 downto 0);
  signal register1_q_net_x1: std_logic;
  signal register1_q_net_x2: std_logic_vector(31 downto 0);
  signal register2_q_net_x1: std_logic_vector(31 downto 0);
  signal register2_q_net_x2: std_logic;
  signal register2_q_net_x3: std_logic_vector(127 downto 0);
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
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(41 downto 0);
  signal reinterpret2_output_port_net: std_logic_vector(41 downto 0);
  signal reinterpret3_output_port_net: std_logic_vector(41 downto 0);
  signal reinterpret4_output_port_net: std_logic_vector(41 downto 0);
  signal reinterpret5_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reinterpret6_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret7_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret8_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(29 downto 0);
  signal reinterpret_output_port_net_x0: std_logic_vector(41 downto 0);
  signal reinterpret_output_port_net_x1: std_logic_vector(41 downto 0);
  signal reinterpret_output_port_net_x2: std_logic_vector(41 downto 0);
  signal reinterpret_output_port_net_x3: std_logic_vector(41 downto 0);
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
  signal slice1_y_net_x3: std_logic;
  signal slice2_y_net_x7: std_logic_vector(9 downto 0);
  signal slice_reg_y_net_x1: std_logic;
  signal slice_reg_y_net_x2: std_logic;
  signal slice_y_net_x5: std_logic;
  signal sync_delay_q_net_x1: std_logic;
  signal testing_1narrow_addr_net: std_logic_vector(9 downto 0);
  signal testing_1narrow_data_in_net: std_logic_vector(31 downto 0);
  signal testing_1narrow_data_out_net: std_logic_vector(31 downto 0);
  signal testing_1narrow_we_net: std_logic;
  signal testing_3narrow_addr_net: std_logic_vector(9 downto 0);
  signal testing_3narrow_data_in_net: std_logic_vector(31 downto 0);
  signal testing_3narrow_data_out_net: std_logic_vector(31 downto 0);
  signal testing_3narrow_we_net: std_logic;
  signal testing_4narrow_addr_net: std_logic_vector(9 downto 0);
  signal testing_4narrow_data_in_net: std_logic_vector(31 downto 0);
  signal testing_4narrow_data_out_net: std_logic_vector(31 downto 0);
  signal testing_4narrow_we_net: std_logic;
  signal testing_4wide_addr_net: std_logic_vector(9 downto 0);
  signal testing_4wide_data_in_net: std_logic_vector(31 downto 0);
  signal testing_4wide_data_out_net: std_logic_vector(31 downto 0);
  signal testing_4wide_we_net: std_logic;
  signal testing_adc0_delay_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_bram_addr_net: std_logic_vector(9 downto 0);
  signal testing_adcsnap0_bram_data_in_net: std_logic_vector(127 downto 0);
  signal testing_adcsnap0_bram_data_out_net: std_logic_vector(127 downto 0);
  signal testing_adcsnap0_bram_we_net: std_logic;
  signal testing_adcsnap0_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap0_trig_offset_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_bram_addr_net: std_logic_vector(9 downto 0);
  signal testing_adcsnap1_bram_data_in_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_bram_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_bram_we_net: std_logic;
  signal testing_adcsnap1_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap1_trig_offset_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_bram_addr_net: std_logic_vector(9 downto 0);
  signal testing_adcsnap2_bram_data_in_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_bram_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_bram_we_net: std_logic;
  signal testing_adcsnap2_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal testing_adcsnap2_trig_offset_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_asiaa_adc5g0_sync_net: std_logic;
  signal testing_asiaa_adc5g0_user_data_i0_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i1_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i2_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i3_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i4_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i5_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i6_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_i7_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q0_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q1_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q2_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q3_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q4_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q5_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q6_net: std_logic_vector(7 downto 0);
  signal testing_asiaa_adc5g0_user_data_q7_net: std_logic_vector(7 downto 0);
  signal testing_cnt_rst_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_get_data_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_snap_trig_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_period_sel_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_period_var_user_data_out_net: std_logic_vector(31 downto 0);
  signal testing_sync_gen_sync_user_data_out_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x241 <= ce_1;
  clk_1_sg_x241 <= clk_1;
  testing_1narrow_data_out_net <= testing_1narrow_data_out;
  testing_3narrow_data_out_net <= testing_3narrow_data_out;
  testing_4narrow_data_out_net <= testing_4narrow_data_out;
  testing_4wide_data_out_net <= testing_4wide_data_out;
  testing_adc0_delay_user_data_out_net <= testing_adc0_delay_user_data_out;
  testing_adcsnap0_bram_data_out_net <= testing_adcsnap0_bram_data_out;
  testing_adcsnap0_ctrl_user_data_out_net <= testing_adcsnap0_ctrl_user_data_out;
  testing_adcsnap0_trig_offset_user_data_out_net <= testing_adcsnap0_trig_offset_user_data_out;
  testing_adcsnap1_bram_data_out_net <= testing_adcsnap1_bram_data_out;
  testing_adcsnap1_ctrl_user_data_out_net <= testing_adcsnap1_ctrl_user_data_out;
  testing_adcsnap1_trig_offset_user_data_out_net <= testing_adcsnap1_trig_offset_user_data_out;
  testing_adcsnap2_bram_data_out_net <= testing_adcsnap2_bram_data_out;
  testing_adcsnap2_ctrl_user_data_out_net <= testing_adcsnap2_ctrl_user_data_out;
  testing_adcsnap2_trig_offset_user_data_out_net <= testing_adcsnap2_trig_offset_user_data_out;
  testing_asiaa_adc5g0_sync_net <= testing_asiaa_adc5g0_sync;
  testing_asiaa_adc5g0_user_data_i0_net <= testing_asiaa_adc5g0_user_data_i0;
  testing_asiaa_adc5g0_user_data_i1_net <= testing_asiaa_adc5g0_user_data_i1;
  testing_asiaa_adc5g0_user_data_i2_net <= testing_asiaa_adc5g0_user_data_i2;
  testing_asiaa_adc5g0_user_data_i3_net <= testing_asiaa_adc5g0_user_data_i3;
  testing_asiaa_adc5g0_user_data_i4_net <= testing_asiaa_adc5g0_user_data_i4;
  testing_asiaa_adc5g0_user_data_i5_net <= testing_asiaa_adc5g0_user_data_i5;
  testing_asiaa_adc5g0_user_data_i6_net <= testing_asiaa_adc5g0_user_data_i6;
  testing_asiaa_adc5g0_user_data_i7_net <= testing_asiaa_adc5g0_user_data_i7;
  testing_asiaa_adc5g0_user_data_q0_net <= testing_asiaa_adc5g0_user_data_q0;
  testing_asiaa_adc5g0_user_data_q1_net <= testing_asiaa_adc5g0_user_data_q1;
  testing_asiaa_adc5g0_user_data_q2_net <= testing_asiaa_adc5g0_user_data_q2;
  testing_asiaa_adc5g0_user_data_q3_net <= testing_asiaa_adc5g0_user_data_q3;
  testing_asiaa_adc5g0_user_data_q4_net <= testing_asiaa_adc5g0_user_data_q4;
  testing_asiaa_adc5g0_user_data_q5_net <= testing_asiaa_adc5g0_user_data_q5;
  testing_asiaa_adc5g0_user_data_q6_net <= testing_asiaa_adc5g0_user_data_q6;
  testing_asiaa_adc5g0_user_data_q7_net <= testing_asiaa_adc5g0_user_data_q7;
  testing_cnt_rst_user_data_out_net <= testing_cnt_rst_user_data_out;
  testing_get_data_user_data_out_net <= testing_get_data_user_data_out;
  testing_snap_trig_user_data_out_net <= testing_snap_trig_user_data_out;
  testing_sync_gen_sync_period_sel_user_data_out_net <= testing_sync_gen_sync_period_sel_user_data_out;
  testing_sync_gen_sync_period_var_user_data_out_net <= testing_sync_gen_sync_period_var_user_data_out;
  testing_sync_gen_sync_user_data_out_net <= testing_sync_gen_sync_user_data_out;
  testing_1narrow_addr <= testing_1narrow_addr_net;
  testing_1narrow_data_in <= testing_1narrow_data_in_net;
  testing_1narrow_we <= testing_1narrow_we_net;
  testing_3narrow_addr <= testing_3narrow_addr_net;
  testing_3narrow_data_in <= testing_3narrow_data_in_net;
  testing_3narrow_we <= testing_3narrow_we_net;
  testing_4narrow_addr <= testing_4narrow_addr_net;
  testing_4narrow_data_in <= testing_4narrow_data_in_net;
  testing_4narrow_we <= testing_4narrow_we_net;
  testing_4wide_addr <= testing_4wide_addr_net;
  testing_4wide_data_in <= testing_4wide_data_in_net;
  testing_4wide_we <= testing_4wide_we_net;
  testing_adcsnap0_bram_addr <= testing_adcsnap0_bram_addr_net;
  testing_adcsnap0_bram_data_in <= testing_adcsnap0_bram_data_in_net;
  testing_adcsnap0_bram_we <= testing_adcsnap0_bram_we_net;
  testing_adcsnap0_status_user_data_in <= testing_adcsnap0_status_user_data_in_net;
  testing_adcsnap1_bram_addr <= testing_adcsnap1_bram_addr_net;
  testing_adcsnap1_bram_data_in <= testing_adcsnap1_bram_data_in_net;
  testing_adcsnap1_bram_we <= testing_adcsnap1_bram_we_net;
  testing_adcsnap1_status_user_data_in <= testing_adcsnap1_status_user_data_in_net;
  testing_adcsnap2_bram_addr <= testing_adcsnap2_bram_addr_net;
  testing_adcsnap2_bram_data_in <= testing_adcsnap2_bram_data_in_net;
  testing_adcsnap2_bram_we <= testing_adcsnap2_bram_we_net;
  testing_adcsnap2_status_user_data_in <= testing_adcsnap2_status_user_data_in_net;

  adc0_delay_cce63f6027: entity work.adc0_delay_entity_cce63f6027
    port map (
      testing_adc0_delay_user_data_out => testing_adc0_delay_user_data_out_net,
      in_reg => reint1_output_port_net_x1
    );

  adcsnap0_c881771cde: entity work.adcsnap0_entity_c881771cde
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => register2_q_net_x3,
      testing_adcsnap0_ctrl_user_data_out => testing_adcsnap0_ctrl_user_data_out_net,
      testing_adcsnap0_trig_offset_user_data_out => testing_adcsnap0_trig_offset_user_data_out_net,
      trig => slice_y_net_x5,
      we => constant8_op_net_x1,
      bram => testing_adcsnap0_bram_addr_net,
      bram_x0 => testing_adcsnap0_bram_data_in_net,
      bram_x1 => testing_adcsnap0_bram_we_net,
      status => testing_adcsnap0_status_user_data_in_net
    );

  adcsnap1_0d1e223887: entity work.adcsnap1_entity_0d1e223887
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => register2_q_net_x1,
      testing_adcsnap1_ctrl_user_data_out => testing_adcsnap1_ctrl_user_data_out_net,
      testing_adcsnap1_trig_offset_user_data_out => testing_adcsnap1_trig_offset_user_data_out_net,
      trig => slice_y_net_x5,
      we => constant1_op_net_x2,
      bram => testing_adcsnap1_bram_addr_net,
      bram_x0 => testing_adcsnap1_bram_data_in_net,
      bram_x1 => testing_adcsnap1_bram_we_net,
      status => testing_adcsnap1_status_user_data_in_net
    );

  adcsnap2_b9f48e9c47: entity work.adcsnap2_entity_b9f48e9c47
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => reinterpret5_output_port_net_x2,
      testing_adcsnap2_ctrl_user_data_out => testing_adcsnap2_ctrl_user_data_out_net,
      testing_adcsnap2_trig_offset_user_data_out => testing_adcsnap2_trig_offset_user_data_out_net,
      trig => slice_y_net_x5,
      we => delay1_q_net_x3,
      bram => testing_adcsnap2_bram_addr_net,
      bram_x0 => testing_adcsnap2_bram_data_in_net,
      bram_x1 => testing_adcsnap2_bram_we_net,
      status => testing_adcsnap2_status_user_data_in_net
    );

  bus_create_0d7caf7613: entity work.bus_create_entity_0d7caf7613
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

  c_to_ri_208746d8c1: entity work.c_to_ri_entity_208746d8c1
    port map (
      c => concat_y_net_x2,
      re => force_re_output_port_net_x0
    );

  cnt_rst_31bb4d2a53: entity work.cnt_rst_entity_31bb4d2a53
    port map (
      testing_cnt_rst_user_data_out => testing_cnt_rst_user_data_out_net,
      in_reg => slice_reg_y_net_x1
    );

  concat: entity work.concat_8108dc1cfd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => constant_op_net,
      in1 => reinterpret_output_port_net,
      y => concat_y_net_x0
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net_x2
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

  constant_x0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  conv_bus0_b42f66fa70: entity work.conv_bus0_entity_b42f66fa70
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      i0 => testing_asiaa_adc5g0_user_data_i0_net,
      i1 => testing_asiaa_adc5g0_user_data_i1_net,
      i10 => testing_asiaa_adc5g0_user_data_q2_net,
      i11 => testing_asiaa_adc5g0_user_data_q3_net,
      i12 => testing_asiaa_adc5g0_user_data_q4_net,
      i13 => testing_asiaa_adc5g0_user_data_q5_net,
      i14 => testing_asiaa_adc5g0_user_data_q6_net,
      i15 => testing_asiaa_adc5g0_user_data_q7_net,
      i2 => testing_asiaa_adc5g0_user_data_i2_net,
      i3 => testing_asiaa_adc5g0_user_data_i3_net,
      i4 => testing_asiaa_adc5g0_user_data_i4_net,
      i5 => testing_asiaa_adc5g0_user_data_i5_net,
      i6 => testing_asiaa_adc5g0_user_data_i6_net,
      i7 => testing_asiaa_adc5g0_user_data_i7_net,
      i8 => testing_asiaa_adc5g0_user_data_q0_net,
      i9 => testing_asiaa_adc5g0_user_data_q1_net,
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      clr => '0',
      din => force_re_output_port_net_x0,
      en => "1",
      dout => convert_dout_net_x3
    );

  convert1: entity work.xlconvert
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      clr => '0',
      din => reinterpret1_output_port_net,
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      clr => '0',
      din => reinterpret2_output_port_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      clr => '0',
      din => reinterpret3_output_port_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      clr => '0',
      din => reinterpret4_output_port_net,
      en => "1",
      dout => convert4_dout_net
    );

  dec_fir0_4fb6ae1aab: entity work.dec_fir0_entity_4fb6ae1aab
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
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
      sync_in => register2_q_net_x2,
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      d(0) => sync_delay_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x3
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      d(0) => logical_y_net_x3,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net_x3
    );

  delay16: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
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
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      d(0) => logical_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net_x0
    );

  delay3: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      d(0) => logical_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net_x0
    );

  delay4: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x241,
      clk => clk_1_sg_x241,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay4_q_net_x0
    );

  delay_wideband_prog0_49d13860ed: entity work.delay_wideband_prog0_entity_49d13860ed
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
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

  freeze_cntr_86320f54e6: entity work.freeze_cntr_entity_86320f54e6
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      en => constant2_op_net_x0,
      rst => register1_q_net_x1,
      addr => enable_y_net_x0
    );

  get_data_6c3303de26: entity work.get_data_entity_6c3303de26
    port map (
      testing_get_data_user_data_out => testing_get_data_user_data_out_net,
      in_reg => slice_reg_y_net_x2
    );

  pipeline16_5693f7c5d0: entity work.pipeline16_entity_5693f7c5d0
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => delay_sync_q_net_x2,
      q => register2_q_net_x2
    );

  pipeline1_956a46503e: entity work.pipeline1_entity_956a46503e
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => concat_y_net_x0,
      q => register2_q_net_x1
    );

  pipeline251_4d7cee7a55: entity work.pipeline251_entity_4d7cee7a55
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => slice_reg_y_net_x1,
      q => register0_q_net_x0
    );

  pipeline252_e584c2eb1d: entity work.pipeline251_entity_4d7cee7a55
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => delay16_q_net_x0,
      q => register0_q_net_x1
    );

  pipeline254_90e40f3669: entity work.pipeline254_entity_90e40f3669
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => reint1_output_port_net_x1,
      q => register1_q_net_x2
    );

  pipeline256_a49ba71cff: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux164_y_net_x3,
      q => register2_q_net_x33
    );

  pipeline257_9ee0b87238: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux154_y_net_x3,
      q => register2_q_net_x34
    );

  pipeline258_1973fe9bc0: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux144_y_net_x3,
      q => register2_q_net_x35
    );

  pipeline259_dd7a96e81f: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux134_y_net_x3,
      q => register2_q_net_x36
    );

  pipeline260_a03a195b31: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux124_y_net_x3,
      q => register2_q_net_x37
    );

  pipeline261_ad5086717b: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux114_y_net_x3,
      q => register2_q_net_x38
    );

  pipeline262_89cc8c1dc7: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux104_y_net_x3,
      q => register2_q_net_x39
    );

  pipeline263_ac99841204: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux94_y_net_x3,
      q => register2_q_net_x40
    );

  pipeline264_1cc2b01ebd: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux84_y_net_x3,
      q => register2_q_net_x41
    );

  pipeline265_e9a0a8f000: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux74_y_net_x3,
      q => register2_q_net_x42
    );

  pipeline266_d3b80549dc: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux64_y_net_x3,
      q => register2_q_net_x43
    );

  pipeline267_5f9da5e554: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux54_y_net_x3,
      q => register2_q_net_x44
    );

  pipeline268_623da88e61: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux44_y_net_x3,
      q => register2_q_net_x45
    );

  pipeline269_cbe8914863: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux34_y_net_x3,
      q => register2_q_net_x46
    );

  pipeline270_85325941bb: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux24_y_net_x3,
      q => register2_q_net_x47
    );

  pipeline271_d966ce94f8: entity work.pipeline256_entity_a49ba71cff
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => mux14_y_net_x3,
      q => register2_q_net_x48
    );

  pipeline276_7f18d38ff3: entity work.pipeline276_entity_7f18d38ff3
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => concatenate_y_net_x1,
      q => register2_q_net_x3
    );

  pipeline277_f5a64e662d: entity work.pipeline254_entity_90e40f3669
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => reint1_output_port_net_x2,
      q => register1_q_net_x0
    );

  pipeline2_d43ad4c6f7: entity work.pipeline2_entity_d43ad4c6f7
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      d => slice_reg_y_net_x2,
      q => register1_q_net_x1
    );

  reinterpret: entity work.reinterpret_46dd2ac081
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => force_re_output_port_net_x0,
      output_port => reinterpret_output_port_net
    );

  reinterpret1: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x3,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x2,
      output_port => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x1,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_c1a6347d0b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => reinterpret_output_port_net_x0,
      output_port => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_3f7e3674f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert1_dout_net,
      output_port => reinterpret5_output_port_net_x2
    );

  reinterpret6: entity work.reinterpret_3f7e3674f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert2_dout_net,
      output_port => reinterpret6_output_port_net_x1
    );

  reinterpret7: entity work.reinterpret_3f7e3674f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert3_dout_net,
      output_port => reinterpret7_output_port_net_x1
    );

  reinterpret8: entity work.reinterpret_3f7e3674f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => convert4_dout_net,
      output_port => reinterpret8_output_port_net_x1
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => register1_q_net_x0,
      y(0) => slice_y_net_x5
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
      y => slice2_y_net_x7
    );

  snap_trig_7d747573d1: entity work.snap_trig_entity_7d747573d1
    port map (
      testing_snap_trig_user_data_out => testing_snap_trig_user_data_out_net,
      in_reg => reint1_output_port_net_x2
    );

  sync_gen_7f0630e1a2: entity work.sync_gen_entity_7f0630e1a2
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      testing_sync_gen_sync_period_sel_user_data_out => testing_sync_gen_sync_period_sel_user_data_out_net,
      testing_sync_gen_sync_period_var_user_data_out => testing_sync_gen_sync_period_var_user_data_out_net,
      testing_sync_gen_sync_user_data_out => testing_sync_gen_sync_user_data_out_net,
      sync_out => edge_op_y_net_x2
    );

  x1narrow_5b8a02a399: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => slice2_y_net_x7,
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      data_in => reinterpret8_output_port_net_x1,
      we => delay4_q_net_x0,
      convert_addr_x0 => testing_1narrow_addr_net,
      convert_din1_x0 => testing_1narrow_data_in_net,
      convert_we_x0 => testing_1narrow_we_net
    );

  x1zone_narrow_1657a5f38b: entity work.x1zone_narrow_entity_1657a5f38b
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => convert_dout_net_x3,
      rst => slice1_y_net_x3,
      sync => delay_q_net_x3,
      dout_x0 => reinterpret_output_port_net_x0,
      valid_x0 => logical_y_net_x0
    );

  x3narrow_c8967291e9: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => slice2_y_net_x7,
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      data_in => reinterpret7_output_port_net_x1,
      we => delay3_q_net_x0,
      convert_addr_x0 => testing_3narrow_addr_net,
      convert_din1_x0 => testing_3narrow_data_in_net,
      convert_we_x0 => testing_3narrow_we_net
    );

  x3zone_narrow_0e4bab562c: entity work.x3zone_narrow_entity_0e4bab562c
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => convert_dout_net_x3,
      rst => slice1_y_net_x3,
      sync => delay_q_net_x3,
      dout_x0 => reinterpret_output_port_net_x1,
      valid_x0 => logical_y_net_x1
    );

  x4narrow_382aaac481: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => slice2_y_net_x7,
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      data_in => reinterpret6_output_port_net_x1,
      we => delay2_q_net_x0,
      convert_addr_x0 => testing_4narrow_addr_net,
      convert_din1_x0 => testing_4narrow_data_in_net,
      convert_we_x0 => testing_4narrow_we_net
    );

  x4wide_096d265741: entity work.x1narrow_entity_5b8a02a399
    port map (
      addr => slice2_y_net_x7,
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      data_in => reinterpret5_output_port_net_x2,
      we => delay1_q_net_x3,
      convert_addr_x0 => testing_4wide_addr_net,
      convert_din1_x0 => testing_4wide_data_in_net,
      convert_we_x0 => testing_4wide_we_net
    );

  x4zone_narrow_546d740714: entity work.x4zone_narrow_entity_546d740714
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => convert_dout_net_x3,
      rst => slice1_y_net_x3,
      sync => delay_q_net_x3,
      dout_x0 => reinterpret_output_port_net_x2,
      valid_x0 => logical_y_net_x2
    );

  x4zone_wide_8f6b71c203: entity work.x4zone_wide_entity_8f6b71c203
    port map (
      ce_1 => ce_1_sg_x241,
      clk_1 => clk_1_sg_x241,
      din => convert_dout_net_x3,
      rst => slice1_y_net_x3,
      sync => delay_q_net_x3,
      dout_x0 => reinterpret_output_port_net_x3,
      valid_x0 => logical_y_net_x3
    );

end structural;
