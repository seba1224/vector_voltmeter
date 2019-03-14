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
-- You must compile the wrapper file cntr_11_0_c854334c91194d4e.vhd when simulating
-- the core, cntr_11_0_c854334c91194d4e. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_c854334c91194d4e IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END cntr_11_0_c854334c91194d4e;

ARCHITECTURE cntr_11_0_c854334c91194d4e_a OF cntr_11_0_c854334c91194d4e IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_c854334c91194d4e
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_c854334c91194d4e USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "10000",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 1,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 1,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 17,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_c854334c91194d4e
  PORT MAP (
    clk => clk,
    ce => ce,
    sclr => sclr,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_c854334c91194d4e_a;
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
-- You must compile the wrapper file cntr_11_0_8513360a51c30657.vhd when simulating
-- the core, cntr_11_0_8513360a51c30657. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_8513360a51c30657 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_8513360a51c30657;

ARCHITECTURE cntr_11_0_8513360a51c30657_a OF cntr_11_0_8513360a51c30657 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_8513360a51c30657
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_8513360a51c30657 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 32,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_8513360a51c30657
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_8513360a51c30657_a;
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
-- You must compile the wrapper file cntr_11_0_060021dfe568ceb3.vhd when simulating
-- the core, cntr_11_0_060021dfe568ceb3. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_060021dfe568ceb3 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_060021dfe568ceb3;

ARCHITECTURE cntr_11_0_060021dfe568ceb3_a OF cntr_11_0_060021dfe568ceb3 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_060021dfe568ceb3
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_060021dfe568ceb3 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_sinit_val => "1",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_060021dfe568ceb3
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_060021dfe568ceb3_a;
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
-- You must compile the wrapper file cntr_11_0_d647c64eb1ae1752.vhd when simulating
-- the core, cntr_11_0_d647c64eb1ae1752. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_d647c64eb1ae1752 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END cntr_11_0_d647c64eb1ae1752;

ARCHITECTURE cntr_11_0_d647c64eb1ae1752_a OF cntr_11_0_d647c64eb1ae1752 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_d647c64eb1ae1752
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_d647c64eb1ae1752 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "10000",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 1,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 1,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 18,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_d647c64eb1ae1752
  PORT MAP (
    clk => clk,
    ce => ce,
    sclr => sclr,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_d647c64eb1ae1752_a;
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
-- You must compile the wrapper file cntr_11_0_d342383fb51dea0c.vhd when simulating
-- the core, cntr_11_0_d342383fb51dea0c. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_d342383fb51dea0c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END cntr_11_0_d342383fb51dea0c;

ARCHITECTURE cntr_11_0_d342383fb51dea0c_a OF cntr_11_0_d342383fb51dea0c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_d342383fb51dea0c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_d342383fb51dea0c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 64,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_d342383fb51dea0c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_d342383fb51dea0c_a;

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

entity reinterpret_ddc3ebdd7c is
  port (
    input_port : in std_logic_vector((16 - 1) downto 0);
    output_port : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_ddc3ebdd7c;


architecture behavior of reinterpret_ddc3ebdd7c is
  signal input_port_1_40: unsigned((16 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
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

entity concat_08d4dce9cf is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((64 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((32 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((1 - 1) downto 0);
    in7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((102 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_08d4dce9cf;


architecture behavior of concat_08d4dce9cf is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((64 - 1) downto 0);
  signal in3_1_35: unsigned((1 - 1) downto 0);
  signal in4_1_39: unsigned((32 - 1) downto 0);
  signal in5_1_43: unsigned((1 - 1) downto 0);
  signal in6_1_47: unsigned((1 - 1) downto 0);
  signal in7_1_51: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((102 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_112d91c147 is
  port (
    input_port : in std_logic_vector((1 - 1) downto 0);
    output_port : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_112d91c147;


architecture behavior of reinterpret_112d91c147 is
  signal input_port_1_40: boolean;
  signal output_port_7_5_convert: unsigned((1 - 1) downto 0);
begin
  input_port_1_40 <= ((input_port) = "1");
  output_port_7_5_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(input_port_1_40)), 0, 1, 0);
  output_port <= unsigned_to_std_logic_vector(output_port_7_5_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity reinterpret_9a13f6a2a0 is
  port (
    input_port : in std_logic_vector((64 - 1) downto 0);
    output_port : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_9a13f6a2a0;


architecture behavior of reinterpret_9a13f6a2a0 is
  signal input_port_1_40: unsigned((64 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
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

entity concat_20d00231a3 is
  port (
    in0 : in std_logic_vector((14 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((17 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_20d00231a3;


architecture behavior of concat_20d00231a3 is
  signal in0_1_23: unsigned((14 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: unsigned((17 - 1) downto 0);
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

entity shift_1849b165de is
  port (
    ip : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_1849b165de;


architecture behavior of shift_1849b165de is
  signal ip_1_23: unsigned((14 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((14 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "00000000000000");
  signal op_mem_46_20_front_din: unsigned((14 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((14 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((27 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((14 - 1) downto 0);
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
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 27, 13);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 14, 0);
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
entity xlcounter_free_roach2_tut_tge is
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
end xlcounter_free_roach2_tut_tge ;
architecture behavior of xlcounter_free_roach2_tut_tge is
  component cntr_11_0_d647c64eb1ae1752
    port (
      clk: in std_logic;
      ce: in std_logic;
      SCLR: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_d647c64eb1ae1752:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_d647c64eb1ae1752:
    component is "true";
  attribute box_type of cntr_11_0_d647c64eb1ae1752:
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
  component cntr_11_0_8513360a51c30657
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_8513360a51c30657:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_8513360a51c30657:
    component is "true";
  attribute box_type of cntr_11_0_8513360a51c30657:
    component  is "black_box";
  component cntr_11_0_060021dfe568ceb3
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_060021dfe568ceb3:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_060021dfe568ceb3:
    component is "true";
  attribute box_type of cntr_11_0_060021dfe568ceb3:
    component  is "black_box";
  component cntr_11_0_d342383fb51dea0c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_d342383fb51dea0c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_d342383fb51dea0c:
    component is "true";
  attribute box_type of cntr_11_0_d342383fb51dea0c:
    component  is "black_box";
  component cntr_11_0_c854334c91194d4e
    port (
      clk: in std_logic;
      ce: in std_logic;
      SCLR: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_c854334c91194d4e:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_c854334c91194d4e:
    component is "true";
  attribute box_type of cntr_11_0_c854334c91194d4e:
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
  comp0: if ((core_name0 = "cntr_11_0_d647c64eb1ae1752")) generate
    core_instance0: cntr_11_0_d647c64eb1ae1752
      port map (
        clk => clk,
        ce => core_ce,
        SCLR => core_sinit,
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
  comp2: if ((core_name0 = "cntr_11_0_8513360a51c30657")) generate
    core_instance2: cntr_11_0_8513360a51c30657
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_060021dfe568ceb3")) generate
    core_instance3: cntr_11_0_060021dfe568ceb3
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp4: if ((core_name0 = "cntr_11_0_d342383fb51dea0c")) generate
    core_instance4: cntr_11_0_d342383fb51dea0c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp5: if ((core_name0 = "cntr_11_0_c854334c91194d4e")) generate
    core_instance5: cntr_11_0_c854334c91194d4e
      port map (
        clk => clk,
        ce => core_ce,
        SCLR => core_sinit,
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

entity concat_6d2519e788 is
  port (
    in0 : in std_logic_vector((12 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_6d2519e788;


architecture behavior of concat_6d2519e788 is
  signal in0_1_23: unsigned((12 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((13 - 1) downto 0);
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

entity mux_f2baae7de5 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((13 - 1) downto 0);
    d1 : in std_logic_vector((13 - 1) downto 0);
    y : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_f2baae7de5;


architecture behavior of mux_f2baae7de5 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((13 - 1) downto 0);
  signal d1_1_27: std_logic_vector((13 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((13 - 1) downto 0);
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

entity delay_67ef71f6b4 is
  port (
    d : in std_logic_vector((13 - 1) downto 0);
    q : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_67ef71f6b4;


architecture behavior of delay_67ef71f6b4 is
  signal d_1_22: std_logic_vector((13 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((13 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((13 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((13 - 1) downto 0);
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

entity reinterpret_2d75e2f328 is
  port (
    input_port : in std_logic_vector((102 - 1) downto 0);
    output_port : out std_logic_vector((102 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_2d75e2f328;


architecture behavior of reinterpret_2d75e2f328 is
  signal input_port_1_40: unsigned((102 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_a47378aa6e is
  port (
    in0 : in std_logic_vector((1 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    in3 : in std_logic_vector((1 - 1) downto 0);
    in4 : in std_logic_vector((1 - 1) downto 0);
    in5 : in std_logic_vector((1 - 1) downto 0);
    in6 : in std_logic_vector((64 - 1) downto 0);
    in7 : in std_logic_vector((32 - 1) downto 0);
    y : out std_logic_vector((102 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_a47378aa6e;


architecture behavior of concat_a47378aa6e is
  signal in0_1_23: unsigned((1 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal in3_1_35: unsigned((1 - 1) downto 0);
  signal in4_1_39: unsigned((1 - 1) downto 0);
  signal in5_1_43: unsigned((1 - 1) downto 0);
  signal in6_1_47: unsigned((64 - 1) downto 0);
  signal in7_1_51: unsigned((32 - 1) downto 0);
  signal y_2_1_concat: unsigned((102 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_6dbb407bca is
  port (
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_6dbb407bca;


architecture behavior of counter_6dbb407bca is
  signal rst_1_40: boolean;
  signal en_1_45: boolean;
  signal count_reg_20_23: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal count_reg_20_23_rst: std_logic;
  signal count_reg_20_23_en: std_logic;
  signal bool_44_4: boolean;
  signal count_reg_join_44_1: unsigned((33 - 1) downto 0);
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
        count_reg_20_23 <= "00000000000000000000000000000000";
      elsif ((ce = '1') and (count_reg_20_23_en = '1')) then 
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("00000000000000000000000000000001");
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

entity delay_e18fb31a3d is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e18fb31a3d;


architecture behavior of delay_e18fb31a3d is
  signal d_1_22: std_logic;
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic;
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    '0',
    '0');
  signal op_mem_20_24_front_din: std_logic;
  signal op_mem_20_24_back: std_logic;
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d(0);
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
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

entity delay_3f5b23b538 is
  port (
    d : in std_logic_vector((32 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_3f5b23b538;


architecture behavior of delay_3f5b23b538 is
  signal d_1_22: std_logic_vector((32 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (2 - 1)) of std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    "00000000000000000000000000000000",
    "00000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((32 - 1) downto 0);
  signal op_mem_20_24_push_front_pop_back_en: std_logic;
begin
  d_1_22 <= d;
  op_mem_20_24_back <= op_mem_20_24(1);
  proc_op_mem_20_24: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_20_24_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
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

entity delay_21355083c1 is
  port (
    d : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_21355083c1;


architecture behavior of delay_21355083c1 is
  signal d_1_22: std_logic_vector((1 - 1) downto 0);
begin
  d_1_22 <= d;
  q <= d_1_22;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity delay_e2d047c154 is
  port (
    d : in std_logic_vector((64 - 1) downto 0);
    q : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_e2d047c154;


architecture behavior of delay_e2d047c154 is
  signal d_1_22: std_logic_vector((64 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "0000000000000000000000000000000000000000000000000000000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((64 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((64 - 1) downto 0);
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

entity mux_1e22c21d05 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_1e22c21d05;


architecture behavior of mux_1e22c21d05 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic;
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => '0');
  signal pipe_16_22_front_din: std_logic;
  signal pipe_16_22_back: std_logic;
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
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
  pipe_16_22_front_din <= unregy_join_6_1;
  pipe_16_22_push_front_pop_back_en <= '1';
  y <= std_logic_to_vector(pipe_16_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_2aa09bfea3 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2aa09bfea3;


architecture behavior of mux_2aa09bfea3 is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  type array_type_pipe_16_22 is array (0 to (1 - 1)) of std_logic;
  signal pipe_16_22: array_type_pipe_16_22 := (
    0 => '0');
  signal pipe_16_22_front_din: std_logic;
  signal pipe_16_22_back: std_logic;
  signal pipe_16_22_push_front_pop_back_en: std_logic;
  signal unregy_join_6_1: std_logic;
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
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
  y <= std_logic_to_vector(pipe_16_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_59ca12fcca is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_59ca12fcca;


architecture behavior of relational_59ca12fcca is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_16_3_rel <= a_1_31 < b_1_34;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_8782e16b67 is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_8782e16b67;


architecture behavior of relational_8782e16b67 is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_22_3_rel <= a_1_31 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_8033f04c65 is
  port (
    in0 : in std_logic_vector((64 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((66 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_8033f04c65;


architecture behavior of concat_8033f04c65 is
  signal in0_1_23: unsigned((64 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal in2_1_31: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((66 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_1a6baff97c is
  port (
    in0 : in std_logic_vector((15 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    in2 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_1a6baff97c;


architecture behavior of concat_1a6baff97c is
  signal in0_1_23: unsigned((15 - 1) downto 0);
  signal in1_1_27: boolean;
  signal in2_1_31: unsigned((16 - 1) downto 0);
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

entity shift_8b3da62244 is
  port (
    ip : in std_logic_vector((15 - 1) downto 0);
    op : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end shift_8b3da62244;


architecture behavior of shift_8b3da62244 is
  signal ip_1_23: unsigned((15 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of unsigned((15 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "000000000000000");
  signal op_mem_46_20_front_din: unsigned((15 - 1) downto 0);
  signal op_mem_46_20_back: unsigned((15 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_internal_ip_25_3_lsh: unsigned((29 - 1) downto 0);
  signal cast_internal_ip_36_3_convert: unsigned((15 - 1) downto 0);
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
  cast_internal_ip_25_3_lsh <= u2u_cast(ip_1_23, 0, 29, 14);
  cast_internal_ip_36_3_convert <= u2u_cast(cast_internal_ip_25_3_lsh, 0, 15, 0);
  op_mem_46_20_front_din <= cast_internal_ip_36_3_convert;
  op_mem_46_20_push_front_pop_back_en <= '1';
  op <= unsigned_to_std_logic_vector(op_mem_46_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_e2aa47955c is
  port (
    in0 : in std_logic_vector((11 - 1) downto 0);
    in1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_e2aa47955c;


architecture behavior of concat_e2aa47955c is
  signal in0_1_23: unsigned((11 - 1) downto 0);
  signal in1_1_27: unsigned((1 - 1) downto 0);
  signal y_2_1_concat: unsigned((12 - 1) downto 0);
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

entity mux_c3e1ddb86e is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((12 - 1) downto 0);
    d1 : in std_logic_vector((12 - 1) downto 0);
    y : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_c3e1ddb86e;


architecture behavior of mux_c3e1ddb86e is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((12 - 1) downto 0);
  signal d1_1_27: std_logic_vector((12 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((12 - 1) downto 0);
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

entity delay_87cc993d41 is
  port (
    d : in std_logic_vector((12 - 1) downto 0);
    q : out std_logic_vector((12 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end delay_87cc993d41;


architecture behavior of delay_87cc993d41 is
  signal d_1_22: std_logic_vector((12 - 1) downto 0);
  type array_type_op_mem_20_24 is array (0 to (1 - 1)) of std_logic_vector((12 - 1) downto 0);
  signal op_mem_20_24: array_type_op_mem_20_24 := (
    0 => "000000000000");
  signal op_mem_20_24_front_din: std_logic_vector((12 - 1) downto 0);
  signal op_mem_20_24_back: std_logic_vector((12 - 1) downto 0);
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

entity reinterpret_3a6884f373 is
  port (
    input_port : in std_logic_vector((66 - 1) downto 0);
    output_port : out std_logic_vector((66 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_3a6884f373;


architecture behavior of reinterpret_3a6884f373 is
  signal input_port_1_40: unsigned((66 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c4c603edf2 is
  port (
    op : out std_logic_vector((64 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c4c603edf2;


architecture behavior of constant_c4c603edf2 is
begin
  op <= "0000000000000000000000000000000000000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f5572ba51 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f5572ba51;


architecture behavior of constant_9f5572ba51 is
begin
  op <= "0000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/dest_ip"

entity dest_ip_entity_053032aa06 is
  port (
    roach2_tut_tge_dest_ip_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end dest_ip_entity_053032aa06;

architecture structural of dest_ip_entity_053032aa06 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_dest_ip_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_dest_ip_user_data_out_net_x0 <= roach2_tut_tge_dest_ip_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_dest_ip_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/dest_port"

entity dest_port_entity_3b0aa1ca6b is
  port (
    roach2_tut_tge_dest_port_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(15 downto 0)
  );
end dest_port_entity_3b0aa1ca6b;

architecture structural of dest_port_entity_3b0aa1ca6b is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_dest_port_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(15 downto 0);

begin
  roach2_tut_tge_dest_port_user_data_out_net_x0 <= roach2_tut_tge_dest_port_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_dest_port_user_data_out_net_x0,
      q => io_delay_q_net
    );

  reint1: entity work.reinterpret_ddc3ebdd7c
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
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => io_delay_q_net,
      y => slice_reg_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxbadctr"

entity rxbadctr_entity_a0932aebd0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end rxbadctr_entity_a0932aebd0;

architecture structural of rxbadctr_entity_a0932aebd0 is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);
  signal rxbadctr_del2_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  rxbadctr_del2_q_net_x0 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => rxbadctr_del2_q_net_x0,
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
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => io_delay_q_net,
      en => "1",
      dout => cast_gw_dout_net_x0
    );

  io_delay: entity work.delay_672d2b8d1e
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxctr_ed"

entity rxctr_ed_entity_843f7b7738 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end rxctr_ed_entity_843f7b7738;

architecture structural of rxctr_ed_entity_843f7b7738 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal rxctr_and_y_net_x0: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  rxctr_and_y_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      d(0) => rxctr_and_y_net_x0,
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_dfe2dded7f
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip(0) => rxctr_and_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/buscreate"

entity buscreate_entity_99c4ac2dc6 is
  port (
    in1: in std_logic; 
    in2: in std_logic; 
    in3: in std_logic_vector(63 downto 0); 
    in4: in std_logic; 
    in5: in std_logic_vector(31 downto 0); 
    in6: in std_logic; 
    in7: in std_logic; 
    in8: in std_logic; 
    bus_out: out std_logic_vector(101 downto 0)
  );
end buscreate_entity_99c4ac2dc6;

architecture structural of buscreate_entity_99c4ac2dc6 is
  signal assert_bad_frame_dout_net_x0: std_logic;
  signal assert_data_in_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_in_dout_net_x0: std_logic;
  signal assert_ip_in_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_rx_dout_net_x0: std_logic;
  signal assert_led_up_dout_net_x0: std_logic;
  signal assert_overrun_dout_net_x0: std_logic;
  signal assert_valid_in_dout_net_x0: std_logic;
  signal concatenate_y_net_x0: std_logic_vector(101 downto 0);
  signal reinterpret1_output_port_net: std_logic;
  signal reinterpret2_output_port_net: std_logic;
  signal reinterpret3_output_port_net: std_logic_vector(63 downto 0);
  signal reinterpret4_output_port_net: std_logic;
  signal reinterpret5_output_port_net: std_logic_vector(31 downto 0);
  signal reinterpret6_output_port_net: std_logic;
  signal reinterpret7_output_port_net: std_logic;
  signal reinterpret8_output_port_net: std_logic;

begin
  assert_led_up_dout_net_x0 <= in1;
  assert_led_rx_dout_net_x0 <= in2;
  assert_data_in_dout_net_x0 <= in3;
  assert_valid_in_dout_net_x0 <= in4;
  assert_ip_in_dout_net_x0 <= in5;
  assert_eof_in_dout_net_x0 <= in6;
  assert_bad_frame_dout_net_x0 <= in7;
  assert_overrun_dout_net_x0 <= in8;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_08d4dce9cf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => reinterpret1_output_port_net,
      in1(0) => reinterpret2_output_port_net,
      in2 => reinterpret3_output_port_net,
      in3(0) => reinterpret4_output_port_net,
      in4 => reinterpret5_output_port_net,
      in5(0) => reinterpret6_output_port_net,
      in6(0) => reinterpret7_output_port_net,
      in7(0) => reinterpret8_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_led_up_dout_net_x0,
      output_port(0) => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_led_rx_dout_net_x0,
      output_port(0) => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_data_in_dout_net_x0,
      output_port => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_valid_in_dout_net_x0,
      output_port(0) => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_ip_in_dout_net_x0,
      output_port => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_eof_in_dout_net_x0,
      output_port(0) => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_bad_frame_dout_net_x0,
      output_port(0) => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_overrun_dout_net_x0,
      output_port(0) => reinterpret8_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/io_delay"

entity io_delay_entity_19ee665e1d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic_vector(101 downto 0); 
    q: out std_logic_vector(101 downto 0)
  );
end io_delay_entity_19ee665e1d;

architecture structural of io_delay_entity_19ee665e1d is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(101 downto 0);
  signal register0_q_net: std_logic_vector(101 downto 0);
  signal register1_q_net: std_logic_vector(101 downto 0);
  signal register2_q_net: std_logic_vector(101 downto 0);
  signal register3_q_net: std_logic_vector(101 downto 0);
  signal register4_q_net_x0: std_logic_vector(101 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  concatenate_y_net_x1 <= d;
  q <= register4_q_net_x0;

  register0: entity work.xlregister
    generic map (
      d_width => 102,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => concatenate_y_net_x1,
      en => "1",
      rst => "0",
      q => register0_q_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 102,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register0_q_net,
      en => "1",
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 102,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register1_q_net,
      en => "1",
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 102,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register2_q_net,
      en => "1",
      rst => "0",
      q => register3_q_net
    );

  register4: entity work.xlregister
    generic map (
      d_width => 102,
      init_value => b"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register3_q_net,
      en => "1",
      rst => "0",
      q => register4_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/add_gen/edge_detect"

entity edge_detect_entity_244e04c11e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end edge_detect_entity_244e04c11e;

architecture structural of edge_detect_entity_244e04c11e is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal slice3_y_net_x0: std_logic;

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => slice3_y_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/add_gen"

entity add_gen_entity_453c6a687b is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cont: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    we: in std_logic; 
    add: out std_logic_vector(12 downto 0); 
    dout: out std_logic_vector(127 downto 0); 
    status: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end add_gen_entity_453c6a687b;

architecture structural of add_gen_entity_453c6a687b is
  signal add_gen_op_net: std_logic_vector(17 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(13 downto 0);
  signal data_choice_y_net_x0: std_logic_vector(127 downto 0);
  signal delay1_q_net: std_logic_vector(16 downto 0);
  signal delay3_q_net: std_logic;
  signal delay4_q_net: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register5_q_net: std_logic;
  signal register6_q_net_x0: std_logic;
  signal shift_op_net: std_logic_vector(13 downto 0);
  signal slice1_y_net: std_logic_vector(16 downto 0);
  signal slice2_y_net_x0: std_logic_vector(12 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal we_choice_y_net_x0: std_logic;

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  never_op_net_x0 <= cont;
  data_choice_y_net_x0 <= din;
  register6_q_net_x0 <= go;
  edge_op_y_net_x1 <= init;
  we_choice_y_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_d647c64eb1ae1752",
      op_arith => xlUnsigned,
      op_width => 18
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en(0) => logical6_y_net_x0,
      rst(0) => delay4_q_net,
      op => add_gen_op_net
    );

  concat: entity work.concat_20d00231a3
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
      dout_width => 14,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 17
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d(0) => edge_op_y_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d => data_choice_y_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_244e04c11e: entity work.edge_detect_entity_244e04c11e
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      d0(0) => we_choice_y_net_x0,
      d1(0) => register6_q_net_x0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_1849b165de
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip => convert_dout_net,
      op => shift_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 16,
      x_width => 18,
      y_width => 17
    )
    port map (
      x => add_gen_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 16,
      x_width => 18,
      y_width => 13
    )
    port map (
      x => add_gen_op_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 17,
      new_msb => 17,
      x_width => 18,
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/basic_ctrl/dram_munge"

entity dram_munge_entity_62b13a46af is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    init: in std_logic; 
    we: in std_logic; 
    dout: out std_logic_vector(127 downto 0); 
    we_o: out std_logic
  );
end dram_munge_entity_62b13a46af;

architecture structural of dram_munge_entity_62b13a46af is
  signal cast_dout_net_x0: std_logic_vector(127 downto 0);
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal con0_op_net: std_logic_vector(1 downto 0);
  signal con1_op_net: std_logic_vector(1 downto 0);
  signal con2_op_net: std_logic_vector(1 downto 0);
  signal con3_op_net: std_logic_vector(1 downto 0);
  signal concat1_y_net: std_logic_vector(271 downto 0);
  signal concat_y_net: std_logic_vector(271 downto 0);
  signal constant_op_net: std_logic_vector(7 downto 0);
  signal data_choice_y_net_x1: std_logic_vector(127 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net: std_logic;
  signal dout_count_op_net: std_logic;
  signal dram_op_net: std_logic;
  signal edge_op_y_net_x2: std_logic;
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
  signal we_choice_y_net_x1: std_logic;

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  cast_dout_net_x0 <= din;
  edge_op_y_net_x2 <= init;
  mux1_y_net_x1 <= we;
  dout <= data_choice_y_net_x1;
  we_o <= we_choice_y_net_x1;

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
      y => data_choice_y_net_x1
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => logical1_y_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  dout_count: entity work.counter_caa2b01eef
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en(0) => logical1_y_net,
      rst(0) => edge_op_y_net_x2,
      op(0) => dout_count_op_net
    );

  dram: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => dram_op_net
    );

  input_count: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_541f86689cddfa59",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en(0) => mux1_y_net_x1,
      rst(0) => edge_op_y_net_x2,
      op => input_count_op_net
    );

  logical: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
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
      y(0) => we_choice_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/basic_ctrl"

entity basic_ctrl_entity_427693ddd0 is
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
end basic_ctrl_entity_427693ddd0;

architecture structural of basic_ctrl_entity_427693ddd0 is
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net: std_logic;
  signal edge_op_y_net_x4: std_logic;
  signal enable_y_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net: std_logic;
  signal register1_q_net: std_logic;
  signal register4_q_net_x1: std_logic;
  signal register4_q_net_x2: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal trig_src_y_net: std_logic;
  signal valid_src_y_net: std_logic;
  signal we_choice_y_net_x2: std_logic;

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  reint1_output_port_net_x0 <= ctrl;
  cast_dout_net_x1 <= din;
  register4_q_net_x1 <= trig;
  register4_q_net_x2 <= we;
  dout <= data_choice_y_net_x2;
  go <= register6_q_net_x1;
  init <= edge_op_y_net_x4;
  we_o <= we_choice_y_net_x2;

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
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
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
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
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
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => valid_src_y_net,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  dram_munge_62b13a46af: entity work.dram_munge_entity_62b13a46af
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      din => cast_dout_net_x1,
      init => edge_op_y_net_x4,
      we => mux1_y_net_x1,
      dout => data_choice_y_net_x2,
      we_o => we_choice_y_net_x2
    );

  edge_detect_b36e809152: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      in_x0 => delay1_q_net_x0,
      out_x0 => edge_op_y_net_x4
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
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => edge_op_y_net_x4,
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
      d0(0) => register4_q_net_x2,
      d1(0) => constant2_op_net,
      sel(0) => delay3_q_net,
      y(0) => mux1_y_net_x1
    );

  mux2: entity work.mux_d99e59b6d4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register4_q_net_x1,
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
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => constant_op_net,
      en(0) => edge_op_y_net_x4,
      rst(0) => logical_y_net,
      q(0) => register1_q_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => mux2_y_net,
      en(0) => register1_q_net,
      rst(0) => edge_op_y_net_x4,
      q(0) => register6_q_net_x1
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/bram/calc_add"

entity calc_add_entity_2f4fde3cae is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(12 downto 0); 
    out_x0: out std_logic_vector(12 downto 0)
  );
end calc_add_entity_2f4fde3cae;

architecture structural of calc_add_entity_2f4fde3cae is
  signal add_del_q_net_x0: std_logic_vector(12 downto 0);
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x11: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal concat_y_net: std_logic_vector(12 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(12 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(11 downto 0);
  signal mux_y_net_x0: std_logic_vector(12 downto 0);

begin
  ce_1_sg_x11 <= ce_1;
  clk_1_sg_x11 <= clk_1;
  add_del_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_6d2519e788
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
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 13,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => add_del_q_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 13,
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
      new_msb => 12,
      x_width => 13,
      y_width => 12
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_f2baae7de5
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/bram/munge_in/join"

entity join_entity_f8f1d05f62 is
  port (
    in1: in std_logic_vector(31 downto 0); 
    in2: in std_logic_vector(31 downto 0); 
    in3: in std_logic_vector(31 downto 0); 
    in4: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(127 downto 0)
  );
end join_entity_f8f1d05f62;

architecture structural of join_entity_f8f1d05f62 is
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/bram/munge_in/split"

entity split_entity_698da0685c is
  port (
    bus_in: in std_logic_vector(127 downto 0); 
    lsb_out1: out std_logic_vector(31 downto 0); 
    msb_out4: out std_logic_vector(31 downto 0); 
    out2: out std_logic_vector(31 downto 0); 
    out3: out std_logic_vector(31 downto 0)
  );
end split_entity_698da0685c;

architecture structural of split_entity_698da0685c is
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/bram/munge_in"

entity munge_in_entity_c8c73d4eb7 is
  port (
    din: in std_logic_vector(127 downto 0); 
    dout: out std_logic_vector(127 downto 0)
  );
end munge_in_entity_c8c73d4eb7;

architecture structural of munge_in_entity_c8c73d4eb7 is
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

  join_f8f1d05f62: entity work.join_entity_f8f1d05f62
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

  split_698da0685c: entity work.split_entity_698da0685c
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/bram"

entity bram_entity_59040032f3 is
  port (
    addr: in std_logic_vector(12 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(127 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(12 downto 0); 
    convert_din1_x0: out std_logic_vector(127 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_entity_59040032f3;

architecture structural of bram_entity_59040032f3 is
  signal add_del_q_net_x1: std_logic_vector(12 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal mux_y_net_x0: std_logic_vector(12 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal we_del_q_net_x0: std_logic;

begin
  add_del_q_net_x1 <= addr;
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  dat_del_q_net_x1 <= data_in;
  we_del_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_2f4fde3cae: entity work.calc_add_entity_2f4fde3cae
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      in_x0 => add_del_q_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 13,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
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
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
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
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din(0) => we_del_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_c8c73d4eb7: entity work.munge_in_entity_c8c73d4eb7
    port map (
      din => dat_del_q_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/ctrl"

entity ctrl_entity_5943d4ca15 is
  port (
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_5943d4ca15;

architecture structural of ctrl_entity_5943d4ca15 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x0 <= roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss/status"

entity status_entity_3c040700bb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic_vector(31 downto 0); 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end status_entity_3c040700bb;

architecture structural of status_entity_3c040700bb is
  signal assert_reg_dout_net: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/ss"

entity ss_entity_abea172265 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(101 downto 0); 
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(12 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end ss_entity_abea172265;

architecture structural of ss_entity_abea172265 is
  signal add_del_q_net_x1: std_logic_vector(12 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x4: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x4: std_logic;
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(101 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(12 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  register4_q_net_x3 <= din;
  roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x1 <= roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out;
  register4_q_net_x4 <= trig;
  register4_q_net_x5 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_67ef71f6b4
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_453c6a687b: entity work.add_gen_entity_453c6a687b
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      cont => never_op_net_x0,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we => we_choice_y_net_x2,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_427693ddd0: entity work.basic_ctrl_entity_427693ddd0
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => register4_q_net_x4,
      we => register4_q_net_x5,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we_o => we_choice_y_net_x2
    );

  bram_59040032f3: entity work.bram_entity_59040032f3
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
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
      din_width => 102,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_5943d4ca15: entity work.ctrl_entity_5943d4ca15
    port map (
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_2d75e2f328
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register4_q_net_x3,
      output_port => ri_output_port_net
    );

  status_3c040700bb: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs/trig_delay"

entity trig_delay_entity_ecb11e5b0a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    d: in std_logic; 
    q: out std_logic
  );
end trig_delay_entity_ecb11e5b0a;

architecture structural of trig_delay_entity_ecb11e5b0a is
  signal ce_1_sg_x15: std_logic;
  signal clk_1_sg_x15: std_logic;
  signal register0_q_net: std_logic;
  signal register1_q_net: std_logic;
  signal register2_q_net: std_logic;
  signal register3_q_net: std_logic;
  signal register4_q_net_x5: std_logic;
  signal rxsnap_and_y_net_x0: std_logic;

begin
  ce_1_sg_x15 <= ce_1;
  clk_1_sg_x15 <= clk_1;
  rxsnap_and_y_net_x0 <= d;
  q <= register4_q_net_x5;

  register0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => rxsnap_and_y_net_x0,
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
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
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
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => register1_q_net,
      en => "1",
      rst => "0",
      q(0) => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => register2_q_net,
      en => "1",
      rst => "0",
      q(0) => register3_q_net
    );

  register4: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x15,
      clk => clk_1_sg_x15,
      d(0) => register3_q_net,
      en => "1",
      rst => "0",
      q(0) => register4_q_net_x5
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/rxs"

entity rxs_entity_d041229ce3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_bad_frame: in std_logic; 
    in_data_in: in std_logic_vector(63 downto 0); 
    in_eof_in: in std_logic; 
    in_ip_in: in std_logic_vector(31 downto 0); 
    in_led_rx: in std_logic; 
    in_led_up: in std_logic; 
    in_overrun: in std_logic; 
    in_valid_in: in std_logic; 
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    ss: out std_logic_vector(12 downto 0); 
    ss_x0: out std_logic_vector(127 downto 0); 
    ss_x1: out std_logic; 
    ss_x2: out std_logic_vector(31 downto 0)
  );
end rxs_entity_d041229ce3;

architecture structural of rxs_entity_d041229ce3 is
  signal assert_bad_frame_dout_net_x0: std_logic;
  signal assert_data_in_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_in_dout_net_x0: std_logic;
  signal assert_ip_in_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_rx_dout_net_x0: std_logic;
  signal assert_led_up_dout_net_x0: std_logic;
  signal assert_overrun_dout_net_x0: std_logic;
  signal assert_valid_in_dout_net_x0: std_logic;
  signal cast_gw_dout_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(101 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register4_q_net_x6: std_logic;
  signal roach2_tut_tge_gbe0_led_rx_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_led_up_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_rx_bad_frame_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_rx_data_net_x0: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_rx_end_of_frame_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_rx_source_ip_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_valid_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x2: std_logic_vector(31 downto 0);
  signal rxsnap_and_y_net_x1: std_logic;

begin
  ce_1_sg_x17 <= ce_1;
  clk_1_sg_x17 <= clk_1;
  roach2_tut_tge_gbe0_rx_bad_frame_net_x0 <= in_bad_frame;
  roach2_tut_tge_gbe0_rx_data_net_x0 <= in_data_in;
  roach2_tut_tge_gbe0_rx_end_of_frame_net_x0 <= in_eof_in;
  roach2_tut_tge_gbe0_rx_source_ip_net_x0 <= in_ip_in;
  roach2_tut_tge_gbe0_led_rx_net_x0 <= in_led_rx;
  roach2_tut_tge_gbe0_led_up_net_x0 <= in_led_up;
  roach2_tut_tge_gbe0_rx_overrun_net_x0 <= in_overrun;
  roach2_tut_tge_gbe0_rx_valid_net_x1 <= in_valid_in;
  roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x2 <= roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out;
  rxsnap_and_y_net_x1 <= trig;
  ss <= convert_addr_dout_net_x2;
  ss_x0 <= convert_din1_dout_net_x2;
  ss_x1 <= convert_we_dout_net_x2;
  ss_x2 <= cast_gw_dout_net_x2;

  assert_bad_frame: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_rx_bad_frame_net_x0,
      dout(0) => assert_bad_frame_dout_net_x0
    );

  assert_data_in: entity work.xlpassthrough
    generic map (
      din_width => 64,
      dout_width => 64
    )
    port map (
      din => roach2_tut_tge_gbe0_rx_data_net_x0,
      dout => assert_data_in_dout_net_x0
    );

  assert_eof_in: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_rx_end_of_frame_net_x0,
      dout(0) => assert_eof_in_dout_net_x0
    );

  assert_ip_in: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => roach2_tut_tge_gbe0_rx_source_ip_net_x0,
      dout => assert_ip_in_dout_net_x0
    );

  assert_led_rx: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_led_rx_net_x0,
      dout(0) => assert_led_rx_dout_net_x0
    );

  assert_led_up: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_led_up_net_x0,
      dout(0) => assert_led_up_dout_net_x0
    );

  assert_overrun: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_rx_overrun_net_x0,
      dout(0) => assert_overrun_dout_net_x0
    );

  assert_valid_in: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_rx_valid_net_x1,
      dout(0) => assert_valid_in_dout_net_x0
    );

  buscreate_99c4ac2dc6: entity work.buscreate_entity_99c4ac2dc6
    port map (
      in1 => assert_led_up_dout_net_x0,
      in2 => assert_led_rx_dout_net_x0,
      in3 => assert_data_in_dout_net_x0,
      in4 => assert_valid_in_dout_net_x0,
      in5 => assert_ip_in_dout_net_x0,
      in6 => assert_eof_in_dout_net_x0,
      in7 => assert_bad_frame_dout_net_x0,
      in8 => assert_overrun_dout_net_x0,
      bus_out => concatenate_y_net_x1
    );

  io_delay_19ee665e1d: entity work.io_delay_entity_19ee665e1d
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      d => concatenate_y_net_x1,
      q => register4_q_net_x3
    );

  ss_abea172265: entity work.ss_entity_abea172265
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      din => register4_q_net_x3,
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x2,
      trig => register4_q_net_x5,
      we => register4_q_net_x6,
      bram => convert_addr_dout_net_x2,
      bram_x0 => convert_din1_dout_net_x2,
      bram_x1 => convert_we_dout_net_x2,
      status => cast_gw_dout_net_x2
    );

  trig_delay_ecb11e5b0a: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      d => rxsnap_and_y_net_x1,
      q => register4_q_net_x5
    );

  we_delay_a3306a2657: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x17,
      clk_1 => clk_1_sg_x17,
      d => roach2_tut_tge_gbe0_rx_valid_net_x1,
      q => register4_q_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/txs/buscreate"

entity buscreate_entity_9984806088 is
  port (
    in1: in std_logic; 
    in2: in std_logic; 
    in3: in std_logic; 
    in4: in std_logic; 
    in5: in std_logic; 
    in6: in std_logic; 
    in7: in std_logic_vector(63 downto 0); 
    in8: in std_logic_vector(31 downto 0); 
    bus_out: out std_logic_vector(101 downto 0)
  );
end buscreate_entity_9984806088;

architecture structural of buscreate_entity_9984806088 is
  signal assert_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_dout_net_x0: std_logic;
  signal assert_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_tx_dout_net_x0: std_logic;
  signal assert_link_up_dout_net_x0: std_logic;
  signal assert_tx_full_dout_net_x0: std_logic;
  signal assert_tx_over_dout_net_x0: std_logic;
  signal assert_valid_dout_net_x0: std_logic;
  signal concatenate_y_net_x0: std_logic_vector(101 downto 0);
  signal reinterpret1_output_port_net: std_logic;
  signal reinterpret2_output_port_net: std_logic;
  signal reinterpret3_output_port_net: std_logic;
  signal reinterpret4_output_port_net: std_logic;
  signal reinterpret5_output_port_net: std_logic;
  signal reinterpret6_output_port_net: std_logic;
  signal reinterpret7_output_port_net: std_logic_vector(63 downto 0);
  signal reinterpret8_output_port_net: std_logic_vector(31 downto 0);

begin
  assert_link_up_dout_net_x0 <= in1;
  assert_led_tx_dout_net_x0 <= in2;
  assert_tx_full_dout_net_x0 <= in3;
  assert_tx_over_dout_net_x0 <= in4;
  assert_valid_dout_net_x0 <= in5;
  assert_eof_dout_net_x0 <= in6;
  assert_data_dout_net_x0 <= in7;
  assert_ip_dout_net_x0 <= in8;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_a47378aa6e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0(0) => reinterpret1_output_port_net,
      in1(0) => reinterpret2_output_port_net,
      in2(0) => reinterpret3_output_port_net,
      in3(0) => reinterpret4_output_port_net,
      in4(0) => reinterpret5_output_port_net,
      in5(0) => reinterpret6_output_port_net,
      in6 => reinterpret7_output_port_net,
      in7 => reinterpret8_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_link_up_dout_net_x0,
      output_port(0) => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_led_tx_dout_net_x0,
      output_port(0) => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_tx_full_dout_net_x0,
      output_port(0) => reinterpret3_output_port_net
    );

  reinterpret4: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_tx_over_dout_net_x0,
      output_port(0) => reinterpret4_output_port_net
    );

  reinterpret5: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_valid_dout_net_x0,
      output_port(0) => reinterpret5_output_port_net
    );

  reinterpret6: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_eof_dout_net_x0,
      output_port(0) => reinterpret6_output_port_net
    );

  reinterpret7: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_data_dout_net_x0,
      output_port => reinterpret7_output_port_net
    );

  reinterpret8: entity work.reinterpret_c5d4d59b73
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_ip_dout_net_x0,
      output_port => reinterpret8_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/txs/ss/ctrl"

entity ctrl_entity_a54a93c5b3 is
  port (
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_a54a93c5b3;

architecture structural of ctrl_entity_a54a93c5b3 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x0 <= roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/gbe0/txs/ss"

entity ss_entity_730d486030 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(101 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(12 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end ss_entity_730d486030;

architecture structural of ss_entity_730d486030 is
  signal add_del_q_net_x1: std_logic_vector(12 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x32: std_logic;
  signal clk_1_sg_x32: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x4: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x4: std_logic;
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(101 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(12 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x32 <= ce_1;
  clk_1_sg_x32 <= clk_1;
  register4_q_net_x3 <= din;
  roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x1 <= roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out;
  register4_q_net_x4 <= trig;
  register4_q_net_x5 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_67ef71f6b4
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_052ad0f85b: entity work.add_gen_entity_453c6a687b
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      cont => never_op_net_x0,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we => we_choice_y_net_x2,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_4d7b1b78da: entity work.basic_ctrl_entity_427693ddd0
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => register4_q_net_x4,
      we => register4_q_net_x5,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we_o => we_choice_y_net_x2
    );

  bram_fb36d7be5a: entity work.bram_entity_59040032f3
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
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
      din_width => 102,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_a54a93c5b3: entity work.ctrl_entity_a54a93c5b3
    port map (
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_2d75e2f328
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register4_q_net_x3,
      output_port => ri_output_port_net
    );

  status_cbdf8d3a56: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0/txs"

entity txs_entity_15ffa90bda is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_data: in std_logic_vector(63 downto 0); 
    in_eof: in std_logic; 
    in_ip: in std_logic_vector(31 downto 0); 
    in_led_tx: in std_logic; 
    in_link_up: in std_logic; 
    in_tx_full: in std_logic; 
    in_tx_over: in std_logic; 
    in_valid: in std_logic; 
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    ss: out std_logic_vector(12 downto 0); 
    ss_x0: out std_logic_vector(127 downto 0); 
    ss_x1: out std_logic; 
    ss_x2: out std_logic_vector(31 downto 0)
  );
end txs_entity_15ffa90bda;

architecture structural of txs_entity_15ffa90bda is
  signal assert_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_dout_net_x0: std_logic;
  signal assert_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_tx_dout_net_x0: std_logic;
  signal assert_link_up_dout_net_x0: std_logic;
  signal assert_tx_full_dout_net_x0: std_logic;
  signal assert_tx_over_dout_net_x0: std_logic;
  signal assert_valid_dout_net_x0: std_logic;
  signal cast_gw_dout_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x35: std_logic;
  signal clk_1_sg_x35: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(101 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal delay3_q_net_x0: std_logic_vector(63 downto 0);
  signal mux1_y_net_x1: std_logic;
  signal mux2_y_net_x0: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register4_q_net_x6: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_led_tx_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_led_up_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_tx_afull_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_tx_overflow_net_x0: std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x2: std_logic_vector(31 downto 0);
  signal txsnap_and_y_net_x1: std_logic;

begin
  ce_1_sg_x35 <= ce_1;
  clk_1_sg_x35 <= clk_1;
  delay3_q_net_x0 <= in_data;
  mux2_y_net_x0 <= in_eof;
  reint1_output_port_net_x1 <= in_ip;
  roach2_tut_tge_gbe0_led_tx_net_x0 <= in_led_tx;
  roach2_tut_tge_gbe0_led_up_net_x1 <= in_link_up;
  roach2_tut_tge_gbe0_tx_afull_net_x0 <= in_tx_full;
  roach2_tut_tge_gbe0_tx_overflow_net_x0 <= in_tx_over;
  mux1_y_net_x1 <= in_valid;
  roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x2 <= roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out;
  txsnap_and_y_net_x1 <= trig;
  ss <= convert_addr_dout_net_x2;
  ss_x0 <= convert_din1_dout_net_x2;
  ss_x1 <= convert_we_dout_net_x2;
  ss_x2 <= cast_gw_dout_net_x2;

  assert_data: entity work.xlpassthrough
    generic map (
      din_width => 64,
      dout_width => 64
    )
    port map (
      din => delay3_q_net_x0,
      dout => assert_data_dout_net_x0
    );

  assert_eof: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => mux2_y_net_x0,
      dout(0) => assert_eof_dout_net_x0
    );

  assert_ip: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => reint1_output_port_net_x1,
      dout => assert_ip_dout_net_x0
    );

  assert_led_tx: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_led_tx_net_x0,
      dout(0) => assert_led_tx_dout_net_x0
    );

  assert_link_up: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_led_up_net_x1,
      dout(0) => assert_link_up_dout_net_x0
    );

  assert_tx_full: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_tx_afull_net_x0,
      dout(0) => assert_tx_full_dout_net_x0
    );

  assert_tx_over: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_tx_overflow_net_x0,
      dout(0) => assert_tx_over_dout_net_x0
    );

  assert_valid: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => mux1_y_net_x1,
      dout(0) => assert_valid_dout_net_x0
    );

  buscreate_9984806088: entity work.buscreate_entity_9984806088
    port map (
      in1 => assert_link_up_dout_net_x0,
      in2 => assert_led_tx_dout_net_x0,
      in3 => assert_tx_full_dout_net_x0,
      in4 => assert_tx_over_dout_net_x0,
      in5 => assert_valid_dout_net_x0,
      in6 => assert_eof_dout_net_x0,
      in7 => assert_data_dout_net_x0,
      in8 => assert_ip_dout_net_x0,
      bus_out => concatenate_y_net_x1
    );

  io_delay_2a470ca56b: entity work.io_delay_entity_19ee665e1d
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      d => concatenate_y_net_x1,
      q => register4_q_net_x3
    );

  ss_730d486030: entity work.ss_entity_730d486030
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      din => register4_q_net_x3,
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x2,
      trig => register4_q_net_x5,
      we => register4_q_net_x6,
      bram => convert_addr_dout_net_x2,
      bram_x0 => convert_din1_dout_net_x2,
      bram_x1 => convert_we_dout_net_x2,
      status => cast_gw_dout_net_x2
    );

  trig_delay_cf46e21148: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      d => txsnap_and_y_net_x1,
      q => register4_q_net_x5
    );

  we_delay_bd13d17578: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x35,
      clk_1 => clk_1_sg_x35,
      d => mux1_y_net_x1,
      q => register4_q_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0"

entity gbe0_entity_6764d6f24a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    debug_rst: in std_logic; 
    grx_badframe: in std_logic; 
    grx_data: in std_logic_vector(63 downto 0); 
    grx_eof: in std_logic; 
    grx_led_rx: in std_logic; 
    grx_led_tx: in std_logic; 
    grx_led_up: in std_logic; 
    grx_overrun: in std_logic; 
    grx_src_ip: in std_logic_vector(31 downto 0); 
    grx_valid: in std_logic; 
    gtx_afull: in std_logic; 
    gtx_overflow: in std_logic; 
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    rst: in std_logic; 
    rx_ack: in std_logic; 
    rx_overrun_ack: in std_logic; 
    tx_data: in std_logic_vector(63 downto 0); 
    tx_dest_ip: in std_logic_vector(31 downto 0); 
    tx_dest_port: in std_logic_vector(15 downto 0); 
    tx_end_of_frame: in std_logic; 
    tx_valid: in std_logic; 
    convert_rst_x0: out std_logic; 
    convert_rx_ack_x0: out std_logic; 
    convert_rx_overrun_ack_x0: out std_logic; 
    convert_tx_data_x0: out std_logic_vector(63 downto 0); 
    convert_tx_dest_ip_x0: out std_logic_vector(31 downto 0); 
    convert_tx_end_of_frame_x0: out std_logic; 
    convert_tx_port_x0: out std_logic_vector(15 downto 0); 
    convert_tx_valid_x0: out std_logic; 
    rxbadctr: out std_logic_vector(31 downto 0); 
    rxctr: out std_logic_vector(31 downto 0); 
    rxeofctr: out std_logic_vector(31 downto 0); 
    rxofctr: out std_logic_vector(31 downto 0); 
    rxs: out std_logic_vector(12 downto 0); 
    rxs_x0: out std_logic_vector(127 downto 0); 
    rxs_x1: out std_logic; 
    rxs_x2: out std_logic_vector(31 downto 0); 
    rxvldctr: out std_logic_vector(31 downto 0); 
    txctr: out std_logic_vector(31 downto 0); 
    txfullctr: out std_logic_vector(31 downto 0); 
    txofctr: out std_logic_vector(31 downto 0); 
    txs: out std_logic_vector(12 downto 0); 
    txs_x0: out std_logic_vector(127 downto 0); 
    txs_x1: out std_logic; 
    txs_x2: out std_logic_vector(31 downto 0); 
    txvldctr: out std_logic_vector(31 downto 0)
  );
end gbe0_entity_6764d6f24a;

architecture structural of gbe0_entity_6764d6f24a is
  signal cast_gw_dout_net_x11: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x12: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x13: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x14: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x15: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x16: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x17: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x18: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x19: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x20: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x21: std_logic_vector(31 downto 0);
  signal ce_1_sg_x37: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal constant4_op_net_x0: std_logic;
  signal convert_addr_dout_net_x4: std_logic_vector(12 downto 0);
  signal convert_addr_dout_net_x5: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x4: std_logic_vector(127 downto 0);
  signal convert_din1_dout_net_x5: std_logic_vector(127 downto 0);
  signal convert_rst_dout_net_x0: std_logic;
  signal convert_rx_ack_dout_net_x0: std_logic;
  signal convert_rx_overrun_ack_dout_net_x0: std_logic;
  signal convert_tx_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x0: std_logic;
  signal convert_tx_port_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x0: std_logic;
  signal convert_we_dout_net_x4: std_logic;
  signal convert_we_dout_net_x5: std_logic;
  signal delay3_q_net_x1: std_logic_vector(63 downto 0);
  signal delay_q_net_x0: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal low0_y_net_x0: std_logic;
  signal low1_y_net_x0: std_logic;
  signal mux1_y_net_x2: std_logic;
  signal mux2_y_net_x1: std_logic;
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x3: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_led_rx_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_led_tx_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_led_up_net_x2: std_logic;
  signal roach2_tut_tge_gbe0_rx_bad_frame_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_rx_data_net_x1: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_rx_end_of_frame_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_rx_source_ip_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_valid_net_x2: std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x3: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_afull_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_tx_overflow_net_x1: std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x3: std_logic_vector(31 downto 0);
  signal rxbadctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxbadctr_del1_q_net: std_logic;
  signal rxbadctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxctr_and_y_net_x0: std_logic;
  signal rxctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxctr_del1_q_net: std_logic;
  signal rxctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxeofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxeofctr_del1_q_net: std_logic;
  signal rxeofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxofctr_del1_q_net: std_logic;
  signal rxofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxsnap_and_y_net_x1: std_logic;
  signal rxvldctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxvldctr_del1_q_net: std_logic;
  signal rxvldctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txctr_and_y_net_x0: std_logic;
  signal txctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txctr_del1_q_net: std_logic;
  signal txctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txfullctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txfullctr_del1_q_net: std_logic;
  signal txfullctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txofctr_del1_q_net: std_logic;
  signal txofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txsnap_and_y_net_x1: std_logic;
  signal txvldctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txvldctr_del1_q_net: std_logic;
  signal txvldctr_del2_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x37 <= ce_1;
  clk_1_sg_x37 <= clk_1;
  low0_y_net_x0 <= debug_rst;
  roach2_tut_tge_gbe0_rx_bad_frame_net_x1 <= grx_badframe;
  roach2_tut_tge_gbe0_rx_data_net_x1 <= grx_data;
  roach2_tut_tge_gbe0_rx_end_of_frame_net_x1 <= grx_eof;
  roach2_tut_tge_gbe0_led_rx_net_x1 <= grx_led_rx;
  roach2_tut_tge_gbe0_led_tx_net_x1 <= grx_led_tx;
  roach2_tut_tge_gbe0_led_up_net_x2 <= grx_led_up;
  roach2_tut_tge_gbe0_rx_overrun_net_x1 <= grx_overrun;
  roach2_tut_tge_gbe0_rx_source_ip_net_x1 <= grx_src_ip;
  roach2_tut_tge_gbe0_rx_valid_net_x2 <= grx_valid;
  roach2_tut_tge_gbe0_tx_afull_net_x1 <= gtx_afull;
  roach2_tut_tge_gbe0_tx_overflow_net_x1 <= gtx_overflow;
  roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x3 <= roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x3 <= roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out;
  low1_y_net_x0 <= rst;
  constant4_op_net_x0 <= rx_ack;
  delay_q_net_x0 <= rx_overrun_ack;
  delay3_q_net_x1 <= tx_data;
  reint1_output_port_net_x2 <= tx_dest_ip;
  reint1_output_port_net_x3 <= tx_dest_port;
  mux2_y_net_x1 <= tx_end_of_frame;
  mux1_y_net_x2 <= tx_valid;
  convert_rst_x0 <= convert_rst_dout_net_x0;
  convert_rx_ack_x0 <= convert_rx_ack_dout_net_x0;
  convert_rx_overrun_ack_x0 <= convert_rx_overrun_ack_dout_net_x0;
  convert_tx_data_x0 <= convert_tx_data_dout_net_x0;
  convert_tx_dest_ip_x0 <= convert_tx_dest_ip_dout_net_x0;
  convert_tx_end_of_frame_x0 <= convert_tx_end_of_frame_dout_net_x0;
  convert_tx_port_x0 <= convert_tx_port_dout_net_x0;
  convert_tx_valid_x0 <= convert_tx_valid_dout_net_x0;
  rxbadctr <= cast_gw_dout_net_x11;
  rxctr <= cast_gw_dout_net_x12;
  rxeofctr <= cast_gw_dout_net_x13;
  rxofctr <= cast_gw_dout_net_x14;
  rxs <= convert_addr_dout_net_x4;
  rxs_x0 <= convert_din1_dout_net_x4;
  rxs_x1 <= convert_we_dout_net_x4;
  rxs_x2 <= cast_gw_dout_net_x15;
  rxvldctr <= cast_gw_dout_net_x16;
  txctr <= cast_gw_dout_net_x17;
  txfullctr <= cast_gw_dout_net_x18;
  txofctr <= cast_gw_dout_net_x19;
  txs <= convert_addr_dout_net_x5;
  txs_x0 <= convert_din1_dout_net_x5;
  txs_x1 <= convert_we_dout_net_x5;
  txs_x2 <= cast_gw_dout_net_x20;
  txvldctr <= cast_gw_dout_net_x21;

  convert_rst: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => low1_y_net_x0,
      en => "1",
      dout(0) => convert_rst_dout_net_x0
    );

  convert_rx_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => constant4_op_net_x0,
      en => "1",
      dout(0) => convert_rx_ack_dout_net_x0
    );

  convert_rx_overrun_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => delay_q_net_x0,
      en => "1",
      dout(0) => convert_rx_overrun_ack_dout_net_x0
    );

  convert_tx_data: entity work.xlconvert
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => delay3_q_net_x1,
      en => "1",
      dout => convert_tx_data_dout_net_x0
    );

  convert_tx_dest_ip: entity work.xlconvert
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => reint1_output_port_net_x2,
      en => "1",
      dout => convert_tx_dest_ip_dout_net_x0
    );

  convert_tx_end_of_frame: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => mux2_y_net_x1,
      en => "1",
      dout(0) => convert_tx_end_of_frame_dout_net_x0
    );

  convert_tx_port: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din => reint1_output_port_net_x3,
      en => "1",
      dout => convert_tx_port_dout_net_x0
    );

  convert_tx_valid: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      din(0) => mux1_y_net_x2,
      en => "1",
      dout(0) => convert_tx_valid_dout_net_x0
    );

  rxbadctr_a0932aebd0: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => rxbadctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x11
    );

  rxbadctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_rx_bad_frame_net_x1,
      rst(0) => rxbadctr_del1_q_net,
      op => rxbadctr_ctr_op_net
    );

  rxbadctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => rxbadctr_del1_q_net
    );

  rxbadctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => rxbadctr_ctr_op_net,
      q => rxbadctr_del2_q_net_x0
    );

  rxctr_and: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d0(0) => roach2_tut_tge_gbe0_rx_end_of_frame_net_x1,
      d1(0) => roach2_tut_tge_gbe0_rx_valid_net_x2,
      y(0) => rxctr_and_y_net_x0
    );

  rxctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => edge_op_y_net_x0,
      rst(0) => rxctr_del1_q_net,
      op => rxctr_ctr_op_net
    );

  rxctr_d67281147b: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => rxctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x12
    );

  rxctr_del1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => rxctr_del1_q_net
    );

  rxctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => rxctr_ctr_op_net,
      q => rxctr_del2_q_net_x0
    );

  rxctr_ed_843f7b7738: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      in_x0 => rxctr_and_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  rxeofctr_2e573a4903: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => rxeofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x13
    );

  rxeofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_rx_end_of_frame_net_x1,
      rst(0) => rxeofctr_del1_q_net,
      op => rxeofctr_ctr_op_net
    );

  rxeofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => rxeofctr_del1_q_net
    );

  rxeofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => rxeofctr_ctr_op_net,
      q => rxeofctr_del2_q_net_x0
    );

  rxofctr_9007703e89: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => rxofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x14
    );

  rxofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_rx_overrun_net_x1,
      rst(0) => rxofctr_del1_q_net,
      op => rxofctr_ctr_op_net
    );

  rxofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => rxofctr_del1_q_net
    );

  rxofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => rxofctr_ctr_op_net,
      q => rxofctr_del2_q_net_x0
    );

  rxs_d041229ce3: entity work.rxs_entity_d041229ce3
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      in_bad_frame => roach2_tut_tge_gbe0_rx_bad_frame_net_x1,
      in_data_in => roach2_tut_tge_gbe0_rx_data_net_x1,
      in_eof_in => roach2_tut_tge_gbe0_rx_end_of_frame_net_x1,
      in_ip_in => roach2_tut_tge_gbe0_rx_source_ip_net_x1,
      in_led_rx => roach2_tut_tge_gbe0_led_rx_net_x1,
      in_led_up => roach2_tut_tge_gbe0_led_up_net_x2,
      in_overrun => roach2_tut_tge_gbe0_rx_overrun_net_x1,
      in_valid_in => roach2_tut_tge_gbe0_rx_valid_net_x2,
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net_x3,
      trig => rxsnap_and_y_net_x1,
      ss => convert_addr_dout_net_x4,
      ss_x0 => convert_din1_dout_net_x4,
      ss_x1 => convert_we_dout_net_x4,
      ss_x2 => cast_gw_dout_net_x15
    );

  rxsnap_and: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => roach2_tut_tge_gbe0_rx_valid_net_x2,
      d1(0) => roach2_tut_tge_gbe0_rx_end_of_frame_net_x1,
      y(0) => rxsnap_and_y_net_x1
    );

  rxvldctr_74af0bd2b5: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => rxvldctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x16
    );

  rxvldctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_rx_valid_net_x2,
      rst(0) => rxvldctr_del1_q_net,
      op => rxvldctr_ctr_op_net
    );

  rxvldctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => rxvldctr_del1_q_net
    );

  rxvldctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => rxvldctr_ctr_op_net,
      q => rxvldctr_del2_q_net_x0
    );

  txctr_608b9c7493: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => txctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x17
    );

  txctr_and: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d0(0) => mux2_y_net_x1,
      d1(0) => mux1_y_net_x2,
      y(0) => txctr_and_y_net_x0
    );

  txctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => edge_op_y_net_x1,
      rst(0) => txctr_del1_q_net,
      op => txctr_ctr_op_net
    );

  txctr_del1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => txctr_del1_q_net
    );

  txctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => txctr_ctr_op_net,
      q => txctr_del2_q_net_x0
    );

  txctr_ed_6dd2975427: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      in_x0 => txctr_and_y_net_x0,
      out_x0 => edge_op_y_net_x1
    );

  txfullctr_49df773bc0: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => txfullctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x18
    );

  txfullctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_tx_afull_net_x1,
      rst(0) => txfullctr_del1_q_net,
      op => txfullctr_ctr_op_net
    );

  txfullctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => txfullctr_del1_q_net
    );

  txfullctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => txfullctr_ctr_op_net,
      q => txfullctr_del2_q_net_x0
    );

  txofctr_24a7f0bdc6: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => txofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x19
    );

  txofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => roach2_tut_tge_gbe0_tx_overflow_net_x1,
      rst(0) => txofctr_del1_q_net,
      op => txofctr_ctr_op_net
    );

  txofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => txofctr_del1_q_net
    );

  txofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => txofctr_ctr_op_net,
      q => txofctr_del2_q_net_x0
    );

  txs_15ffa90bda: entity work.txs_entity_15ffa90bda
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      in_data => delay3_q_net_x1,
      in_eof => mux2_y_net_x1,
      in_ip => reint1_output_port_net_x2,
      in_led_tx => roach2_tut_tge_gbe0_led_tx_net_x1,
      in_link_up => roach2_tut_tge_gbe0_led_up_net_x2,
      in_tx_full => roach2_tut_tge_gbe0_tx_afull_net_x1,
      in_tx_over => roach2_tut_tge_gbe0_tx_overflow_net_x1,
      in_valid => mux1_y_net_x2,
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net_x3,
      trig => txsnap_and_y_net_x1,
      ss => convert_addr_dout_net_x5,
      ss_x0 => convert_din1_dout_net_x5,
      ss_x1 => convert_we_dout_net_x5,
      ss_x2 => cast_gw_dout_net_x20
    );

  txsnap_and: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => mux1_y_net_x2,
      d1(0) => mux2_y_net_x1,
      y(0) => txsnap_and_y_net_x1
    );

  txvldctr_28fad31388: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x37,
      clk_1 => clk_1_sg_x37,
      out_reg => txvldctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x21
    );

  txvldctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      en(0) => mux1_y_net_x2,
      rst(0) => txvldctr_del1_q_net,
      op => txvldctr_ctr_op_net
    );

  txvldctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d(0) => low0_y_net_x0,
      q(0) => txvldctr_del1_q_net
    );

  txvldctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      d => txvldctr_ctr_op_net,
      q => txvldctr_del2_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe0_linkup"

entity gbe0_linkup_entity_b91d1c6553 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    out_reg: in std_logic; 
    cast_gw_x0: out std_logic_vector(31 downto 0)
  );
end gbe0_linkup_entity_b91d1c6553;

architecture structural of gbe0_linkup_entity_b91d1c6553 is
  signal assert_reg_dout_net: std_logic;
  signal cast_gw_dout_net_x0: std_logic_vector(31 downto 0);
  signal ce_1_sg_x38: std_logic;
  signal clk_1_sg_x38: std_logic;
  signal io_delay_q_net: std_logic;
  signal reint1_output_port_net: std_logic;
  signal roach2_tut_tge_gbe0_led_up_net_x3: std_logic;

begin
  ce_1_sg_x38 <= ce_1;
  clk_1_sg_x38 <= clk_1;
  roach2_tut_tge_gbe0_led_up_net_x3 <= out_reg;
  cast_gw_x0 <= cast_gw_dout_net_x0;

  assert_reg: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe0_led_up_net_x3,
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
      ce => ce_1_sg_x38,
      clk => clk_1_sg_x38,
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

-- Generated from Simulink block "roach2_tut_tge/gbe1/rxs/ss/ctrl"

entity ctrl_entity_3b52963882 is
  port (
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_3b52963882;

architecture structural of ctrl_entity_3b52963882 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x0 <= roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/gbe1/rxs/ss"

entity ss_entity_566573045d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(101 downto 0); 
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(12 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end ss_entity_566573045d;

architecture structural of ss_entity_566573045d is
  signal add_del_q_net_x1: std_logic_vector(12 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x54: std_logic;
  signal clk_1_sg_x54: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x4: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x4: std_logic;
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(101 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(12 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x54 <= ce_1;
  clk_1_sg_x54 <= clk_1;
  register4_q_net_x3 <= din;
  roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x1 <= roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out;
  register4_q_net_x4 <= trig;
  register4_q_net_x5 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_67ef71f6b4
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_43afbdca30: entity work.add_gen_entity_453c6a687b
    port map (
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
      cont => never_op_net_x0,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we => we_choice_y_net_x2,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_0282b1742b: entity work.basic_ctrl_entity_427693ddd0
    port map (
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => register4_q_net_x4,
      we => register4_q_net_x5,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we_o => we_choice_y_net_x2
    );

  bram_f0ccc8c0f8: entity work.bram_entity_59040032f3
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
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
      din_width => 102,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_3b52963882: entity work.ctrl_entity_3b52963882
    port map (
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_2d75e2f328
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register4_q_net_x3,
      output_port => ri_output_port_net
    );

  status_3406d44025: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x54,
      clk_1 => clk_1_sg_x54,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x54,
      clk => clk_1_sg_x54,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe1/rxs"

entity rxs_entity_57bb00bcdb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_bad_frame: in std_logic; 
    in_data_in: in std_logic_vector(63 downto 0); 
    in_eof_in: in std_logic; 
    in_ip_in: in std_logic_vector(31 downto 0); 
    in_led_rx: in std_logic; 
    in_led_up: in std_logic; 
    in_overrun: in std_logic; 
    in_valid_in: in std_logic; 
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    ss: out std_logic_vector(12 downto 0); 
    ss_x0: out std_logic_vector(127 downto 0); 
    ss_x1: out std_logic; 
    ss_x2: out std_logic_vector(31 downto 0)
  );
end rxs_entity_57bb00bcdb;

architecture structural of rxs_entity_57bb00bcdb is
  signal assert_bad_frame_dout_net_x0: std_logic;
  signal assert_data_in_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_in_dout_net_x0: std_logic;
  signal assert_ip_in_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_rx_dout_net_x0: std_logic;
  signal assert_led_up_dout_net_x0: std_logic;
  signal assert_overrun_dout_net_x0: std_logic;
  signal assert_valid_in_dout_net_x0: std_logic;
  signal cast_gw_dout_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x57: std_logic;
  signal clk_1_sg_x57: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(101 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register4_q_net_x6: std_logic;
  signal roach2_tut_tge_gbe1_led_rx_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_led_up_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_rx_bad_frame_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_rx_data_net_x0: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_rx_end_of_frame_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_rx_overrun_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_rx_source_ip_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_valid_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x2: std_logic_vector(31 downto 0);
  signal rxsnap_and_y_net_x1: std_logic;

begin
  ce_1_sg_x57 <= ce_1;
  clk_1_sg_x57 <= clk_1;
  roach2_tut_tge_gbe1_rx_bad_frame_net_x0 <= in_bad_frame;
  roach2_tut_tge_gbe1_rx_data_net_x0 <= in_data_in;
  roach2_tut_tge_gbe1_rx_end_of_frame_net_x0 <= in_eof_in;
  roach2_tut_tge_gbe1_rx_source_ip_net_x0 <= in_ip_in;
  roach2_tut_tge_gbe1_led_rx_net_x0 <= in_led_rx;
  roach2_tut_tge_gbe1_led_up_net_x0 <= in_led_up;
  roach2_tut_tge_gbe1_rx_overrun_net_x0 <= in_overrun;
  roach2_tut_tge_gbe1_rx_valid_net_x1 <= in_valid_in;
  roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x2 <= roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out;
  rxsnap_and_y_net_x1 <= trig;
  ss <= convert_addr_dout_net_x2;
  ss_x0 <= convert_din1_dout_net_x2;
  ss_x1 <= convert_we_dout_net_x2;
  ss_x2 <= cast_gw_dout_net_x2;

  assert_bad_frame: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_rx_bad_frame_net_x0,
      dout(0) => assert_bad_frame_dout_net_x0
    );

  assert_data_in: entity work.xlpassthrough
    generic map (
      din_width => 64,
      dout_width => 64
    )
    port map (
      din => roach2_tut_tge_gbe1_rx_data_net_x0,
      dout => assert_data_in_dout_net_x0
    );

  assert_eof_in: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_rx_end_of_frame_net_x0,
      dout(0) => assert_eof_in_dout_net_x0
    );

  assert_ip_in: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => roach2_tut_tge_gbe1_rx_source_ip_net_x0,
      dout => assert_ip_in_dout_net_x0
    );

  assert_led_rx: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_led_rx_net_x0,
      dout(0) => assert_led_rx_dout_net_x0
    );

  assert_led_up: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_led_up_net_x0,
      dout(0) => assert_led_up_dout_net_x0
    );

  assert_overrun: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_rx_overrun_net_x0,
      dout(0) => assert_overrun_dout_net_x0
    );

  assert_valid_in: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_rx_valid_net_x1,
      dout(0) => assert_valid_in_dout_net_x0
    );

  buscreate_def1079ce9: entity work.buscreate_entity_99c4ac2dc6
    port map (
      in1 => assert_led_up_dout_net_x0,
      in2 => assert_led_rx_dout_net_x0,
      in3 => assert_data_in_dout_net_x0,
      in4 => assert_valid_in_dout_net_x0,
      in5 => assert_ip_in_dout_net_x0,
      in6 => assert_eof_in_dout_net_x0,
      in7 => assert_bad_frame_dout_net_x0,
      in8 => assert_overrun_dout_net_x0,
      bus_out => concatenate_y_net_x1
    );

  io_delay_4e306d15aa: entity work.io_delay_entity_19ee665e1d
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => concatenate_y_net_x1,
      q => register4_q_net_x3
    );

  ss_566573045d: entity work.ss_entity_566573045d
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      din => register4_q_net_x3,
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x2,
      trig => register4_q_net_x5,
      we => register4_q_net_x6,
      bram => convert_addr_dout_net_x2,
      bram_x0 => convert_din1_dout_net_x2,
      bram_x1 => convert_we_dout_net_x2,
      status => cast_gw_dout_net_x2
    );

  trig_delay_faf56c043c: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => rxsnap_and_y_net_x1,
      q => register4_q_net_x5
    );

  we_delay_9fd1932e6a: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x57,
      clk_1 => clk_1_sg_x57,
      d => roach2_tut_tge_gbe1_rx_valid_net_x1,
      q => register4_q_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe1/txs/ss/ctrl"

entity ctrl_entity_abf3204bd9 is
  port (
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_abf3204bd9;

architecture structural of ctrl_entity_abf3204bd9 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x0 <= roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/gbe1/txs/ss"

entity ss_entity_d4ee04435e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(101 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(12 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end ss_entity_d4ee04435e;

architecture structural of ss_entity_d4ee04435e is
  signal add_del_q_net_x1: std_logic_vector(12 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x72: std_logic;
  signal clk_1_sg_x72: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x4: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x4: std_logic;
  signal register4_q_net_x5: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(101 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(12 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x72 <= ce_1;
  clk_1_sg_x72 <= clk_1;
  register4_q_net_x3 <= din;
  roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x1 <= roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out;
  register4_q_net_x4 <= trig;
  register4_q_net_x5 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_67ef71f6b4
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_82369eb35f: entity work.add_gen_entity_453c6a687b
    port map (
      ce_1 => ce_1_sg_x72,
      clk_1 => clk_1_sg_x72,
      cont => never_op_net_x0,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we => we_choice_y_net_x2,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_dc5773f283: entity work.basic_ctrl_entity_427693ddd0
    port map (
      ce_1 => ce_1_sg_x72,
      clk_1 => clk_1_sg_x72,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => register4_q_net_x4,
      we => register4_q_net_x5,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we_o => we_choice_y_net_x2
    );

  bram_3cbe7c7739: entity work.bram_entity_59040032f3
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x72,
      clk_1 => clk_1_sg_x72,
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
      din_width => 102,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_abf3204bd9: entity work.ctrl_entity_abf3204bd9
    port map (
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_2d75e2f328
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => register4_q_net_x3,
      output_port => ri_output_port_net
    );

  status_6c2edd063c: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x72,
      clk_1 => clk_1_sg_x72,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x72,
      clk => clk_1_sg_x72,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe1/txs"

entity txs_entity_490989f991 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_data: in std_logic_vector(63 downto 0); 
    in_eof: in std_logic; 
    in_ip: in std_logic_vector(31 downto 0); 
    in_led_tx: in std_logic; 
    in_link_up: in std_logic; 
    in_tx_full: in std_logic; 
    in_tx_over: in std_logic; 
    in_valid: in std_logic; 
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    ss: out std_logic_vector(12 downto 0); 
    ss_x0: out std_logic_vector(127 downto 0); 
    ss_x1: out std_logic; 
    ss_x2: out std_logic_vector(31 downto 0)
  );
end txs_entity_490989f991;

architecture structural of txs_entity_490989f991 is
  signal assert_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_dout_net_x0: std_logic;
  signal assert_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal assert_led_tx_dout_net_x0: std_logic;
  signal assert_link_up_dout_net_x0: std_logic;
  signal assert_tx_full_dout_net_x0: std_logic;
  signal assert_tx_over_dout_net_x0: std_logic;
  signal assert_valid_dout_net_x0: std_logic;
  signal cast_gw_dout_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x75: std_logic;
  signal clk_1_sg_x75: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(101 downto 0);
  signal constant3_op_net_x1: std_logic;
  signal constant5_op_net_x0: std_logic;
  signal constant6_op_net_x0: std_logic_vector(63 downto 0);
  signal constant7_op_net_x0: std_logic_vector(31 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal register4_q_net_x3: std_logic_vector(101 downto 0);
  signal register4_q_net_x5: std_logic;
  signal register4_q_net_x6: std_logic;
  signal roach2_tut_tge_gbe1_led_tx_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_led_up_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_tx_afull_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_tx_overflow_net_x0: std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x2: std_logic_vector(31 downto 0);
  signal txsnap_and_y_net_x1: std_logic;

begin
  ce_1_sg_x75 <= ce_1;
  clk_1_sg_x75 <= clk_1;
  constant6_op_net_x0 <= in_data;
  constant5_op_net_x0 <= in_eof;
  constant7_op_net_x0 <= in_ip;
  roach2_tut_tge_gbe1_led_tx_net_x0 <= in_led_tx;
  roach2_tut_tge_gbe1_led_up_net_x1 <= in_link_up;
  roach2_tut_tge_gbe1_tx_afull_net_x0 <= in_tx_full;
  roach2_tut_tge_gbe1_tx_overflow_net_x0 <= in_tx_over;
  constant3_op_net_x1 <= in_valid;
  roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x2 <= roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out;
  txsnap_and_y_net_x1 <= trig;
  ss <= convert_addr_dout_net_x2;
  ss_x0 <= convert_din1_dout_net_x2;
  ss_x1 <= convert_we_dout_net_x2;
  ss_x2 <= cast_gw_dout_net_x2;

  assert_data: entity work.xlpassthrough
    generic map (
      din_width => 64,
      dout_width => 64
    )
    port map (
      din => constant6_op_net_x0,
      dout => assert_data_dout_net_x0
    );

  assert_eof: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => constant5_op_net_x0,
      dout(0) => assert_eof_dout_net_x0
    );

  assert_ip: entity work.xlpassthrough
    generic map (
      din_width => 32,
      dout_width => 32
    )
    port map (
      din => constant7_op_net_x0,
      dout => assert_ip_dout_net_x0
    );

  assert_led_tx: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_led_tx_net_x0,
      dout(0) => assert_led_tx_dout_net_x0
    );

  assert_link_up: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_led_up_net_x1,
      dout(0) => assert_link_up_dout_net_x0
    );

  assert_tx_full: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_tx_afull_net_x0,
      dout(0) => assert_tx_full_dout_net_x0
    );

  assert_tx_over: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => roach2_tut_tge_gbe1_tx_overflow_net_x0,
      dout(0) => assert_tx_over_dout_net_x0
    );

  assert_valid: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => constant3_op_net_x1,
      dout(0) => assert_valid_dout_net_x0
    );

  buscreate_519f0c27ee: entity work.buscreate_entity_9984806088
    port map (
      in1 => assert_link_up_dout_net_x0,
      in2 => assert_led_tx_dout_net_x0,
      in3 => assert_tx_full_dout_net_x0,
      in4 => assert_tx_over_dout_net_x0,
      in5 => assert_valid_dout_net_x0,
      in6 => assert_eof_dout_net_x0,
      in7 => assert_data_dout_net_x0,
      in8 => assert_ip_dout_net_x0,
      bus_out => concatenate_y_net_x1
    );

  io_delay_096bea0f21: entity work.io_delay_entity_19ee665e1d
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      d => concatenate_y_net_x1,
      q => register4_q_net_x3
    );

  ss_d4ee04435e: entity work.ss_entity_d4ee04435e
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      din => register4_q_net_x3,
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x2,
      trig => register4_q_net_x5,
      we => register4_q_net_x6,
      bram => convert_addr_dout_net_x2,
      bram_x0 => convert_din1_dout_net_x2,
      bram_x1 => convert_we_dout_net_x2,
      status => cast_gw_dout_net_x2
    );

  trig_delay_897490cd92: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      d => txsnap_and_y_net_x1,
      q => register4_q_net_x5
    );

  we_delay_06fd8d164f: entity work.trig_delay_entity_ecb11e5b0a
    port map (
      ce_1 => ce_1_sg_x75,
      clk_1 => clk_1_sg_x75,
      d => constant3_op_net_x1,
      q => register4_q_net_x6
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/gbe1"

entity gbe1_entity_3bbccc3192 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    debug_rst: in std_logic; 
    grx_badframe: in std_logic; 
    grx_data: in std_logic_vector(63 downto 0); 
    grx_eof: in std_logic; 
    grx_led_rx: in std_logic; 
    grx_led_tx: in std_logic; 
    grx_led_up: in std_logic; 
    grx_overrun: in std_logic; 
    grx_src_ip: in std_logic_vector(31 downto 0); 
    grx_valid: in std_logic; 
    gtx_afull: in std_logic; 
    gtx_overflow: in std_logic; 
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    rst: in std_logic; 
    rx_ack: in std_logic; 
    rx_overrun_ack: in std_logic; 
    tx_data: in std_logic_vector(63 downto 0); 
    tx_dest_ip: in std_logic_vector(31 downto 0); 
    tx_dest_port: in std_logic_vector(15 downto 0); 
    tx_end_of_frame: in std_logic; 
    tx_valid: in std_logic; 
    convert_rst_x0: out std_logic; 
    convert_rx_ack_x0: out std_logic; 
    convert_rx_overrun_ack_x0: out std_logic; 
    convert_tx_data_x0: out std_logic_vector(63 downto 0); 
    convert_tx_dest_ip_x0: out std_logic_vector(31 downto 0); 
    convert_tx_end_of_frame_x0: out std_logic; 
    convert_tx_port_x0: out std_logic_vector(15 downto 0); 
    convert_tx_valid_x0: out std_logic; 
    rxbadctr: out std_logic_vector(31 downto 0); 
    rxctr: out std_logic_vector(31 downto 0); 
    rxeofctr: out std_logic_vector(31 downto 0); 
    rxofctr: out std_logic_vector(31 downto 0); 
    rxs: out std_logic_vector(12 downto 0); 
    rxs_x0: out std_logic_vector(127 downto 0); 
    rxs_x1: out std_logic; 
    rxs_x2: out std_logic_vector(31 downto 0); 
    rxvldctr: out std_logic_vector(31 downto 0); 
    txctr: out std_logic_vector(31 downto 0); 
    txfullctr: out std_logic_vector(31 downto 0); 
    txofctr: out std_logic_vector(31 downto 0); 
    txs: out std_logic_vector(12 downto 0); 
    txs_x0: out std_logic_vector(127 downto 0); 
    txs_x1: out std_logic; 
    txs_x2: out std_logic_vector(31 downto 0); 
    txvldctr: out std_logic_vector(31 downto 0)
  );
end gbe1_entity_3bbccc3192;

architecture structural of gbe1_entity_3bbccc3192 is
  signal cast_gw_dout_net_x11: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x12: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x13: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x14: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x15: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x16: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x17: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x18: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x19: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x20: std_logic_vector(31 downto 0);
  signal cast_gw_dout_net_x21: std_logic_vector(31 downto 0);
  signal ce_1_sg_x77: std_logic;
  signal clk_1_sg_x77: std_logic;
  signal constant3_op_net_x2: std_logic;
  signal constant5_op_net_x1: std_logic;
  signal constant6_op_net_x1: std_logic_vector(63 downto 0);
  signal constant7_op_net_x1: std_logic_vector(31 downto 0);
  signal constant8_op_net_x0: std_logic_vector(15 downto 0);
  signal constant9_op_net_x0: std_logic;
  signal convert_addr_dout_net_x4: std_logic_vector(12 downto 0);
  signal convert_addr_dout_net_x5: std_logic_vector(12 downto 0);
  signal convert_din1_dout_net_x4: std_logic_vector(127 downto 0);
  signal convert_din1_dout_net_x5: std_logic_vector(127 downto 0);
  signal convert_rst_dout_net_x0: std_logic;
  signal convert_rx_ack_dout_net_x0: std_logic;
  signal convert_rx_overrun_ack_dout_net_x0: std_logic;
  signal convert_tx_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal convert_tx_dest_ip_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert_tx_end_of_frame_dout_net_x0: std_logic;
  signal convert_tx_port_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_tx_valid_dout_net_x0: std_logic;
  signal convert_we_dout_net_x4: std_logic;
  signal convert_we_dout_net_x5: std_logic;
  signal delay1_q_net_x0: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal low0_y_net_x1: std_logic;
  signal low1_y_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_led_rx_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_led_tx_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_led_up_net_x2: std_logic;
  signal roach2_tut_tge_gbe1_rx_bad_frame_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_rx_data_net_x1: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_rx_end_of_frame_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_rx_overrun_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_rx_source_ip_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_valid_net_x2: std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x3: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_tx_afull_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_tx_overflow_net_x1: std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x3: std_logic_vector(31 downto 0);
  signal rxbadctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxbadctr_del1_q_net: std_logic;
  signal rxbadctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxctr_and_y_net_x0: std_logic;
  signal rxctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxctr_del1_q_net: std_logic;
  signal rxctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxeofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxeofctr_del1_q_net: std_logic;
  signal rxeofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxofctr_del1_q_net: std_logic;
  signal rxofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal rxsnap_and_y_net_x1: std_logic;
  signal rxvldctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal rxvldctr_del1_q_net: std_logic;
  signal rxvldctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txctr_and_y_net_x0: std_logic;
  signal txctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txctr_del1_q_net: std_logic;
  signal txctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txfullctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txfullctr_del1_q_net: std_logic;
  signal txfullctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txofctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txofctr_del1_q_net: std_logic;
  signal txofctr_del2_q_net_x0: std_logic_vector(31 downto 0);
  signal txsnap_and_y_net_x1: std_logic;
  signal txvldctr_ctr_op_net: std_logic_vector(31 downto 0);
  signal txvldctr_del1_q_net: std_logic;
  signal txvldctr_del2_q_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x77 <= ce_1;
  clk_1_sg_x77 <= clk_1;
  low0_y_net_x1 <= debug_rst;
  roach2_tut_tge_gbe1_rx_bad_frame_net_x1 <= grx_badframe;
  roach2_tut_tge_gbe1_rx_data_net_x1 <= grx_data;
  roach2_tut_tge_gbe1_rx_end_of_frame_net_x1 <= grx_eof;
  roach2_tut_tge_gbe1_led_rx_net_x1 <= grx_led_rx;
  roach2_tut_tge_gbe1_led_tx_net_x1 <= grx_led_tx;
  roach2_tut_tge_gbe1_led_up_net_x2 <= grx_led_up;
  roach2_tut_tge_gbe1_rx_overrun_net_x1 <= grx_overrun;
  roach2_tut_tge_gbe1_rx_source_ip_net_x1 <= grx_src_ip;
  roach2_tut_tge_gbe1_rx_valid_net_x2 <= grx_valid;
  roach2_tut_tge_gbe1_tx_afull_net_x1 <= gtx_afull;
  roach2_tut_tge_gbe1_tx_overflow_net_x1 <= gtx_overflow;
  roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x3 <= roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x3 <= roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out;
  low1_y_net_x1 <= rst;
  constant9_op_net_x0 <= rx_ack;
  delay1_q_net_x0 <= rx_overrun_ack;
  constant6_op_net_x1 <= tx_data;
  constant7_op_net_x1 <= tx_dest_ip;
  constant8_op_net_x0 <= tx_dest_port;
  constant5_op_net_x1 <= tx_end_of_frame;
  constant3_op_net_x2 <= tx_valid;
  convert_rst_x0 <= convert_rst_dout_net_x0;
  convert_rx_ack_x0 <= convert_rx_ack_dout_net_x0;
  convert_rx_overrun_ack_x0 <= convert_rx_overrun_ack_dout_net_x0;
  convert_tx_data_x0 <= convert_tx_data_dout_net_x0;
  convert_tx_dest_ip_x0 <= convert_tx_dest_ip_dout_net_x0;
  convert_tx_end_of_frame_x0 <= convert_tx_end_of_frame_dout_net_x0;
  convert_tx_port_x0 <= convert_tx_port_dout_net_x0;
  convert_tx_valid_x0 <= convert_tx_valid_dout_net_x0;
  rxbadctr <= cast_gw_dout_net_x11;
  rxctr <= cast_gw_dout_net_x12;
  rxeofctr <= cast_gw_dout_net_x13;
  rxofctr <= cast_gw_dout_net_x14;
  rxs <= convert_addr_dout_net_x4;
  rxs_x0 <= convert_din1_dout_net_x4;
  rxs_x1 <= convert_we_dout_net_x4;
  rxs_x2 <= cast_gw_dout_net_x15;
  rxvldctr <= cast_gw_dout_net_x16;
  txctr <= cast_gw_dout_net_x17;
  txfullctr <= cast_gw_dout_net_x18;
  txofctr <= cast_gw_dout_net_x19;
  txs <= convert_addr_dout_net_x5;
  txs_x0 <= convert_din1_dout_net_x5;
  txs_x1 <= convert_we_dout_net_x5;
  txs_x2 <= cast_gw_dout_net_x20;
  txvldctr <= cast_gw_dout_net_x21;

  convert_rst: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din(0) => low1_y_net_x1,
      en => "1",
      dout(0) => convert_rst_dout_net_x0
    );

  convert_rx_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din(0) => constant9_op_net_x0,
      en => "1",
      dout(0) => convert_rx_ack_dout_net_x0
    );

  convert_rx_overrun_ack: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din(0) => delay1_q_net_x0,
      en => "1",
      dout(0) => convert_rx_overrun_ack_dout_net_x0
    );

  convert_tx_data: entity work.xlconvert
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din => constant6_op_net_x1,
      en => "1",
      dout => convert_tx_data_dout_net_x0
    );

  convert_tx_dest_ip: entity work.xlconvert
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din => constant7_op_net_x1,
      en => "1",
      dout => convert_tx_dest_ip_dout_net_x0
    );

  convert_tx_end_of_frame: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din(0) => constant5_op_net_x1,
      en => "1",
      dout(0) => convert_tx_end_of_frame_dout_net_x0
    );

  convert_tx_port: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din => constant8_op_net_x0,
      en => "1",
      dout => convert_tx_port_dout_net_x0
    );

  convert_tx_valid: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      din(0) => constant3_op_net_x2,
      en => "1",
      dout(0) => convert_tx_valid_dout_net_x0
    );

  rxbadctr_81a97956cd: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => rxbadctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x11
    );

  rxbadctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_rx_bad_frame_net_x1,
      rst(0) => rxbadctr_del1_q_net,
      op => rxbadctr_ctr_op_net
    );

  rxbadctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => rxbadctr_del1_q_net
    );

  rxbadctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => rxbadctr_ctr_op_net,
      q => rxbadctr_del2_q_net_x0
    );

  rxctr_and: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d0(0) => roach2_tut_tge_gbe1_rx_end_of_frame_net_x1,
      d1(0) => roach2_tut_tge_gbe1_rx_valid_net_x2,
      y(0) => rxctr_and_y_net_x0
    );

  rxctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => edge_op_y_net_x0,
      rst(0) => rxctr_del1_q_net,
      op => rxctr_ctr_op_net
    );

  rxctr_d6fb772014: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => rxctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x12
    );

  rxctr_del1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => rxctr_del1_q_net
    );

  rxctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => rxctr_ctr_op_net,
      q => rxctr_del2_q_net_x0
    );

  rxctr_ed_beec929f35: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      in_x0 => rxctr_and_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  rxeofctr_511baeaecf: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => rxeofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x13
    );

  rxeofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_rx_end_of_frame_net_x1,
      rst(0) => rxeofctr_del1_q_net,
      op => rxeofctr_ctr_op_net
    );

  rxeofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => rxeofctr_del1_q_net
    );

  rxeofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => rxeofctr_ctr_op_net,
      q => rxeofctr_del2_q_net_x0
    );

  rxofctr_cd0522b7d5: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => rxofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x14
    );

  rxofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_rx_overrun_net_x1,
      rst(0) => rxofctr_del1_q_net,
      op => rxofctr_ctr_op_net
    );

  rxofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => rxofctr_del1_q_net
    );

  rxofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => rxofctr_ctr_op_net,
      q => rxofctr_del2_q_net_x0
    );

  rxs_57bb00bcdb: entity work.rxs_entity_57bb00bcdb
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      in_bad_frame => roach2_tut_tge_gbe1_rx_bad_frame_net_x1,
      in_data_in => roach2_tut_tge_gbe1_rx_data_net_x1,
      in_eof_in => roach2_tut_tge_gbe1_rx_end_of_frame_net_x1,
      in_ip_in => roach2_tut_tge_gbe1_rx_source_ip_net_x1,
      in_led_rx => roach2_tut_tge_gbe1_led_rx_net_x1,
      in_led_up => roach2_tut_tge_gbe1_led_up_net_x2,
      in_overrun => roach2_tut_tge_gbe1_rx_overrun_net_x1,
      in_valid_in => roach2_tut_tge_gbe1_rx_valid_net_x2,
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net_x3,
      trig => rxsnap_and_y_net_x1,
      ss => convert_addr_dout_net_x4,
      ss_x0 => convert_din1_dout_net_x4,
      ss_x1 => convert_we_dout_net_x4,
      ss_x2 => cast_gw_dout_net_x15
    );

  rxsnap_and: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => roach2_tut_tge_gbe1_rx_valid_net_x2,
      d1(0) => roach2_tut_tge_gbe1_rx_end_of_frame_net_x1,
      y(0) => rxsnap_and_y_net_x1
    );

  rxvldctr_588b4f38e4: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => rxvldctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x16
    );

  rxvldctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_rx_valid_net_x2,
      rst(0) => rxvldctr_del1_q_net,
      op => rxvldctr_ctr_op_net
    );

  rxvldctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => rxvldctr_del1_q_net
    );

  rxvldctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => rxvldctr_ctr_op_net,
      q => rxvldctr_del2_q_net_x0
    );

  txctr_2212aafd30: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => txctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x17
    );

  txctr_and: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d0(0) => constant5_op_net_x1,
      d1(0) => constant3_op_net_x2,
      y(0) => txctr_and_y_net_x0
    );

  txctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => edge_op_y_net_x1,
      rst(0) => txctr_del1_q_net,
      op => txctr_ctr_op_net
    );

  txctr_del1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => txctr_del1_q_net
    );

  txctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => txctr_ctr_op_net,
      q => txctr_del2_q_net_x0
    );

  txctr_ed_2817fb4958: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      in_x0 => txctr_and_y_net_x0,
      out_x0 => edge_op_y_net_x1
    );

  txfullctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_tx_afull_net_x1,
      rst(0) => txfullctr_del1_q_net,
      op => txfullctr_ctr_op_net
    );

  txfullctr_d619a4e475: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => txfullctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x18
    );

  txfullctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => txfullctr_del1_q_net
    );

  txfullctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => txfullctr_ctr_op_net,
      q => txfullctr_del2_q_net_x0
    );

  txofctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_tx_overflow_net_x1,
      rst(0) => txofctr_del1_q_net,
      op => txofctr_ctr_op_net
    );

  txofctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => txofctr_del1_q_net
    );

  txofctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => txofctr_ctr_op_net,
      q => txofctr_del2_q_net_x0
    );

  txofctr_eae192f86e: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => txofctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x19
    );

  txs_490989f991: entity work.txs_entity_490989f991
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      in_data => constant6_op_net_x1,
      in_eof => constant5_op_net_x1,
      in_ip => constant7_op_net_x1,
      in_led_tx => roach2_tut_tge_gbe1_led_tx_net_x1,
      in_link_up => roach2_tut_tge_gbe1_led_up_net_x2,
      in_tx_full => roach2_tut_tge_gbe1_tx_afull_net_x1,
      in_tx_over => roach2_tut_tge_gbe1_tx_overflow_net_x1,
      in_valid => constant3_op_net_x2,
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net_x3,
      trig => txsnap_and_y_net_x1,
      ss => convert_addr_dout_net_x5,
      ss_x0 => convert_din1_dout_net_x5,
      ss_x1 => convert_we_dout_net_x5,
      ss_x2 => cast_gw_dout_net_x20
    );

  txsnap_and: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant3_op_net_x2,
      d1(0) => constant5_op_net_x1,
      y(0) => txsnap_and_y_net_x1
    );

  txvldctr_ctr: entity work.counter_6dbb407bca
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      en(0) => constant3_op_net_x2,
      rst(0) => txvldctr_del1_q_net,
      op => txvldctr_ctr_op_net
    );

  txvldctr_del1: entity work.delay_e18fb31a3d
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d(0) => low0_y_net_x1,
      q(0) => txvldctr_del1_q_net
    );

  txvldctr_del2: entity work.delay_3f5b23b538
    port map (
      ce => ce_1_sg_x77,
      clk => clk_1_sg_x77,
      clr => '0',
      d => txvldctr_ctr_op_net,
      q => txvldctr_del2_q_net_x0
    );

  txvldctr_fa4c5eaff6: entity work.rxbadctr_entity_a0932aebd0
    port map (
      ce_1 => ce_1_sg_x77,
      clk_1 => clk_1_sg_x77,
      out_reg => txvldctr_del2_q_net_x0,
      cast_gw_x0 => cast_gw_dout_net_x21
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/led0_gbe0_pulse_tx"

entity led0_gbe0_pulse_tx_entity_6fe0f6976f is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    gpio_out: in std_logic; 
    convert_x0: out std_logic
  );
