-------------------------------------------------------------------------------
-- testing_adcsnap2_bram_ramblk_elaborate.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity testing_adcsnap2_bram_ramblk_elaborate is
  generic (
    C_MEMSIZE : integer;
    C_PORT_DWIDTH : integer;
    C_PORT_AWIDTH : integer;
    C_NUM_WE : integer;
    C_FAMILY : string
    );
  port (
    BRAM_Rst_A : in std_logic;
    BRAM_Clk_A : in std_logic;
    BRAM_EN_A : in std_logic;
    BRAM_WEN_A : in std_logic_vector(0 to C_NUM_WE-1);
    BRAM_Addr_A : in std_logic_vector(0 to C_PORT_AWIDTH-1);
    BRAM_Din_A : out std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Dout_A : in std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Rst_B : in std_logic;
    BRAM_Clk_B : in std_logic;
    BRAM_EN_B : in std_logic;
    BRAM_WEN_B : in std_logic_vector(0 to C_NUM_WE-1);
    BRAM_Addr_B : in std_logic_vector(0 to C_PORT_AWIDTH-1);
    BRAM_Din_B : out std_logic_vector(0 to C_PORT_DWIDTH-1);
    BRAM_Dout_B : in std_logic_vector(0 to C_PORT_DWIDTH-1)
  );

  attribute keep_hierarchy : STRING;
  attribute keep_hierarchy of testing_adcsnap2_bram_ramblk_elaborate : entity is "yes";

end testing_adcsnap2_bram_ramblk_elaborate;

architecture STRUCTURE of testing_adcsnap2_bram_ramblk_elaborate is

  component RAMB36E1 is
    generic (
      WRITE_MODE_A : string;
      WRITE_MODE_B : string;
      INIT_FILE : string;
      READ_WIDTH_A : integer;
      READ_WIDTH_B : integer;
      WRITE_WIDTH_A : integer;
      WRITE_WIDTH_B : integer;
      RAM_EXTENSION_A : string;
      RAM_EXTENSION_B : string
    );
    port (
      DBITERR : out std_logic;
      ECCPARITY : out std_logic_vector(7 downto 0);
      INJECTDBITERR : in std_logic;
      INJECTSBITERR : in std_logic;
      RDADDRECC : out std_logic_vector(8 downto 0);
      SBITERR : out std_logic;
      ADDRARDADDR : in std_logic_vector(15 downto 0);
      CASCADEINA : in std_logic;
      CASCADEOUTA : out std_logic;
      CLKARDCLK : in std_logic;
      DIADI : in std_logic_vector(31 downto 0);
      DIPADIP : in std_logic_vector(3 downto 0);
      DOADO : out std_logic_vector(31 downto 0);
      DOPADOP : out std_logic_vector(3 downto 0);
      ENARDEN : in std_logic;
      REGCEAREGCE : in std_logic;
      RSTRAMARSTRAM : in std_logic;
      RSTREGARSTREG : in std_logic;
      WEA : in std_logic_vector(3 downto 0);
      ADDRBWRADDR : in std_logic_vector(15 downto 0);
      CASCADEINB : in std_logic;
      CASCADEOUTB : out std_logic;
      CLKBWRCLK : in std_logic;
      DIBDI : in std_logic_vector(31 downto 0);
      DIPBDIP : in std_logic_vector(3 downto 0);
      DOBDO : out std_logic_vector(31 downto 0);
      DOPBDOP : out std_logic_vector(3 downto 0);
      ENBWREN : in std_logic;
      REGCEB : in std_logic;
      RSTRAMB : in std_logic;
      RSTREGB : in std_logic;
      WEBWE : in std_logic_vector(7 downto 0)
    );
  end component;

  attribute BMM_INFO : STRING;

  attribute BMM_INFO of ramb36e1_0: label is " ";
  -- Internal signals

  signal net_gnd0 : std_logic;
  signal net_gnd4 : std_logic_vector(3 downto 0);
  signal pgassign1 : std_logic_vector(0 to 0);
  signal pgassign2 : std_logic_vector(0 to 4);
  signal pgassign3 : std_logic_vector(0 to 3);
  signal pgassign4 : std_logic_vector(15 downto 0);
  signal pgassign5 : std_logic_vector(15 downto 0);
  signal pgassign6 : std_logic_vector(7 downto 0);

begin

  -- Internal assignments

  pgassign1(0 to 0) <= B"1";
  pgassign2(0 to 4) <= B"00000";
  pgassign3(0 to 3) <= B"0000";
  pgassign4(15 downto 15) <= B"1";
  pgassign4(14 downto 5) <= BRAM_Addr_A(20 to 29);
  pgassign4(4 downto 0) <= B"00000";
  pgassign5(15 downto 15) <= B"1";
  pgassign5(14 downto 5) <= BRAM_Addr_B(20 to 29);
  pgassign5(4 downto 0) <= B"00000";
  pgassign6(7 downto 4) <= B"0000";
  pgassign6(3 downto 0) <= BRAM_WEN_B(0 to 3);
  net_gnd0 <= '0';
  net_gnd4(3 downto 0) <= B"0000";

  ramb36e1_0 : RAMB36E1
    generic map (
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      INIT_FILE => "NONE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36,
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE"
    )
    port map (
      DBITERR => open,
      ECCPARITY => open,
      INJECTDBITERR => net_gnd0,
      INJECTSBITERR => net_gnd0,
      RDADDRECC => open,
      SBITERR => open,
      ADDRARDADDR => pgassign4,
      CASCADEINA => net_gnd0,
      CASCADEOUTA => open,
      CLKARDCLK => BRAM_Clk_A,
      DIADI => BRAM_Dout_A(0 to 31),
      DIPADIP => net_gnd4,
      DOADO => BRAM_Din_A(0 to 31),
      DOPADOP => open,
      ENARDEN => BRAM_EN_A,
      REGCEAREGCE => net_gnd0,
      RSTRAMARSTRAM => BRAM_Rst_A,
      RSTREGARSTREG => net_gnd0,
      WEA => BRAM_WEN_A(0 to 3),
      ADDRBWRADDR => pgassign5,
      CASCADEINB => net_gnd0,
      CASCADEOUTB => open,
      CLKBWRCLK => BRAM_Clk_B,
      DIBDI => BRAM_Dout_B(0 to 31),
      DIPBDIP => net_gnd4,
      DOBDO => BRAM_Din_B(0 to 31),
      DOPBDOP => open,
      ENBWREN => BRAM_EN_B,
      REGCEB => net_gnd0,
      RSTRAMB => BRAM_Rst_B,
      RSTREGB => net_gnd0,
      WEBWE => pgassign6
    );

end architecture STRUCTURE;