end led0_gbe0_pulse_tx_entity_6fe0f6976f;

architecture structural of led0_gbe0_pulse_tx_entity_6fe0f6976f is
  signal ce_1_sg_x80: std_logic;
  signal clk_1_sg_x80: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal spulse_y_net_x0: std_logic;

begin
  ce_1_sg_x80 <= ce_1;
  clk_1_sg_x80 <= clk_1;
  spulse_y_net_x0 <= gpio_out;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x80,
      clk => clk_1_sg_x80,
      clr => '0',
      din(0) => spulse_y_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/pkt_sim/enable"

entity enable_entity_ec807adf24 is
  port (
    roach2_tut_tge_pkt_sim_enable_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end enable_entity_ec807adf24;

architecture structural of enable_entity_ec807adf24 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_enable_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_pkt_sim_enable_user_data_out_net_x0 <= roach2_tut_tge_pkt_sim_enable_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_pkt_sim_enable_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/pkt_sim/negedge"

entity negedge_entity_2f00dc3fd9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end negedge_entity_2f00dc3fd9;

architecture structural of negedge_entity_2f00dc3fd9 is
  signal ce_1_sg_x84: std_logic;
  signal clk_1_sg_x84: std_logic;
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x84 <= ce_1;
  clk_1_sg_x84 <= clk_1;
  relational_op_net_x0 <= in_x0;
  out_x0 <= edge_op_y_net_x0;

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      d(0) => relational_op_net_x0,
      q(0) => delay_q_net
    );

  edge_op: entity work.logical_80f90b97d0
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
      ce => ce_1_sg_x84,
      clk => clk_1_sg_x84,
      clr => '0',
      ip(0) => relational_op_net_x0,
      op(0) => inverter_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/pkt_sim/payload_len"

entity payload_len_entity_b715a743fe is
  port (
    roach2_tut_tge_pkt_sim_payload_len_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end payload_len_entity_b715a743fe;

architecture structural of payload_len_entity_b715a743fe is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x0 <= roach2_tut_tge_pkt_sim_payload_len_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/pkt_sim/period"

entity period_entity_c9b32328a8 is
  port (
    roach2_tut_tge_pkt_sim_period_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end period_entity_c9b32328a8;

architecture structural of period_entity_c9b32328a8 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_period_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_pkt_sim_period_user_data_out_net_x0 <= roach2_tut_tge_pkt_sim_period_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_pkt_sim_period_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/pkt_sim"

entity pkt_sim_entity_fd940d25e9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roach2_tut_tge_pkt_sim_enable_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_pkt_sim_payload_len_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_pkt_sim_period_user_data_out: in std_logic_vector(31 downto 0); 
    d_out: out std_logic_vector(63 downto 0); 
    eof: out std_logic; 
    valid: out std_logic
  );
end pkt_sim_entity_fd940d25e9;

architecture structural of pkt_sim_entity_fd940d25e9 is
  signal ce_1_sg_x86: std_logic;
  signal clk_1_sg_x86: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic;
  signal constant_op_net: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal counter1_op_net: std_logic_vector(31 downto 0);
  signal counter2_op_net: std_logic_vector(63 downto 0);
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic;
  signal delay3_q_net_x2: std_logic_vector(63 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal enabler_y_net: std_logic;
  signal inverter_op_net: std_logic;
  signal mux1_y_net_x3: std_logic;
  signal mux2_y_net_x2: std_logic;
  signal mux_y_net: std_logic;
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;
  signal roach2_tut_tge_pkt_sim_enable_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_period_user_data_out_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x86 <= ce_1;
  clk_1_sg_x86 <= clk_1;
  roach2_tut_tge_pkt_sim_enable_user_data_out_net_x1 <= roach2_tut_tge_pkt_sim_enable_user_data_out;
  roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x1 <= roach2_tut_tge_pkt_sim_payload_len_user_data_out;
  roach2_tut_tge_pkt_sim_period_user_data_out_net_x1 <= roach2_tut_tge_pkt_sim_period_user_data_out;
  d_out <= delay3_q_net_x2;
  eof <= mux2_y_net_x2;
  valid <= mux1_y_net_x3;

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_963ed6358a
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

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      din(0) => delay_q_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
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
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      din(0) => enabler_y_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  counter: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_8513360a51c30657",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      en(0) => relational_op_net_x0,
      rst(0) => edge_op_y_net_x1,
      op => counter_op_net
    );

  counter1: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_060021dfe568ceb3",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      en => "1",
      rst(0) => relational1_op_net_x0,
      op => counter1_op_net
    );

  counter2: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_d342383fb51dea0c",
      op_arith => xlUnsigned,
      op_width => 64
    )
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      en(0) => delay2_q_net,
      rst(0) => inverter_op_net,
      op => counter2_op_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d(0) => edge_op_y_net_x0,
      q(0) => delay_q_net
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d(0) => relational_op_net_x0,
      q(0) => delay1_q_net
    );

  delay2: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d(0) => relational_op_net_x0,
      q(0) => delay2_q_net
    );

  delay3: entity work.delay_e2d047c154
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d => counter2_op_net,
      q => delay3_q_net_x2
    );

  enable_ec807adf24: entity work.enable_entity_ec807adf24
    port map (
      roach2_tut_tge_pkt_sim_enable_user_data_out => roach2_tut_tge_pkt_sim_enable_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x0
    );

  enabler: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => enabler_y_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      ip(0) => convert1_dout_net,
      op(0) => inverter_op_net
    );

  mux: entity work.mux_1e22c21d05
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d0(0) => constant1_op_net,
      d1(0) => constant_op_net,
      sel(0) => delay1_q_net,
      y(0) => mux_y_net
    );

  mux1: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d0(0) => constant2_op_net,
      d1(0) => mux_y_net,
      sel(0) => enabler_y_net,
      y(0) => mux1_y_net_x3
    );

  mux2: entity work.mux_2aa09bfea3
    port map (
      ce => ce_1_sg_x86,
      clk => clk_1_sg_x86,
      clr => '0',
      d0(0) => constant2_op_net,
      d1(0) => convert_dout_net,
      sel(0) => enabler_y_net,
      y(0) => mux2_y_net_x2
    );

  negedge_2f00dc3fd9: entity work.negedge_entity_2f00dc3fd9
    port map (
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      in_x0 => relational_op_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  payload_len_b715a743fe: entity work.payload_len_entity_b715a743fe
    port map (
      roach2_tut_tge_pkt_sim_payload_len_user_data_out => roach2_tut_tge_pkt_sim_payload_len_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  period_c9b32328a8: entity work.period_entity_c9b32328a8
    port map (
      roach2_tut_tge_pkt_sim_period_user_data_out => roach2_tut_tge_pkt_sim_period_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x2
    );

  posedge_de235e7e12: entity work.rxctr_ed_entity_843f7b7738
    port map (
      ce_1 => ce_1_sg_x86,
      clk_1 => clk_1_sg_x86,
      in_x0 => relational1_op_net_x0,
      out_x0 => edge_op_y_net_x1
    );

  relational: entity work.relational_59ca12fcca
    port map (
      a => counter_op_net,
      b => reint1_output_port_net_x1,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x0
    );

  relational1: entity work.relational_8782e16b67
    port map (
      a => counter1_op_net,
      b => reint1_output_port_net_x2,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/rst"

entity rst_entity_2c85c78d0f is
  port (
    roach2_tut_tge_rst_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end rst_entity_2c85c78d0f;

architecture structural of rst_entity_2c85c78d0f is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_rst_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_rst_user_data_out_net_x0 <= roach2_tut_tge_rst_user_data_out;
  in_reg <= reint1_output_port_net_x0;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_rst_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/buscreate"

entity buscreate_entity_5e3f6ae22e is
  port (
    in1: in std_logic_vector(63 downto 0); 
    in2: in std_logic; 
    in3: in std_logic; 
    bus_out: out std_logic_vector(65 downto 0)
  );
end buscreate_entity_5e3f6ae22e;

architecture structural of buscreate_entity_5e3f6ae22e is
  signal assert_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_dout_net_x0: std_logic;
  signal assert_valid_dout_net_x0: std_logic;
  signal concatenate_y_net_x0: std_logic_vector(65 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(63 downto 0);
  signal reinterpret2_output_port_net: std_logic;
  signal reinterpret3_output_port_net: std_logic;

begin
  assert_data_dout_net_x0 <= in1;
  assert_valid_dout_net_x0 <= in2;
  assert_eof_dout_net_x0 <= in3;
  bus_out <= concatenate_y_net_x0;

  concatenate: entity work.concat_8033f04c65
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => reinterpret1_output_port_net,
      in1(0) => reinterpret2_output_port_net,
      in2(0) => reinterpret3_output_port_net,
      y => concatenate_y_net_x0
    );

  reinterpret1: entity work.reinterpret_9a13f6a2a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => assert_data_dout_net_x0,
      output_port => reinterpret1_output_port_net
    );

  reinterpret2: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_valid_dout_net_x0,
      output_port(0) => reinterpret2_output_port_net
    );

  reinterpret3: entity work.reinterpret_112d91c147
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port(0) => assert_eof_dout_net_x0,
      output_port(0) => reinterpret3_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/ss/add_gen"

entity add_gen_entity_514f24ae25 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cont: in std_logic; 
    din: in std_logic_vector(127 downto 0); 
    go: in std_logic; 
    init: in std_logic; 
    we: in std_logic; 
    add: out std_logic_vector(11 downto 0); 
    dout: out std_logic_vector(127 downto 0); 
    status: out std_logic_vector(31 downto 0); 
    we_o: out std_logic
  );
end add_gen_entity_514f24ae25;

architecture structural of add_gen_entity_514f24ae25 is
  signal add_gen_op_net: std_logic_vector(16 downto 0);
  signal ce_1_sg_x88: std_logic;
  signal clk_1_sg_x88: std_logic;
  signal concat_y_net_x0: std_logic_vector(31 downto 0);
  signal convert_dout_net: std_logic_vector(14 downto 0);
  signal data_choice_y_net_x0: std_logic_vector(127 downto 0);
  signal delay1_q_net: std_logic_vector(15 downto 0);
  signal delay3_q_net: std_logic;
  signal delay4_q_net: std_logic;
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal delay_q_net: std_logic;
  signal edge_op_y_net_x0: std_logic;
  signal edge_op_y_net_x1: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical4_y_net: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal never_op_net_x0: std_logic;
  signal register5_q_net: std_logic;
  signal register6_q_net_x0: std_logic;
  signal shift_op_net: std_logic_vector(14 downto 0);
  signal slice1_y_net: std_logic_vector(15 downto 0);
  signal slice2_y_net_x0: std_logic_vector(11 downto 0);
  signal slice3_y_net_x0: std_logic;
  signal we_choice_y_net_x0: std_logic;

begin
  ce_1_sg_x88 <= ce_1;
  clk_1_sg_x88 <= clk_1;
  never_op_net_x0 <= cont;
  data_choice_y_net_x0 <= din;
  register6_q_net_x0 <= go;
  edge_op_y_net_x1 <= init;
  we_choice_y_net_x0 <= we;
  add <= slice2_y_net_x0;
  dout <= delay6_q_net_x0;
  status <= concat_y_net_x0;
  we_o <= logical6_y_net_x0;

  add_gen: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_c854334c91194d4e",
      op_arith => xlUnsigned,
      op_width => 17
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      en(0) => logical6_y_net_x0,
      rst(0) => delay4_q_net,
      op => add_gen_op_net
    );

  concat: entity work.concat_1a6baff97c
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
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      din(0) => register5_q_net,
      en => "1",
      dout => convert_dout_net
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d(0) => delay4_q_net,
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      d => slice1_y_net,
      en => '1',
      rst => '1',
      q => delay1_q_net
    );

  delay3: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d(0) => never_op_net_x0,
      q(0) => delay3_q_net
    );

  delay4: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d(0) => edge_op_y_net_x1,
      q(0) => delay4_q_net
    );

  delay6: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d => data_choice_y_net_x0,
      q => delay6_q_net_x0
    );

  edge_detect_5bb3801176: entity work.edge_detect_entity_244e04c11e
    port map (
      ce_1 => ce_1_sg_x88,
      clk_1 => clk_1_sg_x88,
      in_x0 => slice3_y_net_x0,
      out_x0 => edge_op_y_net_x0
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      ip(0) => register5_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      ip(0) => edge_op_y_net_x0,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_799f62af22
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      d0(0) => we_choice_y_net_x0,
      d1(0) => register6_q_net_x0,
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
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      d(0) => delay3_q_net,
      en(0) => edge_op_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register5_q_net
    );

  shift: entity work.shift_8b3da62244
    port map (
      ce => ce_1_sg_x88,
      clk => clk_1_sg_x88,
      clr => '0',
      ip => convert_dout_net,
      op => shift_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 17,
      y_width => 16
    )
    port map (
      x => add_gen_op_net,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 15,
      x_width => 17,
      y_width => 12
    )
    port map (
      x => add_gen_op_net,
      y => slice2_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 16,
      x_width => 17,
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

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/ss/bram/calc_add"

entity calc_add_entity_419c11f7cf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic_vector(11 downto 0); 
    out_x0: out std_logic_vector(11 downto 0)
  );
end calc_add_entity_419c11f7cf;

architecture structural of calc_add_entity_419c11f7cf is
  signal add_del_q_net_x0: std_logic_vector(11 downto 0);
  signal add_sub_s_net: std_logic;
  signal ce_1_sg_x92: std_logic;
  signal clk_1_sg_x92: std_logic;
  signal concat_y_net: std_logic_vector(11 downto 0);
  signal const_op_net: std_logic;
  signal convert_addr_dout_net: std_logic_vector(11 downto 0);
  signal lsw_y_net: std_logic;
  signal manipulate_op_net: std_logic;
  signal msw_y_net: std_logic_vector(10 downto 0);
  signal mux_y_net_x0: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x92 <= ce_1;
  clk_1_sg_x92 <= clk_1;
  add_del_q_net_x0 <= in_x0;
  out_x0 <= mux_y_net_x0;

  add_sub: entity work.addsub_c13097e33e
    port map (
      a(0) => const_op_net,
      b(0) => lsw_y_net,
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      s(0) => add_sub_s_net
    );

  concat: entity work.concat_e2aa47955c
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
      din_width => 12,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 12,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x92,
      clk => clk_1_sg_x92,
      clr => '0',
      din => add_del_q_net_x0,
      en => "1",
      dout => convert_addr_dout_net
    );

  lsw: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 12,
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
      new_msb => 11,
      x_width => 12,
      y_width => 11
    )
    port map (
      x => convert_addr_dout_net,
      y => msw_y_net
    );

  mux: entity work.mux_c3e1ddb86e
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

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/ss/bram"

entity bram_entity_9050a6bfe2 is
  port (
    addr: in std_logic_vector(11 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_in: in std_logic_vector(127 downto 0); 
    we: in std_logic; 
    convert_addr_x0: out std_logic_vector(11 downto 0); 
    convert_din1_x0: out std_logic_vector(127 downto 0); 
    convert_we_x0: out std_logic
  );
end bram_entity_9050a6bfe2;

architecture structural of bram_entity_9050a6bfe2 is
  signal add_del_q_net_x1: std_logic_vector(11 downto 0);
  signal ce_1_sg_x93: std_logic;
  signal clk_1_sg_x93: std_logic;
  signal convert_addr_dout_net_x0: std_logic_vector(11 downto 0);
  signal convert_din1_dout_net_x0: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x0: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal mux_y_net_x0: std_logic_vector(11 downto 0);
  signal reinterpret_out_output_port_net_x0: std_logic_vector(127 downto 0);
  signal we_del_q_net_x0: std_logic;

begin
  add_del_q_net_x1 <= addr;
  ce_1_sg_x93 <= ce_1;
  clk_1_sg_x93 <= clk_1;
  dat_del_q_net_x1 <= data_in;
  we_del_q_net_x0 <= we;
  convert_addr_x0 <= convert_addr_dout_net_x0;
  convert_din1_x0 <= convert_din1_dout_net_x0;
  convert_we_x0 <= convert_we_dout_net_x0;

  calc_add_419c11f7cf: entity work.calc_add_entity_419c11f7cf
    port map (
      ce_1 => ce_1_sg_x93,
      clk_1 => clk_1_sg_x93,
      in_x0 => add_del_q_net_x1,
      out_x0 => mux_y_net_x0
    );

  convert_addr: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 12,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 12,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
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
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
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
      ce => ce_1_sg_x93,
      clk => clk_1_sg_x93,
      clr => '0',
      din(0) => we_del_q_net_x0,
      en => "1",
      dout(0) => convert_we_dout_net_x0
    );

  munge_in_a9745c99bb: entity work.munge_in_entity_c8c73d4eb7
    port map (
      din => dat_del_q_net_x1,
      dout => reinterpret_out_output_port_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/ss/ctrl"

entity ctrl_entity_6caf564ee0 is
  port (
    roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    in_reg: out std_logic_vector(31 downto 0)
  );
end ctrl_entity_6caf564ee0;

architecture structural of ctrl_entity_6caf564ee0 is
  signal io_delay_q_net: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice_reg_y_net: std_logic_vector(31 downto 0);

begin
  roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x0 <= roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out;
  in_reg <= reint1_output_port_net_x1;

  io_delay: entity work.delay_2b0feb00fb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x0,
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

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot/ss"

entity ss_entity_eb1dda0448 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    din: in std_logic_vector(65 downto 0); 
    roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    trig: in std_logic; 
    we: in std_logic; 
    bram: out std_logic_vector(11 downto 0); 
    bram_x0: out std_logic_vector(127 downto 0); 
    bram_x1: out std_logic; 
    status: out std_logic_vector(31 downto 0)
  );
end ss_entity_eb1dda0448;

architecture structural of ss_entity_eb1dda0448 is
  signal add_del_q_net_x1: std_logic_vector(11 downto 0);
  signal cast_dout_net_x1: std_logic_vector(127 downto 0);
  signal cast_gw_dout_net_x1: std_logic_vector(31 downto 0);
  signal ce_1_sg_x95: std_logic;
  signal clk_1_sg_x95: std_logic;
  signal concat_y_net_x1: std_logic_vector(31 downto 0);
  signal concatenate_y_net_x1: std_logic_vector(65 downto 0);
  signal convert_addr_dout_net_x1: std_logic_vector(11 downto 0);
  signal convert_din1_dout_net_x1: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x1: std_logic;
  signal dat_del_q_net_x1: std_logic_vector(127 downto 0);
  signal data_choice_y_net_x2: std_logic_vector(127 downto 0);
  signal delay6_q_net_x0: std_logic_vector(127 downto 0);
  signal edge_op_y_net_x4: std_logic;
  signal logical6_y_net_x0: std_logic;
  signal mux1_y_net_x5: std_logic;
  signal mux2_y_net_x4: std_logic;
  signal never_op_net_x0: std_logic;
  signal register6_q_net_x1: std_logic;
  signal reint1_output_port_net_x1: std_logic_vector(31 downto 0);
  signal ri_output_port_net: std_logic_vector(65 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic_vector(11 downto 0);
  signal we_choice_y_net_x2: std_logic;
  signal we_del_q_net_x0: std_logic;

begin
  ce_1_sg_x95 <= ce_1;
  clk_1_sg_x95 <= clk_1;
  concatenate_y_net_x1 <= din;
  roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x1 <= roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out;
  mux2_y_net_x4 <= trig;
  mux1_y_net_x5 <= we;
  bram <= convert_addr_dout_net_x1;
  bram_x0 <= convert_din1_dout_net_x1;
  bram_x1 <= convert_we_dout_net_x1;
  status <= cast_gw_dout_net_x1;

  add_del: entity work.delay_87cc993d41
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      d => slice2_y_net_x0,
      q => add_del_q_net_x1
    );

  add_gen_514f24ae25: entity work.add_gen_entity_514f24ae25
    port map (
      ce_1 => ce_1_sg_x95,
      clk_1 => clk_1_sg_x95,
      cont => never_op_net_x0,
      din => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we => we_choice_y_net_x2,
      add => slice2_y_net_x0,
      dout => delay6_q_net_x0,
      status => concat_y_net_x1,
      we_o => logical6_y_net_x0
    );

  basic_ctrl_f6c118bebb: entity work.basic_ctrl_entity_427693ddd0
    port map (
      ce_1 => ce_1_sg_x95,
      clk_1 => clk_1_sg_x95,
      ctrl => reint1_output_port_net_x1,
      din => cast_dout_net_x1,
      trig => mux2_y_net_x4,
      we => mux1_y_net_x5,
      dout => data_choice_y_net_x2,
      go => register6_q_net_x1,
      init => edge_op_y_net_x4,
      we_o => we_choice_y_net_x2
    );

  bram_9050a6bfe2: entity work.bram_entity_9050a6bfe2
    port map (
      addr => add_del_q_net_x1,
      ce_1 => ce_1_sg_x95,
      clk_1 => clk_1_sg_x95,
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
      din_width => 66,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 128,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      din => ri_output_port_net,
      en => "1",
      dout => cast_dout_net_x1
    );

  ctrl_6caf564ee0: entity work.ctrl_entity_6caf564ee0
    port map (
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x1,
      in_reg => reint1_output_port_net_x1
    );

  dat_del: entity work.delay_ee0f706095
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      d => delay6_q_net_x0,
      q => dat_del_q_net_x1
    );

  never: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => never_op_net_x0
    );

  ri: entity work.reinterpret_3a6884f373
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => concatenate_y_net_x1,
      output_port => ri_output_port_net
    );

  status_9fdc8d16db: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x95,
      clk_1 => clk_1_sg_x95,
      out_reg => concat_y_net_x1,
      cast_gw_x0 => cast_gw_dout_net_x1
    );

  we_del: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x95,
      clk => clk_1_sg_x95,
      clr => '0',
      d(0) => logical6_y_net_x0,
      q(0) => we_del_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge/tx_snapshot"

entity tx_snapshot_entity_6afa2e4baf is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_data: in std_logic_vector(63 downto 0); 
    in_eof: in std_logic; 
    in_valid: in std_logic; 
    roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    ss: out std_logic_vector(11 downto 0); 
    ss_x0: out std_logic_vector(127 downto 0); 
    ss_x1: out std_logic; 
    ss_x2: out std_logic_vector(31 downto 0)
  );
end tx_snapshot_entity_6afa2e4baf;

architecture structural of tx_snapshot_entity_6afa2e4baf is
  signal assert_data_dout_net_x0: std_logic_vector(63 downto 0);
  signal assert_eof_dout_net_x0: std_logic;
  signal assert_valid_dout_net_x0: std_logic;
  signal cast_gw_dout_net_x2: std_logic_vector(31 downto 0);
  signal ce_1_sg_x96: std_logic;
  signal clk_1_sg_x96: std_logic;
  signal concatenate_y_net_x1: std_logic_vector(65 downto 0);
  signal convert_addr_dout_net_x2: std_logic_vector(11 downto 0);
  signal convert_din1_dout_net_x2: std_logic_vector(127 downto 0);
  signal convert_we_dout_net_x2: std_logic;
  signal delay3_q_net_x3: std_logic_vector(63 downto 0);
  signal mux1_y_net_x6: std_logic;
  signal mux2_y_net_x5: std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x2: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x96 <= ce_1;
  clk_1_sg_x96 <= clk_1;
  delay3_q_net_x3 <= in_data;
  mux2_y_net_x5 <= in_eof;
  mux1_y_net_x6 <= in_valid;
  roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x2 <= roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out;
  ss <= convert_addr_dout_net_x2;
  ss_x0 <= convert_din1_dout_net_x2;
  ss_x1 <= convert_we_dout_net_x2;
  ss_x2 <= cast_gw_dout_net_x2;

  assert_data: entity work.xlpassthrough
    generic map (
      din_width => 64,
      dout_width => 64
    )
    port map (
      din => delay3_q_net_x3,
      dout => assert_data_dout_net_x0
    );

  assert_eof: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => mux2_y_net_x5,
      dout(0) => assert_eof_dout_net_x0
    );

  assert_valid: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => mux1_y_net_x6,
      dout(0) => assert_valid_dout_net_x0
    );

  buscreate_5e3f6ae22e: entity work.buscreate_entity_5e3f6ae22e
    port map (
      in1 => assert_data_dout_net_x0,
      in2 => assert_valid_dout_net_x0,
      in3 => assert_eof_dout_net_x0,
      bus_out => concatenate_y_net_x1
    );

  ss_eb1dda0448: entity work.ss_entity_eb1dda0448
    port map (
      ce_1 => ce_1_sg_x96,
      clk_1 => clk_1_sg_x96,
      din => concatenate_y_net_x1,
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net_x2,
      trig => mux2_y_net_x5,
      we => mux1_y_net_x6,
      bram => convert_addr_dout_net_x2,
      bram_x0 => convert_din1_dout_net_x2,
      bram_x1 => convert_we_dout_net_x2,
      status => cast_gw_dout_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "roach2_tut_tge"

entity roach2_tut_tge is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    roach2_tut_tge_dest_ip_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_dest_port_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_led_rx: in std_logic; 
    roach2_tut_tge_gbe0_led_tx: in std_logic; 
    roach2_tut_tge_gbe0_led_up: in std_logic; 
    roach2_tut_tge_gbe0_rx_bad_frame: in std_logic; 
    roach2_tut_tge_gbe0_rx_data: in std_logic_vector(63 downto 0); 
    roach2_tut_tge_gbe0_rx_dest_ip: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rx_dest_port: in std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe0_rx_end_of_frame: in std_logic; 
    roach2_tut_tge_gbe0_rx_overrun: in std_logic; 
    roach2_tut_tge_gbe0_rx_source_ip: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rx_source_port: in std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe0_rx_valid: in std_logic; 
    roach2_tut_tge_gbe0_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_tx_afull: in std_logic; 
    roach2_tut_tge_gbe0_tx_overflow: in std_logic; 
    roach2_tut_tge_gbe0_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_led_rx: in std_logic; 
    roach2_tut_tge_gbe1_led_tx: in std_logic; 
    roach2_tut_tge_gbe1_led_up: in std_logic; 
    roach2_tut_tge_gbe1_rx_bad_frame: in std_logic; 
    roach2_tut_tge_gbe1_rx_data: in std_logic_vector(63 downto 0); 
    roach2_tut_tge_gbe1_rx_dest_ip: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rx_dest_port: in std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe1_rx_end_of_frame: in std_logic; 
    roach2_tut_tge_gbe1_rx_overrun: in std_logic; 
    roach2_tut_tge_gbe1_rx_source_ip: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rx_source_port: in std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe1_rx_valid: in std_logic; 
    roach2_tut_tge_gbe1_rxs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_tx_afull: in std_logic; 
    roach2_tut_tge_gbe1_tx_overflow: in std_logic; 
    roach2_tut_tge_gbe1_txs_ss_bram_data_out: in std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_pkt_sim_enable_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_pkt_sim_payload_len_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_pkt_sim_period_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_rst_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_tx_snapshot_ss_bram_data_out: in std_logic_vector(127 downto 0); 
    roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out: in std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_linkup_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rst: out std_logic; 
    roach2_tut_tge_gbe0_rx_ack: out std_logic; 
    roach2_tut_tge_gbe0_rx_overrun_ack: out std_logic; 
    roach2_tut_tge_gbe0_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
    roach2_tut_tge_gbe0_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe0_rxs_ss_bram_we: out std_logic; 
    roach2_tut_tge_gbe0_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_tx_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_tx_data: out std_logic_vector(63 downto 0); 
    roach2_tut_tge_gbe0_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_tx_dest_port: out std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe0_tx_end_of_frame: out std_logic; 
    roach2_tut_tge_gbe0_tx_valid: out std_logic; 
    roach2_tut_tge_gbe0_txctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe0_txs_ss_bram_we: out std_logic; 
    roach2_tut_tge_gbe0_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe0_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_linkup_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rst: out std_logic; 
    roach2_tut_tge_gbe1_rx_ack: out std_logic; 
    roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rx_overrun_ack: out std_logic; 
    roach2_tut_tge_gbe1_rxbadctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rxctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rxeofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rxofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rxs_ss_bram_addr: out std_logic_vector(12 downto 0); 
    roach2_tut_tge_gbe1_rxs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe1_rxs_ss_bram_we: out std_logic; 
    roach2_tut_tge_gbe1_rxs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_rxvldctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_tx_data: out std_logic_vector(63 downto 0); 
    roach2_tut_tge_gbe1_tx_dest_ip: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_tx_dest_port: out std_logic_vector(15 downto 0); 
    roach2_tut_tge_gbe1_tx_end_of_frame: out std_logic; 
    roach2_tut_tge_gbe1_tx_valid: out std_logic; 
    roach2_tut_tge_gbe1_txctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_txfullctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_txofctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_bram_addr: out std_logic_vector(12 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_bram_data_in: out std_logic_vector(127 downto 0); 
    roach2_tut_tge_gbe1_txs_ss_bram_we: out std_logic; 
    roach2_tut_tge_gbe1_txs_ss_status_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_gbe1_txvldctr_user_data_in: out std_logic_vector(31 downto 0); 
    roach2_tut_tge_led0_gbe0_pulse_tx_gateway: out std_logic; 
    roach2_tut_tge_led1_gbe0_up_gateway: out std_logic; 
    roach2_tut_tge_led2_gbe1_pulse_rx_gateway: out std_logic; 
    roach2_tut_tge_led3_gbe1_up_gateway: out std_logic; 
    roach2_tut_tge_tx_snapshot_ss_bram_addr: out std_logic_vector(11 downto 0); 
    roach2_tut_tge_tx_snapshot_ss_bram_data_in: out std_logic_vector(127 downto 0); 
    roach2_tut_tge_tx_snapshot_ss_bram_we: out std_logic; 
    roach2_tut_tge_tx_snapshot_ss_status_user_data_in: out std_logic_vector(31 downto 0)
  );
end roach2_tut_tge;

architecture structural of roach2_tut_tge is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "roach2_tut_tge,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,compilation=NGC_Netlist,sample_periods=1.00000000000,testbench=0,total_blocks=2571,xilinx_adder_subtracter_block=10,xilinx_arithmetic_relational_operator_block=22,xilinx_assert_block=62,xilinx_binary_shift_operator_block=5,xilinx_bit_slice_extractor_block=146,xilinx_bus_concatenator_block=50,xilinx_bus_multiplexer_block=43,xilinx_constant_block_block=85,xilinx_counter_block=38,xilinx_delay_block=176,xilinx_disregard_subsystem_for_generation_block=5,xilinx_gateway_in_block=59,xilinx_gateway_out_block=67,xilinx_inverter_block=32,xilinx_logical_block_block=64,xilinx_register_block=115,xilinx_single_port_random_access_memory_block=5,xilinx_system_generator_block=1,xilinx_type_converter_block=84,xilinx_type_reinterpreter_block=278,}";

  signal ce_1_sg_x97: std_logic;
  signal clk_1_sg_x97: std_logic;
  signal constant3_op_net_x2: std_logic;
  signal constant4_op_net_x0: std_logic;
  signal constant5_op_net_x1: std_logic;
  signal constant6_op_net_x1: std_logic_vector(63 downto 0);
  signal constant7_op_net_x1: std_logic_vector(31 downto 0);
  signal constant8_op_net_x0: std_logic_vector(15 downto 0);
  signal constant9_op_net_x0: std_logic;
  signal counter2_op_net_x0: std_logic_vector(31 downto 0);
  signal delay1_q_net_x0: std_logic;
  signal delay3_q_net_x3: std_logic_vector(63 downto 0);
  signal delay_q_net_x0: std_logic;
  signal low0_y_net_x1: std_logic;
  signal low1_y_net_x1: std_logic;
  signal mux1_y_net_x6: std_logic;
  signal mux2_y_net_x5: std_logic;
  signal payload_cnt6_op_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x0: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x2: std_logic_vector(31 downto 0);
  signal reint1_output_port_net_x3: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_dest_ip_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_dest_port_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_led_rx_net: std_logic;
  signal roach2_tut_tge_gbe0_led_tx_net: std_logic;
  signal roach2_tut_tge_gbe0_led_up_net: std_logic;
  signal roach2_tut_tge_gbe0_linkup_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rst_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_ack_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_bad_frame_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_data_net: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_rx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_dest_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_rx_end_of_frame_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun_ack_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_overrun_net: std_logic;
  signal roach2_tut_tge_gbe0_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_rx_valid_net: std_logic;
  signal roach2_tut_tge_gbe0_rxbadctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxeofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_addr_net: std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_data_in_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_data_out_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_bram_we_net: std_logic;
  signal roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxs_ss_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_rxvldctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_afull_net: std_logic;
  signal roach2_tut_tge_gbe0_tx_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_data_net: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe0_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe0_tx_end_of_frame_net: std_logic;
  signal roach2_tut_tge_gbe0_tx_overflow_net: std_logic;
  signal roach2_tut_tge_gbe0_tx_valid_net: std_logic;
  signal roach2_tut_tge_gbe0_txctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txfullctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_addr_net: std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_data_in_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_data_out_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_bram_we_net: std_logic;
  signal roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txs_ss_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe0_txvldctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_led_rx_net: std_logic;
  signal roach2_tut_tge_gbe1_led_tx_net: std_logic;
  signal roach2_tut_tge_gbe1_led_up_net: std_logic;
  signal roach2_tut_tge_gbe1_linkup_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rst_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_ack_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_bad_frame_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_data_net: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_rx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_dest_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_rx_end_of_frame_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_overrun_ack_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_overrun_net: std_logic;
  signal roach2_tut_tge_gbe1_rx_source_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rx_source_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_rx_valid_net: std_logic;
  signal roach2_tut_tge_gbe1_rxbadctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxeofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_addr_net: std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_data_in_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_data_out_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_bram_we_net: std_logic;
  signal roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxs_ss_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_rxvldctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_tx_afull_net: std_logic;
  signal roach2_tut_tge_gbe1_tx_data_net: std_logic_vector(63 downto 0);
  signal roach2_tut_tge_gbe1_tx_dest_ip_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_tx_dest_port_net: std_logic_vector(15 downto 0);
  signal roach2_tut_tge_gbe1_tx_end_of_frame_net: std_logic;
  signal roach2_tut_tge_gbe1_tx_overflow_net: std_logic;
  signal roach2_tut_tge_gbe1_tx_valid_net: std_logic;
  signal roach2_tut_tge_gbe1_txctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txfullctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txofctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_addr_net: std_logic_vector(12 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_data_in_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_data_out_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_bram_we_net: std_logic;
  signal roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txs_ss_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_gbe1_txvldctr_user_data_in_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_led0_gbe0_pulse_tx_gateway_net: std_logic;
  signal roach2_tut_tge_led1_gbe0_up_gateway_net: std_logic;
  signal roach2_tut_tge_led2_gbe1_pulse_rx_gateway_net: std_logic;
  signal roach2_tut_tge_led3_gbe1_up_gateway_net: std_logic;
  signal roach2_tut_tge_pkt_sim_enable_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_payload_len_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_pkt_sim_period_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_rst_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_addr_net: std_logic_vector(11 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_data_in_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_data_out_net: std_logic_vector(127 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_bram_we_net: std_logic;
  signal roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net: std_logic_vector(31 downto 0);
  signal roach2_tut_tge_tx_snapshot_ss_status_user_data_in_net: std_logic_vector(31 downto 0);
  signal slice2_y_net_x0: std_logic;
  signal spulse_y_net_x0: std_logic;

begin
  ce_1_sg_x97 <= ce_1;
  clk_1_sg_x97 <= clk_1;
  roach2_tut_tge_dest_ip_user_data_out_net <= roach2_tut_tge_dest_ip_user_data_out;
  roach2_tut_tge_dest_port_user_data_out_net <= roach2_tut_tge_dest_port_user_data_out;
  roach2_tut_tge_gbe0_led_rx_net <= roach2_tut_tge_gbe0_led_rx;
  roach2_tut_tge_gbe0_led_tx_net <= roach2_tut_tge_gbe0_led_tx;
  roach2_tut_tge_gbe0_led_up_net <= roach2_tut_tge_gbe0_led_up;
  roach2_tut_tge_gbe0_rx_bad_frame_net <= roach2_tut_tge_gbe0_rx_bad_frame;
  roach2_tut_tge_gbe0_rx_data_net <= roach2_tut_tge_gbe0_rx_data;
  roach2_tut_tge_gbe0_rx_dest_ip_net <= roach2_tut_tge_gbe0_rx_dest_ip;
  roach2_tut_tge_gbe0_rx_dest_port_net <= roach2_tut_tge_gbe0_rx_dest_port;
  roach2_tut_tge_gbe0_rx_end_of_frame_net <= roach2_tut_tge_gbe0_rx_end_of_frame;
  roach2_tut_tge_gbe0_rx_overrun_net <= roach2_tut_tge_gbe0_rx_overrun;
  roach2_tut_tge_gbe0_rx_source_ip_net <= roach2_tut_tge_gbe0_rx_source_ip;
  roach2_tut_tge_gbe0_rx_source_port_net <= roach2_tut_tge_gbe0_rx_source_port;
  roach2_tut_tge_gbe0_rx_valid_net <= roach2_tut_tge_gbe0_rx_valid;
  roach2_tut_tge_gbe0_rxs_ss_bram_data_out_net <= roach2_tut_tge_gbe0_rxs_ss_bram_data_out;
  roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net <= roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe0_tx_afull_net <= roach2_tut_tge_gbe0_tx_afull;
  roach2_tut_tge_gbe0_tx_overflow_net <= roach2_tut_tge_gbe0_tx_overflow;
  roach2_tut_tge_gbe0_txs_ss_bram_data_out_net <= roach2_tut_tge_gbe0_txs_ss_bram_data_out;
  roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net <= roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe1_led_rx_net <= roach2_tut_tge_gbe1_led_rx;
  roach2_tut_tge_gbe1_led_tx_net <= roach2_tut_tge_gbe1_led_tx;
  roach2_tut_tge_gbe1_led_up_net <= roach2_tut_tge_gbe1_led_up;
  roach2_tut_tge_gbe1_rx_bad_frame_net <= roach2_tut_tge_gbe1_rx_bad_frame;
  roach2_tut_tge_gbe1_rx_data_net <= roach2_tut_tge_gbe1_rx_data;
  roach2_tut_tge_gbe1_rx_dest_ip_net <= roach2_tut_tge_gbe1_rx_dest_ip;
  roach2_tut_tge_gbe1_rx_dest_port_net <= roach2_tut_tge_gbe1_rx_dest_port;
  roach2_tut_tge_gbe1_rx_end_of_frame_net <= roach2_tut_tge_gbe1_rx_end_of_frame;
  roach2_tut_tge_gbe1_rx_overrun_net <= roach2_tut_tge_gbe1_rx_overrun;
  roach2_tut_tge_gbe1_rx_source_ip_net <= roach2_tut_tge_gbe1_rx_source_ip;
  roach2_tut_tge_gbe1_rx_source_port_net <= roach2_tut_tge_gbe1_rx_source_port;
  roach2_tut_tge_gbe1_rx_valid_net <= roach2_tut_tge_gbe1_rx_valid;
  roach2_tut_tge_gbe1_rxs_ss_bram_data_out_net <= roach2_tut_tge_gbe1_rxs_ss_bram_data_out;
  roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net <= roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe1_tx_afull_net <= roach2_tut_tge_gbe1_tx_afull;
  roach2_tut_tge_gbe1_tx_overflow_net <= roach2_tut_tge_gbe1_tx_overflow;
  roach2_tut_tge_gbe1_txs_ss_bram_data_out_net <= roach2_tut_tge_gbe1_txs_ss_bram_data_out;
  roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net <= roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out;
  roach2_tut_tge_pkt_sim_enable_user_data_out_net <= roach2_tut_tge_pkt_sim_enable_user_data_out;
  roach2_tut_tge_pkt_sim_payload_len_user_data_out_net <= roach2_tut_tge_pkt_sim_payload_len_user_data_out;
  roach2_tut_tge_pkt_sim_period_user_data_out_net <= roach2_tut_tge_pkt_sim_period_user_data_out;
  roach2_tut_tge_rst_user_data_out_net <= roach2_tut_tge_rst_user_data_out;
  roach2_tut_tge_tx_snapshot_ss_bram_data_out_net <= roach2_tut_tge_tx_snapshot_ss_bram_data_out;
  roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net <= roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out;
  roach2_tut_tge_gbe0_linkup_user_data_in <= roach2_tut_tge_gbe0_linkup_user_data_in_net;
  roach2_tut_tge_gbe0_rst <= roach2_tut_tge_gbe0_rst_net;
  roach2_tut_tge_gbe0_rx_ack <= roach2_tut_tge_gbe0_rx_ack_net;
  roach2_tut_tge_gbe0_rx_overrun_ack <= roach2_tut_tge_gbe0_rx_overrun_ack_net;
  roach2_tut_tge_gbe0_rxbadctr_user_data_in <= roach2_tut_tge_gbe0_rxbadctr_user_data_in_net;
  roach2_tut_tge_gbe0_rxctr_user_data_in <= roach2_tut_tge_gbe0_rxctr_user_data_in_net;
  roach2_tut_tge_gbe0_rxeofctr_user_data_in <= roach2_tut_tge_gbe0_rxeofctr_user_data_in_net;
  roach2_tut_tge_gbe0_rxofctr_user_data_in <= roach2_tut_tge_gbe0_rxofctr_user_data_in_net;
  roach2_tut_tge_gbe0_rxs_ss_bram_addr <= roach2_tut_tge_gbe0_rxs_ss_bram_addr_net;
  roach2_tut_tge_gbe0_rxs_ss_bram_data_in <= roach2_tut_tge_gbe0_rxs_ss_bram_data_in_net;
  roach2_tut_tge_gbe0_rxs_ss_bram_we <= roach2_tut_tge_gbe0_rxs_ss_bram_we_net;
  roach2_tut_tge_gbe0_rxs_ss_status_user_data_in <= roach2_tut_tge_gbe0_rxs_ss_status_user_data_in_net;
  roach2_tut_tge_gbe0_rxvldctr_user_data_in <= roach2_tut_tge_gbe0_rxvldctr_user_data_in_net;
  roach2_tut_tge_gbe0_tx_cnt_user_data_in <= roach2_tut_tge_gbe0_tx_cnt_user_data_in_net;
  roach2_tut_tge_gbe0_tx_data <= roach2_tut_tge_gbe0_tx_data_net;
  roach2_tut_tge_gbe0_tx_dest_ip <= roach2_tut_tge_gbe0_tx_dest_ip_net;
  roach2_tut_tge_gbe0_tx_dest_port <= roach2_tut_tge_gbe0_tx_dest_port_net;
  roach2_tut_tge_gbe0_tx_end_of_frame <= roach2_tut_tge_gbe0_tx_end_of_frame_net;
  roach2_tut_tge_gbe0_tx_valid <= roach2_tut_tge_gbe0_tx_valid_net;
  roach2_tut_tge_gbe0_txctr_user_data_in <= roach2_tut_tge_gbe0_txctr_user_data_in_net;
  roach2_tut_tge_gbe0_txfullctr_user_data_in <= roach2_tut_tge_gbe0_txfullctr_user_data_in_net;
  roach2_tut_tge_gbe0_txofctr_user_data_in <= roach2_tut_tge_gbe0_txofctr_user_data_in_net;
  roach2_tut_tge_gbe0_txs_ss_bram_addr <= roach2_tut_tge_gbe0_txs_ss_bram_addr_net;
  roach2_tut_tge_gbe0_txs_ss_bram_data_in <= roach2_tut_tge_gbe0_txs_ss_bram_data_in_net;
  roach2_tut_tge_gbe0_txs_ss_bram_we <= roach2_tut_tge_gbe0_txs_ss_bram_we_net;
  roach2_tut_tge_gbe0_txs_ss_status_user_data_in <= roach2_tut_tge_gbe0_txs_ss_status_user_data_in_net;
  roach2_tut_tge_gbe0_txvldctr_user_data_in <= roach2_tut_tge_gbe0_txvldctr_user_data_in_net;
  roach2_tut_tge_gbe1_linkup_user_data_in <= roach2_tut_tge_gbe1_linkup_user_data_in_net;
  roach2_tut_tge_gbe1_rst <= roach2_tut_tge_gbe1_rst_net;
  roach2_tut_tge_gbe1_rx_ack <= roach2_tut_tge_gbe1_rx_ack_net;
  roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in <= roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in_net;
  roach2_tut_tge_gbe1_rx_overrun_ack <= roach2_tut_tge_gbe1_rx_overrun_ack_net;
  roach2_tut_tge_gbe1_rxbadctr_user_data_in <= roach2_tut_tge_gbe1_rxbadctr_user_data_in_net;
  roach2_tut_tge_gbe1_rxctr_user_data_in <= roach2_tut_tge_gbe1_rxctr_user_data_in_net;
  roach2_tut_tge_gbe1_rxeofctr_user_data_in <= roach2_tut_tge_gbe1_rxeofctr_user_data_in_net;
  roach2_tut_tge_gbe1_rxofctr_user_data_in <= roach2_tut_tge_gbe1_rxofctr_user_data_in_net;
  roach2_tut_tge_gbe1_rxs_ss_bram_addr <= roach2_tut_tge_gbe1_rxs_ss_bram_addr_net;
  roach2_tut_tge_gbe1_rxs_ss_bram_data_in <= roach2_tut_tge_gbe1_rxs_ss_bram_data_in_net;
  roach2_tut_tge_gbe1_rxs_ss_bram_we <= roach2_tut_tge_gbe1_rxs_ss_bram_we_net;
  roach2_tut_tge_gbe1_rxs_ss_status_user_data_in <= roach2_tut_tge_gbe1_rxs_ss_status_user_data_in_net;
  roach2_tut_tge_gbe1_rxvldctr_user_data_in <= roach2_tut_tge_gbe1_rxvldctr_user_data_in_net;
  roach2_tut_tge_gbe1_tx_data <= roach2_tut_tge_gbe1_tx_data_net;
  roach2_tut_tge_gbe1_tx_dest_ip <= roach2_tut_tge_gbe1_tx_dest_ip_net;
  roach2_tut_tge_gbe1_tx_dest_port <= roach2_tut_tge_gbe1_tx_dest_port_net;
  roach2_tut_tge_gbe1_tx_end_of_frame <= roach2_tut_tge_gbe1_tx_end_of_frame_net;
  roach2_tut_tge_gbe1_tx_valid <= roach2_tut_tge_gbe1_tx_valid_net;
  roach2_tut_tge_gbe1_txctr_user_data_in <= roach2_tut_tge_gbe1_txctr_user_data_in_net;
  roach2_tut_tge_gbe1_txfullctr_user_data_in <= roach2_tut_tge_gbe1_txfullctr_user_data_in_net;
  roach2_tut_tge_gbe1_txofctr_user_data_in <= roach2_tut_tge_gbe1_txofctr_user_data_in_net;
  roach2_tut_tge_gbe1_txs_ss_bram_addr <= roach2_tut_tge_gbe1_txs_ss_bram_addr_net;
  roach2_tut_tge_gbe1_txs_ss_bram_data_in <= roach2_tut_tge_gbe1_txs_ss_bram_data_in_net;
  roach2_tut_tge_gbe1_txs_ss_bram_we <= roach2_tut_tge_gbe1_txs_ss_bram_we_net;
  roach2_tut_tge_gbe1_txs_ss_status_user_data_in <= roach2_tut_tge_gbe1_txs_ss_status_user_data_in_net;
  roach2_tut_tge_gbe1_txvldctr_user_data_in <= roach2_tut_tge_gbe1_txvldctr_user_data_in_net;
  roach2_tut_tge_led0_gbe0_pulse_tx_gateway <= roach2_tut_tge_led0_gbe0_pulse_tx_gateway_net;
  roach2_tut_tge_led1_gbe0_up_gateway <= roach2_tut_tge_led1_gbe0_up_gateway_net;
  roach2_tut_tge_led2_gbe1_pulse_rx_gateway <= roach2_tut_tge_led2_gbe1_pulse_rx_gateway_net;
  roach2_tut_tge_led3_gbe1_up_gateway <= roach2_tut_tge_led3_gbe1_up_gateway_net;
  roach2_tut_tge_tx_snapshot_ss_bram_addr <= roach2_tut_tge_tx_snapshot_ss_bram_addr_net;
  roach2_tut_tge_tx_snapshot_ss_bram_data_in <= roach2_tut_tge_tx_snapshot_ss_bram_data_in_net;
  roach2_tut_tge_tx_snapshot_ss_bram_we <= roach2_tut_tge_tx_snapshot_ss_bram_we_net;
  roach2_tut_tge_tx_snapshot_ss_status_user_data_in <= roach2_tut_tge_tx_snapshot_ss_status_user_data_in_net;

  constant3: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x2
    );

  constant4: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net_x0
    );

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net_x1
    );

  constant6: entity work.constant_c4c603edf2
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant6_op_net_x1
    );

  constant7: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant7_op_net_x1
    );

  constant8: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant8_op_net_x0
    );

  constant9: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant9_op_net_x0
    );

  counter2: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_8513360a51c30657",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      en(0) => mux2_y_net_x5,
      rst(0) => low0_y_net_x1,
      op => counter2_op_net_x0
    );

  delay: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      d(0) => roach2_tut_tge_gbe0_rx_overrun_net,
      q(0) => delay_q_net_x0
    );

  delay1: entity work.delay_9f02caa990
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      d(0) => roach2_tut_tge_gbe1_rx_overrun_net,
      q(0) => delay1_q_net_x0
    );

  dest_ip_053032aa06: entity work.dest_ip_entity_053032aa06
    port map (
      roach2_tut_tge_dest_ip_user_data_out => roach2_tut_tge_dest_ip_user_data_out_net,
      in_reg => reint1_output_port_net_x2
    );

  dest_port_3b0aa1ca6b: entity work.dest_port_entity_3b0aa1ca6b
    port map (
      roach2_tut_tge_dest_port_user_data_out => roach2_tut_tge_dest_port_user_data_out_net,
      in_reg => reint1_output_port_net_x3
    );

  gbe0_6764d6f24a: entity work.gbe0_entity_6764d6f24a
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      debug_rst => low0_y_net_x1,
      grx_badframe => roach2_tut_tge_gbe0_rx_bad_frame_net,
      grx_data => roach2_tut_tge_gbe0_rx_data_net,
      grx_eof => roach2_tut_tge_gbe0_rx_end_of_frame_net,
      grx_led_rx => roach2_tut_tge_gbe0_led_rx_net,
      grx_led_tx => roach2_tut_tge_gbe0_led_tx_net,
      grx_led_up => roach2_tut_tge_gbe0_led_up_net,
      grx_overrun => roach2_tut_tge_gbe0_rx_overrun_net,
      grx_src_ip => roach2_tut_tge_gbe0_rx_source_ip_net,
      grx_valid => roach2_tut_tge_gbe0_rx_valid_net,
      gtx_afull => roach2_tut_tge_gbe0_tx_afull_net,
      gtx_overflow => roach2_tut_tge_gbe0_tx_overflow_net,
      roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_rxs_ss_ctrl_user_data_out_net,
      roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe0_txs_ss_ctrl_user_data_out_net,
      rst => low1_y_net_x1,
      rx_ack => constant4_op_net_x0,
      rx_overrun_ack => delay_q_net_x0,
      tx_data => delay3_q_net_x3,
      tx_dest_ip => reint1_output_port_net_x2,
      tx_dest_port => reint1_output_port_net_x3,
      tx_end_of_frame => mux2_y_net_x5,
      tx_valid => mux1_y_net_x6,
      convert_rst_x0 => roach2_tut_tge_gbe0_rst_net,
      convert_rx_ack_x0 => roach2_tut_tge_gbe0_rx_ack_net,
      convert_rx_overrun_ack_x0 => roach2_tut_tge_gbe0_rx_overrun_ack_net,
      convert_tx_data_x0 => roach2_tut_tge_gbe0_tx_data_net,
      convert_tx_dest_ip_x0 => roach2_tut_tge_gbe0_tx_dest_ip_net,
      convert_tx_end_of_frame_x0 => roach2_tut_tge_gbe0_tx_end_of_frame_net,
      convert_tx_port_x0 => roach2_tut_tge_gbe0_tx_dest_port_net,
      convert_tx_valid_x0 => roach2_tut_tge_gbe0_tx_valid_net,
      rxbadctr => roach2_tut_tge_gbe0_rxbadctr_user_data_in_net,
      rxctr => roach2_tut_tge_gbe0_rxctr_user_data_in_net,
      rxeofctr => roach2_tut_tge_gbe0_rxeofctr_user_data_in_net,
      rxofctr => roach2_tut_tge_gbe0_rxofctr_user_data_in_net,
      rxs => roach2_tut_tge_gbe0_rxs_ss_bram_addr_net,
      rxs_x0 => roach2_tut_tge_gbe0_rxs_ss_bram_data_in_net,
      rxs_x1 => roach2_tut_tge_gbe0_rxs_ss_bram_we_net,
      rxs_x2 => roach2_tut_tge_gbe0_rxs_ss_status_user_data_in_net,
      rxvldctr => roach2_tut_tge_gbe0_rxvldctr_user_data_in_net,
      txctr => roach2_tut_tge_gbe0_txctr_user_data_in_net,
      txfullctr => roach2_tut_tge_gbe0_txfullctr_user_data_in_net,
      txofctr => roach2_tut_tge_gbe0_txofctr_user_data_in_net,
      txs => roach2_tut_tge_gbe0_txs_ss_bram_addr_net,
      txs_x0 => roach2_tut_tge_gbe0_txs_ss_bram_data_in_net,
      txs_x1 => roach2_tut_tge_gbe0_txs_ss_bram_we_net,
      txs_x2 => roach2_tut_tge_gbe0_txs_ss_status_user_data_in_net,
      txvldctr => roach2_tut_tge_gbe0_txvldctr_user_data_in_net
    );

  gbe0_linkup_b91d1c6553: entity work.gbe0_linkup_entity_b91d1c6553
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      out_reg => roach2_tut_tge_gbe0_led_up_net,
      cast_gw_x0 => roach2_tut_tge_gbe0_linkup_user_data_in_net
    );

  gbe0_tx_cnt_be99b8cddf: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      out_reg => counter2_op_net_x0,
      cast_gw_x0 => roach2_tut_tge_gbe0_tx_cnt_user_data_in_net
    );

  gbe1_3bbccc3192: entity work.gbe1_entity_3bbccc3192
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      debug_rst => low0_y_net_x1,
      grx_badframe => roach2_tut_tge_gbe1_rx_bad_frame_net,
      grx_data => roach2_tut_tge_gbe1_rx_data_net,
      grx_eof => roach2_tut_tge_gbe1_rx_end_of_frame_net,
      grx_led_rx => roach2_tut_tge_gbe1_led_rx_net,
      grx_led_tx => roach2_tut_tge_gbe1_led_tx_net,
      grx_led_up => roach2_tut_tge_gbe1_led_up_net,
      grx_overrun => roach2_tut_tge_gbe1_rx_overrun_net,
      grx_src_ip => roach2_tut_tge_gbe1_rx_source_ip_net,
      grx_valid => roach2_tut_tge_gbe1_rx_valid_net,
      gtx_afull => roach2_tut_tge_gbe1_tx_afull_net,
      gtx_overflow => roach2_tut_tge_gbe1_tx_overflow_net,
      roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_rxs_ss_ctrl_user_data_out_net,
      roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out => roach2_tut_tge_gbe1_txs_ss_ctrl_user_data_out_net,
      rst => low1_y_net_x1,
      rx_ack => constant9_op_net_x0,
      rx_overrun_ack => delay1_q_net_x0,
      tx_data => constant6_op_net_x1,
      tx_dest_ip => constant7_op_net_x1,
      tx_dest_port => constant8_op_net_x0,
      tx_end_of_frame => constant5_op_net_x1,
      tx_valid => constant3_op_net_x2,
      convert_rst_x0 => roach2_tut_tge_gbe1_rst_net,
      convert_rx_ack_x0 => roach2_tut_tge_gbe1_rx_ack_net,
      convert_rx_overrun_ack_x0 => roach2_tut_tge_gbe1_rx_overrun_ack_net,
      convert_tx_data_x0 => roach2_tut_tge_gbe1_tx_data_net,
      convert_tx_dest_ip_x0 => roach2_tut_tge_gbe1_tx_dest_ip_net,
      convert_tx_end_of_frame_x0 => roach2_tut_tge_gbe1_tx_end_of_frame_net,
      convert_tx_port_x0 => roach2_tut_tge_gbe1_tx_dest_port_net,
      convert_tx_valid_x0 => roach2_tut_tge_gbe1_tx_valid_net,
      rxbadctr => roach2_tut_tge_gbe1_rxbadctr_user_data_in_net,
      rxctr => roach2_tut_tge_gbe1_rxctr_user_data_in_net,
      rxeofctr => roach2_tut_tge_gbe1_rxeofctr_user_data_in_net,
      rxofctr => roach2_tut_tge_gbe1_rxofctr_user_data_in_net,
      rxs => roach2_tut_tge_gbe1_rxs_ss_bram_addr_net,
      rxs_x0 => roach2_tut_tge_gbe1_rxs_ss_bram_data_in_net,
      rxs_x1 => roach2_tut_tge_gbe1_rxs_ss_bram_we_net,
      rxs_x2 => roach2_tut_tge_gbe1_rxs_ss_status_user_data_in_net,
      rxvldctr => roach2_tut_tge_gbe1_rxvldctr_user_data_in_net,
      txctr => roach2_tut_tge_gbe1_txctr_user_data_in_net,
      txfullctr => roach2_tut_tge_gbe1_txfullctr_user_data_in_net,
      txofctr => roach2_tut_tge_gbe1_txofctr_user_data_in_net,
      txs => roach2_tut_tge_gbe1_txs_ss_bram_addr_net,
      txs_x0 => roach2_tut_tge_gbe1_txs_ss_bram_data_in_net,
      txs_x1 => roach2_tut_tge_gbe1_txs_ss_bram_we_net,
      txs_x2 => roach2_tut_tge_gbe1_txs_ss_status_user_data_in_net,
      txvldctr => roach2_tut_tge_gbe1_txvldctr_user_data_in_net
    );

  gbe1_linkup_c520acad07: entity work.gbe0_linkup_entity_b91d1c6553
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      out_reg => roach2_tut_tge_gbe1_led_up_net,
      cast_gw_x0 => roach2_tut_tge_gbe1_linkup_user_data_in_net
    );

  gbe1_rx_frame_cnt_bb87a728af: entity work.status_entity_3c040700bb
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      out_reg => payload_cnt6_op_net_x0,
      cast_gw_x0 => roach2_tut_tge_gbe1_rx_frame_cnt_user_data_in_net
    );

  led0_gbe0_pulse_tx_6fe0f6976f: entity work.led0_gbe0_pulse_tx_entity_6fe0f6976f
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      gpio_out => spulse_y_net_x0,
      convert_x0 => roach2_tut_tge_led0_gbe0_pulse_tx_gateway_net
    );

  led1_gbe0_up_0df47bf5b6: entity work.led0_gbe0_pulse_tx_entity_6fe0f6976f
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      gpio_out => roach2_tut_tge_gbe0_led_up_net,
      convert_x0 => roach2_tut_tge_led1_gbe0_up_gateway_net
    );

  led2_gbe1_pulse_rx_3c4254de33: entity work.led0_gbe0_pulse_tx_entity_6fe0f6976f
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      gpio_out => slice2_y_net_x0,
      convert_x0 => roach2_tut_tge_led2_gbe1_pulse_rx_gateway_net
    );

  led3_gbe1_up_bbbcfd5b1a: entity work.led0_gbe0_pulse_tx_entity_6fe0f6976f
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      gpio_out => roach2_tut_tge_gbe1_led_up_net,
      convert_x0 => roach2_tut_tge_led3_gbe1_up_gateway_net
    );

  low0: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => low0_y_net_x1
    );

  low1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => reint1_output_port_net_x0,
      y(0) => low1_y_net_x1
    );

  payload_cnt6: entity work.xlcounter_free_roach2_tut_tge
    generic map (
      core_name0 => "cntr_11_0_8513360a51c30657",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x97,
      clk => clk_1_sg_x97,
      clr => '0',
      en(0) => roach2_tut_tge_gbe1_rx_end_of_frame_net,
      rst(0) => low0_y_net_x1,
      op => payload_cnt6_op_net_x0
    );

  pkt_sim_fd940d25e9: entity work.pkt_sim_entity_fd940d25e9
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      roach2_tut_tge_pkt_sim_enable_user_data_out => roach2_tut_tge_pkt_sim_enable_user_data_out_net,
      roach2_tut_tge_pkt_sim_payload_len_user_data_out => roach2_tut_tge_pkt_sim_payload_len_user_data_out_net,
      roach2_tut_tge_pkt_sim_period_user_data_out => roach2_tut_tge_pkt_sim_period_user_data_out_net,
      d_out => delay3_q_net_x3,
      eof => mux2_y_net_x5,
      valid => mux1_y_net_x6
    );

  rst_2c85c78d0f: entity work.rst_entity_2c85c78d0f
    port map (
      roach2_tut_tge_rst_user_data_out => roach2_tut_tge_rst_user_data_out_net,
      in_reg => reint1_output_port_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => payload_cnt6_op_net_x0,
      y(0) => slice2_y_net_x0
    );

  spulse: entity work.xlslice
    generic map (
      new_lsb => 15,
      new_msb => 15,
      x_width => 32,
      y_width => 1
    )
    port map (
      x => counter2_op_net_x0,
      y(0) => spulse_y_net_x0
    );

  tx_snapshot_6afa2e4baf: entity work.tx_snapshot_entity_6afa2e4baf
    port map (
      ce_1 => ce_1_sg_x97,
      clk_1 => clk_1_sg_x97,
      in_data => delay3_q_net_x3,
      in_eof => mux2_y_net_x5,
      in_valid => mux1_y_net_x6,
      roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out => roach2_tut_tge_tx_snapshot_ss_ctrl_user_data_out_net,
      ss => roach2_tut_tge_tx_snapshot_ss_bram_addr_net,
      ss_x0 => roach2_tut_tge_tx_snapshot_ss_bram_data_in_net,
      ss_x1 => roach2_tut_tge_tx_snapshot_ss_bram_we_net,
      ss_x2 => roach2_tut_tge_tx_snapshot_ss_status_user_data_in_net
    );

end structural;
